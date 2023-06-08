USE [accordion]
GO
/****** Object:  Table [dbo].[accounts_artist]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts_artist](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[artistic_name] [nvarchar](200) NULL,
	[description] [nvarchar](max) NULL,
	[activitie_start_date] [int] NULL,
	[user_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[accounts_follow]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts_follow](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[start_date] [datetime2](7) NOT NULL,
	[user1_id] [bigint] NOT NULL,
	[user2_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[accounts_musician]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts_musician](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[musical_instrument] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_accounts_musician] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[accounts_user]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts_user](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](128) NOT NULL,
	[last_login] [datetime2](7) NULL,
	[is_superuser] [bit] NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[first_name] [nvarchar](150) NOT NULL,
	[last_name] [nvarchar](150) NOT NULL,
	[is_staff] [bit] NOT NULL,
	[is_active] [bit] NOT NULL,
	[date_joined] [datetime2](7) NOT NULL,
	[email] [nvarchar](254) NOT NULL,
	[is_email_verified] [bit] NOT NULL,
	[is_Artist] [bit] NOT NULL,
	[is_public] [bit] NOT NULL,
	[birthday] [date] NULL,
	[country] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[bio] [nvarchar](max) NULL,
	[image] [nvarchar](100) NULL,
	[telegram_chat_id] [nvarchar](255) NULL,
	[money] [int] NOT NULL,
	[gender] [nvarchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[song_album]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[song_album](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[description] [nvarchar](max) NULL,
	[image] [nvarchar](100) NULL,
	[artist_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[song_albumsong]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[song_albumsong](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[album_id] [bigint] NOT NULL,
	[song_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[song_history]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[song_history](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[add_datetime] [datetime2](7) NOT NULL,
	[user_age] [int] NOT NULL,
	[playlist_id] [bigint] NULL,
	[song_id] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[song_musiciansong]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[song_musiciansong](
	[id] [int] NOT NULL,
	[song_id] [bigint] NOT NULL,
	[musician_id] [int] NOT NULL,
 CONSTRAINT [PK_song_musiciansong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[song_playlist]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[song_playlist](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[description] [nvarchar](max) NULL,
	[is_public] [bit] NOT NULL,
	[image] [nvarchar](100) NULL,
	[owner_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[song_playlistsong]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[song_playlistsong](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[playlist_id] [bigint] NOT NULL,
	[song_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[song_song]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[song_song](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[description] [nvarchar](max) NULL,
	[lyrics] [nvarchar](max) NULL,
	[song_link] [nvarchar](1000) NOT NULL,
	[speechless_song_link] [nvarchar](1000) NULL,
	[image] [nvarchar](100) NULL,
	[note] [nvarchar](100) NULL,
	[created_at] [datetime2](7) NOT NULL,
	[count] [int] NOT NULL,
	[artist_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[song_song_tags]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[song_song_tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[song_id] [bigint] NOT NULL,
	[tag_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[song_tag]    Script Date: 30/12/2022 21:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[song_tag](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[accounts_artist] ON 

INSERT [dbo].[accounts_artist] ([id], [artistic_name], [description], [activitie_start_date], [user_id]) VALUES (1, N'Rihana', NULL, NULL, 6)
INSERT [dbo].[accounts_artist] ([id], [artistic_name], [description], [activitie_start_date], [user_id]) VALUES (2, N'Sia', NULL, NULL, 7)
INSERT [dbo].[accounts_artist] ([id], [artistic_name], [description], [activitie_start_date], [user_id]) VALUES (3, N'Selena Gomez', NULL, NULL, 8)
INSERT [dbo].[accounts_artist] ([id], [artistic_name], [description], [activitie_start_date], [user_id]) VALUES (4, N'Eminem', NULL, NULL, 9)
INSERT [dbo].[accounts_artist] ([id], [artistic_name], [description], [activitie_start_date], [user_id]) VALUES (5, N'Ava Max', NULL, NULL, 10)
INSERT [dbo].[accounts_artist] ([id], [artistic_name], [description], [activitie_start_date], [user_id]) VALUES (6, N'Jastin Bibber', NULL, NULL, 11)
INSERT [dbo].[accounts_artist] ([id], [artistic_name], [description], [activitie_start_date], [user_id]) VALUES (7, N'Halsey', NULL, NULL, 12)
INSERT [dbo].[accounts_artist] ([id], [artistic_name], [description], [activitie_start_date], [user_id]) VALUES (8, N'BTS', N'It''s a group', NULL, 13)
SET IDENTITY_INSERT [dbo].[accounts_artist] OFF
GO
SET IDENTITY_INSERT [dbo].[accounts_follow] ON 

INSERT [dbo].[accounts_follow] ([id], [start_date], [user1_id], [user2_id]) VALUES (1, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 1, 10)
INSERT [dbo].[accounts_follow] ([id], [start_date], [user1_id], [user2_id]) VALUES (2, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2), 1, 6)
INSERT [dbo].[accounts_follow] ([id], [start_date], [user1_id], [user2_id]) VALUES (3, CAST(N'2022-02-10T00:00:00.0000000' AS DateTime2), 1, 7)
INSERT [dbo].[accounts_follow] ([id], [start_date], [user1_id], [user2_id]) VALUES (4, CAST(N'2022-02-20T00:00:00.0000000' AS DateTime2), 1, 8)
INSERT [dbo].[accounts_follow] ([id], [start_date], [user1_id], [user2_id]) VALUES (5, CAST(N'2022-04-03T00:00:00.0000000' AS DateTime2), 1, 12)
INSERT [dbo].[accounts_follow] ([id], [start_date], [user1_id], [user2_id]) VALUES (6, CAST(N'2020-02-19T00:00:00.0000000' AS DateTime2), 2, 9)
INSERT [dbo].[accounts_follow] ([id], [start_date], [user1_id], [user2_id]) VALUES (7, CAST(N'2021-04-05T00:00:00.0000000' AS DateTime2), 3, 6)
INSERT [dbo].[accounts_follow] ([id], [start_date], [user1_id], [user2_id]) VALUES (8, CAST(N'2022-08-01T00:00:00.0000000' AS DateTime2), 6, 7)
INSERT [dbo].[accounts_follow] ([id], [start_date], [user1_id], [user2_id]) VALUES (9, CAST(N'2022-05-14T00:00:00.0000000' AS DateTime2), 12, 13)
SET IDENTITY_INSERT [dbo].[accounts_follow] OFF
GO
INSERT [dbo].[accounts_musician] ([id], [name], [musical_instrument], [description]) VALUES (1, N'musician1', N'vialon', N'nothing')
INSERT [dbo].[accounts_musician] ([id], [name], [musical_instrument], [description]) VALUES (2, N'musician2', N'piano', N'----')
INSERT [dbo].[accounts_musician] ([id], [name], [musical_instrument], [description]) VALUES (3, N'musician3', N'gitar', N'she is the best')
INSERT [dbo].[accounts_musician] ([id], [name], [musical_instrument], [description]) VALUES (4, N'musician4', N'piano', NULL)
INSERT [dbo].[accounts_musician] ([id], [name], [musical_instrument], [description]) VALUES (5, N'musician5', N'electric gitar', NULL)
INSERT [dbo].[accounts_musician] ([id], [name], [musical_instrument], [description]) VALUES (6, N'musician6', N'vialon', NULL)
INSERT [dbo].[accounts_musician] ([id], [name], [musical_instrument], [description]) VALUES (7, N'musician7', N'piano', NULL)
INSERT [dbo].[accounts_musician] ([id], [name], [musical_instrument], [description]) VALUES (8, N'musician8', N'guitar', NULL)
GO
SET IDENTITY_INSERT [dbo].[accounts_user] ON 

INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (1, N'pbkdf2_sha256$320000$xn73ojWL6libcHJbuoR57H$flWmPT3MdkUBICMd4uq6lw3qsmPzRCn3G3CjCKxtqfE=', CAST(N'2022-12-30T15:50:43.9236810' AS DateTime2), 0, N'maryam', N'maryam', N'Jafari', 0, 1, CAST(N'2022-12-30T15:50:30.8948890' AS DateTime2), N'jafarimaryam2002@gmail.com', 1, 0, 1, NULL, N'Iran', N'Yazd', NULL, N'', NULL, 0, N'F')
INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (2, N'pbkdf2_sha256$320000$PmFcYKEjSdcPEykEM3e3oz$b59k5Q7c0xIVfTRjke81/bqfJy4LtEkbhXj6oAY/WFs=', NULL, 0, N'mojtaba', N'mojtaba', N'Janbaz', 0, 1, CAST(N'2022-12-30T15:57:11.1779190' AS DateTime2), N'mojtabajanbaz1380@gmail.com', 1, 0, 1, NULL, N'Iran', NULL, NULL, N'', NULL, 0, N'M')
INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (3, N'pbkdf2_sha256$320000$xWm7M3BHbiw5PJTb94dFzm$wtt7ooN/XsZiZXPWICns3HG8nH8TvCpx1Ok+Lmdiy30=', NULL, 0, N'amir_mohammad', N'amir mohammad', N'Khorshidi', 0, 1, CAST(N'2022-12-30T15:58:56.4339240' AS DateTime2), N'amirkhorshidi@gmail.com', 1, 0, 1, NULL, N'Iran', N'Tehran', NULL, N'', NULL, 0, N'M')
INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (4, N'pbkdf2_sha256$320000$ekzRepUrHjvFF0LyubYDNb$oaGZeiGdAlVUEkAyxGMhA9NbxTUivN16sN026etBhxc=', NULL, 0, N'niayesh', N'niayesh', N'Khani', 0, 1, CAST(N'2022-12-30T15:59:38.3519390' AS DateTime2), N'niayeshkhani@gmail.com', 1, 0, 1, NULL, N'Iraq', NULL, NULL, N'', NULL, 0, N'F')
INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (5, N'pbkdf2_sha256$320000$RcbBOpdgEXMTSimhhg1gRt$R6Xh+VHt3aXQ6KggxN91e8Abw7VgGc1ivBCRilJvwBc=', NULL, 0, N'mohsen', N'mohsen', N'Hasani', 0, 1, CAST(N'2022-12-30T16:00:05.8449050' AS DateTime2), N'mhhasani@gmail.com', 1, 0, 1, NULL, N'Turkey', N'Tehran', NULL, N'', NULL, 0, N'M')
INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (6, N'pbkdf2_sha256$320000$zGNO8ERiL204B2cnnPYmQt$2SyB4+u1M0GwDHYmbp+eXe4c6CWgFHu33QAjHKNHLmM=', NULL, 0, N'Rihana', N'Rihana', N'', 0, 1, CAST(N'2022-12-30T16:01:38.2900480' AS DateTime2), N'rihana@gmail.com', 1, 1, 1, NULL, N'USA', NULL, NULL, N'', NULL, 0, N'F')
INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (7, N'pbkdf2_sha256$320000$lmXyu4xHEzde6SiBoyL20j$b5bVdA9tI5CtEgjcVBcQc1INVsd5d6a/BeiFWgxoJgY=', CAST(N'2022-12-30T16:47:32.4700070' AS DateTime2), 0, N'Sia', N'Sia', N'', 0, 1, CAST(N'2022-12-30T16:02:04.4951130' AS DateTime2), N'sia@gmail.com', 1, 1, 1, NULL, N'USA', NULL, NULL, N'', NULL, 0, N'F')
INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (8, N'pbkdf2_sha256$320000$v5vQqcED4JLvRcQu6vtsnW$yCTvLTJGq2Hw4Y863YV8Wl26l475IsORwOqOnhGjQNQ=', CAST(N'2022-12-30T17:12:49.9727820' AS DateTime2), 0, N'selenaGomez', N'Selena', N'Gomez', 0, 1, CAST(N'2022-12-30T16:03:26.5889480' AS DateTime2), N'selena@gmail.com', 1, 1, 1, NULL, N'USA', N'NewYork', NULL, N'', NULL, 0, N'F')
INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (9, N'pbkdf2_sha256$320000$YnkpbhSg6L9nuLAMUs5ftn$2+YD8SoQuj4ANJ3OzAUx1GwCxhnHQVeA2iz9AfRd3Ow=', NULL, 0, N'eminem', N'eminem', N'', 0, 1, CAST(N'2022-12-30T16:04:09.8769180' AS DateTime2), N'eminem1234@gmail.com', 1, 1, 1, NULL, N'USA', N'LA', NULL, N'', NULL, 0, N'M')
INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (10, N'pbkdf2_sha256$320000$OMdYxx7ljBhTmxAPxX8SAB$om8U5WRppfuCoZV9J22Me5GYecb7grKsUS1xxBNMJFo=', CAST(N'2022-12-30T17:05:44.6556120' AS DateTime2), 0, N'Ava_Max', N'Ava', N'Max', 0, 1, CAST(N'2022-12-30T16:06:11.8978210' AS DateTime2), N'avaMaxx@gmail.com', 1, 1, 1, NULL, N'USA', N'LA', NULL, N'', NULL, 0, N'F')
INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (11, N'pbkdf2_sha256$320000$eO9mNvNUBYqnhXJ8V2aUcu$sCcQrmsfvaemtLK3AT+roEh7atfcDJ0eSK2xudjOD5E=', NULL, 0, N'Jastin', N'Jastin', N'Biber', 0, 1, CAST(N'2022-12-30T16:07:06.0948530' AS DateTime2), N'jastinBiber@yahoo.com', 1, 1, 1, NULL, N'USA', N'LA', NULL, N'', NULL, 0, N'M')
INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (12, N'pbkdf2_sha256$320000$IsXNZvEXs2JUWgorNjoSrx$OH2MoNDclk5naP6572y9iYkfRylWil3TSCzczl8OQRc=', NULL, 0, N'Halsey', N'Halsey', N'', 0, 1, CAST(N'2022-12-30T16:12:34.8024800' AS DateTime2), N'halsy@gmail.com', 1, 1, 1, NULL, N'USA', N'LA', NULL, N'', NULL, 0, N'F')
INSERT [dbo].[accounts_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [is_staff], [is_active], [date_joined], [email], [is_email_verified], [is_Artist], [is_public], [birthday], [country], [city], [bio], [image], [telegram_chat_id], [money], [gender]) VALUES (13, N'pbkdf2_sha256$320000$C1DkcFQiSAv8N54Pi0IZJB$JfbcIY8IISUOgFE6V/M3sngNX5MjKEF46OQmdLLdQnU=', NULL, 0, N'BTS', N'BTS', N'', 0, 1, CAST(N'2022-12-30T16:14:28.1615200' AS DateTime2), N'BTS@gmail.com', 1, 1, 1, NULL, N'Korea', NULL, NULL, N'', NULL, 0, N'M')
SET IDENTITY_INSERT [dbo].[accounts_user] OFF
GO
SET IDENTITY_INSERT [dbo].[song_album] ON 

INSERT [dbo].[song_album] ([id], [title], [created_at], [description], [image], [artist_id]) VALUES (1, N'selena_album', CAST(N'2010-12-30T17:07:08.0793940' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[song_album] ([id], [title], [created_at], [description], [image], [artist_id]) VALUES (2, N'sia_Album', CAST(N'2020-12-30T17:07:08.0793940' AS DateTime2), N'THIS IS TEST', NULL, 2)
INSERT [dbo].[song_album] ([id], [title], [created_at], [description], [image], [artist_id]) VALUES (3, N'AvaMax_Album', CAST(N'2019-12-30T17:07:08.0793940' AS DateTime2), N'this is ava''s first album', NULL, 5)
SET IDENTITY_INSERT [dbo].[song_album] OFF
GO
SET IDENTITY_INSERT [dbo].[song_albumsong] ON 

INSERT [dbo].[song_albumsong] ([id], [album_id], [song_id]) VALUES (1, 1, 6)
INSERT [dbo].[song_albumsong] ([id], [album_id], [song_id]) VALUES (2, 1, 7)
INSERT [dbo].[song_albumsong] ([id], [album_id], [song_id]) VALUES (3, 1, 8)
INSERT [dbo].[song_albumsong] ([id], [album_id], [song_id]) VALUES (4, 2, 1)
INSERT [dbo].[song_albumsong] ([id], [album_id], [song_id]) VALUES (5, 2, 2)
INSERT [dbo].[song_albumsong] ([id], [album_id], [song_id]) VALUES (6, 2, 3)
INSERT [dbo].[song_albumsong] ([id], [album_id], [song_id]) VALUES (7, 3, 4)
INSERT [dbo].[song_albumsong] ([id], [album_id], [song_id]) VALUES (8, 3, 5)
SET IDENTITY_INSERT [dbo].[song_albumsong] OFF
GO
SET IDENTITY_INSERT [dbo].[song_history] ON 

INSERT [dbo].[song_history] ([id], [add_datetime], [user_age], [playlist_id], [song_id], [user_id]) VALUES (1, CAST(N'2020-12-30T17:07:08.0793940' AS DateTime2), 20, NULL, 1, 1)
INSERT [dbo].[song_history] ([id], [add_datetime], [user_age], [playlist_id], [song_id], [user_id]) VALUES (2, CAST(N'2020-12-30T17:07:08.0793940' AS DateTime2), 20, NULL, 3, 1)
INSERT [dbo].[song_history] ([id], [add_datetime], [user_age], [playlist_id], [song_id], [user_id]) VALUES (3, CAST(N'2022-12-30T17:07:08.0793940' AS DateTime2), 27, NULL, 3, 2)
INSERT [dbo].[song_history] ([id], [add_datetime], [user_age], [playlist_id], [song_id], [user_id]) VALUES (4, CAST(N'2022-12-30T17:07:08.0793940' AS DateTime2), 27, NULL, 8, 2)
INSERT [dbo].[song_history] ([id], [add_datetime], [user_age], [playlist_id], [song_id], [user_id]) VALUES (5, CAST(N'2021-12-30T17:07:08.0793940' AS DateTime2), 20, NULL, 6, 1)
INSERT [dbo].[song_history] ([id], [add_datetime], [user_age], [playlist_id], [song_id], [user_id]) VALUES (6, CAST(N'2018-12-30T17:07:08.0793940' AS DateTime2), 22, NULL, 4, 3)
INSERT [dbo].[song_history] ([id], [add_datetime], [user_age], [playlist_id], [song_id], [user_id]) VALUES (7, CAST(N'2018-12-30T17:07:08.0793940' AS DateTime2), 22, NULL, 5, 3)
INSERT [dbo].[song_history] ([id], [add_datetime], [user_age], [playlist_id], [song_id], [user_id]) VALUES (8, CAST(N'2018-11-30T17:07:08.0793940' AS DateTime2), 18, NULL, 3, 1)
INSERT [dbo].[song_history] ([id], [add_datetime], [user_age], [playlist_id], [song_id], [user_id]) VALUES (9, CAST(N'2018-11-30T17:10:08.0793940' AS DateTime2), 18, NULL, 3, 1)
SET IDENTITY_INSERT [dbo].[song_history] OFF
GO
INSERT [dbo].[song_musiciansong] ([id], [song_id], [musician_id]) VALUES (1, 1, 1)
INSERT [dbo].[song_musiciansong] ([id], [song_id], [musician_id]) VALUES (2, 1, 3)
INSERT [dbo].[song_musiciansong] ([id], [song_id], [musician_id]) VALUES (3, 1, 5)
INSERT [dbo].[song_musiciansong] ([id], [song_id], [musician_id]) VALUES (4, 2, 2)
INSERT [dbo].[song_musiciansong] ([id], [song_id], [musician_id]) VALUES (5, 2, 4)
INSERT [dbo].[song_musiciansong] ([id], [song_id], [musician_id]) VALUES (6, 3, 8)
INSERT [dbo].[song_musiciansong] ([id], [song_id], [musician_id]) VALUES (7, 3, 7)
INSERT [dbo].[song_musiciansong] ([id], [song_id], [musician_id]) VALUES (8, 7, 1)
INSERT [dbo].[song_musiciansong] ([id], [song_id], [musician_id]) VALUES (9, 7, 5)
INSERT [dbo].[song_musiciansong] ([id], [song_id], [musician_id]) VALUES (10, 5, 6)
INSERT [dbo].[song_musiciansong] ([id], [song_id], [musician_id]) VALUES (11, 5, 7)
GO
SET IDENTITY_INSERT [dbo].[song_playlist] ON 

INSERT [dbo].[song_playlist] ([id], [title], [created_at], [description], [is_public], [image], [owner_id]) VALUES (1, N'maryam_album1', CAST(N'2018-12-30T17:07:08.0793940' AS DateTime2), N'first album', 0, NULL, 1)
INSERT [dbo].[song_playlist] ([id], [title], [created_at], [description], [is_public], [image], [owner_id]) VALUES (2, N'maryam_album2', CAST(N'2018-12-30T17:07:08.0793940' AS DateTime2), N'second album', 1, NULL, 1)
INSERT [dbo].[song_playlist] ([id], [title], [created_at], [description], [is_public], [image], [owner_id]) VALUES (3, N'mojtaba 1', CAST(N'2018-12-30T17:07:08.0793940' AS DateTime2), N'mojtaba album', 0, NULL, 2)
INSERT [dbo].[song_playlist] ([id], [title], [created_at], [description], [is_public], [image], [owner_id]) VALUES (4, N'mojtabaAlbum 2', CAST(N'2018-12-30T17:07:08.0793940' AS DateTime2), N'this is test', 0, NULL, 2)
INSERT [dbo].[song_playlist] ([id], [title], [created_at], [description], [is_public], [image], [owner_id]) VALUES (5, N'maryam_album3', CAST(N'2018-12-30T17:07:08.0793940' AS DateTime2), N'this is last album', 0, NULL, 1)
INSERT [dbo].[song_playlist] ([id], [title], [created_at], [description], [is_public], [image], [owner_id]) VALUES (6, N'likedSongs', CAST(N'2018-12-30T17:07:08.0793940' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[song_playlist] ([id], [title], [created_at], [description], [is_public], [image], [owner_id]) VALUES (7, N'likedSongs', CAST(N'2018-12-30T17:07:08.0793940' AS DateTime2), NULL, 0, NULL, 2)
INSERT [dbo].[song_playlist] ([id], [title], [created_at], [description], [is_public], [image], [owner_id]) VALUES (8, N'avaPlaylist', CAST(N'2018-12-30T17:07:08.0793940' AS DateTime2), NULL, 1, NULL, 12)
SET IDENTITY_INSERT [dbo].[song_playlist] OFF
GO
SET IDENTITY_INSERT [dbo].[song_playlistsong] ON 

INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (2, 1, 1)
INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (3, 1, 2)
INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (4, 1, 3)
INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (5, 1, 4)
INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (7, 1, 6)
INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (9, 1, 8)
INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (10, 2, 3)
INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (6, 2, 5)
INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (8, 2, 7)
INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (14, 8, 1)
INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (11, 8, 4)
INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (12, 8, 5)
INSERT [dbo].[song_playlistsong] ([id], [playlist_id], [song_id]) VALUES (13, 8, 6)
SET IDENTITY_INSERT [dbo].[song_playlistsong] OFF
GO
SET IDENTITY_INSERT [dbo].[song_song] ON 

INSERT [dbo].[song_song] ([id], [title], [description], [lyrics], [song_link], [speechless_song_link], [image], [note], [created_at], [count], [artist_id]) VALUES (1, N'1+1', N'', N'Get a girl, I''ll get a boy
One plus one
Take ''em right down to the shore
One plus one
Give your all and give some more
One plus one
Let the music free your soul
One plus one
Sway with me to the light
Hold me for just one night
Hold me for just one night (oh)
We live for the beat
Baby, you''re all I need
Baby, you''re all I need (oh)
So I''m taking you away
One plus one
Every day''s a holiday
One plus one
Move your body, feel the sway
Grab someone
Every day''s a holiday
One plus one
Every day''s a holiday
Let the beat take you away
Let the beat take you today
Baby, this is magic
Every day''s a holiday
Let the beat take you away
Let the beat take you today
Baby, this is magic
Get a boy, I''ll get a girl
One plus one
Take ''em all around the world
One plus one
Give your all and give your word
One plus one
If you listen you''ll be heard
One plus one
Sway with me to the light
Hold me for just one night
Hold me for just one night (oh)
We live for the beat
Baby, you''re all I need
Baby, you''re all I need (oh)
So I''m taking you away
One plus one
Every day''s a holiday
One plus one
Move your body, feel the sway
Grab someone
Every day''s a holiday
One plus one
Every day''s a holiday
Let the beat take you away
Let the beat take you today
Baby, this is magic
Every day''s a holiday
Let the beat take you away
Let the beat take you today
Baby, this is magic
One plus one
One plus one
One plus one
One plus one
Every day''s a holiday
Let the beat take you away
Let the beat take you today
Baby, this is magic
Every day''s a holiday
Let the beat take you away
Let the beat take you today
Baby, this is magic', N'https://soundcloud.com/siamusic/sia-1-1-banx-ranx-remix?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing', NULL, N'', N'', CAST(N'2020-12-30T16:54:37.6796700' AS DateTime2), 10, 2)
INSERT [dbo].[song_song] ([id], [title], [description], [lyrics], [song_link], [speechless_song_link], [image], [note], [created_at], [count], [artist_id]) VALUES (2, N'Everyday Is Christmas', N'', N'Oh, Father Time
You and me and holiday wine
Wait for the snow
I will read the list that I wrote
Sitting by the open fire
Lovin'' you''s a gift tonight
Lovin'' you for all my life
Lovin'' you is a gift tonight
Oh, every day is Christmas when you''re here with me
I''m safe in your arms, you''re my angel, baby
Every day is Christmas when you''re by my side
You''re the gift that keeps givin'', my angel for life
Every day is Christmas
Every day is Christmas
Every day is Christmas with you by my side
Every day is Christmas
Every day is Christmas
Every day is Christmas with you by my side
Oh, you''re my love (my love)
You''re the joy (the joy)
In my Holiday song (yeah)
And when you smile
I can''t breathe
Can''t believe that you''re mine
Sitting by the open fire
Lovin'' you''s a gift tonight
Lovin'' you for all my life
Lovin'' you is a gift tonight
Oh, every day is Christmas when you''re here with me
I''m safe in your arms, you''re my angel, baby
Every day is Christmas when you''re by my side
You''re the gift that keeps givin'', my angel for life
Every day is Christmas
Every day is Christmas
Every day is Christmas with you by my side
Every day is Christmas
Every day is Christmas
Every day is Christmas with you by my side
Whoa-oh-oh-oh-oh-oh
Oh-oh-oh-oh
Oh-oh-oh-oh-oh
Oh-oh-oh-oh-oh
Oh-oh-oh-oh
Oh-oh-oh-oh-oh
Whoa-oh-oh-oh-oh-oh
Oh-oh-oh-oh
Oh-oh-oh-oh-oh
With you by my side
Ohh-oh-oh-oh-oh
Oh-oh-oh-oh
Oh-oh-oh-oh-oh
With you by my side
Whoa-oh-oh-oh-oh-oh
Oh-oh-oh-oh
Oh-oh-oh-oh-oh
With you by my side
Whoa-oh-oh-oh-oh-oh
Oh-oh-oh-oh', N'https://music.youtube.com/watch?v=n5eGao5pmPs&feature=share', NULL, N'', N'', CAST(N'2020-10-30T17:00:30.8008550' AS DateTime2), 100, 2)
INSERT [dbo].[song_song] ([id], [title], [description], [lyrics], [song_link], [speechless_song_link], [image], [note], [created_at], [count], [artist_id]) VALUES (3, N'Bird Set Free', N'', N'Clipped wings, I was a broken thing
Had a voice, had a voice but I could not sing
You would wind me down
I struggled on the ground, oh
So lost, the line had been crossed
Had a voice, had a voice but I could not talk
You held me down
I struggle to fly now, oh
But there''s a scream inside that we all try to hide
We hold on so tight, we cannot deny
Eats us alive, oh it eats us alive, oh
Yes, there''s a scream inside that we all try to hide
We hold on so tight, but I don''t wanna die, no
I don''t wanna die, I don''t wanna die, yeah
And I don''t care if I sing off key
I find myself in my melodies
I sing for love, I sing for me
I shout it out like a bird set free
No, I don''t care if I sing off key
I find myself in my melodies
I sing for love, I sing for me
I''ll shout it out like a bird set free
I''ll shout it out like a bird set free
I''ll shout it out like a bird set free
Now I fly, hit the high notes
I have a voice, have a voice, hear me roar tonight
You held me down
But I fought back loud, oh
There''s a scream inside that we all try to hide
We hold on so tight, we cannot deny
Eats us alive, oh it eats us alive, oh
Yes, there''s a scream inside that we all try to hide
We hold on so tight, but I don''t wanna die, no
I don''t wanna die, I don''t wanna die, yeah
And I don''t care if I sing off key
I find myself in my melodies
I sing for love, I sing for me
I shout it out like a bird set free
No, I don''t care if I sing off key
I find myself in my melodies
I sing for love, I sing for me
I''ll shout it out like a bird set free
I''ll shout it out like a bird set free
I''ll shout it out like a bird set free
I''ll shout it out like a bird set free
I''ll shout it out like a bird set free
I''ll shout it out like a bird set free', N'https://music.youtube.com/watch?v=e4cp_VcEr_w&feature=share', NULL, N'', N'', CAST(N'2016-12-30T17:04:26.8211270' AS DateTime2), 20, 2)
INSERT [dbo].[song_song] ([id], [title], [description], [lyrics], [song_link], [speechless_song_link], [image], [note], [created_at], [count], [artist_id]) VALUES (4, N'Alone', N'', N'We were young, posters on the wall
Praying we''re the ones that the teacher wouldn''t call
We would stare at each other
''Cause we were always in trouble
And all the cool kids did their own thing
I was on the outside, always looking in
Yeah, I was there but I wasn''t
They never really cared if I was in
We all need that someone
Who gets you like no one else
Right when you need it the most
We all need a soul to rely on
A shoulder to cry on
A friend through the highs and the lows
I''m not gonna make it alone
La-la-la-la-la la
La-la-la-la-la ''lone
I''m not gonna make it alone
La-la-la-la-la la
La-la-la-la-la ''lone
Then I saw your face, your forgiving eyes
Looking back at me from the other side
Like you understood me
And I''m never letting you go, oh
We all need that someone
Who gets you like no one else
Right when you need it the most
We all need a soul to rely on
A shoulder to cry on
A friend through the highs and the lows
I''m not gonna make it alone
La-la-la-la-la la
La-la-la-la-la ''lone
I''m not gonna make it alone
La-la-la-la-la la
La-la-la-la-la ''lone
I''m not gonna make it alone
La-la-la-la-la la
La-la-la-la-la ''lone
I''m not gonna make it alone
La-la-la-la-la la
La-la-la-la-la ''lone
I''m not gonna make it alone
La-la-la-la-la-la ''lone
I''m not gonna make it alone
La-la-la-la-la la
La-la-la-la-la ''lone
''Cause you are that someone
That gets me like no one else
Right when I need it the most
And I''ll be the one you rely on
A shoulder to cry on
A friend through the highs and the lows
I''m not gonna make it alone
La-la-la-la-la la
La-la-la-la-la-la ''lone
I''m not gonna make it alone
La-la-la-la-la la
La-la-la-la-la-la ''lone
I''m not gonna make it alone
La-la-la-la-la la
La-la-la-la-la-la ''lone
I''m not gonna make it alone
La-la-la-la-la la
La-la-la-la-la-la ''lone
I''m not gonna make it alone', N'https://music.youtube.com/watch?v=ciwx8yJPX54&feature=share', NULL, N'', N'', CAST(N'2018-12-30T17:07:08.0793940' AS DateTime2), 30, 5)
INSERT [dbo].[song_song] ([id], [title], [description], [lyrics], [song_link], [speechless_song_link], [image], [note], [created_at], [count], [artist_id]) VALUES (5, N'Kings & Queens', N'', N'If all of the kings had their queens on the throne
We would pop champagne and raise a toast
To all of the queens who are fighting alone
Baby, you''re not dancin'' on your own
Can''t live without me, you wanna, but you can''t, no, no, no
Think it''s funny, but honey, can''t run this show on your own
I can feel my body shake, there''s only so much I can take
I''ll show you how a real queen behaves, oh
No damsel in distress, don''t need to save me
Once I start breathin'' fire, you can''t tame me
And you might think I''m weak without a sword
But if I had one, it''d be bigger than yours
If all of the kings had their queens on the throne
We would pop champagne and raise a toast
To all of the queens who are fighting alone
Baby, you''re not dancin'' on your own
Disobey me, then baby, it''s off with your head
Gonna change it and make it a world you won''t forget, oh-oh, oh
No damsel in distress, don''t need to save me
Once I start breathin'' fire, you can''t tame me
And you might think I''m weak without a sword
But I''m stronger than I ever was before
If all of the kings had their queens on the throne
We would pop champagne and raise a toast
To all of the queens who are fighting alone
Baby, you''re not dancin'' on your own
In chess, the king can move one space at a time
But queens are free to go wherever they like
You get too close, you''ll get a royalty high
So breathe it in to feel alive (alive)
If all of the kings had their queens on the throne
We would pop champagne and raise a toast
To all of the queens who are fighting alone
Baby, you''re not dancin'' on your own', N'https://music.youtube.com/watch?v=b8tqMLd4Jog&feature=share', NULL, N'', N'', CAST(N'2021-10-30T17:09:03.7020280' AS DateTime2), 25, 5)
INSERT [dbo].[song_song] ([id], [title], [description], [lyrics], [song_link], [speechless_song_link], [image], [note], [created_at], [count], [artist_id]) VALUES (6, N'Calm Down', N'', N'Baby, calm down, calm down
Girl, this your body e put my heart for lockdown
For lockdown, oh, lockdown
Girl, you sweet like Fanta, Fanta
If I tell you say I love you no dey form yanga, oh, yanga
No tell me no, no, no, no, whoa-whoa-whoa-whoa
Oh-oh-oh-oh-oh-oh-oh-oh-oh-oh-oh
Baby, come gimme your lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-love
You got me like, "Whoa-whoa-whoa-whoa-whoa-whoa-whoa-whoa-whoa"
Shawty come gimme your lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-love, mm-mm
I see this fine girl, for my party she wear yellow
Every other girl they dey do too much, but this girl mellow
Naim I dey find situation I go use take tell am hello
Finally I find way to talk to the girl but she no wan follow
Who you come dey form for? (Mm-hm)
Why you no wan comform? (Mm-hm)
Then I start to feel her bum-bum (mm-hm)
But she dey gimme small-small
I know say she sabi pass that one (mm-hm)
But she feeling insecure
''Cause her friends go dey gum her like chewing gum
Go dey gum her like chewing gum
Baby, calm down, calm down
Girl, this your body e put my heart for lockdown
For lockdown, oh, lockdown
Girl, you sweet like Fanta, Fanta
If I tell you say I love you no dey form yanga, oh, yanga
No tell me no, no, no, no, whoa-whoa-whoa-whoa
Oh-oh-oh-oh-oh-oh-oh-oh-oh-oh-oh
Baby, come gimme your lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-love
You got me like, "Whoa-whoa-whoa-whoa-whoa-whoa-whoa-whoa-whoa"
Shawty come gimme your lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-love, mm-mm
As I reach my house I say make I rest small (make I rest small)
As me I wake up na she dey my mind (na she dey my mind)
Day one, day two, I no fit focus (I no fit focus)
Na so me I call am, say make we link up (say make we link up)
As I start to dey tell her how I feel, na my heart dey race
Baby girl, if you leave me I no go love again
Because e get many girls wey put my heart for pain
Shebi, you feel my pain?
Baby, calm down, calm down
Girl, this your body e put my heart for lockdown
For lockdown, oh, lockdown
Girl, you sweet like Fanta, Fanta
If I tell you say I love you no dey form yanga, oh, yanga
No tell me no, no, no, no, whoa-whoa-whoa-whoa
Oh-oh-oh-oh-oh-oh-oh-oh-oh-oh-oh
Baby come gimme your lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-love
You got me like, "Whoa-whoa-whoa-whoa-whoa-whoa-whoa-whoa-whoa"
Shawty come gimme your lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-lo-love, mm-mm', N'https://music.youtube.com/watch?v=OkEFHhDBK74&feature=share', NULL, N'', N'', CAST(N'2022-11-30T17:13:58.7596410' AS DateTime2), 70, 3)
INSERT [dbo].[song_song] ([id], [title], [description], [lyrics], [song_link], [speechless_song_link], [image], [note], [created_at], [count], [artist_id]) VALUES (7, N'Wolves', N'', N'In your eyes, there''s a heavy blue
One to love and one to lose
Sweet divine, a heavy truth
Water or wine, don''t make me choose
I wanna feel the way that we did that summer night, night
Drunk on a feeling, alone with the stars in the sky
I''ve been running through the jungle
I''ve been running with the wolves
To get to you, to get to you
I''ve been down the darkest alleys
Saw the dark side of the moon
To get to you, to get to you
I''ve looked for love in every stranger
Took too much to ease the anger
All for you, yeah, all for you
I''ve been running through the jungle
I''ve been crying with the wolves
To get to you, to get to you, to get to you
Your fingertips trace my skin
To places I have never been
Blindly, I am following
Break down these walls and come on in
I wanna feel the way that we did that summer night, night
Drunk on a feeling, alone with the stars in the sky
I''ve been running through the jungle
I''ve been running with the wolves
To get to you, to get to you
I''ve been down the darkest alleys
Saw the dark side of the moon
To get to you, to get to you
I''ve looked for love in every stranger
Took too much to ease the anger
All for you, yeah, all for you
I''ve been running through the jungle
I''ve been crying with the wolves
To get to you, to get to you, to get to you
I''ve been running through the jungle
I''ve been running with the wolves
To get to you, to get to you
I''ve been down the darkest alleys
Saw the dark side of the moon
To get to you, to get to you
I''ve looked for love in every stranger
Took too much to ease the anger
All for you, yeah, all for you
I''ve been running through the jungle
I''ve been crying with the wolves
To get to you, to get to you, to get to you', N'https://music.youtube.com/watch?v=3ZJ1PkZt3M8&feature=gws_kp_track', NULL, N'', N'', CAST(N'2017-12-30T17:16:09.9619720' AS DateTime2), 32, 3)
INSERT [dbo].[song_song] ([id], [title], [description], [lyrics], [song_link], [speechless_song_link], [image], [note], [created_at], [count], [artist_id]) VALUES (8, N'Love You Like a Love Song', N'', N'It''s been said and done
Every beautiful thought''s been already sung
And I guess right now, here''s another one
So your melody will play on and on, with the best of ''em
You are beautiful, like a dream come alive, incredible
A centerfold miracle, lyrical
You saved my life again
And I want you to know, baby
I, I love you like a love song, baby
I, I love you like a love song, baby
I, I love you like a love song, baby
And I keep hitting repeat-peat-peat-peat-peat-peat (oh)
I, I love you like a love song, baby (oh
I, I love you like a love song, baby (oh)
I, I love you like a love song, baby (oh)
And I keep hitting repeat-peat-peat-peat-peat-peat
Constantly, boy you played through my mind like a symphony
There''s no way to describe what you do to me
You just do to me, what you do
And it feels like I''ve been rescued
I''ve been set free, I am hypnotized by your destiny
You are magical, lyrical, beautiful
You are, and I want you to know, baby
I, I love you like a love song, baby
I, I love you like a love song, baby
I, I love you like a love song, baby
And I keep hitting repeat-peat-peat-peat-peat-peat (oh)
I, I love you like a love song, baby
I, I love you like a love song, baby
I, I love you like a love song, baby (I love you, I love you, like a love song)
And I keep hitting repeat-peat-peat-peat-peat-peat
No one compares
You stand alone, to every record I own
Music to my heart that''s what you are
A song that goes on and on
I, I love you like a love song, baby
I, I love you like a love song, baby (I love you, I love you)
I, I love you like a love song, baby (like a love song, like a love song)
And I keep hitting repeat-peat-peat-peat-peat-peat
I, I love you like a love song, baby (I love you, love song, baby)
I, I love you like a love song, baby (I love you, love song, baby)
I, I love you like a love song, baby (I love you, I love you)
Like a love song', N'https://music.youtube.com/watch?v=XhGior4O2eM&feature=share', NULL, N'', N'', CAST(N'2012-12-30T17:20:03.1239050' AS DateTime2), 10, 3)
SET IDENTITY_INSERT [dbo].[song_song] OFF
GO
SET IDENTITY_INSERT [dbo].[song_song_tags] ON 

INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (2, 1, 1)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (1, 1, 3)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (3, 2, 6)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (5, 3, 1)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (4, 3, 3)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (6, 4, 6)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (7, 5, 3)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (8, 5, 6)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (10, 6, 1)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (9, 6, 3)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (11, 6, 6)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (12, 6, 7)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (13, 7, 3)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (14, 8, 6)
INSERT [dbo].[song_song_tags] ([id], [song_id], [tag_id]) VALUES (15, 8, 7)
SET IDENTITY_INSERT [dbo].[song_song_tags] OFF
GO
SET IDENTITY_INSERT [dbo].[song_tag] ON 

INSERT [dbo].[song_tag] ([id], [name]) VALUES (8, N'Classic')
INSERT [dbo].[song_tag] ([id], [name]) VALUES (4, N'Depressed')
INSERT [dbo].[song_tag] ([id], [name]) VALUES (3, N'Exciting')
INSERT [dbo].[song_tag] ([id], [name]) VALUES (1, N'Happy')
INSERT [dbo].[song_tag] ([id], [name]) VALUES (6, N'Pop')
INSERT [dbo].[song_tag] ([id], [name]) VALUES (9, N'R&B')
INSERT [dbo].[song_tag] ([id], [name]) VALUES (5, N'Rap')
INSERT [dbo].[song_tag] ([id], [name]) VALUES (7, N'Romantic')
INSERT [dbo].[song_tag] ([id], [name]) VALUES (2, N'Sad')
SET IDENTITY_INSERT [dbo].[song_tag] OFF
GO
/****** Object:  Index [UQ__accounts__B9BE370E9323EB6E]    Script Date: 30/12/2022 21:34:33 ******/
ALTER TABLE [dbo].[accounts_artist] ADD UNIQUE NONCLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__accounts__AB6E6164CEE9523F]    Script Date: 30/12/2022 21:34:33 ******/
ALTER TABLE [dbo].[accounts_user] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__accounts__F3DBC57203B7CC86]    Script Date: 30/12/2022 21:34:33 ******/
ALTER TABLE [dbo].[accounts_user] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__song_tag__72E12F1B7A5A65A5]    Script Date: 30/12/2022 21:34:33 ******/
ALTER TABLE [dbo].[song_tag] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[accounts_artist]  WITH CHECK ADD  CONSTRAINT [accounts_artist_user_id_e9d0adc6_fk_accounts_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[accounts_user] ([id])
GO
ALTER TABLE [dbo].[accounts_artist] CHECK CONSTRAINT [accounts_artist_user_id_e9d0adc6_fk_accounts_user_id]
GO
ALTER TABLE [dbo].[accounts_follow]  WITH CHECK ADD  CONSTRAINT [accounts_follow_user1_id_df614e44_fk_accounts_user_id] FOREIGN KEY([user1_id])
REFERENCES [dbo].[accounts_user] ([id])
GO
ALTER TABLE [dbo].[accounts_follow] CHECK CONSTRAINT [accounts_follow_user1_id_df614e44_fk_accounts_user_id]
GO
ALTER TABLE [dbo].[accounts_follow]  WITH CHECK ADD  CONSTRAINT [accounts_follow_user2_id_67346cd2_fk_accounts_user_id] FOREIGN KEY([user2_id])
REFERENCES [dbo].[accounts_user] ([id])
GO
ALTER TABLE [dbo].[accounts_follow] CHECK CONSTRAINT [accounts_follow_user2_id_67346cd2_fk_accounts_user_id]
GO
ALTER TABLE [dbo].[song_album]  WITH CHECK ADD  CONSTRAINT [song_album_artist_id_50e8a6f4_fk_accounts_artist_id] FOREIGN KEY([artist_id])
REFERENCES [dbo].[accounts_artist] ([id])
GO
ALTER TABLE [dbo].[song_album] CHECK CONSTRAINT [song_album_artist_id_50e8a6f4_fk_accounts_artist_id]
GO
ALTER TABLE [dbo].[song_albumsong]  WITH CHECK ADD  CONSTRAINT [song_albumsong_album_id_e7b8b670_fk_song_album_id] FOREIGN KEY([album_id])
REFERENCES [dbo].[song_album] ([id])
GO
ALTER TABLE [dbo].[song_albumsong] CHECK CONSTRAINT [song_albumsong_album_id_e7b8b670_fk_song_album_id]
GO
ALTER TABLE [dbo].[song_albumsong]  WITH CHECK ADD  CONSTRAINT [song_albumsong_song_id_58da98da_fk_song_song_id] FOREIGN KEY([song_id])
REFERENCES [dbo].[song_song] ([id])
GO
ALTER TABLE [dbo].[song_albumsong] CHECK CONSTRAINT [song_albumsong_song_id_58da98da_fk_song_song_id]
GO
ALTER TABLE [dbo].[song_history]  WITH CHECK ADD  CONSTRAINT [song_history_playlist_id_925ad38c_fk_song_playlist_id] FOREIGN KEY([playlist_id])
REFERENCES [dbo].[song_playlist] ([id])
GO
ALTER TABLE [dbo].[song_history] CHECK CONSTRAINT [song_history_playlist_id_925ad38c_fk_song_playlist_id]
GO
ALTER TABLE [dbo].[song_history]  WITH CHECK ADD  CONSTRAINT [song_history_song_id_e04593d8_fk_song_song_id] FOREIGN KEY([song_id])
REFERENCES [dbo].[song_song] ([id])
GO
ALTER TABLE [dbo].[song_history] CHECK CONSTRAINT [song_history_song_id_e04593d8_fk_song_song_id]
GO
ALTER TABLE [dbo].[song_history]  WITH CHECK ADD  CONSTRAINT [song_history_user_id_06619b28_fk_accounts_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[accounts_user] ([id])
GO
ALTER TABLE [dbo].[song_history] CHECK CONSTRAINT [song_history_user_id_06619b28_fk_accounts_user_id]
GO
ALTER TABLE [dbo].[song_playlist]  WITH CHECK ADD  CONSTRAINT [song_playlist_owner_id_6fb91556_fk_accounts_user_id] FOREIGN KEY([owner_id])
REFERENCES [dbo].[accounts_user] ([id])
GO
ALTER TABLE [dbo].[song_playlist] CHECK CONSTRAINT [song_playlist_owner_id_6fb91556_fk_accounts_user_id]
GO
ALTER TABLE [dbo].[song_playlistsong]  WITH CHECK ADD  CONSTRAINT [song_playlistsong_playlist_id_ac4fcc81_fk_song_playlist_id] FOREIGN KEY([playlist_id])
REFERENCES [dbo].[song_playlist] ([id])
GO
ALTER TABLE [dbo].[song_playlistsong] CHECK CONSTRAINT [song_playlistsong_playlist_id_ac4fcc81_fk_song_playlist_id]
GO
ALTER TABLE [dbo].[song_playlistsong]  WITH CHECK ADD  CONSTRAINT [song_playlistsong_song_id_edba83fa_fk_song_song_id] FOREIGN KEY([song_id])
REFERENCES [dbo].[song_song] ([id])
GO
ALTER TABLE [dbo].[song_playlistsong] CHECK CONSTRAINT [song_playlistsong_song_id_edba83fa_fk_song_song_id]
GO
ALTER TABLE [dbo].[song_song]  WITH CHECK ADD  CONSTRAINT [song_song_artist_id_23516119_fk_accounts_artist_id] FOREIGN KEY([artist_id])
REFERENCES [dbo].[accounts_artist] ([id])
GO
ALTER TABLE [dbo].[song_song] CHECK CONSTRAINT [song_song_artist_id_23516119_fk_accounts_artist_id]
GO
ALTER TABLE [dbo].[song_song_tags]  WITH CHECK ADD  CONSTRAINT [song_song_tags_song_id_808bb1c9_fk_song_song_id] FOREIGN KEY([song_id])
REFERENCES [dbo].[song_song] ([id])
GO
ALTER TABLE [dbo].[song_song_tags] CHECK CONSTRAINT [song_song_tags_song_id_808bb1c9_fk_song_song_id]
GO
ALTER TABLE [dbo].[song_song_tags]  WITH CHECK ADD  CONSTRAINT [song_song_tags_tag_id_581c8503_fk_song_tag_id] FOREIGN KEY([tag_id])
REFERENCES [dbo].[song_tag] ([id])
GO
ALTER TABLE [dbo].[song_song_tags] CHECK CONSTRAINT [song_song_tags_tag_id_581c8503_fk_song_tag_id]
GO
ALTER TABLE [dbo].[accounts_artist]  WITH CHECK ADD  CONSTRAINT [accounts_artist_activitie_start_date_3b0591a0_check] CHECK  (([activitie_start_date]>=(0)))
GO
ALTER TABLE [dbo].[accounts_artist] CHECK CONSTRAINT [accounts_artist_activitie_start_date_3b0591a0_check]
GO
