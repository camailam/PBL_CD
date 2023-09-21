module compara_transfere_bits_func(
	input a,b,c,d,
	output wire [2:0] bitsfuncfinal
);
//saida 1
and and0(bitsfuncfinal[0],a,d);
//saida 2
not not0(d1,d);
or or0(bitsfuncfinal[1],b,d1);
//saida 3
or or1(bitsfuncfinal[2],c,d1);
endmodule 
//passa bits da função da interface 1 ou 011