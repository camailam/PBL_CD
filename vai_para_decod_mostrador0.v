module vai_para_decod_mostrador0(
	input a,b,c,d,
	output wire [2:0] vaiParaDecod7SEG
);
//saida 1
and and0(vaiParaDecod7SEG[0],a,d);
//saida 2
and and1(vaiParaDecod7SEG[1],b,d);
//saida 3
and and2(vaiParaDecod7SEG[2],c,d);
endmodule 
//Passa o perfil da interface 1 ou 000