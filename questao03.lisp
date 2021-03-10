;==================QUESTAO 03==================================

;Criando as variaveis atraves do preenchimento e depois leitura
(format t "Digite seu Nome: ")
(setq nome-pessoa (read-line))

(format t"Digite sua idade: ")
(setq idade-pessoa (read-line))

(format t"Digite sua cidade: ")
(setq cidade-pessoa(read-line))

(format t "Digite seu bairro: ")
(setq bairro-pessoa(read-line))

(format t "Digite sua rua: ")
(setq rua-pessoa(read-line))

(format t "Digite seu numero: ")
(setq numero-pessoa(read-line))

(format t "Digite seu peso: ")
(setq peso-pessoa(read-line))

(format t "Digite seu email: ")
(setq email-pessoa(read-line))

(format t "Digite seu telefone: ")
(setq telefone-pessoa(read-line))
;------------------------------------------
;Definindo as estruturas endereco e pessoa
(defstruct endereco
	cidade 
	bairro
	rua
	numero
)
;A estrutura pessoa inclue tambem os dados de endereço
(defstruct (pessoa (:include endereco))
	nome
	idade
	peso 
	email
	telefone
)
;------------------------------------------
(setq cadastro (make-pessoa 
	:nome nome-pessoa
	:idade idade-pessoa
	:cidade cidade-pessoa
	:bairro bairro-pessoa
	:rua rua-pessoa
	:numero numero-pessoa
	:peso peso-pessoa
	:email email-pessoa
	:telefone telefone-pessoa

))
;--------------------------------------------
;Definindo a funcao que mostrara a lista de dados da pessoa 
(defun mostrar (pessoa)
	(format t "~%Nome: ~S~%Idade: ~D ~%Cidade: ~S ~%Bairro: ~S ~%Rua: ~S ~%Numero: ~D ~%Peso: ~D ~%Email: ~S ~%Telefone: ~D"
	(pessoa-nome cadastro) (pessoa-idade cadastro)(pessoa-cidade cadastro)
	(pessoa-bairro cadastro)(pessoa-rua cadastro)(pessoa-numero cadastro)
	(pessoa-peso cadastro)(pessoa-email cadastro)(pessoa-telefone cadastro))
)
;----------------------------------------------
;Chamando a funçao que mostrara a lista de dados da pessoa
(mostrar cadastro)



