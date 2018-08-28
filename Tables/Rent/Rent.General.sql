
/****** Object:  Table [Rent].[General]    Script Date: 24-08-2018 23:27:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Rent].[General](
	[ItemId] [char](10) NOT NULL,
	[ItemDesc] [nchar](100) NOT NULL,
	[ItemTitle] [nchar](50) NOT NULL,
	[ItemBlob] [nchar](10) NULL,
	[UserId] [INT] NOT NULL,
	[ItemType] [nchar](20) NOT NULL,
	[SecurityDeposit] [money] NULL,
	[DateAdded] [datetime] NOT NULL,
	[WarrantyPeriod_M] [nchar](10) NULL,
	[WarrantyPeriod_Y] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [Rent].[General] ADD  DEFAULT ((0)) FOR [WarrantyPeriod_M]
GO

ALTER TABLE [Rent].[General] ADD  DEFAULT ((0)) FOR [WarrantyPeriod_Y]
GO

ALTER TABLE [Rent].[General]  WITH CHECK ADD  CONSTRAINT [FK_General_ToUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO

ALTER TABLE [Rent].[General] CHECK CONSTRAINT [FK_General_ToUser]
GO


