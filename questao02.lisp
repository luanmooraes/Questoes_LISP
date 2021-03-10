;======================QUESTAO 02=====================================

(format t "Insira a quantidades de termos para o calculo da serie:")
(setf valor(read))
(setq soma 0)

;------------------------------------------------------------------
;Criando a funcao que faz a soma dos valores que convergem para pi
(defun somapi(valor)  
	
	(dotimes (i valor) ;tenho um loop que vai de i=0 ate o valor que foi inserido para limitar a qtd de termos. 
		(if (= (mod i 2) 0) ;se i mod 2 for igual a 0 é executado o primeiro argumento. Se nao, executado o segundo argumento  
			
			(setq soma (+ soma (/ 1.0 (+ (* 2.0 i) 1.0)))) ;Primeiro argumento
		    (setq soma (- soma (/ 1.0 (+ (* 2.0 i) 1.0)))) ;Segundo argumento
		
		)
	)	
	
	(setq pis (* 4.0 soma))	
	;pegando a soma total e multiplicando por 4 e assim temos a definicao da serie que tende a pi	
)

;------------------------------------------------------------------

(somapi valor)
(format t "~%Soma = ~D" pis)