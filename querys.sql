USE [BlendingPMartinez]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- Tabla que contendrá los Caller ID's

CREATE TABLE [dbo].[CallerID](
	[CallerID] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- Store procedure que se consultará desde las PBX para pbtener un Caller ID aleatorio de la tabla CallerID

CREATE PROCEDURE [dbo].[ObtenerCallerIDNuevatel]
as
begin
	select top 1 * from CallerID nolock order by newid()
end
