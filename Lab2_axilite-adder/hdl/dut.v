`timescale 1ns / 1ps


module dut(
    input wire [31:0] input1, 
    input wire [31:0] input2, 
    input wire [31:0] input3, 
    input wire [31:0] input4, 
    input wire [31:0] input5, 
    input wire [31:0] input6, 
    input wire [31:0] input7, 
    input wire [31:0] input8, 
    output wire [31:0] sum
);
wire [31:0]sum_lv1[3:0];
wire [31:0]sum_lv2[1:0];

assign sum_lv1[0] = input1 + input2;
assign sum_lv1[1] = input3 + input4;
assign sum_lv1[2] = input5 + input6;
assign sum_lv1[3] = input7 + input8;
assign sum_lv2[0] = sum_lv1[0] + sum_lv1[1];
assign sum_lv2[1] = sum_lv1[2] + sum_lv1[3];
assign sum = sum_lv2[1] + sum_lv2[0];

endmodule
