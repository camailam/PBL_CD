module igualdade_funcoes(
	input a,b,c,d,e,f,
	output wire igualdade
);
wire [5:0] data;
not not0(c1,c);
not not1(b1,b);
not not2(a1,a);
not not3(f1,f);
not not4(e1,e);
not not5(d1,d);
and and0(data[0],c1,f);
and and1(data[1],b1,e);
and and2(data[2],a1,d);
and and3(data[3],c,f1);
and and4(data[4],b,e1);
and and5(data[5],a,d1);
or or0(igualdade,data[0],data[1],data[2],data[3],data[4],data[5]);
endmodule 
//verifica se as funções das duas interfaces são iguais 