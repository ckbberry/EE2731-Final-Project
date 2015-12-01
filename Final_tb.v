`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:57:07 11/30/2015
// Design Name:   Elevator_top
// Module Name:   C:/Users/Christian/Documents/EE2731/Final_project/Final_tb.v
// Project Name:  Final_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Elevator_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Final_tb;

	// Inputs
	reg One;
	reg Two;
	reg Three;
	reg Four;
	reg Clk;
	reg Open;
	reg Resetn;

	// Outputs
	wire First;
	wire Second;
	wire Third;
	wire Fourth;
	wire Door;

	// Instantiate the Unit Under Test (UUT)
	Elevator_top uut (
		.One(One), 
		.Two(Two), 
		.Three(Three), 
		.Four(Four), 
		.Clk(Clk), 
		.Open(Open), 
		.Resetn(Resetn), 
		.First(First), 
		.Second(Second), 
		.Third(Third), 
		.Fourth(Fourth), 
		.Door(Door)
	);

	parameter PERIOD = 10;

   always begin
      Clk = 1'b0;
      #(PERIOD/2) Clk = 1'b1;
      #(PERIOD/2);
   end  

	initial begin
		// Initialize Inputs
		One = 0;
		Two = 0;
		Three = 0;
		Four = 0;
		Clk = 0;
		Open = 0;
		Resetn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
	assign Resetn=1;
	#10
		
	 assign One= 1;
    assign Two = 0;
    assign Three= 0; 
    assign Four = 0;
    assign Open = 0;
	 assign Resetn = 0;
	 #10;
	 
	 assign One= 0;
    assign Two = 0;
    assign Three= 0; 
    assign Four = 0;
    assign Open = 1;
	 assign Resetn = 0;
	 #40;
	 
	 assign One= 0;
    assign Two = 0;
    assign Three= 0; 
    assign Four = 0;
    assign Open = 0;
	 assign Resetn = 0;
	 #40;
	 
	 assign One= 0;
    assign Two = 0;
    assign Three= 0; 
    assign Four = 1;
    assign Open = 1;
	 assign Resetn = 0;
	 #40;
	 
	 assign One= 0;
    assign Two = 0;
    assign Three= 0; 
    assign Four = 0;
    assign Open = 0;
	 assign Resetn = 0;
	 #40;
	 
	 
	 assign One= 0;
    assign Two = 1;
    assign Three= 0; 
    assign Four = 0;
    assign Open = 0;
	 assign Resetn = 0;
	 #40;
	 
	 assign One= 0;
    assign Two = 0;
    assign Three= 0; 
    assign Four = 0;
    assign Open = 0;
	 assign Resetn = 0;
	 #40;
	 
	 assign One= 0;
    assign Two = 0;
    assign Three= 1; 
    assign Four = 0;
    assign Open = 0;
	 assign Resetn = 0;
	 #40;
	 
	 

	end
      
endmodule



