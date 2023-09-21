module transferencia_bits_funcao(
	input a,b,c,d,
	output wire [2:0] transbitsfunc
);
//saida 1
and and0(transbitsfunc[0],a,d);
not not0(d1,d);
//saida 2
or or0(transbitsfunc[1],b,d1);
//saida 3
or or1(transbitsfunc[2],c,d1);
endmodule 
//transfere bits da funcionalidade caso o perfil da interface 1 tenha acesso a ela ou 011