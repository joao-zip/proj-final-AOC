# Pong - Criado para ser jogado utilizando MARS Mips
# Alunos: João Pedro Martins Oliveira
# Alunos: Larissa Martins Sá

.data
	xDir:			.word 1			# Começa indo pra direita
						 	# eixo X sempre move 1 unidade entao nao precisa de velocidade
	ySpeed:			.word -1		# Espera isso para ir 1 unidade no eixo Y
	yDir:			.word -1		# Começa descendo
	P1Score:		.word 0
	P2Score:		.word 0
	compCount:		.word 0
	compSpeed:		.word 0			# Depois da colisão isso é setado como o nível
	Level:			.word 6
	colorOne:		.word 0x00ff8000
	colorTwo:		.word 0x00c00080
	ballColor:		.word 0x00ffffff
	backgroundColor:	.word 0x00000000
	blueColor:		.word 0x0012fff7
	mode:			.word 0  # 1 - 1 Player mode
					 # 2 - 2 Players mode
.text
NewGame:
	jal ClearBoard

	Lines:
		li $a0, 10 
		li $a1, 13 
		lw $a2, colorTwo
		li $a3, 18 
		jal DrawHorizontalLine
		
		li $a1, 14
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a3, 54
		jal DrawHorizontalLine
		
		li $a1, 13
		jal DrawHorizontalLine
		
		li $a0, 10
		li $a1, 15
		lw $a2, blueColor
		li $a3, 18 
		jal DrawHorizontalLine
		
		li $a1, 16 
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a3, 54 
		jal DrawHorizontalLine
		
		li $a1, 15
		jal DrawHorizontalLine
		
		li $a0, 10
		li $a1, 17
		lw $a2, colorOne
		li $a3, 18
		jal DrawHorizontalLine
		
		li $a1, 18
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a3, 54
		jal DrawHorizontalLine
		
		li $a1, 17
		jal DrawHorizontalLine	
		
	PONG:
		li $a0, 21
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 27
		jal DrawVerticalLine
		
		li $a0, 31
		jal DrawVerticalLine
		
		li $a0, 33
		jal DrawVerticalLine
		
		li $a0, 37
		jal DrawVerticalLine
		
		li $a0, 39
		jal DrawVerticalLine
		
		li $a0, 34 
		li $a1, 13
		li $a3, 14
		jal DrawVerticalLine
	
		li $a0, 35
		li $a1, 15
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 25
		li $a1, 14
		jal DrawVerticalLine
		
		li $a0, 22
		li $a1, 16
		li $a3, 24
		jal DrawHorizontalLine
	
		li $a0, 22
		li $a1, 16
		li $a3, 25
		jal DrawHorizontalLine
	
		li $a1, 13
		jal DrawHorizontalLine
		
		li $a0, 27
		li $a3, 30
		jal DrawHorizontalLine
	
		li $a1, 18
		jal DrawHorizontalLine
		
		li $a0, 40
		li $a3, 43
		jal DrawHorizontalLine
		
		li $a1, 13
		jal DrawHorizontalLine
		
		li $a0, 41
		li $a1, 16
		jal DrawHorizontalLine
		
		li $a0, 36
		li $a1, 17
		jal DrawPoint
		
		li $a0, 43
		jal DrawPoint
	
	Press1or2:
		li $a0, 35
		li $a1, 25
		li $a3, 29
		jal DrawVerticalLine
		
		li $a0, 17
		jal DrawVerticalLine
		
		li $a0, 19
		jal DrawVerticalLine
		
		li $a0, 21
		jal DrawVerticalLine
		
		li $a0, 39
		jal DrawVerticalLine
		
		li $a0, 41
		jal DrawVerticalLine
		
		li $a0, 43
		jal DrawVerticalLine
		
		li $a0, 45
		jal DrawVerticalLine
		
		li $a0, 12
		jal DrawVerticalLine
		
		li $a3, 15
		jal DrawHorizontalLine
		
		li $a1, 27
		jal DrawHorizontalLine
		
		li $a0, 15
		li $a1, 26
		li $a3, 27
		jal DrawVerticalLine
		
		li $a0, 18
		li $a1, 25
		li $a3, 27
		jal DrawVerticalLine
		
		li $a0, 22
		li $a1, 27
		jal DrawPoint
		
		li $a1, 29
		jal DrawPoint
		
		li $a1, 25
		jal DrawPoint
		
		li $a0, 24 
		li $a1, 29
		li $a3, 26
		jal DrawHorizontalLine
		
		li $a0, 24
		li $a1, 27
		jal DrawHorizontalLine
		
		li $a1, 25
		jal DrawHorizontalLine
		
		li $a1, 26
		jal DrawPoint
		
		li $a0, 26
		li $a1, 28
		jal DrawPoint
		
		li $a0, 22
		li $a1, 25
		jal DrawPoint
		
		li $a0, 34
		li $a1, 26
		jal DrawPoint
		
		li $a1, 29
		li $a3, 36
		jal DrawHorizontalLine

		li $a0, 40
		jal DrawPoint
		
		li $a1, 25
		jal DrawPoint

		li $a0, 44
		li $a3, 27
		jal DrawVerticalLine
			
		li $a0, 49
		li $a1, 25
		li $a3, 50
		jal DrawHorizontalLine
	
		li $a1, 28
		jal DrawPoint
	
		li $a0, 50
		li $a1, 29
		jal DrawPoint
		
		li $a1, 27
		jal DrawPoint
	
		li $a0, 51
		li $a1, 26
		jal DrawPoint
	
		li $a0, 48
		jal DrawPoint
		
		li $a1, 29
		li $a3, 51
		jal DrawHorizontalLine

		li $a0, 28
		li $a3, 30
		jal DrawHorizontalLine
	
		li $a1, 27
		jal DrawHorizontalLine
		
		li $a1, 25
		li $a3, 30
		jal DrawHorizontalLine
	
		li $a1, 26
		jal DrawPoint
	
		li $a0, 30
		li $a1, 28
		jal DrawPoint
		
		li $a1, 26
		lw $a2, backgroundColor
		jal DrawPoint
		
		li $a0, 19
		li $a1, 27
		jal DrawPoint
		
		li $a0, 45
		jal DrawPoint
		
		li $a0, 44
		li $a1, 26
		jal DrawPoint
		
		li $a0, 18
		jal DrawPoint
		
