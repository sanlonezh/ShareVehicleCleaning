USE [SVCAccount]
GO
/****** Object:  Table [dbo].[VerifyCode]    Script Date: 01/02/2014 08:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VerifyCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VerifyText] [nvarchar](50) NULL,
	[Guid] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [VerifyCode_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[VerifyCode] ON
INSERT [dbo].[VerifyCode] ([ID], [VerifyText], [Guid], [CreateTime]) VALUES (86, N'bdpu', N'2c44185b-f28d-4d26-bda4-a7d3136123e9', CAST(0x0000A2A4016B2E1C AS DateTime))
INSERT [dbo].[VerifyCode] ([ID], [VerifyText], [Guid], [CreateTime]) VALUES (87, N'vuxr', N'bd0a89f7-1dc3-40ec-8467-1f51df1fad47', CAST(0x0000A2A40175E31B AS DateTime))
INSERT [dbo].[VerifyCode] ([ID], [VerifyText], [Guid], [CreateTime]) VALUES (88, N'xktc', N'6dbe30da-6ea2-4daa-8ee3-b9717ac4ee0e', CAST(0x0000A2A600BD7FFB AS DateTime))
INSERT [dbo].[VerifyCode] ([ID], [VerifyText], [Guid], [CreateTime]) VALUES (89, N'fkml', N'eb1a51f6-8e0b-42d0-9c60-059b28b62b46', CAST(0x0000A2A601005C0F AS DateTime))
SET IDENTITY_INSERT [dbo].[VerifyCode] OFF
/****** Object:  Table [dbo].[UserSessionData]    Script Date: 01/02/2014 08:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSessionData](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[LoginToken] [uniqueidentifier] NOT NULL,
	[Key] [nvarchar](500) NOT NULL,
	[Value] [image] NOT NULL,
 CONSTRAINT [PK_UserSessionData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 01/02/2014 08:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (1, 1, 1, CAST(0x0000A27900EFFB08 AS DateTime))
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (2, 1, 2, CAST(0x0000A27900F320D7 AS DateTime))
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (7, 2, 1, CAST(0x0000A27F011BEE91 AS DateTime))
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (8, 1, 3, CAST(0x0000A27F0138BA90 AS DateTime))
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (9, 5, 3, CAST(0x0000A28000BB9D0F AS DateTime))
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (10, 5, 2, CAST(0x0000A28000BBA58B AS DateTime))
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (12, 4, 3, CAST(0x0000A280010C3CD3 AS DateTime))
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (13, 6, 3, CAST(0x0000A28A01692CD9 AS DateTime))
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (14, 7, 1, CAST(0x0000A2A300FA49BA AS DateTime))
SET IDENTITY_INSERT [dbo].[UserRole] OFF
/****** Object:  Table [dbo].[User]    Script Date: 01/02/2014 08:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[LoginName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([ID], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (1, N'guozili', N'C9-55-45-E4-DE-40-C0-BE-F5-3D-BF-AF-69-FB-19-DE', CAST(0x0000A27900EF6E1A AS DateTime), 1, N'guozili@163.com', N'13911153443')
INSERT [dbo].[User] ([ID], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (2, N'guozili2', N'96-E7-92-18-96-5E-B7-2C-92-A5-49-DD-5A-33-01-12', CAST(0x0000A27F00EC1F62 AS DateTime), 0, N'guozili2@gmail.com', N'13856567825')
INSERT [dbo].[User] ([ID], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (4, N'guozili3', N'96-E7-92-18-96-5E-B7-2C-92-A5-49-DD-5A-33-01-12', CAST(0x0000A27F01143C57 AS DateTime), 1, N'guozili3@163.com', N'13911854551')
INSERT [dbo].[User] ([ID], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (6, N'dakongyi', N'96-E7-92-18-96-5E-B7-2C-92-A5-49-DD-5A-33-01-12', CAST(0x0000A28A01692CA5 AS DateTime), 1, NULL, NULL)
INSERT [dbo].[User] ([ID], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (7, N'admin', N'96-E7-92-18-96-5E-B7-2C-92-A5-49-DD-5A-33-01-12', CAST(0x0000A2A300FA4987 AS DateTime), 1, N'admin@admin.com', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 01/02/2014 08:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Info] [nvarchar](300) NULL,
	[BusinessPermissionString] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([ID], [Name], [CreateTime], [Info], [BusinessPermissionString]) VALUES (1, N'系统管理员', CAST(0x0000A27900EFEC38 AS DateTime), N'暂时无', N'101,102,201,202,301,302,303,304,401,402,403')
INSERT [dbo].[Role] ([ID], [Name], [CreateTime], [Info], [BusinessPermissionString]) VALUES (2, N'高级工程师', CAST(0x0000A27900F2C9BC AS DateTime), N'暂时无', N'101')
INSERT [dbo].[Role] ([ID], [Name], [CreateTime], [Info], [BusinessPermissionString]) VALUES (3, N'测试工程师', CAST(0x0000A27F01261DAA AS DateTime), N'测试项目的人员', NULL)
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[LoginInfo]    Script Date: 01/02/2014 08:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginInfo](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[LoginToken] [uniqueidentifier] NOT NULL,
	[LastAccessTime] [datetime] NOT NULL,
	[UserID] [int] NOT NULL,
	[LoginName] [nvarchar](50) NOT NULL,
	[BusinessPermissionString] [nvarchar](4000) NULL,
	[ClientIP] [nvarchar](90) NULL,
	[EnumLoginAccountType] [int] NOT NULL,
 CONSTRAINT [PK_LoginInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoginInfo] ON
INSERT [dbo].[LoginInfo] ([ID], [CreateTime], [LoginToken], [LastAccessTime], [UserID], [LoginName], [BusinessPermissionString], [ClientIP], [EnumLoginAccountType]) VALUES (24, CAST(0x0000A281016718A2 AS DateTime), N'0269df35-e5ad-4500-b437-fad47913ac94', CAST(0x0000A28101671E5D AS DateTime), 4, N'guozili3', N'', N'127.0.0.1', 0)
INSERT [dbo].[LoginInfo] ([ID], [CreateTime], [LoginToken], [LastAccessTime], [UserID], [LoginName], [BusinessPermissionString], [ClientIP], [EnumLoginAccountType]) VALUES (35, CAST(0x0000A2A300FA902C AS DateTime), N'ebacbb4d-89e9-4fdc-93fe-02420519a3ab', CAST(0x0000A2A3015656D6 AS DateTime), 1, N'guozili', N'101,102,201,202,301,302,303,304,401,402,403', N'127.0.0.1', 0)
INSERT [dbo].[LoginInfo] ([ID], [CreateTime], [LoginToken], [LastAccessTime], [UserID], [LoginName], [BusinessPermissionString], [ClientIP], [EnumLoginAccountType]) VALUES (36, CAST(0x0000A2A4016AB084 AS DateTime), N'2d8f1a9d-0960-43c3-b8e2-c8afc482964d', CAST(0x0000A2A401802CD2 AS DateTime), 7, N'admin', N'101,102,201,202,301,302,303,304,401,402,403', N'127.0.0.1', 0)
SET IDENTITY_INSERT [dbo].[LoginInfo] OFF
/****** Object:  Default [DF_VerifyCode_CreateTime]    Script Date: 01/02/2014 08:17:21 ******/
ALTER TABLE [dbo].[VerifyCode] ADD  CONSTRAINT [DF_VerifyCode_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__UserSessi__Creat__4E88ABD4]    Script Date: 01/02/2014 08:17:21 ******/
ALTER TABLE [dbo].[UserSessionData] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserRole_CreateTime]    Script Date: 01/02/2014 08:17:21 ******/
ALTER TABLE [dbo].[UserRole] ADD  CONSTRAINT [DF_UserRole_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_User_CreateTime]    Script Date: 01/02/2014 08:17:21 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__User__IsActive__4222D4EF]    Script Date: 01/02/2014 08:17:21 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Role_CreateTime]    Script Date: 01/02/2014 08:17:21 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_LoginInfo_CreateTime]    Script Date: 01/02/2014 08:17:21 ******/
ALTER TABLE [dbo].[LoginInfo] ADD  CONSTRAINT [DF_LoginInfo_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__LoginInfo__EnumL__30F848ED]    Script Date: 01/02/2014 08:17:21 ******/
ALTER TABLE [dbo].[LoginInfo] ADD  DEFAULT ((0)) FOR [EnumLoginAccountType]
GO
