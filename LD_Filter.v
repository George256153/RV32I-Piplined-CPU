module LD_Filter(
	input[2:0] fun_3,
	input[31:0] ld_data,
	output reg[31:0] ld_data_f
);
always@(*)
begin
case(fun_3)
3'b000:
	ld_data_f = { {24{ld_data[7]}},ld_data[7:0] }; //lb
3'b001:
	ld_data_f = { {16{ld_data[15]}},ld_data[15:0] }; //lh
3'b010:
	ld_data_f = ld_data; //lw
3'b100:
ld_data_f = { 24'b0,ld_data[7:0] }; //lbu
default:
	ld_data_f = { 16'b0,ld_data[15:0] }; //lhu
endcase
end
endmodule
