class Carrinho
	def initialize
		@calculadoraDePreco = Calculadora.new
	end
	
	def valorTotal
		items.map{| item | @calculadoraDePreco.calcular(item)}.inject(:+)
	end
end