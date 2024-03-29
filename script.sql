USE [Tourism]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 13.02.2024 23:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[City_ID] [int] NOT NULL,
	[Name] [nvarchar](60) NULL,
 CONSTRAINT [PK__Cities__DE9DE020414A6C54] PRIMARY KEY CLUSTERED 
(
	[City_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 13.02.2024 23:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Country_ID] [int] NOT NULL,
	[Name] [nvarchar](60) NULL,
 CONSTRAINT [PK__Countrie__8036CB4EBAF0C146] PRIMARY KEY CLUSTERED 
(
	[Country_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 13.02.2024 23:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Employee_ID] [int] NOT NULL,
	[First_name] [nvarchar](50) NULL,
	[Last_name] [nvarchar](50) NULL,
	[Position] [nvarchar](255) NULL,
	[Salary] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Excursions]    Script Date: 13.02.2024 23:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Excursions](
	[Excursion_ID] [int] NOT NULL,
	[Resort_ID] [int] NULL,
	[Significant_places] [nvarchar](max) NULL,
	[Monuments] [nvarchar](max) NULL,
	[Museums] [nvarchar](max) NULL,
	[Temples] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Excursion_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 13.02.2024 23:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[Hotel_ID] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Star_rating] [int] NULL,
	[Available_rooms] [int] NULL,
	[Room_types] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Hotel_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resorts]    Script Date: 13.02.2024 23:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resorts](
	[Resort_ID] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Rating] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Resort_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Travel_costs]    Script Date: 13.02.2024 23:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Travel_costs](
	[Cost_ID] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Resort_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cost_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Travel_durations]    Script Date: 13.02.2024 23:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Travel_durations](
	[Duration_ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Duration_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Travelers]    Script Date: 13.02.2024 23:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Travelers](
	[Traveler_ID] [int] NOT NULL,
	[First_name] [nvarchar](50) NULL,
	[Last_name] [nvarchar](50) NULL,
	[Middle_name] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [nvarchar](10) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Profession] [nvarchar](255) NULL,
	[Departure_date] [date] NULL,
	[Travel_purpose] [nvarchar](max) NULL,
	[Resort_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Traveler_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types_of_leisure]    Script Date: 13.02.2024 23:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types_of_leisure](
	[Leisure_ID] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Leisure_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types_of_transport]    Script Date: 13.02.2024 23:08:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types_of_transport](
	[Transport_ID] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Transport_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cities] ([City_ID], [Name]) VALUES (0, N'Киев')
