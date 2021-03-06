USE [Graduate_Project]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Admin_name] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[control_panel]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[control_panel](
	[date] [date] NOT NULL,
	[election_start_time] [time](7) NOT NULL,
	[election_finish_time] [time](7) NOT NULL,
	[no_of_voting] [int] NOT NULL,
 CONSTRAINT [PK_control_panel] PRIMARY KEY CLUSTERED 
(
	[election_start_time] ASC,
	[election_finish_time] ASC,
	[no_of_voting] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Elector]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elector](
	[Elector_ID] [int] IDENTITY(1,1) NOT NULL,
	[stno] [int] NULL,
	[list_id] [int] NULL,
	[Image] [nvarchar](50) NULL,
 CONSTRAINT [PK_Elector] PRIMARY KEY CLUSTERED 
(
	[Elector_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Instruction]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instruction](
	[inst_id] [int] IDENTITY(1,1) NOT NULL,
	[inst_desc] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Instruction] PRIMARY KEY CLUSTERED 
(
	[inst_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lists]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lists](
	[ListID] [int] IDENTITY(1,1) NOT NULL,
	[List_Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
 CONSTRAINT [PK_List] PRIMARY KEY CLUSTERED 
(
	[ListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Stno] [int] NOT NULL,
	[stname] [nvarchar](50) NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[elected] [int] NOT NULL CONSTRAINT [DF_Student_elected]  DEFAULT ((0)),
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Stno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vote]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vote](
	[stno] [int] NOT NULL,
	[elector_id] [int] NOT NULL,
 CONSTRAINT [PK_Vote] PRIMARY KEY CLUSTERED 
(
	[stno] ASC,
	[elector_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Elector]  WITH CHECK ADD  CONSTRAINT [FK_Elector_List] FOREIGN KEY([list_id])
REFERENCES [dbo].[Lists] ([ListID])
GO
ALTER TABLE [dbo].[Elector] CHECK CONSTRAINT [FK_Elector_List]
GO
ALTER TABLE [dbo].[Elector]  WITH CHECK ADD  CONSTRAINT [FK_Elector_Student] FOREIGN KEY([stno])
REFERENCES [dbo].[Student] ([Stno])
GO
ALTER TABLE [dbo].[Elector] CHECK CONSTRAINT [FK_Elector_Student]
GO
ALTER TABLE [dbo].[Vote]  WITH CHECK ADD  CONSTRAINT [FK_Vote_Elector] FOREIGN KEY([elector_id])
REFERENCES [dbo].[Elector] ([Elector_ID])
GO
ALTER TABLE [dbo].[Vote] CHECK CONSTRAINT [FK_Vote_Elector]
GO
ALTER TABLE [dbo].[Vote]  WITH CHECK ADD  CONSTRAINT [FK_Vote_Student] FOREIGN KEY([stno])
REFERENCES [dbo].[Student] ([Stno])
GO
ALTER TABLE [dbo].[Vote] CHECK CONSTRAINT [FK_Vote_Student]
GO
/****** Object:  StoredProcedure [dbo].[sp_elector]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_elector]
	@ElectorID int,
	@Stno int=null,
	@ListID int=null,
	@image nvarchar(50)=null,
	@action nvarchar(50)=null
AS
BEGIN
	if @action='insert'
	insert into Elector values(@Stno,@ListID,@image)
	if @action='update'
	update Elector set stno=@Stno,list_id=@ListID,Image=@image where Elector_ID=@ElectorID
	if @action='delete'
	delete from Elector where Elector_ID=@ElectorID
END

GO
/****** Object:  StoredProcedure [dbo].[sp_electors]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_electors]
	
AS
BEGIN
	select Elector.Elector_ID,stname,list_name,Elector.Image from Elector,Student,Lists where Elector.stno=Student.Stno and Elector.list_id=Lists.ListID
END

GO
/****** Object:  StoredProcedure [dbo].[sp_getelctor]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_getelctor]
AS
BEGIN
	
	SELECT       *
FROM            Elector 
                        
END

GO
/****** Object:  StoredProcedure [dbo].[sp_getinst]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_getinst]
	
AS
BEGIN
	select * from Instruction
END

GO
/****** Object:  StoredProcedure [dbo].[sp_getlist]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_getlist] 
	
AS
BEGIN
	select * from Lists

END

GO
/****** Object:  StoredProcedure [dbo].[sp_getSetting]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_getSetting]
	
AS
BEGIN
	
	select * from control_panel
END

GO
/****** Object:  StoredProcedure [dbo].[sp_getstd]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_getstd]
	@ID int
AS
BEGIN
	select * from Student where Stno=@ID
END

GO
/****** Object:  StoredProcedure [dbo].[sp_inst]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_inst]
@ID int=nuul,
	@inst_desc nvarchar(max)=null,
	@action nvarchar(50)=null
AS
BEGIN
if @action='insert'
insert into Instruction values(@inst_desc)
if @action='update'
update Instruction set inst_desc=@inst_desc where inst_id=@ID
if @action='delete'
delete from Instruction where inst_id=@ID
END

GO
/****** Object:  StoredProcedure [dbo].[sp_lists]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_lists]
	@ListID int,
	@list_name nvarchar(50)=null,
	@Image nvarchar(50)=null,
	@action nvarchar(50)
AS
BEGIN
	if @action='insert'
insert into Lists values(@list_name,@Image)
if @action='update'
update Lists  set List_Name=@list_name,Image=@Image where ListID=@ListID
if @action='delete'
delete from Lists where ListID=@ListID
END

GO
/****** Object:  StoredProcedure [dbo].[sp_loginadmin]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_loginadmin]
	@Admin_name nvarchar(50),
	@Password nvarchar(50)
	
AS
BEGIN
	select * from admins where Admin_name=@Admin_name and password=@Password 
END

GO
/****** Object:  StoredProcedure [dbo].[sp_loginstudent]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_loginstudent]
	@Stno int,
	@Password nvarchar(50)
	
AS
BEGIN

	select * from Student where Stno=@Stno and password=@Password 
END

GO
/****** Object:  StoredProcedure [dbo].[sp_resultelector]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_resultelector]

AS
BEGIN
	SELECT    Elector.Image, Student.stname, Lists.List_Name, ISNULL(COUNT(Vote.stno), 0) AS Expr1
FROM     Elector INNER JOIN
                         Lists ON Elector.list_id = Lists.ListID INNER JOIN
                         Student ON Elector.stno = Student.Stno LEFT OUTER JOIN
                         Vote ON Elector.Elector_ID = Vote.elector_id
GROUP BY Elector.Image, Student.stname, Lists.List_Name
ORDER BY Expr1 DESC
	




END

GO
/****** Object:  StoredProcedure [dbo].[sp_resultList]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_resultList]

AS
BEGIN
select  Lists.List_Name,Lists.Image ,ISNULL(COUNT(Vote.stno), 0) AS number_Vote
FROM            Lists INNER JOIN
                         Elector ON Elector.list_id = Lists.ListID INNER JOIN
                         Student ON Elector.stno = Student.Stno LEFT OUTER JOIN
                         Vote ON Elector.Elector_ID = Vote.elector_id
GROUP BY Lists.Image, List_Name,ListID
ORDER BY number_Vote DESC	
END

GO
/****** Object:  StoredProcedure [dbo].[sp_upSetting]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_upSetting]
	@date date=null,
	@start datetime=null,
	@end datetime=null,
	@noVote int=null
AS
BEGIN
	
	update control_panel set date=@date,election_start_time=@start,election_finish_time=@end,no_of_voting=@noVote
END

GO
/****** Object:  StoredProcedure [dbo].[sp_upStd]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_upStd]
	@elected int,
	@ID int

AS
BEGIN
	update Student set elected=@elected where Stno=@ID
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Vote]    Script Date: 12/13/2018 10:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Vote]
	@stno int,
	@ElectorID int
AS
BEGIN
	insert into Vote values(@stno,@ElectorID)
END

GO