SelectMode:
		lw $t1, 0xFFFF0004		# Observa qual tecla foi pressionada
		beq $t1, 0x00000031, SetOnePlayerMode # Apertou 1
		beq $t1, 0x00000032, SetTwoPlayerMode # Apertou 2
		
		li $a0, 250	#
		li $v0, 32	# Pausa por 250 milissegundos
		syscall		#
		
		j SelectMode    # Volta para o início do loop de espera
		
SetOnePlayerMode:
		li $t1, 1
		j BeginGame
SetTwoPlayerMode:
		li $t1, 2
BeginGame:
		sw $zero, 0xFFFF0000		# Limpa o bit do botão pressionado
		sw $t1, mode
		
# $s0 guarda dir do p1 
# $s1 guarda dir do p2
# $s2 guarda a velocidade x
# $s3 guarda a velocidade y
# $s4 guarda a posicao da 1a raquete
# $s5 guarda a posicao da 2a raquete
# $s6 guarda a posicao das bolas no eixo x
# $s7 guarda a posicao das bolas no eixo y
NewRound:

		# Inicializa os registradores para a proxima iteracao do jogo
		li $t0, 1
		li $t1, -1
		sw $t0, ySpeed
		sw $t1, yDir
		sw $zero, compSpeed
		sw $zero, compCount	# reseta compCount e compSpeed para 0 para a primeira colisao
		
		li $s0, 0 	# 0x01000000 cima; 0x02000000 baixo; 0 parado
		li $s1, 0	# 0x01000000 cima; 0x02000000 baixo; 0 parado
		lw $s2, xDir	# espera esse valor antes de ir em 1x
		lw $s3, ySpeed	# espera esse valor antes de ir em 1y
		li $s4, 13
		li $s5, 13
		li $s6, 32
		li $s7, 0

		jal ClearBoard
		
		lw $a2, P1Score
		li $a3, 1
		jal DrawScore
		lw $a2, P2Score
		li $a3, 54
		jal DrawScore
		
		li $a0, 13
		move $a1, $s4
		lw $a2, colorOne
		jal DrawPaddle
		
		li $a0, 50
		move $a1, $s5
		lw $a2, colorTwo
		jal DrawPaddle

		li $a0, 1000	#
		li $v0, 32	# espera por 1 segundo
		syscall		#

