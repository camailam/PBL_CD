module decod_mostrador(
	input a,b,c,d,
	output wire [11:0] decod7seg
);
wire [4:0] conecta;
// As primeiras saidas se referem ao números
//saida 1
not not0(decod7seg[0],1'b0);
//saida 2
not not1(decod7seg[1],1'b0);
//saida 3
not not2(decod7seg[2],1'b0);
//saida 4
not not3(decod7seg[3],1'b0);
//saida 5
not not4(decod7seg[4],1'b0);
//saida 6
not not5(c1,c);
not not6(d1,d);
not not7(b1,b);
not not8(a1,a);
and and0(decod7seg[5],a1,b1,d);
//saida 7
and and1(conecta[0],c1,d);
and and2(conecta[1],b,d);
or or0(decod7seg[6],conecta[0],conecta[1]);
//saida 8
and and3(conecta[2],a1,c1);
and and4(conecta[3],a1,b);
or or1(decod7seg[7],d1,conecta[2],conecta[3]);
//saida 9
and and5(conecta[4],a,b1);
or or2(decod7seg[8],d1,conecta[2],conecta[3],conecta[4]);
//saida 10
and and6(decod7seg[9],a1,c1,d);
//saida 11
and and7(decod7seg[10],a1,c1,d);
//saida 12
and and8(decod7seg[11],a1,d);
endmodule 