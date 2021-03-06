CREATE TABLE [dbo].[ApplicationEntry] (
	[ApplnID] [varchar] (50) NOT NULL ,
	[EmpID] [varchar] (50) NOT NULL ,
	[ExeID] [varchar] (50) NOT NULL ,
	[NoOfTimeToOnsite] [numeric](18, 0) NOT NULL ,
	[Country] [varchar] (50) NOT NULL ,
	[Type] [varchar] (50) NOT NULL ,
	[Enquiry] [varchar] (50) NOT NULL ,
	[Interview] [varchar] (50) NULL ,
	[Results] [varchar] (50) NULL ,
	[OnsiteDeparture] [varchar] (50) NULL ,
	[Reports] [varchar] (50) NULL ,
	[OnsiteArrival] [varchar] (50) NULL ,
	[Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EmpDetails] (
	[EmpID] [varchar] (50) NOT NULL ,
	[EmpName] [varchar] (50) NOT NULL ,
	[Password] [varchar] (50) NOT NULL ,
	[Designation] [varchar] (50) NOT NULL ,
	[PassportNo] [varchar] (50) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Enquiry] (
	[EnqID] [varchar] (50) NOT NULL ,
	[ApplnID] [varchar] (50) NOT NULL ,
	[Enteredby] [varchar] (50) NOT NULL ,
	[Query] [varchar] (200) NOT NULL ,
	[Ans] [varchar] (200) NOT NULL ,
	[Date] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Executive] (
	[ExeID] [varchar] (50) NOT NULL ,
	[Name] [varchar] (50) NOT NULL ,
	[DOb] [datetime] NOT NULL ,
	[MailId] [varchar] (50) NOT NULL ,
	[PhNo] [numeric](18, 0) NOT NULL ,
	[Address] [varchar] (50) NOT NULL ,
	[Date] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Interview] (
	[IntID] [varchar] (50) NOT NULL ,
	[ApplnID] [varchar] (50) NOT NULL ,
	[EnteredBy] [varchar] (50) NOT NULL ,
	[IntDate] [varchar] (50) NOT NULL ,
	[IntTime] [varchar] (50) NOT NULL ,
	[Venu] [varchar] (50) NOT NULL ,
	[Date] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[LoginDetails] (
	[UserName] [varchar] (50) NOT NULL ,
	[Password] [varchar] (50) NOT NULL ,
	[Category] [varchar] (50) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OnsiteArrival] (
	[OnSiteID] [varchar] (50) NOT NULL ,
	[ApplnID] [varchar] (50) NOT NULL ,
	[EnteredBy] [varchar] (50) NOT NULL ,
	[TicketNo] [varchar] (50) NOT NULL ,
	[FlightNo] [varchar] (50) NOT NULL ,
	[F_From] [varchar] (50) NOT NULL ,
	[Via] [varchar] (50) NULL ,
	[F_To] [varchar] (50) NOT NULL ,
	[F_Date] [varchar] (50) NOT NULL ,
	[F_Time] [varchar] (50) NOT NULL ,
	[Date] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OnsiteDeparture] (
	[OnSiteID] [varchar] (50) NOT NULL ,
	[ApplnID] [varchar] (50) NOT NULL ,
	[EnteredBy] [varchar] (50) NOT NULL ,
	[TicketNo] [varchar] (50) NOT NULL ,
	[FlightNo] [varchar] (50) NOT NULL ,
	[F_From] [varchar] (50) NOT NULL ,
	[Via] [varchar] (50) NULL ,
	[F_To] [varchar] (50) NOT NULL ,
	[F_Date] [varchar] (50) NOT NULL ,
	[F_Time] [varchar] (50) NOT NULL ,
	[Date] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Renewal] (
	[RenID] [varchar] (50) NOT NULL ,
	[ApplnID] [varchar] (50) NOT NULL ,
	[Details] [varchar] (300) NOT NULL ,
	[Status] [varchar] (50) NOT NULL ,
	[Date] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Reports] (
	[RepID] [varchar] (50) NOT NULL ,
	[ApplnID] [varchar] (50) NOT NULL ,
	[Reports] [varchar] (300) NOT NULL ,
	[Date] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Results] (
	[ResID] [varchar] (50) NOT NULL ,
	[ApplnID] [varchar] (50) NOT NULL ,
	[EnteredBy] [varchar] (50) NOT NULL ,
	[Result] [varchar] (200) NOT NULL ,
	[Date] [datetime] NOT NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ApplicationEntry] WITH NOCHECK ADD 
	CONSTRAINT [PK_ApplicationEntry] PRIMARY KEY  NONCLUSTERED 
	(
		[ApplnID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[EmpDetails] WITH NOCHECK ADD 
	CONSTRAINT [PK_EmpDetails] PRIMARY KEY  NONCLUSTERED 
	(
		[EmpID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Enquiry] WITH NOCHECK ADD 
	CONSTRAINT [PK_Enquiry] PRIMARY KEY  NONCLUSTERED 
	(
		[EnqID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Executive] WITH NOCHECK ADD 
	CONSTRAINT [PK_Executive] PRIMARY KEY  NONCLUSTERED 
	(
		[ExeID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Interview] WITH NOCHECK ADD 
	CONSTRAINT [PK_Interview] PRIMARY KEY  NONCLUSTERED 
	(
		[IntID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[LoginDetails] WITH NOCHECK ADD 
	CONSTRAINT [PK_LoginDetails] PRIMARY KEY  NONCLUSTERED 
	(
		[UserName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[OnsiteArrival] WITH NOCHECK ADD 
	CONSTRAINT [PK_OnsiteArrival] PRIMARY KEY  NONCLUSTERED 
	(
		[OnSiteID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[OnsiteDeparture] WITH NOCHECK ADD 
	CONSTRAINT [PK_OnsiteDeparture] PRIMARY KEY  NONCLUSTERED 
	(
		[OnSiteID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Renewal] WITH NOCHECK ADD 
	CONSTRAINT [PK_Renewal] PRIMARY KEY  NONCLUSTERED 
	(
		[RenID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Reports] WITH NOCHECK ADD 
	CONSTRAINT [PK_Reports] PRIMARY KEY  NONCLUSTERED 
	(
		[RepID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Results] WITH NOCHECK ADD 
	CONSTRAINT [PK_Results] PRIMARY KEY  NONCLUSTERED 
	(
		[ResID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ApplicationEntry] ADD 
	CONSTRAINT [FK_ApplicationEntry_EmpDetails] FOREIGN KEY 
	(
		[EmpID]
	) REFERENCES [dbo].[EmpDetails] (
		[EmpID]
	)
GO

ALTER TABLE [dbo].[EmpDetails] ADD 
	CONSTRAINT [FK_EmpDetails_LoginDetails] FOREIGN KEY 
	(
		[EmpID]
	) REFERENCES [dbo].[LoginDetails] (
		[UserName]
	)
GO

ALTER TABLE [dbo].[Enquiry] ADD 
	CONSTRAINT [FK_Enquiry_ApplicationEntry] FOREIGN KEY 
	(
		[ApplnID]
	) REFERENCES [dbo].[ApplicationEntry] (
		[ApplnID]
	)
GO

ALTER TABLE [dbo].[Interview] ADD 
	CONSTRAINT [FK_Interview_ApplicationEntry] FOREIGN KEY 
	(
		[ApplnID]
	) REFERENCES [dbo].[ApplicationEntry] (
		[ApplnID]
	)
GO

ALTER TABLE [dbo].[OnsiteArrival] ADD 
	CONSTRAINT [FK_OnsiteArrival_ApplicationEntry] FOREIGN KEY 
	(
		[ApplnID]
	) REFERENCES [dbo].[ApplicationEntry] (
		[ApplnID]
	)
GO

ALTER TABLE [dbo].[OnsiteDeparture] ADD 
	CONSTRAINT [FK_OnsiteDeparture_ApplicationEntry] FOREIGN KEY 
	(
		[ApplnID]
	) REFERENCES [dbo].[ApplicationEntry] (
		[ApplnID]
	)
GO

ALTER TABLE [dbo].[Renewal] ADD 
	CONSTRAINT [FK_Renewal_ApplicationEntry] FOREIGN KEY 
	(
		[ApplnID]
	) REFERENCES [dbo].[ApplicationEntry] (
		[ApplnID]
	)
GO

ALTER TABLE [dbo].[Reports] ADD 
	CONSTRAINT [FK_Reports_ApplicationEntry] FOREIGN KEY 
	(
		[ApplnID]
	) REFERENCES [dbo].[ApplicationEntry] (
		[ApplnID]
	)
GO

ALTER TABLE [dbo].[Results] ADD 
	CONSTRAINT [FK_Results_ApplicationEntry] FOREIGN KEY 
	(
		[ApplnID]
	) REFERENCES [dbo].[ApplicationEntry] (
		[ApplnID]
	)
GO

