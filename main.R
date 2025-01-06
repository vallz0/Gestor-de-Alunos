cadastro <- function() {
  
  alunos <- data.frame(
    Nomes = character(),
    Prova1 = numeric(),
    Prova2 = numeric(),
    Prova3 = numeric(),
    Prova4 = numeric(),
    MediaEscolar = numeric(),
    Situação = character(),
    stringsAsFactors = FALSE
  )
  
  cat("Esta função realiza as seguintes ativides:\n")
  cat("[1] - Cadastra aluno\n")
  cat("[2] - Recebe suas notas\n")
  cat("[3] - Mostra sua média e diz se foi aprovado\n\n")
  
  continuar <- TRUE
  i <- 1
  
  while(continuar){
    cat("Nome do aluno: ")
    nome <- readline()
    
    cat("Nota 1: ")
    prova1 <- as.numeric(readline())
    
    cat("Nota 2: ")
    prova2 <- as.numeric(readline())
    
    cat("Nota 3: ")
    prova3 <- as.numeric(readline())
    
    cat("Nota 4: ")
    prova4 <- as.numeric(readline())
    
    notas <- c(prova1, prova2, prova3, prova4)
    mediaEscolar <- mean(notas)
    
    if (mediaEscolar >= 7) {
      situacao <- "Aprovado"
    } else {
      situacao <- "Reprovado"
    }
    
    cat("Média do aluno:", mediaEscolar,"\n")
    cat("Situação:",situacao,"\n\n")
    
    alunos <-rbind(alunos, data.frame(
      Nomes = nome,
      Prova1 = prova1,
      Prova2 = prova2,
      Prova3 = prova3,
      Prova4 = prova4,
      MediaEscolar = mediaEscolar,
      Situação = situacao, 
      stringsAsFactors = FALSE
    ))
    
    cat("Cadastrar outro aluno? (Sim = 1,Não = 2) ")
    resposta <- as.numeric(readline())
    continuar <- resposta == 1
    i <- i + 1
    
  }
  
  cat("\nBanco de dados dos alunos:\n")
  print(alunos)
  return(alunos)
}

cadastro()






























