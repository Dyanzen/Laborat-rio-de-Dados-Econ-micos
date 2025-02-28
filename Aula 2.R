## Aula 2 

## Definir e buscar duas variáveis no Banco Mundial ####

variaveis <- c("FP.CPI.TOTL.ZG", "SL.UEM.TOTL.ZS") # Inflação e Desemprego

## Criar um arquivo de dados para todos os países (2022) ####

dados_mundiais <- WDI(indicator = variaveis, 
                      country = "all", 
                      start = 2022, end = 2022) %>%
  na.omit()

write.csv(dados_mundiais, "dados_mundiais_2022.csv", row.names = FALSE)

## Criar um arquivo de dados do Brasil todo o período ####

dados_brasil <- WDI(indicator = variaveis, 
                    country = "BR") %>% 
  na.omit()

write.csv(dados_brasil, "dados_brasil_todo_periodo.csv", row.names = FALSE)

## install.packages("tidyverse")
library(tidyverse)

## install.packages("WDI")
library(WDI)
