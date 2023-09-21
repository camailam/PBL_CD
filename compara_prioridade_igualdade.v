module compara_prioridade_igualdade(
	input a,b,c,
	output wire prioridadefinal0,prioridadefinal1
);
wire [2:0] data;
//saida 1
not not0(a1,a);
and and0(data[0],b,c);
or or0(prioridadefinal0,a,data[0]);
//saida 2
and and1(data[1],a,c);
and and2(data[2],a1,b);
or or1(prioridadefinal1,data[1],data[2]);
endmodule 
//caso as funções sejam diferentes os dois perfis tem acesso, caso sejam iguais, a prioridade é mantida