DrawObjects:
		move $a0, $s6
		move $a1, $s7
		jal CheckForCollisions
		jal MoveBall
		
		li $a0, 13
		move $a1, $s4
		lw $a2, colorOne
		move $a3, $s0
		jal DrawPaddle
		move $s4, $a1	# a1 tem a nova posicao de cima
		move $s0, $a3	# a3 tem a nova direcao guardada se acertar a borda
		
		li $a0, 50		
		move $a1, $s5
		lw $a2, colorTwo
		
startAi:
		lw $t1, mode
		bne $t1, 1, endAi 	# Muda para o modo de 2 jogadores
		
		lw $t0, compCount 	
		addi $t0, $t0, -1	# decrementa compCount
		sw $t0, compCount
		bgt $t0, 0, endAi
		lw $t0, compSpeed 	# reseta compCount
		sw $t0, compCount
		addi $t1, $s5, 2	# calcula o meio da raquete
		blt $t1, $s7, goDown	# se bally for maior que paddlemid, dir = 0x01000000
		li $s1, 0x01000000
		j endAi	
goDown: 
		li $s1, 0x02000000
endAi:
		move $a3, $s1
		jal DrawPaddle
		move $s5, $a1	# a1 tem a nova posicao de cima guardada
		move $s1, $a3	# a3 tem a nova direcao se acertar a borda
		
# Botoes de esperar e ler
Begin_standby:	
		li $t0, 0x00000002			# Carrega 25 dentro do contador para pausar por aprox. 50 miliseg
	
Standby:
		blez $t0, EndStandby
		li $a0, 10	#
		li $v0, 32	# pausa por 10 miliseg
		syscall		#
		
		addi $t0, $t0, -1 		# decrementa contador
		
		lw $t1, 0xFFFF0000		# checa se um botao foi pressionado
		blez $t1, Standby
				
		jal AdjustDir			# ve oq apertou
		sw $zero, 0xFFFF0000		# Limpa o bit de botao pressionado
		j Standby
EndStandby:		
		j DrawObjects
		
# $a0 contains the paddles x position
# $a1 contains paddles y-top position
# $a2 contains paddle color
# $a3 contains the direction
# $t0 is the loop counter
# $t1 is the current y coordinate, the x coordinate does not change
# after completed $a1 "returns" aka has stored the new y-top position, $a3 "returns" the direction
# careful to make sure nothing inbetween alters these  $a registers

# $a0 tem a posicao x da raquete
# $a1 tem a posicao "y-topo" da raquete
# $a2 tem a cor da raquete
# $a3 tem a direcao
# $t0 eh o contador de loop
# $t1 eh a coordenada y atual (a coordenada x nao muda)
# Depois de terminar $a1 "retorna" a nova direcao y-topo e $a3 "retorna" a direcao
DrawPaddle:
	# meta: olhar para a direcao, desenhar um ponto no lado certo e apagar um ponto no lado certo
	beq $a3, 0x02000000, down
	bne $a3, 0x01000000, NoMove
	up:
		# apaga ponto de baixo
   		move $t2, $a2
   		move $t1, $a1
   		addi $a1, $a1, 5	# ponto de baixo
		lw $a2, backgroundColor
		addi $sp, $sp, -4
   		sw $ra, 0($sp)   	# guarda $ra na stack
		jal DrawPoint
		lw $ra, 0($sp)		# coloca return dnv
   		addi $sp, $sp, 4	# muda a stack dnv
   		move $a1, $t1	# coloca dnv a posicao y de cima
   		move $a2, $t2	# coloca a cor
   		
		beq $a1, 0, NoMove
		addi $a1, $a1, -1
		j Move
	down:
		# apaga ponto de cima
		move $t1, $a2
		lw $a2, backgroundColor
		addi $sp, $sp, -4
   		sw $ra, 0($sp)   	# salva $ra na stack
		jal DrawPoint
		lw $ra, 0($sp)		
   		addi $sp, $sp, 4	
   		move $a2, $t1
   		
		beq $a1, 26, NoMove	# altura eh 31 - 5 = 26
		addi $a1, $a1, 1
		j Move
	NoMove:
		# senao nao faz nada, garante que a direcao eh 0
		li $a3, 0
	Move:
		li $t0, 6
	StartPLoop:
		subi $t0, $t0, 1
		addu $t1, $a1, $t0
		
		# Converte para endereços de memória
		sll $t1, $t1, 6   # multiplica a coordenada y por 64
		addu $v0, $a0, $t1
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		
		sw $a2, ($v0)
		beqz $t0, EndPLoop
		j StartPLoop
	EndPLoop:		
		jr $ra

