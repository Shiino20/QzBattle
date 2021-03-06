USE [dmab0915_2Sem_4]
GO
/****** Object:  User [dmab0915_2Sem_4]    Script Date: 20-12-2016 13:53:17 ******/
CREATE USER [dmab0915_2Sem_4] FOR LOGIN [dmab0915_2Sem_4] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [dmab0915_2Sem_4]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 20-12-2016 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[questionId] [int] NULL,
	[isCorrect] [bit] NOT NULL,
	[pointAmount] [int] NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 20-12-2016 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lobby]    Script Date: 20-12-2016 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lobby](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[categoryId] [int] NULL,
	[isStarted] [bit] NOT NULL,
 CONSTRAINT [PK_Lobby] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 20-12-2016 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[roleId] [int] NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question]    Script Date: 20-12-2016 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[categoryId] [int] NULL,
 CONSTRAINT [PK_Question_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 20-12-2016 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserQuestion]    Script Date: 20-12-2016 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserQuestion](
	[userId] [int] NOT NULL,
	[questionId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[lobbyId] [int] NOT NULL,
 CONSTRAINT [PK_UserQuestion_1] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[questionId] ASC,
	[categoryId] ASC,
	[lobbyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 20-12-2016 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[lastName] [nvarchar](max) NOT NULL,
	[country] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](max) NOT NULL,
	[loginId] [int] NULL,
	[point] [int] NULL,
	[categoryId] [int] NULL,
	[timeStamp] [timestamp] NULL,
	[joinedLobbyId] [int] NULL,
	[lobbyOwnedId] [int] NULL,
 CONSTRAINT [PK_UserTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (2, N'Copenhagen', 1, 1, 100)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (3, N'Sofia', 1, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (4, N'Oslo', 1, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (5, N'Stockholm', 1, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (39, N'London', 2, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (40, N'Burma', 2, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (42, N'Stockholm', 2, 1, 100)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (43, N'New York', 2, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (44, N'Nuuk', 3, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (46, N'Zagreb', 3, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (49, N'Sarajevo', 3, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (51, N'London', 3, 1, 100)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (53, N'Oslo', 4, 1, 100)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (56, N'Berlin', 4, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (57, N'Dubrovnik', 4, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (58, N'Los Angeles', 4, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (71, N'Bill Gates', 9, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (72, N'Edward Snowden', 9, 1, 100)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (73, N'Johnny Walker', 9, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (74, N'Leonardo da Vinci', 9, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (75, N'C#', 12, 1, 100)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (76, N'Java', 12, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (77, N'Arnold C', 12, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (78, N'Javascript', 12, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (79, N'WHERE', 14, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (80, N'INSERT', 14, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (81, N'UPDATE', 14, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (82, N'SELECT', 14, 1, 100)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (84, N'BMW', 40, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (85, N'Audi', 40, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (86, N'Ferrari', 40, 1, 100)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (87, N'Porsche', 40, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (88, N'Skoda Fabia', 39, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (89, N'VW Golf VI', 39, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (90, N'Range Rover', 39, 1, 100)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (91, N'Technology Company', 15, 1, 100)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (92, N'Seat Ibiza', 39, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (93, N'Car Company', 15, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (95, N'Top of the engine', 38, 1, 100)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (96, N'Bottom of the engine', 38, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (97, N'Inside the oilpan', 38, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (98, N'Inside the transmission', 38, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (100, N'Food Company', 15, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (101, N'Movie Company', 15, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (102, N'Dancing', 37, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (103, N'Physics', 37, 1, 100)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (104, N'Football', 37, 0, 0)
INSERT [dbo].[Answer] ([id], [description], [questionId], [isCorrect], [pointAmount]) VALUES (106, N'Swimming', 37, 0, 0)
SET IDENTITY_INSERT [dbo].[Answer] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (16, N'Geography')
INSERT [dbo].[Category] ([id], [name]) VALUES (18, N'Technology')
INSERT [dbo].[Category] ([id], [name]) VALUES (19, N'Cars')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([id], [description], [categoryId]) VALUES (1, N'What is the capital of Denmark', 16)
INSERT [dbo].[Question] ([id], [description], [categoryId]) VALUES (2, N'What is the capital of Sweden', 16)
INSERT [dbo].[Question] ([id], [description], [categoryId]) VALUES (3, N'What is the capital of England', 16)
INSERT [dbo].[Question] ([id], [description], [categoryId]) VALUES (4, N'What is the capital of Norway', 16)
INSERT [dbo].[Question] ([id], [description], [categoryId]) VALUES (9, N'Which of these people leaked classified NSA information', 18)
INSERT [dbo].[Question] ([id], [description], [categoryId]) VALUES (12, N'Which of the following programming languages is made by Microsoft', 18)
INSERT [dbo].[Question] ([id], [description], [categoryId]) VALUES (14, N'In SQL what does sigma mean', 18)
INSERT [dbo].[Question] ([id], [description], [categoryId]) VALUES (15, N'Lenovo is:', 18)
INSERT [dbo].[Question] ([id], [description], [categoryId]) VALUES (37, N'Nikola Tesla is known for', 19)
INSERT [dbo].[Question] ([id], [description], [categoryId]) VALUES (38, N'Where is the camshaft in an engine placed', 19)
INSERT [dbo].[Question] ([id], [description], [categoryId]) VALUES (39, N'Which of these vehicles are 4X4', 19)
INSERT [dbo].[Question] ([id], [description], [categoryId]) VALUES (40, N'Which car brand has a horse as their logo', 19)
SET IDENTITY_INSERT [dbo].[Question] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Question1] FOREIGN KEY([questionId])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Question1]
GO
ALTER TABLE [dbo].[Lobby]  WITH CHECK ADD  CONSTRAINT [FK_Lobby_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Lobby] CHECK CONSTRAINT [FK_Lobby_Category]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Role]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Category1] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Category1]
GO
ALTER TABLE [dbo].[UserQuestion]  WITH CHECK ADD  CONSTRAINT [FK_UserQuestion_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[UserQuestion] CHECK CONSTRAINT [FK_UserQuestion_Category]
GO
ALTER TABLE [dbo].[UserQuestion]  WITH CHECK ADD  CONSTRAINT [FK_UserQuestion_Lobby] FOREIGN KEY([lobbyId])
REFERENCES [dbo].[Lobby] ([id])
GO
ALTER TABLE [dbo].[UserQuestion] CHECK CONSTRAINT [FK_UserQuestion_Lobby]
GO
ALTER TABLE [dbo].[UserQuestion]  WITH CHECK ADD  CONSTRAINT [FK_UserQuestion_Question] FOREIGN KEY([questionId])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[UserQuestion] CHECK CONSTRAINT [FK_UserQuestion_Question]
GO
ALTER TABLE [dbo].[UserQuestion]  WITH CHECK ADD  CONSTRAINT [FK_UserQuestion_UserTable] FOREIGN KEY([userId])
REFERENCES [dbo].[UserTable] ([id])
GO
ALTER TABLE [dbo].[UserQuestion] CHECK CONSTRAINT [FK_UserQuestion_UserTable]
GO
ALTER TABLE [dbo].[UserTable]  WITH CHECK ADD  CONSTRAINT [FK_UserTable_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[UserTable] CHECK CONSTRAINT [FK_UserTable_Category]
GO
ALTER TABLE [dbo].[UserTable]  WITH CHECK ADD  CONSTRAINT [FK_UserTable_Lobby] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Lobby] ([id])
GO
ALTER TABLE [dbo].[UserTable] CHECK CONSTRAINT [FK_UserTable_Lobby]
GO
ALTER TABLE [dbo].[UserTable]  WITH CHECK ADD  CONSTRAINT [FK_UserTable_Lobby1] FOREIGN KEY([joinedLobbyId])
REFERENCES [dbo].[Lobby] ([id])
GO
ALTER TABLE [dbo].[UserTable] CHECK CONSTRAINT [FK_UserTable_Lobby1]
GO
ALTER TABLE [dbo].[UserTable]  WITH CHECK ADD  CONSTRAINT [FK_UserTable_Lobby2] FOREIGN KEY([lobbyOwnedId])
REFERENCES [dbo].[Lobby] ([id])
GO
ALTER TABLE [dbo].[UserTable] CHECK CONSTRAINT [FK_UserTable_Lobby2]
GO
ALTER TABLE [dbo].[UserTable]  WITH CHECK ADD  CONSTRAINT [FK_UserTable_Login] FOREIGN KEY([loginId])
REFERENCES [dbo].[Login] ([id])
GO
ALTER TABLE [dbo].[UserTable] CHECK CONSTRAINT [FK_UserTable_Login]
GO
