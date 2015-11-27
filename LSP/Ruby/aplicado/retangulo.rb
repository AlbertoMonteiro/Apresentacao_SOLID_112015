class Retangulo
	attr_accessor :altura, :largura
		
	def area
		@altura * @largura
	end
end

class Quadrado	
	attr_accessor :tamanhoLado
	
	def area
		@tamanhoLado * @tamanhoLado
	end
end