# $a2 tem os pontos do jogador
# $a3 tem a columa do ponto mais a esquerda
# Com essa info, desenhamos os pontos dos jogadores
DrawScore:
		addi $sp, $sp, -12	# guarda os valores dos registradores na stack
   		sw $ra, 0($sp)
   		sw $s2, 4($sp)
   		sw $a2, 8($sp)
   		
   		move $s2, $a2
   		lw $a2, ballColor
   		ble $s2, 5, DrawScoreRow1
   	DrawScoreRow2:			# Segunda linha
   	
   		sub $t1, $s2, 6
   		sll $t1, $t1, 1
   		add $a0, $t1, $a3
   		li $a1, 3
   		jal DrawPoint
   		
   		addi $s2, $s2 -1
   		
   		bge $s2, 6, DrawScoreRow2
   		
	DrawScoreRow1:			# Primeira Linha
		beq $s2, $zero, DrawScoreEnd
		sub $t1, $s2, 1
		sll $t1, $t1, 1
   		add $a0, $t1, $a3
   		li $a1, 1
   		jal DrawPoint
   		
   		addi $s2, $s2, -1
   		
   		j DrawScoreRow1
	
	DrawScoreEnd:
		lw $ra, 0($sp)		# recupera os valores da stack
		lw $s2, 4($sp)
		lw $a2, 8($sp)
   		addi $sp, $sp, 12
		
		jr $ra
		
# $a0 tem a pos x 
# $a1 tem a pos y 
MoveBall:		
		# Desenha usando o ultimo ponto
		lw $a2, backgroundColor
		addi $sp, $sp, -4
   		sw $ra, 0($sp)   	# salva $ra na stack
		jal DrawPoint
		lw $ra, 0($sp)		
   		addi $sp, $sp, 4	
   		
   		add $s6, $s6, $s2	# add a velocidade x 
   		# y nao muda sempre, entao tem q ver se precisa
   		addi $s3, $s3, -1
   		bgt $s3, 0, NoYChange
ChangeY:
		lw $t0, yDir	
		add $s7, $s7, $t0
		lw $s3, ySpeed
NoYChange:
   		# faz nd
   		
   		# deesnha a nova loc
		move $a0, $s6
		move $a1, $s7
		lw $a2, ballColor
		
# $a0 tem a pos x
# $a1 tem a pos y
# $a2 tem a cor
DrawPoint:
		sll $t0, $a1, 6
		addu $v0, $a0, $t0
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		sw $a2, ($v0)
		
		jr $ra

# $a0 the x starting coordinate
# $a1 the y coordinate
# $a2 the color
# $a3 the x ending coordinate

# $a0 - inicio da coord x
# $a1 - coord y
# $a2 - a cor
# $a3 - fim da coord x
DrawHorizontalLine:
		
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		
		sub $t9, $a3, $a0
		move $t1, $a0
		
	HorizontalLoop:
		
		add $a0, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		
		bge $t9, 0, HorizontalLoop
		
		lw $ra, 0($sp)
   		addi $sp, $sp, 4

		jr $ra
		
# $a0 - coord x
# $a1 - inicio coord y
# $a2 - cor
# $a3 - fim coord y
DrawVerticalLine:

		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		
		sub $t9, $a3, $a1
		move $t1, $a1
		
	VerticalLoop:
		
		add $a1, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		
		bge $t9, 0, VerticalLoop
		
		lw $ra, 0($sp)
   		addi $sp, $sp, 4
   		
		jr $ra
		
