#install.packages("googleVis")

require(RcmdrMisc)
require(googleVis)

Estados <- readXL("BasesEstadosTesouroSerie.xlsx", rownames=FALSE, header=TRUE, 
  na="", sheet="Series", stringsAsFactors=TRUE)



EstadosMovimento <- gvisMotionChart(Estados,
                      idvar="Sigla", timevar="ANO",        
                      xvar="Despesa_orcamentaria", yvar="PIB_Estadual",
                      colorvar="Regiao", sizevar="Populacao",
                      options = list(width = "automatic",  height = "automatic"),
                      #options=list(width=700, height=600),
                      chartid="WorldBank")
plot(EstadosMovimento) 

# Como fazer esse mesmo gr�fico para municipios?





# Gabarito
Municipios <- readXL("BasesMunicipiosTesouroSerie.xlsx", rownames=FALSE, header=TRUE, 
  na="", sheet="BD_comRJ", stringsAsFactors=TRUE)

#Municipios <- readXL("C:/Users/Hp/Documents/GitHub/STN/BasesMunicipiosTesouroSerie.xlsx", rownames=FALSE, header=TRUE, 
#                     na="", sheet="BD_semRJ", stringsAsFactors=TRUE)
#MunicipiosMovimento <- gvisMotionChart(Municipios,
#                      idvar="Municipio", timevar="Ano",        
#                      xvar="Prog_Bolsa_Familia_valor", yvar="PIB",
#                      colorvar="Mesoregiao", sizevar="Populacao",
#                      options = list(width = "automatic",  height = "automatic"),
#                      #options=list(width=700, height=600),
#                      chartid="WorldBank")
#plot(MunicipiosMovimento) 

# Se n�o funcionar, � necess�rio instalar o flash-player.
# pelo site https://helpx.adobe.com/flash-player.html