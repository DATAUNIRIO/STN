
require(googleVis)


M <- matrix(nrow=6,ncol=6)
M[col(M)==row(M)] <- 1:6
dat <- data.frame(X=1:6, M)
edit(dat)

SC <- gvisScatterChart(dat, 
                       options=list(
                         title="mudando a forma dos pontos",
                         legend="right",
                         pointSize=30,
                         series="{
                         0: { pointShape: 'circle' },
                         1: { pointShape: 'triangle' },
                         2: { pointShape: 'square' },
                         3: { pointShape: 'diamond' },
                         4: { pointShape: 'star' },
                         5: { pointShape: 'polygon' }
                         }"))
plot(SC)

########################################################################
# Gr?fico Sankey
#
# Sankey diagrams are a specific type of flow diagram, in which
# the width of the arrows is shown proportionally to the flow quantity.
# Sankey diagrams are typically used to visualize energy or material or
#cost transfers between processes. They can also visualize the energy 
#accounts or material flow accounts on a regional or national level.
########################################################################

datSK <- data.frame(From=c(rep("A",3), rep("B", 3)),
                    To=c(rep(c("X", "Y", "Z"),2)),
                    Weight=c(5,7,6,2,9,4))
edit(datSK)
Sankey <- gvisSankey(datSK, from="From", to="To", weight="Weight",
                     options=list(
                       sankey="{link: {color: { fill: '#d799ae' } },
                       node: { color: { fill: '#a61d4c' },
                       label: { color: '#871b47' } }}"))
plot(Sankey)



#######################################################
# Gr?fico Treemap
#######################################################

edit(Regions)
Tree <- gvisTreeMap(Regions,  
                    "Region", "Parent", 
                    "Val", "Fac", 
                    options=list(fontSize=16))
plot(Tree)


#######################################################
# Organograma
#######################################################
edit(Regions)
Org <- gvisOrgChart(Regions, 
                    options=list(width=600, height=250,
                                 size='large', allowCollapse=TRUE))
plot(Org)


#######################################################
# Timeline
#######################################################

datTL <- data.frame(Position=c(rep("Presidente", 3), rep("Vice", 3)),
                    Name=c("Washington", "Adams", "Jefferson",
                           "Adams", "Jefferson", "Burr"),
                    start=as.Date(x=rep(c("1789-03-29", "1797-02-03", 
                                          "1801-02-03"),2)),
                    end=as.Date(x=rep(c("1797-02-03", "1801-02-03", 
                                        "1809-02-03"),2)))
edit(datTL)

Timeline <- gvisTimeline(data=datTL, 
                         rowlabel="Name",
                         barlabel="Position",
                         start="start", 
                         end="end",
                         options=list(timeline="{groupByRowLabel:false}",
                                      backgroundColor='#ffd', 
                                      height=350,
                                      colors="['#cbb69d', '#603913', '#c69c6e']"))
plot(Timeline)


#######################################################
# Timeline
#######################################################

datTL <- data.frame(Position=c(rep("Presidente", 3), rep("Vice", 3)),
                    Name=c("Washington", "Adams", "Jefferson",
                           "Adams", "Jefferson", "Burr"),
                    start=as.Date(x=rep(c("1789-03-29", "1797-02-03", 
                                          "1801-02-03"),2)),
                    end=as.Date(x=rep(c("1797-02-03", "1801-02-03", 
                                        "1809-02-03"),2)))
edit(datTL)

#######################################################
#1 Otavio Ladeira de Medeiros (Dez/2015 a Jun/2016)
#2 Marcelo Barbosa Saintive (Jan/2015 a Dez/2015)
#3 Arno Hugo Augustin Filho (Jun/2007 a Jan/2015)
#4 Tarcísio José Massote de Godoy (Dez/2006 a Jun/2007)
# http://www.tesouro.fazenda.gov.br/web/stn/galeria-dos-secretarios
#######################################################

datTL2 <- data.frame(Posicao=c(rep("Secretario", 4)),
                    Nome=c("Otavio Medeiros", "Marcelo Saintive", "Arno Filho","Tarcisio Godoy"),
                    Inicio=as.Date(x=c("2006-12-01", "2007-07-16", "2015-01-16","2015-11-16")),
                    Fim=as.Date(x=c("2007-07-15", "2015-01-15",   "2015-12-15","2016-07-15")))
edit(datTL2)

# Com base nas informações da galeria, construir a Timeline


















Timeline2 <- gvisTimeline(data=datTL2, 
                         rowlabel="Nome",
                         barlabel="Posicao",
                         start="Inicio", 
                         end="Fim",
                         options=list(timeline="{groupByRowLabel:false}",
                                      backgroundColor='#ffd', 
                                      height=350,
                                      colors="['#cbb69d', '#603913', '#c69c6e','#cbb69d']"))
plot(Timeline2)


########################################################
datTL3 <- data.frame(Posicao=c(rep("Secretario", 4)),
                    Nome=c("Medeiros", "Saintive", "Filho","Godoy"),
                    Inicio=as.Date(x=c("2006-12-01", "2007-07-16", "2015-01-16","2015-11-16")),
                    Fim=as.Date(x=c("2007-07-15", "2015-01-15",   "2015-12-15","2016-07-15")))



#######################################################
# Annotation Chart
#######################################################

Stock
Anno <- gvisAnnotationChart(Stock, 
                            datevar="Date",
                            numvar="Value", 
                            idvar="Device",
                            titlevar="Title", 
                            annotationvar="Annotation",
                            options=list(
                              width=600, height=350,
                              fill=10, displayExactValues=TRUE,
                              colors="['#0000ff','#00ff00']")
)
plot(Anno)