# muda a direcao dos jogadores dependendo da tecla apertada
AdjustDir: 
		lw $a0, 0xFFFF0004		# botao de carregar apertado
		
AdjustDir_left_up:
		bne $a0, 97, AdjustDir_left_down  # a
		li $s0, 0x01000000	# cima
		j AdjustDir_done		

AdjustDir_left_down:
		bne $a0, 122, AdjustDir_right_up	# z
		li $s0, 0x02000000	# baixo
		j AdjustDir_done

AdjustDir_right_up:
		bne $a0, 107, AdjustDir_right_down # k
		li $s1, 0x01000000	# cima
		j AdjustDir_done

AdjustDir_right_down:
		bne $a0, 109, AdjustDir_none	# m
		li $s1, 0x02000000	# baixo
		j AdjustDir_done

AdjustDir_none:
						# faz nd
AdjustDir_done:
		jr $ra				# retorna

# Checa por colisoes e age como precisar
# $a0 tem a pos x das bolas | $a1 tem a pos y das bolas
# primeirio checa se eh colisao normal
# depois checa se eh colisao de canto
CheckForCollisions:
		beq $s6, 0, POneRoundLoss
		beq $s6, 63, PTwoRoundLoss
		bne $s6, 14, NoLeftCollision	# ve se ta na colisao da raquete da esquerda
LeftCollision:
		blt $s7, $s4, NoPaddleCollision	# ve se ta acima da raquete
		addi $t3, $s4, 5		# calcula a parte debaixo da raquete
		bgt $s7, $t3, NoPaddleCollision	# ve se ta abaixo da raquete
		sub $t3, $s7, $s4		# guarda a distancia de cima p acertar
		li $s2, 1			# muda direcao de x
		j PaddleHit
   		
NoLeftCollision:
		bne $s6, 49, NoPaddleCollision	# ve se ta no campo de colisao da raquete da direita
RightCollision:
		blt $s7, $s5, NoPaddleCollision	# se estiver acima, nao tem colisao vertcal
		addi $t3, $s5, 5
		bgt $s7, $t3, NoPaddleCollision	# se estiver abaixo, nao tem colisao tbm
		sub $t3, $s7, $s5		# guarda a distancia de cima p acertar
		li $s2, -1			# muda direcao de x
		j PaddleHit		

NoPaddleCollision:
		j CheckHorizontalHit
		
PaddleHit: 
		addi $sp, $sp, -8
   		sw $a0, 0($sp)   	# argumentos na stack
   		sw $a1, 4($sp)
		
		li $a0, 80		# faz som quando a bola acerta uma raquete
		li $a1, 80
		li $a2, 32
		li $a3, 127
		li $v0, 31
		syscall
		
   		lw $a0, 0($sp)   	# coloca os args dnv nos registradores para serem usados depois
   		lw $a1, 4($sp)
   		addi $sp, $sp, 8
		
		lw $t4, Level		# ajusta o compSpeed para nunca perder a primeira bola
		sw $t4, compSpeed
		beq $t3, 0, tophigh
		beq $t3, 1, topmid
		beq $t3, 2, toplow
		beq $t3, 3, bottomhigh
		beq $t3, 4, bottommid
		beq $t3, 5, bottomlow
tophigh:
		li $s3, 1
		sw $s3, ySpeed
		li $s3, -1
		sw $s3, yDir
		j CheckHorizontalHit
topmid:
		li $s3, 2
		sw $s3, ySpeed
		li $s3, -1
		sw $s3, yDir
		j CheckHorizontalHit
toplow:
		li $s3, 4
		sw $s3, ySpeed
		li $s3, -1
		sw $s3, yDir
		j CheckHorizontalHit
bottomhigh:
		li $s3, 4
		sw $s3, ySpeed
		li $s3, 1
		sw $s3, yDir
		j CheckHorizontalHit
bottommid:
		li $s3, 2
		sw $s3, ySpeed
		li $s3, 1
		sw $s3, yDir
		j CheckHorizontalHit
bottomlow:
		li $s3, 1
		sw $s3, ySpeed
		li $s3, 1
		sw $s3, yDir
		
CheckHorizontalHit:
		beq $s7, 31, HorizontalWallHit
		bne $s7, 0, NoCollision
		
