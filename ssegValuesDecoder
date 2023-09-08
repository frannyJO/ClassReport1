`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2023 07:06:10 PM
// Design Name: 
// Module Name: ssegValuesDecoder
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


module ssegValuesDecoder(
    input logic [2:0] ThreeIn,    
    output logic [27:0] ssegValues
    );
    
    always_comb
        case (ThreeIn)
            3'b000: ssegValues = 28'b0011100111111111111111111111;
            3'b001: ssegValues = 28'b1111111001110011111111111111;
            3'b010: ssegValues = 28'b1111111111111100111001111111;
            3'b011: ssegValues = 28'b1111111111111111111110011100;
            3'b100: ssegValues = 28'b1111111111111111111110100011;
            3'b101: ssegValues = 28'b1111111111111101000111111111;
            3'b110: ssegValues = 28'b1111111010001111111111111111;
            default: ssegValues = 28'b0100011111111111111111111111;
        endcase 
    
endmodule