INSERT [dbo].[Cities] ([City_ID], [Name]) VALUES (1, N'Одесса-мама')
INSERT [dbo].[Cities] ([City_ID], [Name]) VALUES (2, N'Кишинев')
INSERT [dbo].[Cities] ([City_ID], [Name]) VALUES (3, N'Рим')
INSERT [dbo].[Cities] ([City_ID], [Name]) VALUES (4, N'Барселона')
INSERT [dbo].[Cities] ([City_ID], [Name]) VALUES (5, N'Варшава')
GO
INSERT [dbo].[Countries] ([Country_ID], [Name]) VALUES (1, N'Украина')
INSERT [dbo].[Countries] ([Country_ID], [Name]) VALUES (2, N'Молдова')
INSERT [dbo].[Countries] ([Country_ID], [Name]) VALUES (3, N'Италия')
INSERT [dbo].[Countries] ([Country_ID], [Name]) VALUES (4, N'Испания')
INSERT [dbo].[Countries] ([Country_ID], [Name]) VALUES (5, N'Польша')
GO
INSERT [dbo].[Employees] ([Employee_ID], [First_name], [Last_name], [Position], [Salary]) VALUES (1, N'Мухаммед', N'Абдул', N'Менеджер', CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Employees] ([Employee_ID], [First_name], [Last_name], [Position], [Salary]) VALUES (2, N'Петро', N'Дорошенко', N'Турагент', CAST(35000.00 AS Decimal(18, 2)))
INSERT [dbo].[Employees] ([Employee_ID], [First_name], [Last_name], [Position], [Salary]) VALUES (3, N'Александр', N'Квас', N'Бухгалтер', CAST(40000.00 AS Decimal(18, 2)))
INSERT [dbo].[Employees] ([Employee_ID], [First_name], [Last_name], [Position], [Salary]) VALUES (4, N'Козёл', N'Баранов', N'Рецепционист', CAST(25000.00 AS Decimal(18, 2)))
INSERT [dbo].[Employees] ([Employee_ID], [First_name], [Last_name], [Position], [Salary]) VALUES (5, N'Алексей', N'Шевцов', N'Гид', CAST(17000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Excursions] ([Excursion_ID], [Resort_ID], [Significant_places], [Monuments], [Museums], [Temples]) VALUES (1, 1, N'Памятник Дюку де Ришелье, Приморский бульвар', N'Потемкинская лестница, Монумент викингам', N'Одесский археологический музей', N'Церковь Святого Пантелеймона')
INSERT [dbo].[Excursions] ([Excursion_ID], [Resort_ID], [Significant_places], [Monuments], [Museums], [Temples]) VALUES (2, 2, N'Милестий Мици, Центральный рынок', N'Памятник Стефану Великому', N'Национальный музей этнографии и природы', N'Кафедральный собор Каприана')
INSERT [dbo].[Excursions] ([Excursion_ID], [Resort_ID], [Significant_places], [Monuments], [Museums], [Temples]) VALUES (3, 3, N'Колизей, Ватикан', N'Фонтан Треви, Пантеон', N'Ватиканские музеи, Галерея Боргезе', N'Базилика Святого Петра')
INSERT [dbo].[Excursions] ([Excursion_ID], [Resort_ID], [Significant_places], [Monuments], [Museums], [Temples]) VALUES (4, 4, N'Сад Гюэль, Парк Гуэль', N'Собор Святого Семейства, Монумент Колумбу', N'Музей Пикассо, Фонд Хуана Миро', N'Базилика Святого Семейства')
INSERT [dbo].[Excursions] ([Excursion_ID], [Resort_ID], [Significant_places], [Monuments], [Museums], [Temples]) VALUES (5, 5, N'Замок Вавель, Старый город', N'Базилика Святой Марии, Костел', N'Замок Вавель, Музей Фабрики Шиндлера', N'Вавельский собор')
GO
INSERT [dbo].[Hotels] ([Hotel_ID], [Name], [Star_rating], [Available_rooms], [Room_types]) VALUES (1, N'Морской бриз', 4, 100, N'Стандартный, Люкс, Семейный')
INSERT [dbo].[Hotels] ([Hotel_ID], [Name], [Star_rating], [Available_rooms], [Room_types]) VALUES (2, N'Цыган', 3, 80, N'Стандартный, Полулюкс')
INSERT [dbo].[Hotels] ([Hotel_ID], [Name], [Star_rating], [Available_rooms], [Room_types]) VALUES (3, N'Императорский', 5, 120, N'Сьют, Президентский')
INSERT [dbo].[Hotels] ([Hotel_ID], [Name], [Star_rating], [Available_rooms], [Room_types]) VALUES (4, N'Солнечная усадьба', 4, 90, N'Стандартный, Люкс')
INSERT [dbo].[Hotels] ([Hotel_ID], [Name], [Star_rating], [Available_rooms], [Room_types]) VALUES (5, N'Замковый', 3, 70, N'Стандартный, Эконом')
GO
INSERT [dbo].[Resorts] ([Resort_ID], [Name], [Description], [Rating]) VALUES (1, N'Одесский пляж', N'Одесса мама', 5)
INSERT [dbo].[Resorts] ([Resort_ID], [Name], [Description], [Rating]) VALUES (2, N'Молдавский винный рай', N'Где вино течет рекой и виноградные лозы поют', 4)
INSERT [dbo].[Resorts] ([Resort_ID], [Name], [Description], [Rating]) VALUES (3, N'Римские колизеи', N'Остатки былой цивилизации', 5)
INSERT [dbo].[Resorts] ([Resort_ID], [Name], [Description], [Rating]) VALUES (4, N'Испанские бульвары', N'¿Por qué estás traduciendo este texto?', 4)
INSERT [dbo].[Resorts] ([Resort_ID], [Name], [Description], [Rating]) VALUES (5, N'Польские пироги', N'Тут готовят пироги такие, что даже бабушка завидует', 3)
GO
INSERT [dbo].[Travel_costs] ([Cost_ID], [Description], [Amount], [Resort_ID]) VALUES (1, N'Путевка "Люкс" в Одесский пляж на неделю', CAST(15000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Travel_costs] ([Cost_ID], [Description], [Amount], [Resort_ID]) VALUES (2, N'Тур "Винный рай" в Молдавию на 10 дней', CAST(12000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Travel_costs] ([Cost_ID], [Description], [Amount], [Resort_ID]) VALUES (3, N'Экскурсия "Римская мечта" на 2 недели', CAST(20000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Travel_costs] ([Cost_ID], [Description], [Amount], [Resort_ID]) VALUES (4, N'Поездка в Барселону на месяц', CAST(25000.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[Travel_costs] ([Cost_ID], [Description], [Amount], [Resort_ID]) VALUES (5, N'Тур "Польский пирог" в Варшаву на 2 месяца', CAST(30000.00 AS Decimal(18, 2)), 5)
GO
INSERT [dbo].[Travel_durations] ([Duration_ID], [Name]) VALUES (1, N'1 неделя')
INSERT [dbo].[Travel_durations] ([Duration_ID], [Name]) VALUES (2, N'10 дней')
INSERT [dbo].[Travel_durations] ([Duration_ID], [Name]) VALUES (3, N'2 недели')
INSERT [dbo].[Travel_durations] ([Duration_ID], [Name]) VALUES (4, N'1 месяц')
INSERT [dbo].[Travel_durations] ([Duration_ID], [Name]) VALUES (5, N'2 месяца')
GO
INSERT [dbo].[Travelers] ([Traveler_ID], [First_name], [Last_name], [Middle_name], [Age], [Gender], [Nationality], [Profession], [Departure_date], [Travel_purpose], [Resort_ID]) VALUES (1, N'Джонни', N'Джостар', N'Джостарович', 25, N'Мужской', N'Японец', N'Программист', CAST(N'2024-07-01' AS Date), N'Отдых на море', 1)
INSERT [dbo].[Travelers] ([Traveler_ID], [First_name], [Last_name], [Middle_name], [Age], [Gender], [Nationality], [Profession], [Departure_date], [Travel_purpose], [Resort_ID]) VALUES (2, N'Дед', N'Саутовский', N'Игоревич', 35, N'Мужской', N'Молдован', N'Бухгалтер', CAST(N'2024-08-15' AS Date), N'Посещение достопримечательностей', 3)
INSERT [dbo].[Travelers] ([Traveler_ID], [First_name], [Last_name], [Middle_name], [Age], [Gender], [Nationality], [Profession], [Departure_date], [Travel_purpose], [Resort_ID]) VALUES (3, N'Мужичок', N'Славянсий', N'Хрестороф', 40, N'Мужской', N'Поляк', N'Учитель', CAST(N'2024-09-20' AS Date), N'Экскурсии и отдых', 5)
INSERT [dbo].[Travelers] ([Traveler_ID], [First_name], [Last_name], [Middle_name], [Age], [Gender], [Nationality], [Profession], [Departure_date], [Travel_purpose], [Resort_ID]) VALUES (4, N'Лиза', N'Лиза', N'Джостарович', 28, N'Женский', N'Испанка', N'Инженер', CAST(N'2024-07-10' AS Date), N'Пляжный отдых', 1)
INSERT [dbo].[Travelers] ([Traveler_ID], [First_name], [Last_name], [Middle_name], [Age], [Gender], [Nationality], [Profession], [Departure_date], [Travel_purpose], [Resort_ID]) VALUES (5, N'Ольга', N'Смирнова', N'Дмитриевна', 45, N'Женский', N'Корейка', N'Врач', CAST(N'2024-08-05' AS Date), N'Горнолыжный отдых', 2)
GO
INSERT [dbo].[Types_of_leisure] ([Leisure_ID], [Name]) VALUES (1, N'Пляжный отдых')
INSERT [dbo].[Types_of_leisure] ([Leisure_ID], [Name]) VALUES (2, N'Горнолыжный спорт')
INSERT [dbo].[Types_of_leisure] ([Leisure_ID], [Name]) VALUES (3, N'Экскурсии и достопримечательности')
INSERT [dbo].[Types_of_leisure] ([Leisure_ID], [Name]) VALUES (4, N'Экстремальные приключения')
GO
INSERT [dbo].[Types_of_transport] ([Transport_ID], [Name]) VALUES (1, N'Самолет')
INSERT [dbo].[Types_of_transport] ([Transport_ID], [Name]) VALUES (2, N'Поезд')
INSERT [dbo].[Types_of_transport] ([Transport_ID], [Name]) VALUES (3, N'Корабль')
INSERT [dbo].[Types_of_transport] ([Transport_ID], [Name]) VALUES (4, N'Автобус')
GO
ALTER TABLE [dbo].[Excursions]  WITH CHECK ADD FOREIGN KEY([Resort_ID])
REFERENCES [dbo].[Resorts] ([Resort_ID])
GO
ALTER TABLE [dbo].[Travel_costs]  WITH CHECK ADD FOREIGN KEY([Resort_ID])
REFERENCES [dbo].[Resorts] ([Resort_ID])
GO
ALTER TABLE [dbo].[Travelers]  WITH CHECK ADD FOREIGN KEY([Resort_ID])
REFERENCES [dbo].[Resorts] ([Resort_ID])
GO
