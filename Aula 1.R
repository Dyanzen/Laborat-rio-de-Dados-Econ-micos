#Aula Econometria

## Tirar Notação científica ####
options(scipen = 999)

## Excluir base de dados ####
# nomedoobjeto <- NULL

## Atalhos do Teclado ####

# "SHIFT" + "CTRL" + "ENTER" = Ativar todo o script

## Biblioteca Mundial ####

#install.packages("WDI") #Instalação Biblioteca Banco Mundial

library(WDI) #Carregar a Biblioteca

#X = PIB(NY.GDP.MKTP.CD,GDP(CurrentUS$))



## Variáveis BM ####

# PIB a preços correntes (US$): NY.GDP.MKTP.CD
# Despesas de COnsumo Pessoal: NE.CON.PRVT.CD

PIB_Vars <-WDIsearch("GDP") #Dados da Renda (PIB)
TODO_BM <- WDIsearch('') #Todas as Variáveis do BM

## Variáveis ####

variaveis <- c("NY.GDP.MKTP.CD",
               "NE.CON.PRVT.CD")

## Base de dados de corte Transversal ####

# dados <- WDI(indicator = variaveis,
            # country = 'all', #todos = "all"
            # start = 2022, end = 2022) #Problemas de NA

## Biblioteca Tidyverse ####
#install.packages("tidyverse")
library(tidyverse)

dados <- WDI(indicator = variaveis,
             country = 'all', #todos = "all"
             start = 2022, end = 2022) %>%

  na.omit()

## Base de dados da Apresentação (BRASIL) ####

dadosbr <- WDI(indicator = variaveis,
               country = 'BR', # Código Iso2C
               start = 1961, end = 2018)

dadosbrcomp <- WDI(indicator = variaveis,
                   country = 'BR')


