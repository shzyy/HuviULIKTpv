
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/22/2026 17:31:20
-- Generated from EDMX file: C:\Users\opilane\source\repos\HuviULIKTpv\HuviULIKTpv\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [HuviringidUL];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'HuviringidSetSet'
CREATE TABLE [dbo].[HuviringidSetSet] (
    [HuviringidID] int IDENTITY(1,1) NOT NULL,
    [Nimi] nvarchar(max)  NOT NULL,
    [Vanuseruhm] nvarchar(max)  NOT NULL,
    [Kirjeldus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'OsalejaSetSet'
CREATE TABLE [dbo].[OsalejaSetSet] (
    [OsalejaID] int IDENTITY(1,1) NOT NULL,
    [Eesnimi] nvarchar(max)  NOT NULL,
    [Perekonnanimi] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RegistreerimineSetSet'
CREATE TABLE [dbo].[RegistreerimineSetSet] (
    [RegistreerimineID] int IDENTITY(1,1) NOT NULL,
    [RegistreerimiseKuupaev] datetime  NOT NULL,
    [Staatus] nvarchar(max)  NOT NULL,
    [HuviringidSet_HuviringidID] int  NOT NULL,
    [OsalejaSet_OsalejaID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [HuviringidID] in table 'HuviringidSetSet'
ALTER TABLE [dbo].[HuviringidSetSet]
ADD CONSTRAINT [PK_HuviringidSetSet]
    PRIMARY KEY CLUSTERED ([HuviringidID] ASC);
GO

-- Creating primary key on [OsalejaID] in table 'OsalejaSetSet'
ALTER TABLE [dbo].[OsalejaSetSet]
ADD CONSTRAINT [PK_OsalejaSetSet]
    PRIMARY KEY CLUSTERED ([OsalejaID] ASC);
GO

-- Creating primary key on [RegistreerimineID] in table 'RegistreerimineSetSet'
ALTER TABLE [dbo].[RegistreerimineSetSet]
ADD CONSTRAINT [PK_RegistreerimineSetSet]
    PRIMARY KEY CLUSTERED ([RegistreerimineID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [HuviringidSet_HuviringidID] in table 'RegistreerimineSetSet'
ALTER TABLE [dbo].[RegistreerimineSetSet]
ADD CONSTRAINT [FK_HuviringidSetRegistreerimineSet]
    FOREIGN KEY ([HuviringidSet_HuviringidID])
    REFERENCES [dbo].[HuviringidSetSet]
        ([HuviringidID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HuviringidSetRegistreerimineSet'
CREATE INDEX [IX_FK_HuviringidSetRegistreerimineSet]
ON [dbo].[RegistreerimineSetSet]
    ([HuviringidSet_HuviringidID]);
GO

-- Creating foreign key on [OsalejaSet_OsalejaID] in table 'RegistreerimineSetSet'
ALTER TABLE [dbo].[RegistreerimineSetSet]
ADD CONSTRAINT [FK_OsalejaSetRegistreerimineSet]
    FOREIGN KEY ([OsalejaSet_OsalejaID])
    REFERENCES [dbo].[OsalejaSetSet]
        ([OsalejaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OsalejaSetRegistreerimineSet'
CREATE INDEX [IX_FK_OsalejaSetRegistreerimineSet]
ON [dbo].[RegistreerimineSetSet]
    ([OsalejaSet_OsalejaID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------