HorizontalWallHit: 
		# toca um som
		addi $sp, $sp, -8
   		sw $a0, 0($sp)   	# args na stack
   		sw $a1, 4($sp)
		
   		lw $a0, 0($sp)   	# coloca os args nos registradores dnv para usar depois
   		lw $a1, 4($sp)
   		addi $sp, $sp, 8
   		
		# muda a dir y se y-count=1 (impede de trocar ate q y precise)
		bgt $s3, 1, NoCollision
		lw $t4, yDir
		xori $t4, $t4, 0xffffffff
		addi $t4, $t4, 1
		sw $t4, yDir
NoCollision:
		jr $ra

# faz o bitmap mostrar a cor de background
ClearBoard:
		lw $t0, backgroundColor
		li $t1, 8192 # numero de pixels no display
	StartCLoop:
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra
		
POneRoundLoss:
		# incrementa os pontos do player 2
		lw $t1, P2Score
		addi $t1, $t1, 1
		sw $t1, P2Score
		
		# pronto p proxima iteracao
		li $t2, 1
		sw $t2, xDir
		
		li $a3, 54
		sw $zero, 0xFFFF0004  # zera os botoes apertados
		beq $t1, 10, EndGame
		
		j PlayPointSound
PTwoRoundLoss:	
		# Incrementa pontos do jogador 1
		lw $t1, P1Score
		addi $t1, $t1, 1
		sw $t1, P1Score
		
		# pronto p proxima iteracao
		li $t2, -1
		sw $t2, xDir
		
		li $a3, 1
		sw $zero, 0xFFFF0004 # zera os botoes apertados
		beq $t1, 10, EndGame

PlayPointSound:
		# toca um som
		li $a0, 80		# faz um som quando alguem marca ponto
		li $a1, 300
		li $a2, 121
		li $a3, 127
		li $v0, 31
		syscall
   		
   		j NewRound
	
# acaba o jogo
EndGame:
		jal ClearBoard
		
		lw $t0, P1Score
		bne $t0, 10, WinTwo
		
		
	WinOne:	li $a0, 34 # coord x 
		li $a1, 12 # coord y inicial
		lw $a2, ballColor # a cor
		li $a3, 15 # coord y final
		jal DrawVerticalLine
		
		li $a0, 33
		li $a1, 13
		jal DrawPoint
		
		li $a1, 16 # coord y
		li $a3, 35 # coord x final
		jal DrawHorizontalLine
		
		j WinP
		
	WinTwo:	li $a0, 33 # coord x inicial
		li $a1, 16 # coord y
		lw $a2, ballColor # a cor
		li $a3, 36 # coord x final
		jal DrawHorizontalLine
	
		li $a0, 34 # coord x inicial
		li $a1, 12 # coord y
		li $a3, 35 # coord x final
		jal DrawHorizontalLine
	
		li $a1, 15
		jal DrawPoint
	
		li $a0, 35
		li $a1, 16
		jal DrawPoint
	
		li $a1, 14
		jal DrawPoint
	
		li $a0, 36
		li $a1, 13
		jal DrawPoint
	
		li $a0, 33
		jal DrawPoint
		
	WinP:	li $a0, 27 # coord x
		li $a1, 12 # coord y inicial
		li $a3, 16 # coord y final
		jal DrawVerticalLine
		
		li $a0, 30 # coord x
		li $a3, 14 # coord y final
		jal DrawVerticalLine
		
		li $a0, 28 # coord x inicial
		li $a3, 29 # coord x final
		jal DrawHorizontalLine
	
		li $a1, 14 # coord y
		jal DrawHorizontalLine

		li $a0, 100 	#
		li $v0, 32	# pausa por 100 miliseg
		syscall		#
		
		sw $zero, 0xFFFF0000

WaitForReset:		
		li $a0, 10 	#
		li $v0, 32	# pausa por 10 miliseg
		syscall		#
		
		lw $t0, 0xFFFF0000
		beq $t0, $zero, WaitForReset
		
		j Reset
		
Reset:		
		sw $zero, P1Score
		sw $zero, P2Score
		sw $zero, 0xFFFF0000	# zera os botoes pressionados na memoria
		sw $zero, 0xFFFF0004
		
		jal ClearBoard
		
		j NewGame
