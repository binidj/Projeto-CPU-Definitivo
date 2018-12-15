module ULA(A, B, S, Y);

    input wire[3:0] A;
    input wire[3:0] B;
    input wire S;
    output reg[3:0] Y;
    
    parameter Add = 1'b0;
    parameter Sub = 1'b1;
    
    always @(A, B, S, Y) begin
    
        case(S)
        
            Add : Y = A + B;
            Sub : Y = A - B;
        
        endcase
    
    end

endmodule
