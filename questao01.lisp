;================QUESTAO 01======================================

(defun fibonacci_resultado (num)

	(loop
		with cont = 0 
		with fibo = 1
		with result = 0

 		while (<= fibo num) ; enquanto o valor da sequencia em questao for menor ou igual a do usuario
  		do (setf cont (+ cont 1)) ; atualizacao dentro do loop da variavel cont
  		do (setf result (+ result fibo)) ;atualizacao dentro do loop da variavel result 
  		do (setf fibo (fibonacci cont)) ; proximo valor da sequencia
  		
  		finally
  		(format t "O somatorio e igual a: ~S" result) ; imprime o somatorio
 		
	)
)
;---------------------------------------------------------------------

(defun fibonacci (N)
    (if (or (zerop N) (= N 1)) ;zerop é uma funcao que retorna verdadeiro se o N for 0 e temos o OR que da margem para duas condicoes
        1                      ;retorna 1 caso N seja 0 ou 1
        (let
            ((F1 (fibonacci (- N 1)))		; entra na sequencia de fibonacci caso seja diferente dos citados acima e é retornado valores maiores que 1
             (F2 (fibonacci (- N 2))))
            (+ F1 F2) 
        )
    )
)
;---------------------------------------------------------------------

(format t "Digite um valor da seuqnecia de fibonacci como valor de parada: ")
(setq n (read))    	


(fibonacci_resultado n);chamada da funcao


; 
; 
; 
; 
; 
; 

