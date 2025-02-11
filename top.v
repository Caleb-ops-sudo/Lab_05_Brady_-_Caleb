module top(
  
    input [8:0] sw,
    output [5:0] led
);
wire cary_between;

    // This is an instantiation, not a function call
    // Think of it like plugging in a circuit to a breadboard
    

    light light1( 
    
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0])
        
    );
       
    adder uut1(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .C(led[2])
    );

    fulladder LSB(
    
        .A(sw[4]),
        .B(sw[6]),
        .C(0),
        .Y(led[3]),
        .O(cary_between)
     );
        
     fulladder MSB(
    
        .A(sw[5]),
        .B(sw[7]),
        .C(cary_between),
        .Y(led[4]),
        .O(led[5])
     );

        



endmodule

// Implement top level module
