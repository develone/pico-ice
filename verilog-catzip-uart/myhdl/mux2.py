from myhdl import *
@block
def Mux(z, a, b, sel):
    
    """ Multiplexer.
    
    z -- mux output
    a, b -- data inputs
    sel -- control input: select a if asserted, otherwise b
    
    """
    
    @always_comb
    def muxLogic():
        if sel == 1:
            z.next = a
        else:
            z.next = b

    return muxLogic

#from random import randrange

#z, a, b, sel = [Signal(0) for i in range(4)]

#mux_1 = Mux(z, a, b, sel)

def test():
    print("z a b sel")
    for i in range(100):	
        a.next, b.next, sel.next = randrange(8), randrange(8), randrange(2)
        yield delay(10)
        print("%s %s %s %s" % (z, a, b, sel))

#test_1 = test()
def convert(hdl):
    a = Signal(intbv(0)[8:])
    b = Signal(intbv(0)[8:])
    z = Signal(intbv(0)[8:])
    sel = Signal(bool(0))

    mux_1 = Mux(z, a, b, sel)

    mux_1.convert(hdl=hdl)

def main():
    convert(hdl='Verilog')    
    
if __name__ == '__main__':
    main()
