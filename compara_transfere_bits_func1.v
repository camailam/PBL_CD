module compara_transfere_bits_func1(
	input a,b,c,d,
	output wire [2:0] bitsfuncfinal1
);
//saida 1
and and0(bitsfuncfinal1[0],a,d);
//saida 2
not not0(d1,d);
or or0(bitsfuncfinal1[1],b,d1);
//saida 3
or or1(bitsfuncfinal1[2],c,d1);
endmodule 
//passa bits da função da interface 2 ou 011