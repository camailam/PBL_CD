module seis_bits_func1(
	input a,b,c,d,
	output wire [5:0] seis_bits1
);
//saida 1
not not0(d1,d);
and and0(seis_bits1[0],a,d1);
//saida 2
or or0(seis_bits1[1],d,b);
//saida 3
or or1(seis_bits1[2],d,c);
//saida 4
and and1(seis_bits1[3],a,d);
//saida 5
or or2(seis_bits1[4],d1,b);
//saida 6
or or3(seis_bits1[5],d1,c);
endmodule 
//transfere os 3 bits da função da interface 2 para a interface de saida correta e 000 para a outra 