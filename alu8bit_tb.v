`timescale 1ns/1ps
module alu8bit_tb;
reg [2:0]opcode;
reg [7:0]in1,in2;
wire [15:0]result;
wire flagc,flagz;
reg [2:0] count=3'b0;//temporary variable

alu8bit uut(
.opcode(opcode),
.in1(in1),
.in2(in2),
.result(result),
.flagc(flagc),
.flagz(flagz));

initial begin 
opcode =3'b0;
in1=8'd0;
in2=8'd0;
#100;
in1=8'hAA;
in2=8'h55;
for(count =0;count<8;count=count+1'b1)
begin
opcode=count;
#20;
end
end
endmodule
