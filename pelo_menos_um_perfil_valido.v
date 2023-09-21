module pelo_menos_um_perfil_valido(
	input a,b,
	output wire validademostrador
);
or or0(validademostrador,a,b);
endmodule 
//verifica se pelo menos um dos perfis é válido para saber se o mostrador fica em automático ou não