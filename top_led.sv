`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 06:32:03 PM
// Design Name: 
// Module Name: top_led
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


module top_led#(parameter N=7)(
    output logic [3:0] an,
    output logic [6:0] sseg,
    input logic clk,
    input logic rst,
    input logic en,
    input logic cw,
    input logic [N-1:0] in0,
    input logic [N-1:0] in1,  
    input logic [N-1:0] in2,  
    input logic [N-1:0] in3, 
    input logic [N-1:0] in4,  
    input logic [N-1:0] in5,  
    input logic [N-1:0] in6,  
    input logic [N-1:0] in7  
    //output logic tic,
    );
    
    
    logic [2:0] sel;
    logic [7:0] count;
   /*
    parameter N=7;
    logic [N-1:0] in0;
    logic [N-1:0] in1;  
    logic [N-1:0] in2;  
    logic [N-1:0] in3; 
    logic [N-1:0] in4;  
    logic [N-1:0] in5;  
    logic [N-1:0] in6;  
    logic [N-1:0] in7;  
    logic [2:0] sel;  
    logic [N-1:0] sseg; 
    */
    
    mux_led#(.N(7)) DUT(
       .in0(in0),
       .in1(in1),
       .in2(in2),
       .in3(in3),
       .in4(in4),
       .in5(in5),
       .in6(in6),
       .in7(in7),
       .sel(sel),
       .sseg(sseg)
    );
    
    count_n#(.N(8)) COUNT(
       .clk(clk),
       .rst(rst),
       .cw(cw), 
       .en(en),
       .count(count)
    );
    
    always_comb
       case (count)
          3'b000:
             begin
                an=4'b1110;
                sel=count;
             end
          3'b001:
             begin
                an=4'b1101;
                sel=count;
             end
          3'b010:
             begin
                an=4'b1011;
                sel=count;
             end
          3'b011:
             begin
                an=4'b0111;
                sel=count;
             end
          3'b100:
             begin
                an=4'b0111;
                sel=count;
             end
          3'b101:
             begin
                an=4'b1011;
                sel=count;
             end
         3'b110:
             begin
                an=4'b0111;
                sel=count;
             end
         3'b111:
             begin
                an=4'b1110;
                sel=count;
             end
       endcase
endmodule
