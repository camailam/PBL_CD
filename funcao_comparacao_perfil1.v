module funcao_comparacao_perfil1(
	input a,b,c,d,e,f,
	output wire funcCompPerfil1
);
wire [5:0] data;
not not0(a1,a);
not not1(d1,d);
not not2(f1,f);
not not3(b1,b);
not not4(e1,e);
not not5(c1,c);
and and0(data[0],c,d1,e1);
and and1(data[1],c,d1,f1);
and and2(data[2],c,d,f);
and and3(data[3],a,b1,f1);
and and4(data[4],b,d1,e,f1);
and and5(data[5],b,d,e1,f);
or or0(funcCompPerfil1,data[0],data[1],data[2],data[3],data[4],data[5]);
endmodule 
//verifica se o perfil está tentando acessar uma função permitida na interface 2
 