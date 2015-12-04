class Retangulo
    attr_accessor :altura, :largura
        
    def area
        @altura * @largura
    end
end

class Quadrado < Retangulo  
    def altura=(altura)
        @altura = altura
        @largura = altura
    end
    
    def largura=(largura)
        @largura = largura
        @altura = largura
    end
end

