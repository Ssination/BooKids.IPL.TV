
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/17/2019 16:02:55
-- Generated from EDMX file: C:\Users\claclo\source\repos\Bookids\Bookids\Bookids.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Bookids];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_FilhosInscricoes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InscricoesSet] DROP CONSTRAINT [FK_FilhosInscricoes];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientesFilhos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PessoasSet_Filhos] DROP CONSTRAINT [FK_ClientesFilhos];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientesCompras]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ComprasSet] DROP CONSTRAINT [FK_ClientesCompras];
GO
IF OBJECT_ID(N'[dbo].[FK_ComprasDetalhesCompra]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalhesCompraSet] DROP CONSTRAINT [FK_ComprasDetalhesCompra];
GO
IF OBJECT_ID(N'[dbo].[FK_TipoProdutoProdutos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProdutosSet] DROP CONSTRAINT [FK_TipoProdutoProdutos];
GO
IF OBJECT_ID(N'[dbo].[FK_ProdutosDetalhesCompra]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalhesCompraSet] DROP CONSTRAINT [FK_ProdutosDetalhesCompra];
GO
IF OBJECT_ID(N'[dbo].[FK_EscolasFilhos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PessoasSet_Filhos] DROP CONSTRAINT [FK_EscolasFilhos];
GO
IF OBJECT_ID(N'[dbo].[FK_AnimadoresColaboracoes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ColaboracoesSet] DROP CONSTRAINT [FK_AnimadoresColaboracoes];
GO
IF OBJECT_ID(N'[dbo].[FK_EscolasParticipacoes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ParticipacoesSet] DROP CONSTRAINT [FK_EscolasParticipacoes];
GO
IF OBJECT_ID(N'[dbo].[FK_EventosParticipacoes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ParticipacoesSet] DROP CONSTRAINT [FK_EventosParticipacoes];
GO
IF OBJECT_ID(N'[dbo].[FK_EventosColaboracoes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ColaboracoesSet] DROP CONSTRAINT [FK_EventosColaboracoes];
GO
IF OBJECT_ID(N'[dbo].[FK_EventosInscricoes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InscricoesSet] DROP CONSTRAINT [FK_EventosInscricoes];
GO
IF OBJECT_ID(N'[dbo].[FK_Filhos_inherits_Pessoas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PessoasSet_Filhos] DROP CONSTRAINT [FK_Filhos_inherits_Pessoas];
GO
IF OBJECT_ID(N'[dbo].[FK_Clientes_inherits_Pessoas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PessoasSet_Clientes] DROP CONSTRAINT [FK_Clientes_inherits_Pessoas];
GO
IF OBJECT_ID(N'[dbo].[FK_Animadores_inherits_Pessoas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PessoasSet_Animadores] DROP CONSTRAINT [FK_Animadores_inherits_Pessoas];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[PessoasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PessoasSet];
GO
IF OBJECT_ID(N'[dbo].[UsersSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UsersSet];
GO
IF OBJECT_ID(N'[dbo].[InscricoesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InscricoesSet];
GO
IF OBJECT_ID(N'[dbo].[ComprasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ComprasSet];
GO
IF OBJECT_ID(N'[dbo].[DetalhesCompraSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetalhesCompraSet];
GO
IF OBJECT_ID(N'[dbo].[ProdutosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProdutosSet];
GO
IF OBJECT_ID(N'[dbo].[TipoProdutoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoProdutoSet];
GO
IF OBJECT_ID(N'[dbo].[EscolasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EscolasSet];
GO
IF OBJECT_ID(N'[dbo].[ColaboracoesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ColaboracoesSet];
GO
IF OBJECT_ID(N'[dbo].[ParticipacoesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ParticipacoesSet];
GO
IF OBJECT_ID(N'[dbo].[EventosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EventosSet];
GO
IF OBJECT_ID(N'[dbo].[PessoasSet_Filhos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PessoasSet_Filhos];
GO
IF OBJECT_ID(N'[dbo].[PessoasSet_Clientes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PessoasSet_Clientes];
GO
IF OBJECT_ID(N'[dbo].[PessoasSet_Animadores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PessoasSet_Animadores];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PessoasSet'
CREATE TABLE [dbo].[PessoasSet] (
    [idPessoa] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Morada] nvarchar(max)  NOT NULL,
    [Localidade] nvarchar(max)  NOT NULL,
    [CodPostal] nvarchar(max)  NOT NULL,
    [Telefone] int  NOT NULL,
    [Telemovel] int  NOT NULL,
    [Email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UsersSet'
CREATE TABLE [dbo].[UsersSet] (
    [idUser] int IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [idPessoa] int  NOT NULL
);
GO

-- Creating table 'InscricoesSet'
CREATE TABLE [dbo].[InscricoesSet] (
    [Confirmada] bit  NOT NULL,
    [idFilho] int  NOT NULL,
    [NrEvento] int  NOT NULL
);
GO

-- Creating table 'ComprasSet'
CREATE TABLE [dbo].[ComprasSet] (
    [NrCompra] int IDENTITY(1,1) NOT NULL,
    [Data] nvarchar(max)  NOT NULL,
    [UtilizouCartao] bit  NOT NULL,
    [idCliente] int  NOT NULL
);
GO

-- Creating table 'DetalhesCompraSet'
CREATE TABLE [dbo].[DetalhesCompraSet] (
    [Quantidade] int  NOT NULL,
    [NrCompra] int  NOT NULL,
    [CodProduto] int  NOT NULL
);
GO

-- Creating table 'ProdutosSet'
CREATE TABLE [dbo].[ProdutosSet] (
    [CodProduto] int IDENTITY(1,1) NOT NULL,
    [Designacao] nvarchar(max)  NOT NULL,
    [Preco] int  NOT NULL,
    [StockExistente] bit  NOT NULL,
    [CodTipoProduto] int  NOT NULL
);
GO

-- Creating table 'TipoProdutoSet'
CREATE TABLE [dbo].[TipoProdutoSet] (
    [CodTipoProduto] int IDENTITY(1,1) NOT NULL,
    [Tipo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EscolasSet'
CREATE TABLE [dbo].[EscolasSet] (
    [IdEscola] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Morada] nvarchar(max)  NOT NULL,
    [Telefone] int  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [CodPostal] nvarchar(max)  NOT NULL,
    [Localidade] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ColaboracoesSet'
CREATE TABLE [dbo].[ColaboracoesSet] (
    [idAnimador] int  NOT NULL,
    [NrEvento] int  NOT NULL
);
GO

-- Creating table 'ParticipacoesSet'
CREATE TABLE [dbo].[ParticipacoesSet] (
    [idEscola] int  NOT NULL,
    [NrEvento] int  NOT NULL
);
GO

-- Creating table 'EventosSet'
CREATE TABLE [dbo].[EventosSet] (
    [NrEvento] int IDENTITY(1,1) NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL,
    [Local] nvarchar(max)  NOT NULL,
    [DataHora] datetime  NOT NULL,
    [LimitePart] int  NOT NULL,
    [IdadeInferior] int  NOT NULL,
    [IdadeSuperior] int  NOT NULL,
    [TipoEvento] nvarchar(max)  NOT NULL,
    [ColaboracoesId] int  NOT NULL
);
GO

-- Creating table 'PessoasSet_Filhos'
CREATE TABLE [dbo].[PessoasSet_Filhos] (
    [sexo] nvarchar(max)  NOT NULL,
    [DataNasc] nvarchar(max)  NOT NULL,
    [idProgenitor] int  NOT NULL,
    [idEscola] int  NOT NULL,
    [idPessoa] int  NOT NULL
);
GO

-- Creating table 'PessoasSet_Clientes'
CREATE TABLE [dbo].[PessoasSet_Clientes] (
    [ValorOferta] int  NOT NULL,
    [NrCartao] int  NOT NULL,
    [idPessoa] int  NOT NULL
);
GO

-- Creating table 'PessoasSet_Animadores'
CREATE TABLE [dbo].[PessoasSet_Animadores] (
    [Especialidade] nvarchar(max)  NOT NULL,
    [idPessoa] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [idPessoa] in table 'PessoasSet'
ALTER TABLE [dbo].[PessoasSet]
ADD CONSTRAINT [PK_PessoasSet]
    PRIMARY KEY CLUSTERED ([idPessoa] ASC);
GO

-- Creating primary key on [idUser] in table 'UsersSet'
ALTER TABLE [dbo].[UsersSet]
ADD CONSTRAINT [PK_UsersSet]
    PRIMARY KEY CLUSTERED ([idUser] ASC);
GO

-- Creating primary key on [idFilho], [NrEvento] in table 'InscricoesSet'
ALTER TABLE [dbo].[InscricoesSet]
ADD CONSTRAINT [PK_InscricoesSet]
    PRIMARY KEY CLUSTERED ([idFilho], [NrEvento] ASC);
GO

-- Creating primary key on [NrCompra] in table 'ComprasSet'
ALTER TABLE [dbo].[ComprasSet]
ADD CONSTRAINT [PK_ComprasSet]
    PRIMARY KEY CLUSTERED ([NrCompra] ASC);
GO

-- Creating primary key on [NrCompra], [CodProduto] in table 'DetalhesCompraSet'
ALTER TABLE [dbo].[DetalhesCompraSet]
ADD CONSTRAINT [PK_DetalhesCompraSet]
    PRIMARY KEY CLUSTERED ([NrCompra], [CodProduto] ASC);
GO

-- Creating primary key on [CodProduto] in table 'ProdutosSet'
ALTER TABLE [dbo].[ProdutosSet]
ADD CONSTRAINT [PK_ProdutosSet]
    PRIMARY KEY CLUSTERED ([CodProduto] ASC);
GO

-- Creating primary key on [CodTipoProduto] in table 'TipoProdutoSet'
ALTER TABLE [dbo].[TipoProdutoSet]
ADD CONSTRAINT [PK_TipoProdutoSet]
    PRIMARY KEY CLUSTERED ([CodTipoProduto] ASC);
GO

-- Creating primary key on [IdEscola] in table 'EscolasSet'
ALTER TABLE [dbo].[EscolasSet]
ADD CONSTRAINT [PK_EscolasSet]
    PRIMARY KEY CLUSTERED ([IdEscola] ASC);
GO

-- Creating primary key on [idAnimador], [NrEvento] in table 'ColaboracoesSet'
ALTER TABLE [dbo].[ColaboracoesSet]
ADD CONSTRAINT [PK_ColaboracoesSet]
    PRIMARY KEY CLUSTERED ([idAnimador], [NrEvento] ASC);
GO

-- Creating primary key on [idEscola], [NrEvento] in table 'ParticipacoesSet'
ALTER TABLE [dbo].[ParticipacoesSet]
ADD CONSTRAINT [PK_ParticipacoesSet]
    PRIMARY KEY CLUSTERED ([idEscola], [NrEvento] ASC);
GO

-- Creating primary key on [NrEvento] in table 'EventosSet'
ALTER TABLE [dbo].[EventosSet]
ADD CONSTRAINT [PK_EventosSet]
    PRIMARY KEY CLUSTERED ([NrEvento] ASC);
GO

-- Creating primary key on [idPessoa] in table 'PessoasSet_Filhos'
ALTER TABLE [dbo].[PessoasSet_Filhos]
ADD CONSTRAINT [PK_PessoasSet_Filhos]
    PRIMARY KEY CLUSTERED ([idPessoa] ASC);
GO

-- Creating primary key on [idPessoa] in table 'PessoasSet_Clientes'
ALTER TABLE [dbo].[PessoasSet_Clientes]
ADD CONSTRAINT [PK_PessoasSet_Clientes]
    PRIMARY KEY CLUSTERED ([idPessoa] ASC);
GO

-- Creating primary key on [idPessoa] in table 'PessoasSet_Animadores'
ALTER TABLE [dbo].[PessoasSet_Animadores]
ADD CONSTRAINT [PK_PessoasSet_Animadores]
    PRIMARY KEY CLUSTERED ([idPessoa] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [idFilho] in table 'InscricoesSet'
ALTER TABLE [dbo].[InscricoesSet]
ADD CONSTRAINT [FK_FilhosInscricoes]
    FOREIGN KEY ([idFilho])
    REFERENCES [dbo].[PessoasSet_Filhos]
        ([idPessoa])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idProgenitor] in table 'PessoasSet_Filhos'
ALTER TABLE [dbo].[PessoasSet_Filhos]
ADD CONSTRAINT [FK_ClientesFilhos]
    FOREIGN KEY ([idProgenitor])
    REFERENCES [dbo].[PessoasSet_Clientes]
        ([idPessoa])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientesFilhos'
CREATE INDEX [IX_FK_ClientesFilhos]
ON [dbo].[PessoasSet_Filhos]
    ([idProgenitor]);
GO

-- Creating foreign key on [idCliente] in table 'ComprasSet'
ALTER TABLE [dbo].[ComprasSet]
ADD CONSTRAINT [FK_ClientesCompras]
    FOREIGN KEY ([idCliente])
    REFERENCES [dbo].[PessoasSet_Clientes]
        ([idPessoa])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientesCompras'
CREATE INDEX [IX_FK_ClientesCompras]
ON [dbo].[ComprasSet]
    ([idCliente]);
GO

-- Creating foreign key on [NrCompra] in table 'DetalhesCompraSet'
ALTER TABLE [dbo].[DetalhesCompraSet]
ADD CONSTRAINT [FK_ComprasDetalhesCompra]
    FOREIGN KEY ([NrCompra])
    REFERENCES [dbo].[ComprasSet]
        ([NrCompra])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [CodTipoProduto] in table 'ProdutosSet'
ALTER TABLE [dbo].[ProdutosSet]
ADD CONSTRAINT [FK_TipoProdutoProdutos]
    FOREIGN KEY ([CodTipoProduto])
    REFERENCES [dbo].[TipoProdutoSet]
        ([CodTipoProduto])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TipoProdutoProdutos'
CREATE INDEX [IX_FK_TipoProdutoProdutos]
ON [dbo].[ProdutosSet]
    ([CodTipoProduto]);
GO

-- Creating foreign key on [CodProduto] in table 'DetalhesCompraSet'
ALTER TABLE [dbo].[DetalhesCompraSet]
ADD CONSTRAINT [FK_ProdutosDetalhesCompra]
    FOREIGN KEY ([CodProduto])
    REFERENCES [dbo].[ProdutosSet]
        ([CodProduto])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProdutosDetalhesCompra'
CREATE INDEX [IX_FK_ProdutosDetalhesCompra]
ON [dbo].[DetalhesCompraSet]
    ([CodProduto]);
GO

-- Creating foreign key on [idEscola] in table 'PessoasSet_Filhos'
ALTER TABLE [dbo].[PessoasSet_Filhos]
ADD CONSTRAINT [FK_EscolasFilhos]
    FOREIGN KEY ([idEscola])
    REFERENCES [dbo].[EscolasSet]
        ([IdEscola])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EscolasFilhos'
CREATE INDEX [IX_FK_EscolasFilhos]
ON [dbo].[PessoasSet_Filhos]
    ([idEscola]);
GO

-- Creating foreign key on [idAnimador] in table 'ColaboracoesSet'
ALTER TABLE [dbo].[ColaboracoesSet]
ADD CONSTRAINT [FK_AnimadoresColaboracoes]
    FOREIGN KEY ([idAnimador])
    REFERENCES [dbo].[PessoasSet_Animadores]
        ([idPessoa])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idEscola] in table 'ParticipacoesSet'
ALTER TABLE [dbo].[ParticipacoesSet]
ADD CONSTRAINT [FK_EscolasParticipacoes]
    FOREIGN KEY ([idEscola])
    REFERENCES [dbo].[EscolasSet]
        ([IdEscola])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [NrEvento] in table 'ParticipacoesSet'
ALTER TABLE [dbo].[ParticipacoesSet]
ADD CONSTRAINT [FK_EventosParticipacoes]
    FOREIGN KEY ([NrEvento])
    REFERENCES [dbo].[EventosSet]
        ([NrEvento])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EventosParticipacoes'
CREATE INDEX [IX_FK_EventosParticipacoes]
ON [dbo].[ParticipacoesSet]
    ([NrEvento]);
GO

-- Creating foreign key on [NrEvento] in table 'ColaboracoesSet'
ALTER TABLE [dbo].[ColaboracoesSet]
ADD CONSTRAINT [FK_EventosColaboracoes]
    FOREIGN KEY ([NrEvento])
    REFERENCES [dbo].[EventosSet]
        ([NrEvento])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EventosColaboracoes'
CREATE INDEX [IX_FK_EventosColaboracoes]
ON [dbo].[ColaboracoesSet]
    ([NrEvento]);
GO

-- Creating foreign key on [NrEvento] in table 'InscricoesSet'
ALTER TABLE [dbo].[InscricoesSet]
ADD CONSTRAINT [FK_EventosInscricoes]
    FOREIGN KEY ([NrEvento])
    REFERENCES [dbo].[EventosSet]
        ([NrEvento])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EventosInscricoes'
CREATE INDEX [IX_FK_EventosInscricoes]
ON [dbo].[InscricoesSet]
    ([NrEvento]);
GO

-- Creating foreign key on [idPessoa] in table 'UsersSet'
ALTER TABLE [dbo].[UsersSet]
ADD CONSTRAINT [FK_PessoasUsers]
    FOREIGN KEY ([idPessoa])
    REFERENCES [dbo].[PessoasSet]
        ([idPessoa])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PessoasUsers'
CREATE INDEX [IX_FK_PessoasUsers]
ON [dbo].[UsersSet]
    ([idPessoa]);
GO

-- Creating foreign key on [idPessoa] in table 'PessoasSet_Filhos'
ALTER TABLE [dbo].[PessoasSet_Filhos]
ADD CONSTRAINT [FK_Filhos_inherits_Pessoas]
    FOREIGN KEY ([idPessoa])
    REFERENCES [dbo].[PessoasSet]
        ([idPessoa])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idPessoa] in table 'PessoasSet_Clientes'
ALTER TABLE [dbo].[PessoasSet_Clientes]
ADD CONSTRAINT [FK_Clientes_inherits_Pessoas]
    FOREIGN KEY ([idPessoa])
    REFERENCES [dbo].[PessoasSet]
        ([idPessoa])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idPessoa] in table 'PessoasSet_Animadores'
ALTER TABLE [dbo].[PessoasSet_Animadores]
ADD CONSTRAINT [FK_Animadores_inherits_Pessoas]
    FOREIGN KEY ([idPessoa])
    REFERENCES [dbo].[PessoasSet]
        ([idPessoa])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------