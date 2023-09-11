`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2023 01:33:57 PM
// Design Name: 
// Module Name: top_sseg
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


module WrapperLedDrive(
    input logic [1:0] SW,
    //input logic SW[1],
    input logic sys_clk_pin,
    //input logic rst,
    output logic [1:0] CA,
    output logic [1:0] CB,
    output logic [1:0] CC,
    output logic [1:0] CD,
    output logic [7:0] sseg,
    output logic [3:0] an
    );

logic [1:0] change;

top_sseg DUT(
    .en(SW[0]),
    .cw(SW[1]),
    .clk(sys_clk_pin),
    .change(change),
    .sseg(sseg),
    .an(an)
    );
    
    always_comb
    case (change)
        2'b00: 
        begin
            CA = sseg;
            CB = 7'b1111111;
            CC = 7'b1111111;
            CD = 7'b1111111;
        end
        2'b01: 
        begin
            CA = 7'b1111111;
            CB = sseg;
            CC = 7'b1111111;
            CD = 7'b1111111;
        end
        2'b10: 
        begin
            CA = 7'b1111111;
            CB = 7'b1111111;
            CC = sseg;
            CD = 7'b1111111;
        end
        2'b11: 
        begin
            CA = 7'b1111111;
            CB = 7'b1111111;
            CC = 7'b1111111;
            CD = sseg;
        end
    endcase
    

endmodule
