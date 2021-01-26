
# <<<<<<<<<<<<<>>>>>>>>>>>><<<<<<<<<<<<<>>>>>>>>>>>><<<<<<<<<<<<<>>>>>>>>>>
#
#   Project: Séries Históricas Censos Demográficos
#
#   Script purpose:
#
#   Author: Rodrigo Abreu Carvalho
#
#   Date: 2021-01-26
#
#   Copyright: Rodrigo Abreu Carvalho, 2021
#   e-mail: carvalho.ra@outlook.com
#
#   Profile: https://github.com/abreucarvalho  
#     
#   Repository: https://github.com/abreucarvalho/CensoDemografico_seriesHistoricas  
#
#    >>>>>>>>>>>><<<<<<<<<<<<<
#
#   Notes:
#   
#
# <<<<<<<<<<<<<>>>>>>>>>>>><<<<<<<<<<<<<>>>>>>>>>>>><<<<<<<<<<<<<>>>>>>>>>>

# Configurações -----------------------------------------------------------

  # Install and load packages
  
  if (!require(install.load)) install.packages(install.load)
    
  install.load::install_load("sidrar", "foreign")


# Séries completas 1872 a 2010 --------------------------------------------

    
    # Tabela 1209: População, por grupos de idade"
    
      sidrar::info_sidra(1209)  
      
      tabela1209 <- sidrar::get_sidra(1209, period = "1872-2010")


# <<<<<<<<<<<<<>>>>>>>>>>>>      
      
    # Tabela 1286: População e Distribuição da população pelas Grandes 
    # Regiões e Unidades da Federação nos Censos Demográficos
      
      sidrar::info_sidra(1286)
  
      tabela1286 <- sidrar::get_sidra(1286, 
                                      period = "1872-2010",
                                      variable = 606,
                                      geo = "State")      

# <<<<<<<<<<<<<>>>>>>>>>>>>
      
    # Tabela 1287: População dos municípios das capitais e Percentual 
    # da população dos municípios das capitais em relação aos das 
    # unidades da federação nos Censos Demográficos
      
      sidrar::info_sidra(1287)
  
      tabela1287 <- get_sidra(1287,
                              period = "1872-2010",
                              variable = 591,
                              geo = "City")   
  

# <<<<<<<<<<<<<>>>>>>>>>>>>
      
    # Tabela 1298: Densidade demográfica nos Censos Demográficos  
      
      info_sidra(1298)  
      
      tabela1298 <- get_sidra(1298,
                              period = "1872-2010",
                              geo = "State")
      
      
    # Salvar
      
      # dir.create("dados")
      
      # dir.create("dados/1872_a_2010")
      
      save(tabela1209, file = "dados/1872_a_2010/tabelas1209.RData")
      save(tabela1286, file = "dados/1872_a_2010/tabelas1286.RData")
      save(tabela1287, file = "dados/1872_a_2010/tabelas1287.RData")
      save(tabela1298, file = "dados/1872_a_2010/tabelas1298.RData")
      
      # write.csv2(tabela1209, file = "dados/1872_a_2010/tabelas1209.csv")
      # write.csv2(tabela1286, file = "dados/1872_a_2010/tabelas1286.csv")
      # write.csv2(tabela1287, file = "dados/1872_a_2010/tabelas1287.csv")
      # write.csv2(tabela1298, file = "dados/1872_a_2010/tabelas1298.csv")

      # write.dta(tabela1209, file = "dados/1872_a_2010/tabelas1209.dta")
      # write.dta(tabela1286, file = "dados/1872_a_2010/tabelas1286.dta")
      # write.dta(tabela1287, file = "dados/1872_a_2010/tabelas1287.dta")
      # write.dta(tabela1298, file = "dados/1872_a_2010/tabelas1298.dta")
      
      rm(list = ls())
      
      gc()

# Séries Parciais 1950 a 2010 ---------------------------------------------


    # Tabela 1288: População nos Censos Demográficos por situação do domicílio
      
      info_sidra(1288)

      tabela1288 <- get_sidra(1288,
                              period = "1950-2010",
                              variable = 606,
                              classific = c("c1"),
                              category = list(c(1,2)),
                              geo = "State")      
      

# <<<<<<<<<<<<<>>>>>>>>>>>>
      
    # Tabela 1285: Número de unidades territoriais existentes nos Censos Demográficos
      
      info_sidra(1285)

      tabela1285 <- get_sidra(1285,
                              period = "1950-2010",
                              variable = 603,
                              geo = "State")      

# <<<<<<<<<<<<<>>>>>>>>>>>>      
      
    # Tabela 1290: Número de municípios e População nos Censos Demográficos 
    # por tamanho da população
      
      info_sidra(1290)

      tabela1290 <- get_sidra(1290,
                              period = "1950-2010",
                              variable = c(603, 609),
                              geo = "State")      
      
      
