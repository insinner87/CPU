`timescale 1ns/1ps

module alu_tb;

reg [7:0] a,b;
reg [2:0] op;
wire [7:0] result;

alu dut(a,b,op,result);

initial begin
    a=8'hFF;
    b=8'h00;
    op =3'b010;
    #10 a=8'hAA;b=8'h10;op=3'b000;
end

initial begin
        $monitor("time=%0t : A=%h, B=%h, ALU_Sel=%b,result=%h ", $time, a, b, op,result);
    end
endmodule