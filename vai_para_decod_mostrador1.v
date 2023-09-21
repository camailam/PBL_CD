module vai_para_decod_mostrador1(
	input a,b,c,d,
	output wire [2:0] vaiParaDecod7SEG1
);
//saida 1
and and0(vaiParaDecod7SEG1[0],a,d);
//saida 2
and and1(vaiParaDecod7SEG1[1],b,d);
//saida 3
and and2(vaiParaDecod7SEG1[2],c,d);
endmodule 
//Passa o perfil da interface 2 ou 000