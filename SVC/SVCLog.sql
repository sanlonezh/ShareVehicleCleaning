USE [SVCLog]
GO
/****** Object:  Table [dbo].[Log4net]    Script Date: 01/02/2014 08:21:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log4net](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Level] [nvarchar](50) NULL,
	[Logger] [nvarchar](255) NULL,
	[Host] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Thread] [nvarchar](255) NULL,
	[Message] [nvarchar](max) NULL,
	[Exception] [nvarchar](max) NULL,
 CONSTRAINT [PK_Log4net] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditLog]    Script Date: 01/02/2014 08:21:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[ModuleName] [nvarchar](100) NULL,
	[TableName] [nvarchar](100) NULL,
	[ModelId] [int] NULL,
	[EventType] [nvarchar](50) NULL,
	[NewValues] [nvarchar](max) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_AuditLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_AuditLog_CreateTime]    Script Date: 01/02/2014 08:21:11 ******/
ALTER TABLE [dbo].[AuditLog] ADD  CONSTRAINT [DF_AuditLog_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
