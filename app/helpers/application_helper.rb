module ApplicationHelper
    def full_title(page_title = '')
        base_title = "Projeto Cuidar - Terapia Ocupacional"
        
        if page_title.empty?
            base_title
        else
            page_title + " | " + base_title
        end
    end
    
    def dataFormatada
        Time.now.strftime("%d-%m-%Y %H:%M:%S %Z")
    end
end
