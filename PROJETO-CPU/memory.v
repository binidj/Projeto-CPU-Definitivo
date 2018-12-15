module memory (clock, pc, opcode, data, A, B);
	
	input wire [3:0] A;
	input wire [3:0] B;
	input wire [3:0] pc;
	input wire clock;
	output reg [3:0] opcode;
	output reg [3:0] data;
	
	always @(posedge clock) begin
		
		case (pc)
			
			4'b0000 : begin //Clear_Load
					
						opcode <= 4'b0000;
						
					end
					
			4'b0001 : begin //Add_Load
					
						opcode <= 4'b0001;
						data <= A;
						
					end
					
			4'b0010 : begin //Add
					
						opcode <= 4'b0010;
						data <= B;
						
					end
					
			4'b0011 : begin //Shift_Right
					
						opcode <= 4'b0011;
						
					end
					
			4'b0100 : begin //Disp
					
						opcode <= 4'b0100;
						
					end
			
		endcase
	
	end
			
endmodule		