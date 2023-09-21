module bits3mostrador(
	input a,b,c,d,e,f,
	output [2:0] bits3
);
wire [11:0] data;
not not0(a1,a);
not not1(b1,b);
not not2(c1,c);
not not3(d1,d);
not not4(e1,e);
not not5(f1,f);
//primeira saida
and and0(data[0],a1,b1,c1,d,e1,f);
and and1(data[1],a1,b1,c1,d,e,f1);
and and2(data[2],a,b1,c,d1,e1,f1);
and and3(data[3],a,b,c1,d1,e1,f1);
or or0(bits3[0],data[0],data[1],data[2]);
//segunda saida
and and4(data[4],a1,b1,c1,d1,e,f);
and and5(data[5],a1,b1,c1,d,e,f1);
and and6(data[6],a1,b,c,d1,e1,f1);
and and7(data[7],a,b,c1,d1,e1,f1);
or or1(bits3[1],data[4],data[5],data[6],data[7]);
//terceira saida
and and8(data[8],a1,b1,c1,d1,f);
and and9(data[9],a1,b1,c1,e1,f);
and and10(data[10],a1,c,d1,e1,f1);
and and11(data[11],b1,c,d1,e1,f1);
or or2(bits3[2],data[8],data[9],data[10],data[11]);
endmodule 
//Recebe 3 bits de cada interface e passa apenas os 3 bits válidos ou 000 caso todos os 6 recebidos tenham sido 0