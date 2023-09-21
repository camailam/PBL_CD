module prioridade(
	input a,b,c,d,e,f,
	output wire prioridade0, prioridade1
);
wire [13:0] data;
not not0(a1,a);
not not1(b1,b);
not not2(c1,c);
not not3(d1,d);
not not4(e1,e);
not not5(f1,f);
//saida 1(equivale a interface 1)
and and0(data[0],a1,c,f1);
and and1(data[1],a,b1,c);
and and2(data[2],a1,c,d1,e1);
and and3(data[3],a1,c,d,e);
and and4(data[4],a1,b,c,d1);
and and5(data[5],a,b,c1,f1);
and and6(data[6],a,b,c1,d,e);
or or0(prioridade0,data[0],data[1],data[2],data[3],data[4],data[5],data[6]);
//saida 2(equivale a interface 2)
and and7(data[7],c1,d1,f);
and and8(data[8],d,e1,f);
and and9(data[9],a1,b1,d1,f);
and and10(data[10],a1,d1,e,f);
and and11(data[11],c1,d,e,f1);
and and12(data[12],a,b,d1,f);
and and13(data[13],a,b,d,e,f1);
or or1(prioridade1,data[7],data[8],data[9],data[10],data[11],data[12],data[13]);
endmodule 
//verifica prioriade entre os perfis das duas interfaces 