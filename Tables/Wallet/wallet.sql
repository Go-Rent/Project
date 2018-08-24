CREATE TABLE [dbo].[Wallet](
	[WalletId] [int] NOT NULL PRIMARY KEY,
	[UploadedMoney] [money] NULL,
	[AmountOwn] [money] NULL,
	[AmountDue] [money] NULL,
	[AppMoney] [money] NULL
	)
GO