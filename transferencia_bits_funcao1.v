module transferencia_bits_funcao1(
	input a,b,c,d,
	output wire [2:0] transbitsfunc1
);
//saida 1
and and0(transbitsfunc1[0],a,d);
not not0(d1,d);
//saida 2
or or0(transbitsfunc1[1],b,d1);
//saida 3
or or1(transbitsfunc1[2],c,d1);
endmodule 
//transfere bits da funcionalidade caso o perfil da interface 2 tenha acesso a ela ou 011