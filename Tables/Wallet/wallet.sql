CREATE TABLE [dbo].[Wallet](
	[WalletId] [int] identity(700000,1) NOT NULL PRIMARY KEY,
	[UploadedMoney] [money] NULL,
	[AmountOwn] [money] NULL,
	[AmountDue] [money] NULL,
	[AppMoney] [money] NULL
	)
GO
