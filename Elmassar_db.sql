USE [SOCIETE_EL_MASSAR]
GO
/****** Object:  Table [dbo].[agent_commercial]    Script Date: 17/02/2022 2:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agent_commercial](
	[id_agent] [int] NOT NULL,
	[nom] [varchar](30) NULL,
	[contact] [varchar](20) NULL,
	[adresse] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_agent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[appartement]    Script Date: 17/02/2022 2:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appartement](
	[id_appartement] [int] NOT NULL,
	[num_appartement] [int] NULL,
	[surface] [varchar](20) NULL,
	[prix] [float] NULL,
	[description_] [varchar](250) NULL,
	[id_reservation] [int] NULL,
	[id_residence] [int] NULL,
	[id_type_appart] [int] NULL,
	[id_etage] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_appartement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorie_garage]    Script Date: 17/02/2022 2:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorie_garage](
	[id_categorie_garage] [int] NOT NULL,
	[nom] [varchar](30) NULL,
	[description_] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_categorie_garage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client]    Script Date: 17/02/2022 2:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[id_client] [int] NOT NULL,
	[nom] [varchar](30) NULL,
	[prenom] [varchar](50) NULL,
	[contact] [varchar](20) NULL,
	[adresse] [varchar](60) NULL,
	[detail] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[etage]    Script Date: 17/02/2022 2:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[etage](
	[id_etage] [int] NOT NULL,
	[niveau] [int] NULL,
	[description_] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_etage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[garage]    Script Date: 17/02/2022 2:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[garage](
	[id_garage] [int] NOT NULL,
	[num_garage] [int] NULL,
	[prix] [float] NULL,
	[description_] [varchar](250) NULL,
	[id_reservation] [int] NULL,
	[id_residence] [int] NULL,
	[id_type_garage] [int] NULL,
	[id_categorie_garage] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_garage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 17/02/2022 2:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[id_reservation] [int] NOT NULL,
	[libelle] [varchar](60) NULL,
	[date_reservation] [date] NULL,
	[datail_reservation] [varchar](60) NULL,
	[id_agent] [int] NULL,
	[id_client] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_reservation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[residence]    Script Date: 17/02/2022 2:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[residence](
	[id_residence] [int] NOT NULL,
	[nom] [varchar](60) NULL,
	[ville] [varchar](50) NULL,
	[adresse] [varchar](60) NULL,
	[description_] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_residence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trouver]    Script Date: 17/02/2022 2:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trouver](
	[id_etage] [int] NULL,
	[id_residence] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_appartement]    Script Date: 17/02/2022 2:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_appartement](
	[id_type_appart] [int] NOT NULL,
	[nom] [varchar](60) NULL,
	[description_] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_type_appart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_garage]    Script Date: 17/02/2022 2:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_garage](
	[id_type_garage] [int] NOT NULL,
	[nom] [varchar](30) NULL,
	[description_garage] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_type_garage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[appartement]  WITH CHECK ADD FOREIGN KEY([id_etage])
REFERENCES [dbo].[etage] ([id_etage])
GO
ALTER TABLE [dbo].[appartement]  WITH CHECK ADD FOREIGN KEY([id_reservation])
REFERENCES [dbo].[reservation] ([id_reservation])
GO
ALTER TABLE [dbo].[appartement]  WITH CHECK ADD FOREIGN KEY([id_residence])
REFERENCES [dbo].[residence] ([id_residence])
GO
ALTER TABLE [dbo].[appartement]  WITH CHECK ADD FOREIGN KEY([id_type_appart])
REFERENCES [dbo].[type_appartement] ([id_type_appart])
GO
ALTER TABLE [dbo].[garage]  WITH CHECK ADD FOREIGN KEY([id_categorie_garage])
REFERENCES [dbo].[categorie_garage] ([id_categorie_garage])
GO
ALTER TABLE [dbo].[garage]  WITH CHECK ADD FOREIGN KEY([id_reservation])
REFERENCES [dbo].[reservation] ([id_reservation])
GO
ALTER TABLE [dbo].[garage]  WITH CHECK ADD FOREIGN KEY([id_residence])
REFERENCES [dbo].[residence] ([id_residence])
GO
ALTER TABLE [dbo].[garage]  WITH CHECK ADD FOREIGN KEY([id_type_garage])
REFERENCES [dbo].[type_garage] ([id_type_garage])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([id_agent])
REFERENCES [dbo].[agent_commercial] ([id_agent])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([id_client])
REFERENCES [dbo].[client] ([id_client])
GO
ALTER TABLE [dbo].[trouver]  WITH CHECK ADD FOREIGN KEY([id_etage])
REFERENCES [dbo].[etage] ([id_etage])
GO
ALTER TABLE [dbo].[trouver]  WITH CHECK ADD FOREIGN KEY([id_residence])
REFERENCES [dbo].[residence] ([id_residence])
GO
