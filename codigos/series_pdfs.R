
# <<<<<<<<<<<<<>>>>>>>>>>>><<<<<<<<<<<<<>>>>>>>>>>>><<<<<<<<<<<<<>>>>>>>>>>
#
#   Project: 
#
#   Script purpose:
#
#   Author: Rodrigo Abreu Carvalho
#
#   Date: 2021-01-29
#
#   Copyright: Rodrigo Abreu Carvalho, 2021
#   e-mail: carvalho.ra@outlook.com
#
#   Profile: https://github.com/abreucarvalho  
#     
#   Repository: https://github.com/abreucarvalho/  
#
#    >>>>>>>>>>>><<<<<<<<<<<<<
#
#   Notes:
#   
#
# <<<<<<<<<<<<<>>>>>>>>>>>><<<<<<<<<<<<<>>>>>>>>>>>><<<<<<<<<<<<<>>>>>>>>>>

# Configurações -----------------------------------------------------------

  # Install and load packages
  
  # if (!require(install.load)) install.packages(install.load)
    
    install.load::install_load("tesseract")
  

  # Configurações tesseract

    # Use tesseract_info() to list the languages that you currently have installed.

      tesseract_info()
    
    # donwload portuguese

      tesseract_download("por")   # Portuguese
      
    # load the dictionary
        
      (portuguese <- tesseract("por"))
      
      
      
  # Diretórios
      
      dir.create("dados")

      dir.create("dados/png")
      dir.create("dados/pdfs")
        


# 1960 --------------------------------------------------------------------


    # Censo Demográfico de 1960
      

# <<<<<<<<<<<<<>>>>>>>>>>>>
      
    # Página 206
      
    # Área e População Presente Segundo as Unidades da Federação,
    #   as Zonas Fisiográficas e os Municípios
      
      png::writePNG(pdftools::pdf_render_page("dados/pdf/cd_1950_v1_br.pdf",
                                              page = 206, dpi = 1200,), 
                    "dados/png/png_ibge60_p206.png")
      
      
      
    # Comparar Intervalos de Confiança em pdf e png
      
      data_png_ibge60_p206 <- tesseract::ocr_data("dados/pdf/cd_1950_v1_br_p3.pdf",
                                           engine = portuguese);
      Encoding(data_png_ibge60_p206$word) <- "UTF-8"
      
      data_pdf_ibge60_p206 <- tesseract::ocr_data("dados/png/png_ibge60_p206.png",
                                           engine = portuguese);
      Encoding(data_pdf_ibge60_p206$word) <- "UTF-8"
      
      
    # Transformar para texto
      
      text_png_ibge60_p206 <- tesseract::ocr("dados/png/png_ibge60_p206.png",
                                             engine = portuguese)
      
      text_pdf_ibge60_p206 <- tesseract::ocr("dados/pdf/cd_1950_v1_br_p206.pdf",
                                             engine = portuguese)
      
    # Concatenate and Print
      
      # text_png_ibge60_p206 <- cat(text_pdf_ibge60_p206)
      # 
      # text_pdf_ibge60_p206 <- cat(text_png_ibge60_p206)

      
            
      

#        >>>>>>>>>> END OF SCRIPT <<<<<<<<<<
    
    
      
      
      
      
      
      
      
