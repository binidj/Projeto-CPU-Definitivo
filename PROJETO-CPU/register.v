module register(clock, func, in, out);

input wire clock;
input wire [3:0] func;
input wire [3:0] in;
output reg [3:0] out;

parameter Hold = 4'b0000;
parameter Load = 4'b0001;
parameter Clear = 4'b0010;
parameter Shift_Right = 4'b0011;
parameter Shift_Left = 4'b0100;

always @(posedge clock) begin
	
	case(func)
		
		Hold : out <= out;
		Load : out <= in;
		Clear : out <= 4'b0000;
		Shift_Right : out <= (out >> 1);
		Shift_Left : out <= (out << 1);
		
		endcase
		
	end
	
endmodule
