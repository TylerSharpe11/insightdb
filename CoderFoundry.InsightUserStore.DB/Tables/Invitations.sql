
CREATE TABLE [Security].[Invitations](
	[Id] [int] IDENTITY(1,1)  NOT NULL,
	[FromUserId] [int] NULL,
	[ToEmail] [nvarchar](50) NULL,
	[SecurityHash] [nvarchar](50) NULL)


GO
ALTER TABLE [Security].[Invitations]
ADD CONSTRAINT [PK_Security.Invitations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
GO
AUTOPROC Insert,Select,Update,Delete [Security].[Invitations]
GO
