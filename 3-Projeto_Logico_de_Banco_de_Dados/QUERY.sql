-- Recupera��es simples com SELECT Statement
select * from dbo.pedido;

-- Filtros com WHERE Statement
select * from dbo.pedido where codigo='0000000001';

-- Crie express�es para gerar atributos derivados
select (sum(vlrFrete)+sum(vlrPedido)) as ValorTotal from dbo.Pedido;

-- Defina ordena��es dos dados com ORDER BY
select Identificacao, Valor from dbo.Produto order by valor desc;

-- Condi��es de filtros aos grupos � HAVING Statement
select idCategoria, sum(Valor) from dbo.Produto group by idCategoria having count(idCategoria)>1;

-- Crie jun��es entre tabelas para fornecer uma perspectiva mais complexa dos dados
select c.Identificacao, p.Identificacao, p.Descricao, p.Valor
    from dbo.Produto p
    inner join dbo.Categoria c on p.idCategoria = c.id
	

-- PERGUNTAS
-- 1) Quantos pedidos foram feitos por cada cliente?
select Count(p.idCliente), c.Nome
    from dbo.Pedido p
    inner join dbo.Cliente c on p.idCliente = c.id
    group by p.idCliente, c.Nome

-- 2) Algum vendedor tamb�m � fornecedor?
select f.RazaoSocial from dbo.Fornecedor f where f.CNPJ in (select t.CNPJ from dbo.VendedorTerceiro t)

-- 3) Rela��o de produtos fornecedores e estoques;
select f.RazaoSocial, p.Identificacao, pe.Quantidade
    from dbo.Produto p
    inner join dbo.ProdutoFornecedor pf on p.id = pf.idProduto
    inner join dbo.Fornecedor f on f.id = pf.idFornecedor
    inner join dbo.ProdutoEstoque pe on p.id = pe.idProduto

-- 4) Rela��o de nomes dos fornecedores e nomes dos produtos;-- 4) Rela��o de nomes dos fornecedores e nomes dos produtos;
select f.RazaoSocial as Fornecedor, p.Identificacao as Produto
    from dbo.Produto p
    inner join dbo.ProdutoFornecedor pf on p.id = pf.idProduto
    inner join dbo.Fornecedor f on f.id = pf.idFornecedor