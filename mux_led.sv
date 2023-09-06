`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 05:43:25 PM
// Design Name: 
// Module Name: mux_led
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_led#(parameter N=7)(
    input logic [N-1:0] in0,
    input logic [N-1:0] in1,
    input logic [N-1:0] in2,
    input logic [N-1:0] in3,
    input logic [N-1:0] in4,
    input logic [N-1:0] in5,
    input logic [N-1:0] in6,
    input logic [N-1:0] in7,
    input logic [2:0] sel,
    output logic [N-1:0] sseg
    );
    
    parameter [6:0] A=3'b000;
    parameter [6:0] B=3'b001;
    parameter [6:0] C=3'b010;
    parameter [6:0] D=3'b011;
    parameter [6:0] E=3'b100;
    parameter [6:0] F=3'b101;
    parameter [6:0] G=3'b110;
    parameter [6:0] H=3'b111;
    
    always_comb
       case(sel)
       A: sseg=in0;
       B: sseg=in1;
       C: sseg=in2;
       D: sseg=in3;
       E: sseg=in4;
       F: sseg=in5;
       G: sseg=in6;
       H: sseg=in7;
       default: sseg=7'bzzzzzzz;
     endcase
       
   
    
endmodule
