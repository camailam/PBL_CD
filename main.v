module main(
	input wire [11:0] entradas,
	output wire [23:0] saidas
);
//conecta módulos
wire out1;
wire out2;
wire [2:0] transbitsperfil;
wire [2:0] transbitsperfil1;
wire out3;
wire out4;
wire [2:0] transbitsfunc;
wire [2:0] transbitsfunc1;
wire out5;
wire out6;
wire out7;
wire out8;
wire out9;
wire [2:0] bitsfuncfinal;
wire [2:0] bitsfuncfinal1;
wire out10;
wire out11;
wire [5:0] seis_bits;
wire [5:0] seis_bits1;
wire out12;
wire out13;
wire out14;
wire out15;
wire out16;
wire [2:0] vaiParaDecod7SEG;
wire [2:0] vaiParaDecod7SEG1;
wire [2:0] bits3;
wire [11:0] decod7seg;
wire [3:0] leds;
wire [7:0] matriz;

validade_perfil p0(
.a(entradas[0]),
.b(entradas[1]),
.c(entradas[2]),
.l(out1)
);
validade_perfil1 p1(
.a(entradas[3]),
.b(entradas[4]),
.c(entradas[5]),
.l(out2)
);
transferencia_bits_perfil tp0(
.a(entradas[0]),
.b(entradas[1]),
.c(entradas[2]),
.d(out1),
.transbitsperfil({transbitsperfil[0], transbitsperfil[1], transbitsperfil[2]})
);
transferencia_bits_perfil1 tp1(
.a(entradas[3]),
.b(entradas[4]),
.c(entradas[5]),
.d(out2),
.transbitsperfil1({transbitsperfil1[0], transbitsperfil1[1], transbitsperfil1[2]})
);
funcao_comparacao_perfil fcp0(
.a(transbitsperfil[0]),
.b(transbitsperfil[1]),
.c(transbitsperfil[2]),
.d(entradas[6]),
.e(entradas[7]),
.f(entradas[8]),
.funcCompPerfil(out3)
);
funcao_comparacao_perfil1 fcp1(
.a(transbitsperfil1[0]),
.b(transbitsperfil1[1]),
.c(transbitsperfil1[2]),
.d(entradas[9]),
.e(entradas[10]),
.f(entradas[11]),
.funcCompPerfil1(out4)
);
transferencia_bits_funcao tf0(
.a(entradas[6]),
.b(entradas[7]),
.c(entradas[8]),
.d(out3),
.transbitsfunc({transbitsfunc[0], transbitsfunc[1], transbitsfunc[2]})
);
transferencia_bits_funcao1 tf1(
.a(entradas[9]),
.b(entradas[10]),
.c(entradas[11]),
.d(out4),
.transbitsfunc1({transbitsfunc1[0], transbitsfunc1[1], transbitsfunc1[2]})
);
igualdade_funcoes i(
.a(transbitsfunc[0]),
.b(transbitsfunc[1]),
.c(transbitsfunc[2]),
.d(transbitsfunc1[0]),
.e(transbitsfunc1[1]),
.f(transbitsfunc1[2]),
.igualdade(out5)
);
prioridade p(
.a(transbitsperfil[0]),
.b(transbitsperfil[1]),
.c(transbitsperfil[2]),
.d(transbitsperfil1[0]),
.e(transbitsperfil1[1]),
.f(transbitsperfil1[2]),
.prioridade0(out6),
.prioridade1(out7)
);
compara_prioridade_igualdade cpi(
.a(out6),
.b(out7),
.c(out5),
.prioridadefinal0(out8),
.prioridadefinal1(out9)
);
compara_transfere_bits_func ctbf0(
.a(transbitsfunc[0]),
.b(transbitsfunc[1]),
.c(transbitsfunc[2]),
.d(out8),
.bitsfuncfinal({bitsfuncfinal[0],bitsfuncfinal[1],bitsfuncfinal[2]})
);
compara_transfere_bits_func1 ctbf1(
.a(transbitsfunc1[0]),
.b(transbitsfunc1[1]),
.c(transbitsfunc1[2]),
.d(out9),
.bitsfuncfinal1({bitsfuncfinal1[0],bitsfuncfinal1[1],bitsfuncfinal1[2]})
);
 qual_interface qi0(
.a(transbitsperfil[0]),
.b(transbitsperfil[1]),
.c(transbitsperfil[2]),
.qualinterface(out10)
);
qual_interface1 qi1(
.a(transbitsperfil1[0]),
.b(transbitsperfil1[1]),
.c(transbitsperfil1[2]),
.qualinterface1(out11)
);
seis_bits_func sbf0(
.a(bitsfuncfinal[0]),
.b(bitsfuncfinal[1]),
.c(bitsfuncfinal[2]),
.d(out10),
.seis_bits({seis_bits[0],seis_bits[1],seis_bits[2],seis_bits[3],seis_bits[4],seis_bits[5]})
);
seis_bits_func1 sbf1(
.a(bitsfuncfinal1[0]),
.b(bitsfuncfinal1[1]),
.c(bitsfuncfinal1[2]),
.d(out11),
.seis_bits1({seis_bits1[0],seis_bits1[1],seis_bits1[2],seis_bits1[3],seis_bits1[4],seis_bits1[5]})
);
func20 f20(
.a(seis_bits[0]),
.b(seis_bits[1]),
.c(seis_bits[2]),
.funcc20(out12)
);
func21 f21(
.a(seis_bits1[0]),
.b(seis_bits1[1]),
.c(seis_bits1[2]),
.funcc21(out13)
);
define_passagem_bits_mostrador dpbm(
.a(out12),
.b(out13),
.c(out8),
.d(out9),
.bits_mostrador(out14),
.bits_mostrador1(out15)
);
vai_para_decod_mostrador0 VPDM0(
.a(transbitsperfil[0]),
.b(transbitsperfil[1]),
.c(transbitsperfil[2]),
.d(out14),
.vaiParaDecod7SEG({vaiParaDecod7SEG[0],vaiParaDecod7SEG[1],vaiParaDecod7SEG[2]})
);
vai_para_decod_mostrador1 VPDM1(
.a(transbitsperfil1[0]),
.b(transbitsperfil1[1]),
.c(transbitsperfil1[2]),
.d(out15),
.vaiParaDecod7SEG1({vaiParaDecod7SEG1[0],vaiParaDecod7SEG1[1],vaiParaDecod7SEG1[2]})
);
bits3mostrador b3m(
.a(vaiParaDecod7SEG[0]),
.b(vaiParaDecod7SEG[1]),
.c(vaiParaDecod7SEG[2]),
.d(vaiParaDecod7SEG1[0]),
.e(vaiParaDecod7SEG1[1]),
.f(vaiParaDecod7SEG1[2]),
.bits3({bits3[0],bits3[1],bits3[2],})
);
pelo_menos_um_perfil_valido pmupv(
.a(out1),
.b(out2),
.validademostrador(out16)
);
decod_mostrador dm(
.a(bits3[0]),
.b(bits3[1]),
.c(bits3[2]),
.d(out16),
.decod7seg({saidas[12],saidas[13],saidas[14],saidas[15],saidas[16],saidas[17],saidas[18],saidas[19],saidas[20],saidas[21],saidas[22],saidas[23]})
);
LEDs ledss(
.a(seis_bits[3]),
.b(seis_bits[4]),
.c(seis_bits[5]),
.d(seis_bits1[3]),
.e(seis_bits1[4]),
.f(seis_bits1[5]),
.leds({saidas[8],saidas[9],saidas[10],saidas[11]})
);
Matriz mt(
.a(seis_bits[0]),
.b(seis_bits[1]),
.c(seis_bits[2]),
.d(seis_bits1[0]),
.e(seis_bits1[1]),
.f(seis_bits1[2]),
.matriz({saidas[0],saidas[1],saidas[2],saidas[3],saidas[4],saidas[5],saidas[6],saidas[7]})
);
endmodule 
