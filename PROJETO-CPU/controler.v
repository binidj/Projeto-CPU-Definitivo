module controler(clock, Tx, Ty, Tz, Tula, opcode);
	
	input wire [3:0] opcode;
	input wire clock;
	output reg [3:0] Tx;
	output reg [3:0] Ty;
	output reg [3:0] Tz;
	output reg Tula;
	
	parameter Clear_Add = 4'b0000;
	parameter Add_Load = 4'b0001;
	parameter Add = 4'b0010;
	parameter Shift_Right = 4'b0011;
	parameter Disp = 4'b0100;
			
	always @(posedge clock) begin
		
		case (opcode)
			
			Clear_Add: begin
					
						Tx <= 4'b0001; // Load
						Ty <= 4'b0010; // Clear
						Tz <= 4'b0010; // Clear
						Tula <= 1'b1; // X
						
					end	
					
			Add_Load: begin
					
						Tx <= 4'b0001; // Load
						Ty <= 4'b0001; // Load
						Tz <= 4'b0000; // Hold
						Tula <= 1'b0; // Add
						
					end
					
			Add: begin
					
						Tx <= 4'b0000; // Hold
						Ty <= 4'b0001; // Load
						Tz <= 4'b0000; // Hold
						Tula <= 1'b0; // Add
						
					end
					
			Shift_Right: begin
					
						Tx <= 4'b0000; // Hold
						Ty <= 4'b0011; // Shift_Right
						Tz <= 4'b0000; // Hold
						Tula <= 1'b1; // X
						
					end
					
			Disp: begin
					
						Tx <= 4'b0010; // Clear
						Ty <= 4'b0010; // Clear
						Tz <= 4'b0001; // Load
						Tula <= 1'b0; // X
						
					end
		
		endcase
	
	end
	
endmodule
