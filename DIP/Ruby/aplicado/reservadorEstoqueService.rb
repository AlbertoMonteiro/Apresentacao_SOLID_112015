class ReservadorEstoqueService
    def reservar(carrinho)
        carrinho.itens.each do |item|
            sistemaEstoque = SistemaEstoque.new
            sistemaEstoque.reservar(item.Id, item.Quantidade)
        end 
    end
end