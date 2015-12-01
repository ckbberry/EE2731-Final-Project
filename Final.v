`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:21 11/30/2015 
// Design Name: 
// Module Name:    Elevator_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Elevator_top(
    input One,
    input Two,
    input Three,
    input Four,
    input Clk,
    input Open,
	 input Resetn,
    output First,
    output Second,
    output Third,
    output Fourth,
    output Door
    );
	 parameter A = 5'b00000, B = 5'b00001, C = 5'b00010, D = 5'b00011, E = 5'b00100, F = 5'b00101,
	 G = 5'b00110, H = 5'b00111, I = 5'b01000, J = 5'b01001, K = 5'b01010, L = 5'b01011, M = 5'b01100, N = 5'b01101,
	 O = 5'b01110, P = 5'b01111, Q = 5'b10000, R = 5'b10001, S = 5'b10010, T = 5'b10011 ;
	 
   (* FSM_ENCODING="SEQUNTIAL", SAFE_IMPLEMENTATION="NO" *) reg [4:0] state = A;

   always@(posedge Clk)
      if (Resetn) begin
         state <= A;
      end
      else
         (* FULL_CASE, PARALLEL_CASE *) case (state)
            //First Floor
				A : begin
               if (One)
                  state <= B;
               else if (Two | Three | Four)
                  state <= F;
               else
                  state <= A;
            end
				B : begin
               state <= C;
            end
				C : begin
               state <= D;
            end
				D : begin
               state <= E;
            end
				E : begin
               if (Open)
						state <= B;
					else
						state <= A;
            end
				
				//Second Floor
				F : begin
               if (Two)
                  state <= G;
               else if (Three | Four)
                  state <= K;
					else if (One)
                  state <= A;
               else
                  state <= F;
            end
				G : begin
               state <= H;
            end
				H : begin
               state <= I;
            end
				I : begin
               state <= J;
            end
				J : begin
               if (Open)
						state <= G;
					else
						state <= F;
            end
				
				//Third Floor
				K : begin
               if (Three)
                  state <= L;
               else if (Four)
                  state <= P;
					else if (One | Two)
                  state <= F;
               else
                  state <= K;
            end
				L : begin
               state <= M;
            end
				M : begin
               state <= N;
            end
				N : begin
               state <= O;
            end
				O : begin
               if (Open)
						state <= L;
					else
						state <= K;
            end
				
				//Fourth Floor
				P : begin
               if (Four)
                  state <= Q;
               else if (Two | Three | One)
                  state <= K;
               else
                  state <= P;
            end
				Q : begin
               state <= R;
            end
				R : begin
               state <= S;
            end
				S : begin
               state <= T;
            end
				T : begin
               if (Open)
						state <= Q;
					else
						state <= P;
            end
				
				
         endcase

   assign First = (state == A|state == B| state == C| state == D| state == E);
   assign Second = (state == F| state == G | state == H| state == I| state == J);
	assign Third = (state == K | state == L | state == M | state == N|state == O);
   assign Fourth = (state == P| state == Q| state == R| state == S| state == T);
	assign Door = (state == B| state == C| state == D|state == E|state == G|
	               state == H| state == I| state == J| state == L| state == M|
						state == N| state == O| state == Q| state == R| state == S|state == T);
   // Add other output equations as necessary
		   
			


endmodule
