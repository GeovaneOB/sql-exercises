USE vendas;

CREATE TABLE Itens (
	Produto_Codigo_Produto INT,
    Nota_Fiscal_Numero_NF INT,
    Num_Item INT,
    Qtde_Item INT,
    PRIMARY KEY (Produto_Codigo_Produto, Nota_Fiscal_Numero_NF)
);
