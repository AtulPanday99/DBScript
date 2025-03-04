USE [Edoro]
GO
/****** Object:  Table [dbo].[CityMaster]    Script Date: 10-07-2024 22:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityMaster](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NULL,
	[StateId] [int] NULL,
 CONSTRAINT [PK_CityMaster] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContantForQNA]    Script Date: 10-07-2024 22:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContantForQNA](
	[AutoId] [int] IDENTITY(1,1) NOT NULL,
	[Url] [varchar](50) NULL,
	[Question] [varchar](50) NULL,
	[Answer] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[Created_Date] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ContantForQNA] PRIMARY KEY CLUSTERED 
(
	[AutoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeRegistration]    Script Date: 10-07-2024 22:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeRegistration](
	[RId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[EmailId] [varchar](100) NULL,
	[ContactNo] [varchar](20) NULL,
	[Address] [varchar](100) NULL,
	[State] [int] NULL,
	[City] [int] NULL,
	[PinCode] [int] NULL,
	[Password] [varchar](50) NULL,
	[ConfirmPassword] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeRegistration] PRIMARY KEY CLUSTERED 
(
	[RId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 10-07-2024 22:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateMaster]    Script Date: 10-07-2024 22:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateMaster](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](50) NULL,
 CONSTRAINT [PK_StateMaster] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestRecord]    Script Date: 10-07-2024 22:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
 CONSTRAINT [PK_TestRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CityMaster] ON 

INSERT [dbo].[CityMaster] ([CityId], [CityName], [StateId]) VALUES (1, N'Varansi', 1)
INSERT [dbo].[CityMaster] ([CityId], [CityName], [StateId]) VALUES (2, N'Mirzapur', 1)
INSERT [dbo].[CityMaster] ([CityId], [CityName], [StateId]) VALUES (3, N'Satna', 2)
INSERT [dbo].[CityMaster] ([CityId], [CityName], [StateId]) VALUES (4, N'Maihar', 2)
SET IDENTITY_INSERT [dbo].[CityMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeRegistration] ON 

INSERT [dbo].[EmployeeRegistration] ([RId], [Name], [EmailId], [ContactNo], [Address], [State], [City], [PinCode], [Password], [ConfirmPassword]) VALUES (1, N'Atul Pandey', N'atulpandey12071999@gmail.com', N'3456567', N'Haripur
??????', 1, 2, 231303, N'123', N'123')
INSERT [dbo].[EmployeeRegistration] ([RId], [Name], [EmailId], [ContactNo], [Address], [State], [City], [PinCode], [Password], [ConfirmPassword]) VALUES (3, N'Raju', N'raju@gmail.com', N'326456', N'Gaya', 2, 4, 54576, N'123', N'123')
SET IDENTITY_INSERT [dbo].[EmployeeRegistration] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetail] ON 

INSERT [dbo].[ProductDetail] ([Id], [Name], [Quantity], [Price]) VALUES (1, N'HP Blutooth', 8, 800)
INSERT [dbo].[ProductDetail] ([Id], [Name], [Quantity], [Price]) VALUES (3, N'Mouse', 3, 500)
INSERT [dbo].[ProductDetail] ([Id], [Name], [Quantity], [Price]) VALUES (6, N'HP Mouse', 3, 650)
SET IDENTITY_INSERT [dbo].[ProductDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[StateMaster] ON 

INSERT [dbo].[StateMaster] ([StateId], [StateName]) VALUES (1, N'UP')
INSERT [dbo].[StateMaster] ([StateId], [StateName]) VALUES (2, N'MP')
INSERT [dbo].[StateMaster] ([StateId], [StateName]) VALUES (3, N'Kolkata')
SET IDENTITY_INSERT [dbo].[StateMaster] OFF
GO
ALTER TABLE [dbo].[CityMaster]  WITH CHECK ADD  CONSTRAINT [FK_CityMaster_StateMaster] FOREIGN KEY([StateId])
REFERENCES [dbo].[StateMaster] ([StateId])
GO
ALTER TABLE [dbo].[CityMaster] CHECK CONSTRAINT [FK_CityMaster_StateMaster]
GO
ALTER TABLE [dbo].[EmployeeRegistration]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeRegistration_StateMaster] FOREIGN KEY([State])
REFERENCES [dbo].[StateMaster] ([StateId])
GO
ALTER TABLE [dbo].[EmployeeRegistration] CHECK CONSTRAINT [FK_EmployeeRegistration_StateMaster]
GO
/****** Object:  StoredProcedure [dbo].[SP_ContantForQNA]    Script Date: 10-07-2024 22:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_ContantForQNA]
@AutoId int=0,
@Url varchar(50)=null,
@Question varchar(50)=null,
@Answer varchar(50)=null,
@IsActive bit=null,
@Created_Date date=null,
@CreatedBy varchar(50)=null,
@op int
AS
BEGIN
	If @op=1
	Begin
	   Insert into ContantForQNA (Url,Question,Answer,IsActive,Created_Date,CreatedBy,IsDeleted)values(@Url,@Question,@Answer,@IsActive,GetDate(),@CreatedBy,0)
	End
	If @op=2
	Begin
	   Select * from ContantForQNA  where IsDeleted=0
	End
END
GO
/****** Object:  StoredProcedure [dbo].[sp_employeeregistration]    Script Date: 10-07-2024 22:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_employeeregistration]
@rid int=0,
@name varchar(50)=null,
@emailid varchar(100)=null,
@contactno varchar(20)=null,
@address varchar(100)=null,
@state int=0,
@city int=0,
@password varchar(50)=null,
@confirmpassword varchar(50)=null,
@pincode int=0,
@op int
AS
declare @res varchar(50);
BEGIN
	if @op=1
	begin
	  insert into EmployeeRegistration values(@name,@emailid,@contactno,@address,@state,@city,@pincode,@password,@confirmpassword);
	end
	if @op=2
	begin
	   select * from EmployeeRegistration;
	end
	if @op=3
	begin
	   delete from EmployeeRegistration where RId=@rid; 
	end
	if @op=4
	begin
	   select * from EmployeeRegistration where RId=@rid;
	end
	if @op=5
	 begin
	   update EmployeeRegistration set Name=@name,EmailId=@emailid,ContactNo=@contactno,Address=@address,State=@state,City=@city,PinCode=@pincode where RId=@rid;
	 end
END

GO