# <<<<<<<<<<<<<>>>>>>>>>>>>
      
    # Tabela 1294: Número de cidades e População nas cidades nos Censos 
    # Demográficos por tamanho da população
      
      info_sidra(1294)
      
      tabela1294 <- get_sidra(1294,
                              period = "1950-2010",
                              variable = c(611, 612),
                              geo = "State")      
      
    
      
    # Salvar
      
      # dir.create("dados")
      
      # dir.create("dados/1950_a_2010")
      
      save(tabela1285, file = "dados/1950_a_2010/tabela1285.RData")
      save(tabela1288, file = "dados/1950_a_2010/tabelas1288.RData")
      save(tabela1290, file = "dados/1950_a_2010/tabelas1290.RData")
      save(tabela1294, file = "dados/1950_a_2010/tabelas1294.RData")
      
      # write.csv2(tabela1285, file = "dados/1950_a_2010/tabelas1285.csv")
      # write.csv2(tabela1288, file = "dados/1950_a_2010/tabelas1288.csv")
      # write.csv2(tabela1290, file = "dados/1950_a_2010/tabelas1290.csv")
      # write.csv2(tabela1294, file = "dados/1950_a_2010/tabelas1294.csv")
      
      # write.dta(tabela1285, file = "dados/1950_a_2010/tabelas1285.dta")
      # write.dta(tabela1288, file = "dados/1950_a_2010/tabelas1288.dta")
      # write.dta(tabela1290, file = "dados/1950_a_2010/tabelas1290.dta")
      # write.dta(tabela1294, file = "dados/1950_a_2010/tabelas1294.dta")
      
      
      rm(list = ls())
      
      gc()
      

# Séries Parciais 1970 a 2010 ---------------------------------------------
      
      # /!\ Tabelas a nivel municipal demoram alguns minutos p/ carregar
      #     em média ~3min.
      
      # /!\ Valores máximos por tabela = 50000
      

# <<<<<<<<<<<<<>>>>>>>>>>>>      
      
    # Tabela 206: Domicílios particulares permanentes por situação do domicílio 
    # e número de cômodos
      
      info_sidra(206)
      
    # Urbana (situação do domicílio)
      
      tabela206_urb <- get_sidra(206,
                                 period = "1970-2010",
                                 variable = 96,
                                 classific = c("c1"),
                                 category = list(c(1)),
                                 geo = "City")   

      
    # Rural (situação do domicílio)
      
      tabela206_rur <- get_sidra(206,
                                 period = "1970-2010",
                                 variable = 96,
                                 classific = c("c1"),
                                 category = list(c(2)),
                                 geo = "City") 
      
    # Unificar
      
      tabela206 <- rbind(tabela206_rur, tabela206_urb)


# <<<<<<<<<<<<<>>>>>>>>>>>>
      
      
    # Tabela 200: População residente, por sexo, situação e 
    # grupos de idade - Amostra - Características Gerais da População
      
      info_sidra(200)
      
    # Rural (situação do domicílio)
    # Mulheres (Sexo)
      
      tabela200_rur_m <- get_sidra(200,
                                   period = "1970-2010",
                                   variable = 93,
                                   classific = c("c2", "c1"),
                                   category = list(c(5), c(2)),
                                   geo = "City") 
      
    # Rural (situação do domicílio)
    # Homens (Sexo)
      
      tabela200_rur_h <- get_sidra(200,
                                   period = "1970-2010",
                                   variable = 93,
                                   classific = c("c2", "c1"),
                                   category = list(c(4), c(2)),
                                   geo = "City") 
      
    # Urbano (situação do domicílio)
    # Mulheres (Sexo)
      
      tabela200_urb_m <- get_sidra(200,
                                   period = "1970-2010",
                                   variable = 93,
                                   classific = c("c2", "c1"),
                                   category = list(c(5), c(1)),
                                   geo = "City") 
      
    # Urbano (situação do domicílio)
    # Homens (Sexo)
      
    start_time <- Sys.time()
      
      tabela200_urb_h <- get_sidra(200,
                                   period = "1970-2010",
                                   variable = 93,
                                   classific = c("c2", "c1"),
                                   category = list(c(4), c(1)),
                                   geo = "City")
      
    end_time <- Sys.time()
    
    
    # Unificar
    
    
      tabela200 <- rbind(tabela200_rur_h, 
                         tabela200_rur_m, 
                         tabela200_urb_h,
                         tabela200_urb_m)

    
    # Salvar
    
      dir.create("dados/1970_a_2010")
      
      save(tabela200, file = "dados/1970_a_2010/tabela200.RData")
      save(tabela206, file = "dados/1970_a_2010/tabela206.RData")

      # write.csv2(tabela200, "dados/1970_a_2010/tabela200.csv")
      # write.csv2(tabela206, "dados/1970_a_2010/tabela206.csv")

      # write.dta(tabela200, file = "dados/1970_a_2010/tabela200.dta")
      # write.dta(tabela206, file = "dados/1970_a_2010/tabela206.dta")

      rm(list = ls())    

      gc()
          
#        >>>>>>>>>> END OF SCRIPT <<<<<<<<<<
    