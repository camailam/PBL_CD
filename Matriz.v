module Matriz(
	input a,b,c,d,e,f,
	output wire [7:0] matriz
);
wire [12:0] data;
not not0(a1,a);
not not1(b1,b);
not not2(c1,c);
not not3(d1,d);
not not4(e1,e);
not not5(f1,f);
//linha 1
or or0(data[0],d,e1,f);
or or1(data[1],a,b1,c);
or or2(data[2],a,b1,d,f);
and and0(matriz[0],data[0],data[1],data[2]);
//linha 2
not not6(matriz[1],1'b0);
//linha 3
or or3(data[3],a,b,c);
or or4(data[4],d,e,f);
and and1(matriz[2],data[3],data[4]);
//linha 4
or or5(data[5],d1,e1,f1);
or or6(data[6],a1,b1,c1);
and and3(matriz[3],data[5],data[6]);
//linha 5
or or7(data[7],d1,e1,f);
or or8(data[8],a1,b1,c);
and and4(matriz[4],data[7],data[8]);
//linha 6
or or9(data[9],d1,e,f1);
or or10(data[10],a1,b,c1);
and and5(matriz[5],data[9],data[10]);
//linha7
or or11(data[11],d1,e,f);
or or12(data[12],a1,b,c);
and and6(matriz[6],data[11],data[12]);
//coluna
or or13(matriz[7],c1,f1,d,a);
endmodule 