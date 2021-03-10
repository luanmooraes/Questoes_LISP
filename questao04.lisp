;====================QUESTAO 04=================

(format t "Insira o primeiro valor:") 
(setq valor1(read))
(cond((< valor1 0) ; condicao que verifica se o valor é positivo ou negativo. Caso seja negativo, a condiçao pede para colocar um numero positivo
		(format t "Digite um numero positivo:")
		(setq valor1(read))
	)	
)

(format t "Insira o segundo valor")
(setq valor2(read))
(cond((< valor2 0) ;condicao que verifica se o valor é positivo ou negativo. Caso seja negativo, a condiçao pede para colocar um numero positivo
		(format t "Digite um numero positivo:")
		(setq valor2(read))
	)
)

;--------------------------------------------------
;Nesta funçao É USADO um algortimo recursivo de MDC. Dessa forma, crio a funcao mdc com 2 parametros.
(defun mdc (a b) 
	(if (= b 0) ;se b=0 ele retorna o primeiro parametro a 
		a 
		(mdc b (mod a b)))) ;se nao vai ser calculado o mod de a e b e depois recursivamente agora com novos parametros de b com o resultado encontrado do mod de a e b.

;--------------------------------------------------
(print (mdc valor1 valor2)) ;chamada da funcao mdc
;--------------------------------------------------