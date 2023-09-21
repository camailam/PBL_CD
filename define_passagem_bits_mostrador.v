module define_passagem_bits_mostrador(
	input a,b,c,d,
	output bits_mostrador, bits_mostrador1
);
wire [3:0] data;
not not0(a1,a);
not not1(b1,b);
not not2(c1,c);
not not3(d1,d);
//saida 1
and and0(data[0],b,c1,d);
and and1(data[1],a1,b,c);
or or0(bits_mostrador,data[0],data[1]);
//saida 2
and and2(data[2],a,c,d1);
and and3(data[3],a,b1,d);
or or1(bits_mostrador1,data[2],data[3]);
endmodule 
//Define o perfil de qual interface deve ir para o mostrador 