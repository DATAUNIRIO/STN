
###############################################################################
# Exemplo com os dados do Banco Mundial
###############################################################################
require(googleVis)

edit(WorldBank)

colnames(WorldBank) <- c("iso2c","Pais","ANO", "TaxadeFecundidade",
                         "EspectativadeVidaaoNascer","Populacao", "PIB_per_capita",
                         "mulheresde15a25anosalfabetizadas","iso3c","Regiao",
                         "capital","longitude","latitude","income","lending")


Movimento <- gvisMotionChart(WorldBank,
                             idvar="Pais", timevar="ANO",        
                             xvar="EspectativadeVidaaoNascer", yvar="TaxadeFecundidade",
                             colorvar="Regiao", sizevar="Populacao",
                             options=list(width=700, height=600),
                             chartid="WorldBank")


plot(Movimento)
#demo(WorldBank)


#########################################################################################
# Seria possível fazer isso com as BasesEstadosTesouro.xlsx e BasesMunicipiosTesouro.xlsx
#########################################################################################


# Considerações:
# Comparar o gráfico de barras do PIB SC, BA e MT
# Efeito outlier da capital na base de dados municípios
 
