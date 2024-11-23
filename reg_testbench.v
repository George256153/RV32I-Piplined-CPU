`timescale 1ns/10ps
`include "Top_syn.v"
`include "TSMC180/tsmc18.v"

module testbench();

reg clk;
reg rst;
reg[4:0] E_op;
reg[2:0] E_fun_3;
reg E_fun_7;
reg [31:0] operand1,operand2;
reg E_mulbit;
wire [31:0] E_alu_out;
ALU ALU(
.opcode(E_op),
.fun_3(E_fun_3),
.fun_7(E_fun_7),
.operand1(operand1),
.clk(clk),
.rst(rst),
.operand2(operand2),
.alu_out_out(E_alu_out),
.mulbit(E_mulbit)
);
always #5 clk=~clk;
initial 
begin
	clk=0;
	rst=1;

	E_op=5'd1;
	E_fun_3=3'd4;
	E_fun_7=1'd1;
	operand1=32'd10;
	operand2=32'd7;
	E_mulbit=1'd1;
	#20
	rst=0;
	#10
	E_op=5'd2;
	E_fun_3=3'd2;
	E_fun_7=1'd1;
	operand1=32'd5;
	operand2=32'd4;
	E_mulbit=1'd1;
	#10
	E_op=5'd1;
	E_fun_3=3'd3;
	E_fun_7=1'd0;
	operand1=32'd10;
	operand2=32'd2;
	E_mulbit=1'd0;
	$finish;
end
`ifdef SYN
	initial $sdf_annotate("Top_syn.sdf",ALU);
`endif

endmodule
