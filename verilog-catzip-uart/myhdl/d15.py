import myhdl
from myhdl import *
@block
def shadow1(d15_o, d15_i, mapping8hi):
    """ Permute input bits.

    d15_i: output port
    d8_o: input port
    mapping: tuple that maps input bit indices 
             to output bit positions

             

    """
    p = [d15_i(m) for m in mapping8hi] # index signals

    q = ConcatSignal(*p)
    #q = *p

    @always_comb
    def assign():
        d15_o.next = q

    return assign
    
d15_o = Signal(intbv(0)[16:])
d15_i = Signal(intbv(0)[16:])

mapping = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
#mapping8hi = (15,14,13,12,11,10,9,8)
pm = shadow1(d15_o, d15_i, mapping)
pm.convert(hdl='Verilog')
