USE [master]
GO
/****** Object:  Database [PPE_MNIS]    Script Date: 02/09/2016 16:47:03 ******/
CREATE DATABASE [PPE_MNIS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MNIS', FILENAME = N'C:\Users\langs\PPE_MNIS.mdf' , SIZE = 153472KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MNIS_log', FILENAME = N'C:\Users\langs\PPE_MNIS.ldf' , SIZE = 22144KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PPE_MNIS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PPE_MNIS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PPE_MNIS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PPE_MNIS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PPE_MNIS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PPE_MNIS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PPE_MNIS] SET ARITHABORT OFF 
GO
ALTER DATABASE [PPE_MNIS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PPE_MNIS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PPE_MNIS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PPE_MNIS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PPE_MNIS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PPE_MNIS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PPE_MNIS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PPE_MNIS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PPE_MNIS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PPE_MNIS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PPE_MNIS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PPE_MNIS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PPE_MNIS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PPE_MNIS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PPE_MNIS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PPE_MNIS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PPE_MNIS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PPE_MNIS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PPE_MNIS] SET  MULTI_USER 
GO
ALTER DATABASE [PPE_MNIS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PPE_MNIS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PPE_MNIS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PPE_MNIS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PPE_MNIS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PPE_MNIS] SET QUERY_STORE = OFF
GO
USE [PPE_MNIS]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [PPE_MNIS]
GO
/****** Object:  Table [dbo].[AddressTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressTypes](
	[AddressType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[IsPhysicalAddress] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_AddressTypes] PRIMARY KEY CLUSTERED 
(
	[AddressType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnsweringBodies]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnsweringBodies](
	[AnsweringBody_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](1000) NOT NULL,
	[SortName] [varchar](1000) NOT NULL,
	[Target] [varchar](1000) NOT NULL,
	[Gender] [char](1) NOT NULL,
	[OralDaysNotice] [int] NOT NULL,
	[AnswersSubstantive] [bit] NOT NULL,
	[AnswersTopical] [bit] NOT NULL,
	[AnswersOrdinary] [bit] NOT NULL,
	[NamedDay] [bit] NOT NULL,
	[Department_Id] [int] NULL,
	[ShowName] [varchar](255) NULL,
	[ShowInTitle] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[ShortName] [varchar](1000) NULL,
 CONSTRAINT [PK_AnsweringBodies] PRIMARY KEY CLUSTERED 
(
	[AnsweringBody_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Areas]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[Area_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Notes] [nvarchar](255) NULL,
	[OnsAreaId] [nvarchar](255) NULL,
	[AreaType_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK__Areas__425676CE6FE99F9F] PRIMARY KEY CLUSTERED 
(
	[Area_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AreaTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaTypes](
	[AreaType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AreaType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BiographyCategories]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BiographyCategories](
	[BiographyCategory_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IsCommons] [bit] NOT NULL,
	[IsLords] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_BiographyCategories] PRIMARY KEY CLUSTERED 
(
	[BiographyCategory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cabinets]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cabinets](
	[Cabinet_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Ordinal] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsGovernment] [bit] NOT NULL,
	[IsOpposition] [bit] NOT NULL,
 CONSTRAINT [PK_Cabinets] PRIMARY KEY CLUSTERED 
(
	[Cabinet_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommitteeClerks]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommitteeClerks](
	[CommitteeClerk_Id] [int] IDENTITY(1,1) NOT NULL,
	[Committee_Id] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_CommitteeClerks] PRIMARY KEY CLUSTERED 
(
	[CommitteeClerk_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommitteeLayMembers]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommitteeLayMembers](
	[CommitteeLayMember_Id] [int] IDENTITY(1,1) NOT NULL,
	[Committee_Id] [int] NOT NULL,
	[Title_Id] [int] NULL,
	[Forename] [nvarchar](255) NULL,
	[MiddleNames] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[Suffix] [nvarchar](255) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[Notes] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[PhotoContent] [varbinary](max) NULL,
	[PhotoMIMEType] [varchar](255) NULL,
	[PhotoFileName] [nvarchar](255) NULL,
	[Gender] [varchar](1) NOT NULL,
 CONSTRAINT [PK_CommitteeLayMembers] PRIMARY KEY CLUSTERED 
(
	[CommitteeLayMember_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Committees]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Committees](
	[Committee_Id] [int] IDENTITY(1,1) NOT NULL,
	[CommitteeType_Id] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[ParentCommittee_Id] [int] NULL,
	[DateLordsAppointed] [datetime] NULL,
	[DateCommonsAppointed] [datetime] NULL,
	[Phone] [nvarchar](255) NULL,
	[Url] [nvarchar](255) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[CreatedFromCommittee_Id] [int] NULL,
	[IsCommons] [bit] NOT NULL,
	[IsLords] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Committee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommitteeTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommitteeTypes](
	[CommitteeType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_CommitteeTypes] PRIMARY KEY CLUSTERED 
(
	[CommitteeType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommonsRegisterPublications]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonsRegisterPublications](
	[CommonsRegisterPublication_Id] [int] IDENTITY(1,1) NOT NULL,
	[PublicationDate] [datetime] NOT NULL,
	[Notes] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_CommonsRegisterPublications] PRIMARY KEY CLUSTERED 
(
	[CommonsRegisterPublication_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Constituencies]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Constituencies](
	[Constituency_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[AlphaName] [nvarchar](255) NULL,
	[ConstituencyType_Id] [int] NULL,
	[LocataId] [int] NULL,
	[PrevConstituencyId] [nvarchar](255) NULL,
	[OldDodsId] [int] NULL,
	[OldDisId] [int] NULL,
	[ClerksConstituencyId] [int] NULL,
	[ClerksConstituencyName] [nvarchar](255) NULL,
	[GisId] [int] NULL,
	[PcaCode] [int] NULL,
	[PconName] [nvarchar](255) NULL,
	[OsName] [nvarchar](255) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[CreatedFromConstituency_Id] [int] NULL,
	[ONSCode] [nvarchar](50) NULL,
	[Geometry] [varchar](max) NULL,
 CONSTRAINT [PK_Constituencies] PRIMARY KEY CLUSTERED 
(
	[Constituency_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConstituencyAreas]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConstituencyAreas](
	[ConstituencyAreas_Id] [int] IDENTITY(1,1) NOT NULL,
	[Constituency_Id] [int] NOT NULL,
	[Area_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_ConstituencyAreas] PRIMARY KEY CLUSTERED 
(
	[ConstituencyAreas_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConstituencyCandidates]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConstituencyCandidates](
	[ConstituencyCandidate_Id] [int] IDENTITY(1,1) NOT NULL,
	[ConstituencyResult_Id] [int] NOT NULL,
	[Candidate] [nvarchar](255) NOT NULL,
	[Member_Id] [int] NULL,
	[Party] [nvarchar](255) NOT NULL,
	[Party_Id] [int] NULL,
	[Votes] [int] NOT NULL,
	[ResultChange] [varchar](10) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedWhen] [datetime] NULL,
	[RankOrder] [int] NULL,
	[VoteShare] [float] NULL,
 CONSTRAINT [PK_ConstituencyCandidates] PRIMARY KEY CLUSTERED 
(
	[ConstituencyCandidate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConstituencyResults]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConstituencyResults](
	[ConstituencyResult_Id] [int] IDENTITY(1,1) NOT NULL,
	[Constituency_Id] [int] NOT NULL,
	[Election_Id] [int] NOT NULL,
	[Electorate] [int] NOT NULL,
	[Result] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNotional] [bit] NOT NULL,
	[Turnout] [int] NULL,
	[Majority] [int] NULL,
	[WinningPartyId] [int] NULL,
 CONSTRAINT [PK_ConstituencyResults] PRIMARY KEY CLUSTERED 
(
	[ConstituencyResult_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConstituencyTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConstituencyTypes](
	[ConstituencyType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_ConsituencyTypes] PRIMARY KEY CLUSTERED 
(
	[ConstituencyType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Country_Id] [int] IDENTITY(1,1) NOT NULL,
	[IsUnitedKingdom] [bit] NULL,
	[Name] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Country_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DbScripts]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DbScripts](
	[DBScript_Id] [int] NOT NULL,
	[RanWhen] [datetime] NOT NULL,
 CONSTRAINT [PK_DbScripts] PRIMARY KEY CLUSTERED 
(
	[DBScript_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Department_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[AlphaName] [nvarchar](1000) NULL,
	[Acronym] [nvarchar](50) NULL,
	[SortOrder] [int] NULL,
	[Address1] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Address3] [nvarchar](255) NULL,
	[Address4] [nvarchar](255) NULL,
	[Address5] [nvarchar](255) NULL,
	[Postcode] [nvarchar](50) NULL,
	[OtherAddress] [nvarchar](max) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[Url] [nvarchar](255) NULL,
	[Minister] [bit] NOT NULL,
	[Secretary] [bit] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[SortOrderOpposition] [int] NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Department_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DisqualificationTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DisqualificationTypes](
	[DisqualificationType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[DisplayTextOnHoLOverview] [nvarchar](1000) NULL,
 CONSTRAINT [PK_DisqualificationTypes] PRIMARY KEY CLUSTERED 
(
	[DisqualificationType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dissolutions]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dissolutions](
	[Dissolution_Id] [int] IDENTITY(1,1) NOT NULL,
	[DissolutionDate] [date] NOT NULL,
 CONSTRAINT [PK_Dissolutions] PRIMARY KEY CLUSTERED 
(
	[Dissolution_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberAddresses]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberAddresses](
	[EditMemberAddress_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[AddressType_Id] [int] NOT NULL,
	[Address1] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Address3] [nvarchar](255) NULL,
	[Address4] [nvarchar](255) NULL,
	[Address5] [nvarchar](255) NULL,
	[Postcode] [nvarchar](50) NULL,
	[OtherAddress] [nvarchar](max) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[IsPreferred] [bit] NOT NULL,
	[IsWeb] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
	[Fax] [varchar](50) NULL,
 CONSTRAINT [PK_EditMemberAddresses] PRIMARY KEY CLUSTERED 
(
	[EditMemberAddress_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberBiographies]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberBiographies](
	[EditMemberBiography_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[BiographyCategory_Id] [int] NOT NULL,
	[Entry] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberBiographies] PRIMARY KEY CLUSTERED 
(
	[EditMemberBiography_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberCommitteeChairs]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberCommitteeChairs](
	[EditMemberCommitteeChair_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMemberCommittee_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberCommitteeChairs] PRIMARY KEY CLUSTERED 
(
	[EditMemberCommitteeChair_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberCommittees]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberCommittees](
	[EditMemberCommittee_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[Committee_Id] [int] NOT NULL,
	[ExOfficio] [bit] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[EndNote] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
	[IsAlternate] [bit] NOT NULL,
	[IsCoOpted] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberCommittees] PRIMARY KEY CLUSTERED 
(
	[EditMemberCommittee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberConstituencies]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberConstituencies](
	[EditMemberConstituency_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[Constituency_Id] [int] NOT NULL,
	[EntryType_Id] [int] NOT NULL,
	[EndType_Id] [int] NULL,
	[Election_Id] [int] NOT NULL,
	[SwearInOrder] [int] NULL,
	[Title_Id] [int] NULL,
	[Forename] [nvarchar](255) NULL,
	[Middlenames] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[Notes] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
	[IsStandingDown] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberConstituencies] PRIMARY KEY CLUSTERED 
(
	[EditMemberConstituency_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberDisqualifications]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberDisqualifications](
	[EditMemberDisqualification_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMemberStatus_Id] [int] NOT NULL,
	[DisqualificationType_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberDisqualification] PRIMARY KEY CLUSTERED 
(
	[EditMemberDisqualification_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberElectionsContested]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberElectionsContested](
	[EditMemberElectionContested_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[Constituency_Id] [int] NOT NULL,
	[Election_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberElectionsContested] PRIMARY KEY CLUSTERED 
(
	[EditMemberElectionContested_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberExperiences]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberExperiences](
	[EditMemberExperience_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[Experience_Id] [int] NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Organisation] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
	[StartDateDay] [int] NULL,
	[StartDateMonth] [int] NULL,
	[StartDateYear] [int] NULL,
	[EndDateDay] [int] NULL,
	[EndDateMonth] [int] NULL,
	[EndDateYear] [int] NULL,
 CONSTRAINT [PK_EditMemberExperiences] PRIMARY KEY CLUSTERED 
(
	[EditMemberExperience_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberGovernmentPosts]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberGovernmentPosts](
	[EditMemberGovernmentPost_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[GovernmentPost_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[EndNote] [nvarchar](max) NULL,
	[IsUnpaid] [bit] NOT NULL,
	[IsJoint] [bit] NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
	[LayingMinisterName] [nvarchar](255) NULL,
	[Department_Id] [int] NULL,
 CONSTRAINT [PK_EditMemberGovernmentPosts] PRIMARY KEY CLUSTERED 
(
	[EditMemberGovernmentPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberHonours]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberHonours](
	[EditMemberHonour_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[Honour_Id] [int] NOT NULL,
	[HonourList_Id] [int] NULL,
	[OtherHonour] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberHonours] PRIMARY KEY CLUSTERED 
(
	[EditMemberHonour_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberHouseMemberships]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberHouseMemberships](
	[EditMemberHouseMembership_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[House_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[EndReason_Id] [int] NULL,
	[EndNotes] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberHouseMemberships] PRIMARY KEY CLUSTERED 
(
	[EditMemberHouseMembership_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberInterests]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberInterests](
	[EditMemberInterest_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[InterestCategory_Id] [int] NOT NULL,
	[Interest] [nvarchar](max) NULL,
	[InterestCreated] [datetime] NULL,
	[InterestAmended] [datetime] NULL,
	[InterestDeleted] [datetime] NULL,
	[RegisteredLate] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
	[LastAmendment] [datetime] NULL,
	[LastAmendmentType] [char](1) NULL,
	[IsCorrection] [bit] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[CommonsRegisterPublication_Id] [int] NULL,
	[ParentEditMemberInterest_Id] [int] NULL,
	[ShowCreatedDate] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberInterests] PRIMARY KEY CLUSTERED 
(
	[EditMemberInterest_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberKnownAs]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberKnownAs](
	[EditMemberKnownAs_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[MiddleNames] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberKnownAs] PRIMARY KEY CLUSTERED 
(
	[EditMemberKnownAs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberLeaveOfAbsence]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberLeaveOfAbsence](
	[EditMemberLeaveOfAbsence_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMemberStatus_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberLeaveOfAbsence] PRIMARY KEY CLUSTERED 
(
	[EditMemberLeaveOfAbsence_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberLordsMembershipTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberLordsMembershipTypes](
	[EditMemberLordsMembershipType_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[LordsMembershipType_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberLordsMembershipTypes] PRIMARY KEY CLUSTERED 
(
	[EditMemberLordsMembershipType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberLordsPreferredNames]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberLordsPreferredNames](
	[LordsPreferredName_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMemberPreferredName_Id] [int] NOT NULL,
	[Title] [nvarchar](255) NULL,
	[LordsRank_Id] [int] NOT NULL,
	[UseOf] [bit] NOT NULL,
	[UseThe] [bit] NOT NULL,
	[Prenominal] [nvarchar](50) NULL,
	[Cardinality] [int] NULL,
	[IsPrimaryTitle] [bit] NOT NULL,
	[IsKnownAs] [bit] NOT NULL,
	[IsByVirtue] [bit] NOT NULL,
	[SitsAs] [nvarchar](255) NULL,
	[IsOtherTitle] [bit] NOT NULL,
	[OtherTitle] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
	[DateOfAnnouncement] [date] NULL,
	[DateOfIntroduction] [date] NULL,
	[DateOfWrit] [date] NULL,
	[IsWritAM] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberLordsPreferredNames] PRIMARY KEY CLUSTERED 
(
	[LordsPreferredName_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberMaidenSpeeches]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberMaidenSpeeches](
	[EditMemberMaidenSpeech_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[SpeechDate] [date] NOT NULL,
	[Hansard] [nvarchar](255) NULL,
	[Subject] [nvarchar](max) NULL,
	[House_Id] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
	[Url] [varchar](256) NULL,
 CONSTRAINT [PK_EditMemberMaidenSpeeches] PRIMARY KEY CLUSTERED 
(
	[EditMemberMaidenSpeech_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberOaths]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberOaths](
	[LordsOath_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[OathDate] [date] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberOaths] PRIMARY KEY CLUSTERED 
(
	[LordsOath_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberObituaries]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberObituaries](
	[EditMemberObituary_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[ObituaryUrl] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberObituaries] PRIMARY KEY CLUSTERED 
(
	[EditMemberObituary_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberOppositionPosts]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberOppositionPosts](
	[EditMemberOppositionPost_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[OppositionPost_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[EndNote] [nvarchar](max) NULL,
	[IsUnpaid] [bit] NOT NULL,
	[IsJoint] [bit] NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberOppositionPosts] PRIMARY KEY CLUSTERED 
(
	[EditMemberOppositionPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberOtherParliaments]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberOtherParliaments](
	[EditMemberOtherParliament_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[OtherParliament_Id] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberOtherParliaments] PRIMARY KEY CLUSTERED 
(
	[EditMemberOtherParliament_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberParliamentaryPosts]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberParliamentaryPosts](
	[EditMemberParliamentaryPost_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[ParliamentaryPost_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[EndNote] [nvarchar](max) NULL,
	[IsUnpaid] [bit] NOT NULL,
	[IsJoint] [bit] NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
	[LayingMinisterName] [nvarchar](255) NULL,
 CONSTRAINT [PK_EditMemberParliamentaryPosts] PRIMARY KEY CLUSTERED 
(
	[EditMemberParliamentaryPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberParties]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberParties](
	[EditMemberParty_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[Party_Id] [int] NOT NULL,
	[PartySubType_Id] [int] NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[Notes] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
	[SitsOppositeSideToParty] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberParties] PRIMARY KEY CLUSTERED 
(
	[EditMemberParty_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberPhotoContent]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberPhotoContent](
	[EditMemberPhotoContent_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMemberPhoto_Id] [int] NOT NULL,
	[Photo] [varbinary](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
	[PhotoFileName] [nvarchar](255) NULL,
	[PhotoMIMEType] [nvarchar](255) NULL,
 CONSTRAINT [PK_EditMemberPhotoContent] PRIMARY KEY CLUSTERED 
(
	[EditMemberPhotoContent_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberPhotoOutputs]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberPhotoOutputs](
	[EditMemberPhotoOutput_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMemberPhoto_Id] [int] NOT NULL,
	[PhotoOutput_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberPhotoOutputs] PRIMARY KEY CLUSTERED 
(
	[EditMemberPhotoOutput_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberPhotos]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberPhotos](
	[EditMemberPhoto_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[PhotoSource] [nvarchar](255) NULL,
	[Copyright] [nvarchar](255) NULL,
	[Attribution] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[IsDefault] [bit] NOT NULL,
	[IsHiRes] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
	[PublishExternally] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberPhotos] PRIMARY KEY CLUSTERED 
(
	[EditMemberPhoto_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberPreferredNameHonouraryPrefixes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberPreferredNameHonouraryPrefixes](
	[EditMemberPreferredNameHonouraryPrefix_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMemberPreferredName_Id] [int] NOT NULL,
	[HonouraryPrefix_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberPreferredNameHonouraryPrefixes] PRIMARY KEY CLUSTERED 
(
	[EditMemberPreferredNameHonouraryPrefix_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberPreferredNames]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberPreferredNames](
	[EditMemberPreferredName_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[Title_Id] [int] NULL,
	[Forename] [nvarchar](255) NULL,
	[MiddleNames] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[Suffix] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[AddressAs] [nvarchar](500) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[NameDisplayAs] [nvarchar](4000) NULL,
	[NameListAs] [nvarchar](4000) NULL,
	[NameFullTitle] [nvarchar](4000) NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberPreferredNames] PRIMARY KEY CLUSTERED 
(
	[EditMemberPreferredName_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberReferences]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberReferences](
	[EditMemberReference_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[ReferenceType_Id] [int] NOT NULL,
	[Reference] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberReferences] PRIMARY KEY CLUSTERED 
(
	[EditMemberReference_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMembers]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMembers](
	[EditMember_Id] [int] IDENTITY(1,1) NOT NULL,
	[Forename] [nvarchar](255) NOT NULL,
	[MiddleNames] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NOT NULL,
	[DateOfBirth] [date] NULL,
	[DateOfRetirement] [date] NULL,
	[DateOfDeath] [date] NULL,
	[TownOfBirth] [nvarchar](255) NULL,
	[BirthCountry_Id] [int] NULL,
	[Gender] [char](1) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[LockedBy] [nvarchar](255) NULL,
	[LockedWhen] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[NameDisplayAs] [nvarchar](4000) NULL,
	[NameListAs] [nvarchar](4000) NULL,
	[NameFullTitle] [nvarchar](4000) NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMember] PRIMARY KEY CLUSTERED 
(
	[EditMember_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberStaff]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberStaff](
	[EditMemberStaff_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[Title_Id] [int] NULL,
	[Forename] [nvarchar](255) NULL,
	[Middlenames] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[AddedWhen] [datetime] NOT NULL,
	[RemovedWhen] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberStaff] PRIMARY KEY CLUSTERED 
(
	[EditMemberStaff_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberStatuses]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberStatuses](
	[EditMemberStatus_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMember_Id] [int] NOT NULL,
	[Status_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK_EditMemberExclusions] PRIMARY KEY CLUSTERED 
(
	[EditMemberStatus_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditMemberSuspensions]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditMemberSuspensions](
	[EditMemberSuspension_Id] [int] IDENTITY(1,1) NOT NULL,
	[EditMemberStatus_Id] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Sitting] [bit] NOT NULL,
	[ReasonUrl] [nvarchar](255) NULL,
	[Reason] [nvarchar](max) NULL,
	[HansardUrl] [nvarchar](255) NULL,
	[Hansard] [nvarchar](255) NULL,
	[SittingDays] [int] NOT NULL,
	[CalendarDays] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsNewRow] [bit] NOT NULL,
 CONSTRAINT [PK__EditMemberSu__3F9406AF54CB950F] PRIMARY KEY CLUSTERED 
(
	[EditMemberSuspension_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Elections]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elections](
	[Election_Id] [int] IDENTITY(1,1) NOT NULL,
	[ElectionType_Id] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[ElectionDate] [date] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_Elections] PRIMARY KEY CLUSTERED 
(
	[Election_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectionTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectionTypes](
	[ElectionType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_ElectionTypes] PRIMARY KEY CLUSTERED 
(
	[ElectionType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EndReasons]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndReasons](
	[EndReason_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[EndDuringSession] [bit] NOT NULL,
	[IsCommons] [bit] NOT NULL,
	[IsLords] [bit] NOT NULL,
 CONSTRAINT [PK_EndReasons] PRIMARY KEY CLUSTERED 
(
	[EndReason_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EntryTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryTypes](
	[EntryType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_EntryTypes] PRIMARY KEY CLUSTERED 
(
	[EntryType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExperienceTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExperienceTypes](
	[ExperienceType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_ExperienceTypes] PRIMARY KEY CLUSTERED 
(
	[ExperienceType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GovernmentPostDepartments]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovernmentPostDepartments](
	[GovernmentPostDepartment_Id] [int] IDENTITY(1,1) NOT NULL,
	[GovernmentPost_Id] [int] NOT NULL,
	[Department_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_GovernmentPostDepartments] PRIMARY KEY CLUSTERED 
(
	[GovernmentPostDepartment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GovernmentPosts]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovernmentPosts](
	[GovernmentPost_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[GovernmentRank_Id] [int] NULL,
	[Promoted] [bit] NOT NULL,
	[CabinetRank] [int] NULL,
	[Cabinet_Id] [int] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[HansardName] [nvarchar](max) NULL,
	[IsLayingMinister] [bit] NOT NULL,
	[CapitaliseForYellowList] [bit] NOT NULL,
	[YellowListName] [nvarchar](255) NULL,
 CONSTRAINT [PK_GovernmentPosts] PRIMARY KEY CLUSTERED 
(
	[GovernmentPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GovernmentRanks]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovernmentRanks](
	[GovernmentRank_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[MinisterialRank] [int] NULL,
	[StatsRank] [nvarchar](255) NULL,
	[ClerksRank] [nvarchar](255) NULL,
	[OrderRank] [int] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GovernmentRank_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HonouraryPrefixes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HonouraryPrefixes](
	[HonouraryPrefix_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsCommons] [bit] NOT NULL,
	[IsLords] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[Prefix] [nvarchar](50) NULL,
	[PrefixOrder] [int] NULL,
	[PrefixAsSuffix] [bit] NOT NULL,
 CONSTRAINT [PK_HonouraryPrefixes] PRIMARY KEY CLUSTERED 
(
	[HonouraryPrefix_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HonouraryPrefixExcludeTitles]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HonouraryPrefixExcludeTitles](
	[HonouraryPrefixExcludeTitle_Id] [int] IDENTITY(1,1) NOT NULL,
	[HonouraryPrefix_Id] [int] NOT NULL,
	[Title_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_HonouraryPrefixExcludeTitles] PRIMARY KEY CLUSTERED 
(
	[HonouraryPrefixExcludeTitle_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HonourLists]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HonourLists](
	[HonourList_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_HonourLists] PRIMARY KEY CLUSTERED 
(
	[HonourList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Honours]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Honours](
	[Honour_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Abbreviation] [nvarchar](255) NULL,
	[HonourType_Id] [int] NULL,
	[Rank] [int] NOT NULL,
	[IsPromoted] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_Honours] PRIMARY KEY CLUSTERED 
(
	[Honour_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HonourTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HonourTypes](
	[HonourType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_HonourTypes] PRIMARY KEY CLUSTERED 
(
	[HonourType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Houses]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Houses](
	[House_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_Houses] PRIMARY KEY CLUSTERED 
(
	[House_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InterestCategories]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterestCategories](
	[InterestCategory_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SortOrder] [int] NOT NULL,
	[IsCommons] [bit] NOT NULL,
	[IsLords] [bit] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[CanHaveChildren] [bit] NOT NULL,
 CONSTRAINT [PK_InterestCategories] PRIMARY KEY CLUSTERED 
(
	[InterestCategory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InterestEmailTemplates]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterestEmailTemplates](
	[InterestEmailTemplate_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Subject] [nvarchar](1023) NULL,
	[BodyText] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_InterestEmailTemplates] PRIMARY KEY CLUSTERED 
(
	[InterestEmailTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LordsMembershipTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LordsMembershipTypes](
	[LordsMembershipType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Abbreviation] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[TypeDescriptor] [nvarchar](255) NULL,
	[OverviewDisplayOrder] [int] NULL,
 CONSTRAINT [PK_LordsTypes] PRIMARY KEY CLUSTERED 
(
	[LordsMembershipType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LordsRanks]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LordsRanks](
	[LordsRank_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Abbreviation] [nvarchar](10) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_LordsRanks] PRIMARY KEY CLUSTERED 
(
	[LordsRank_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberAddresses]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberAddresses](
	[MemberAddress_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[AddressType_Id] [int] NOT NULL,
	[Address1] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Address3] [nvarchar](255) NULL,
	[Address4] [nvarchar](255) NULL,
	[Address5] [nvarchar](255) NULL,
	[Postcode] [nvarchar](50) NULL,
	[OtherAddress] [nvarchar](max) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[IsPreferred] [bit] NOT NULL,
	[IsWeb] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[Fax] [varchar](50) NULL,
 CONSTRAINT [PK_MemberAddresses] PRIMARY KEY CLUSTERED 
(
	[MemberAddress_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberBiographies]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberBiographies](
	[MemberBiography_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[BiographyCategory_Id] [int] NOT NULL,
	[Entry] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberBiographies] PRIMARY KEY CLUSTERED 
(
	[MemberBiography_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberCommitteeChairs]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberCommitteeChairs](
	[MemberCommitteeChair_Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberCommittee_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberCommitteeChairs] PRIMARY KEY CLUSTERED 
(
	[MemberCommitteeChair_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberCommittees]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberCommittees](
	[MemberCommittee_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Committee_Id] [int] NOT NULL,
	[ExOfficio] [bit] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[EndNote] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsAlternate] [bit] NOT NULL,
	[IsCoOpted] [bit] NOT NULL,
 CONSTRAINT [PK_MemberCommittees] PRIMARY KEY CLUSTERED 
(
	[MemberCommittee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberConstituencies]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberConstituencies](
	[MemberConstituency_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Constituency_Id] [int] NOT NULL,
	[EntryType_Id] [int] NOT NULL,
	[EndType_Id] [int] NULL,
	[Election_Id] [int] NOT NULL,
	[SwearInOrder] [int] NULL,
	[Title_Id] [int] NULL,
	[Forename] [nvarchar](255) NULL,
	[Middlenames] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[Notes] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsStandingDown] [bit] NOT NULL,
 CONSTRAINT [PK_MemberConstituencies] PRIMARY KEY CLUSTERED 
(
	[MemberConstituency_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberDisqualifications]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberDisqualifications](
	[MemberDisqualification_Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberStatus_Id] [int] NOT NULL,
	[DisqualificationType_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberDisqualification] PRIMARY KEY CLUSTERED 
(
	[MemberDisqualification_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberElectionsContested]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberElectionsContested](
	[MemberElectionContested_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Constituency_Id] [int] NOT NULL,
	[Election_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberElectionsContested] PRIMARY KEY CLUSTERED 
(
	[MemberElectionContested_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberExperiences]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberExperiences](
	[MemberExperience_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Experience_Id] [int] NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Organisation] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[StartDateDay] [int] NULL,
	[StartDateMonth] [int] NULL,
	[StartDateYear] [int] NULL,
	[EndDateDay] [int] NULL,
	[EndDateMonth] [int] NULL,
	[EndDateYear] [int] NULL,
 CONSTRAINT [PK_MemberExperiences] PRIMARY KEY CLUSTERED 
(
	[MemberExperience_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberGovernmentPosts]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberGovernmentPosts](
	[MemberGovernmentPost_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[GovernmentPost_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[EndNote] [nvarchar](max) NULL,
	[IsUnpaid] [bit] NOT NULL,
	[IsJoint] [bit] NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[LayingMinisterName] [nvarchar](255) NULL,
	[Department_Id] [int] NULL,
 CONSTRAINT [PK_MemberGovernmentPosts] PRIMARY KEY CLUSTERED 
(
	[MemberGovernmentPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberHonours]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberHonours](
	[MemberHonour_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Honour_Id] [int] NOT NULL,
	[HonourList_Id] [int] NULL,
	[OtherHonour] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberHonours] PRIMARY KEY CLUSTERED 
(
	[MemberHonour_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberHouseMemberships]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberHouseMemberships](
	[MemberHouseMembership_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[House_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[EndReason_Id] [int] NULL,
	[EndNotes] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberHouseMemberships] PRIMARY KEY CLUSTERED 
(
	[MemberHouseMembership_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberInterests]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberInterests](
	[MemberInterest_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[InterestCategory_Id] [int] NOT NULL,
	[Interest] [nvarchar](max) NULL,
	[InterestCreated] [datetime] NOT NULL,
	[InterestAmended] [datetime] NULL,
	[InterestDeleted] [datetime] NULL,
	[RegisteredLate] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[LastAmendment] [datetime] NULL,
	[LastAmendmentType] [char](1) NULL,
	[IsCorrection] [bit] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[CommonsRegisterPublication_Id] [int] NULL,
	[ParentMemberInterest_Id] [int] NULL,
	[ShowCreatedDate] [bit] NOT NULL,
 CONSTRAINT [PK_MemberInterests] PRIMARY KEY CLUSTERED 
(
	[MemberInterest_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberInterestsPending]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberInterestsPending](
	[MemberInterestPending_Id] [int] NOT NULL,
	[Member_Id] [int] NOT NULL,
	[InterestCategory_Id] [int] NOT NULL,
	[Interest] [nvarchar](max) NULL,
	[InterestCreated] [datetime] NOT NULL,
	[InterestAmended] [datetime] NULL,
	[InterestDeleted] [datetime] NULL,
	[RegisteredLate] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[LastAmendment] [datetime] NULL,
	[LastAmendmentType] [char](1) NULL,
	[IsCorrection] [bit] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[IsNewInterest] [bit] NOT NULL,
	[CommonsRegisterPublication_Id] [int] NULL,
	[ParentMemberInterestPending_Id] [int] NULL,
	[ShowCreatedDate] [bit] NOT NULL,
 CONSTRAINT [PK_MemberInterestsPending] PRIMARY KEY CLUSTERED 
(
	[MemberInterestPending_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberKnownAs]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberKnownAs](
	[MemberKnownAs_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[MiddleNames] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberKnownAs] PRIMARY KEY CLUSTERED 
(
	[MemberKnownAs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberLeaveOfAbsence]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberLeaveOfAbsence](
	[MemberLeaveOfAbsence_Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberStatus_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberLeaveOfAbsence] PRIMARY KEY CLUSTERED 
(
	[MemberLeaveOfAbsence_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberLordsMembershipTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberLordsMembershipTypes](
	[MemberLordsMembershipType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[LordsMembershipType_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberLordsMembershipTypes] PRIMARY KEY CLUSTERED 
(
	[MemberLordsMembershipType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberLordsPreferredNames]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberLordsPreferredNames](
	[LordsPreferredName_Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberPreferredName_Id] [int] NOT NULL,
	[Title] [nvarchar](255) NULL,
	[LordsRank_Id] [int] NOT NULL,
	[UseOf] [bit] NOT NULL,
	[UseThe] [bit] NOT NULL,
	[Prenominal] [nvarchar](50) NULL,
	[Cardinality] [int] NULL,
	[IsPrimaryTitle] [bit] NOT NULL,
	[IsKnownAs] [bit] NOT NULL,
	[IsByVirtue] [bit] NOT NULL,
	[SitsAs] [nvarchar](255) NULL,
	[IsOtherTitle] [bit] NOT NULL,
	[OtherTitle] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[DateOfAnnouncement] [date] NULL,
	[DateOfIntroduction] [date] NULL,
	[DateOfWrit] [date] NULL,
	[IsWritAM] [bit] NOT NULL,
 CONSTRAINT [PK_LordsPreferredNames] PRIMARY KEY CLUSTERED 
(
	[LordsPreferredName_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberMaidenSpeeches]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberMaidenSpeeches](
	[MemberMaidenSpeech_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[SpeechDate] [date] NOT NULL,
	[Hansard] [nvarchar](255) NULL,
	[Subject] [nvarchar](max) NULL,
	[House_Id] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[Url] [varchar](256) NULL,
 CONSTRAINT [PK_MemberMaidenSpeeches] PRIMARY KEY CLUSTERED 
(
	[MemberMaidenSpeech_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberOaths]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberOaths](
	[LordsOath_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[OathDate] [date] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_LordsOaths] PRIMARY KEY CLUSTERED 
(
	[LordsOath_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberObituaries]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberObituaries](
	[MemberObituary_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[ObituaryUrl] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberObituaries] PRIMARY KEY CLUSTERED 
(
	[MemberObituary_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberOppositionPosts]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberOppositionPosts](
	[MemberOppositionPost_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[OppositionPost_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[EndNote] [nvarchar](max) NULL,
	[IsUnpaid] [bit] NOT NULL,
	[IsJoint] [bit] NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberOppositionPosts] PRIMARY KEY CLUSTERED 
(
	[MemberOppositionPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberOtherParliaments]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberOtherParliaments](
	[MemberOtherParliament_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[OtherParliament_Id] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberOtherParliaments] PRIMARY KEY CLUSTERED 
(
	[MemberOtherParliament_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberParliamentaryPosts]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberParliamentaryPosts](
	[MemberParliamentaryPost_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[ParliamentaryPost_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[EndNote] [nvarchar](max) NULL,
	[IsUnpaid] [bit] NOT NULL,
	[IsJoint] [bit] NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[LayingMinisterName] [nvarchar](255) NULL,
 CONSTRAINT [PK_MemberParliamentaryPosts] PRIMARY KEY CLUSTERED 
(
	[MemberParliamentaryPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberParties]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberParties](
	[MemberParty_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Party_Id] [int] NOT NULL,
	[PartySubType_Id] [int] NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[Notes] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[SitsOppositeSideToParty] [bit] NOT NULL,
 CONSTRAINT [PK_MemberParties] PRIMARY KEY CLUSTERED 
(
	[MemberParty_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberPhotoContent]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberPhotoContent](
	[MemberPhotoContent_Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberPhoto_Id] [int] NOT NULL,
	[Photo] [varbinary](max) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[PhotoMIMEType] [nvarchar](255) NULL,
	[PhotoFileName] [nvarchar](255) NULL,
 CONSTRAINT [PK_MemberPhotoContent] PRIMARY KEY CLUSTERED 
(
	[MemberPhotoContent_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberPhotoOutputs]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberPhotoOutputs](
	[MemberPhotoOutput_Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberPhoto_Id] [int] NOT NULL,
	[PhotoOutput_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberPhotoOutputs] PRIMARY KEY CLUSTERED 
(
	[MemberPhotoOutput_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberPhotos]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberPhotos](
	[MemberPhoto_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[PhotoSource] [nvarchar](255) NULL,
	[Copyright] [nvarchar](255) NULL,
	[Attribution] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[IsDefault] [bit] NOT NULL,
	[IsHiRes] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[PublishExternally] [bit] NOT NULL,
 CONSTRAINT [PK_MemberPhotos] PRIMARY KEY CLUSTERED 
(
	[MemberPhoto_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberPreferredNameHonouraryPrefixes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberPreferredNameHonouraryPrefixes](
	[MemberPreferredNameHonouraryPrefix_Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberPreferredName_Id] [int] NOT NULL,
	[HonouraryPrefix_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_CommonsPreferredNameHonouraryPrefixes] PRIMARY KEY CLUSTERED 
(
	[MemberPreferredNameHonouraryPrefix_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberPreferredNames]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberPreferredNames](
	[MemberPreferredName_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Title_Id] [int] NULL,
	[Forename] [nvarchar](255) NULL,
	[MiddleNames] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[Suffix] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[AddressAs] [nvarchar](500) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[NameDisplayAs] [nvarchar](4000) NULL,
	[NameListAs] [nvarchar](4000) NULL,
	[NameFullTitle] [nvarchar](4000) NULL,
 CONSTRAINT [PK_CommonsPreferredNames] PRIMARY KEY CLUSTERED 
(
	[MemberPreferredName_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberReferences]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberReferences](
	[MemberReference_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[ReferenceType_Id] [int] NOT NULL,
	[Reference] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberReferences] PRIMARY KEY CLUSTERED 
(
	[MemberReference_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Members]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[Member_Id] [int] IDENTITY(1,1) NOT NULL,
	[Forename] [nvarchar](255) NOT NULL,
	[MiddleNames] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NOT NULL,
	[DateOfBirth] [date] NULL,
	[DateOfRetirement] [date] NULL,
	[DateOfDeath] [date] NULL,
	[TownOfBirth] [nvarchar](255) NULL,
	[BirthCountry_Id] [int] NULL,
	[Gender] [char](1) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[LockedBy] [nvarchar](255) NULL,
	[LockedWhen] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[NameDisplayAs] [nvarchar](4000) NULL,
	[NameListAs] [nvarchar](4000) NULL,
	[NameFullTitle] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberStaff]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberStaff](
	[MemberStaff_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Title_Id] [int] NULL,
	[Forename] [nvarchar](255) NULL,
	[Middlenames] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[AddedWhen] [datetime] NOT NULL,
	[RemovedWhen] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberStaff] PRIMARY KEY CLUSTERED 
(
	[MemberStaff_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberStatuses]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberStatuses](
	[MemberStatus_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Status_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_MemberExclusions] PRIMARY KEY CLUSTERED 
(
	[MemberStatus_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberSuspensions]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberSuspensions](
	[MemberSuspension_Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberStatus_Id] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Sitting] [bit] NOT NULL,
	[ReasonUrl] [nvarchar](255) NULL,
	[Reason] [nvarchar](max) NULL,
	[HansardUrl] [nvarchar](255) NULL,
	[Hansard] [nvarchar](255) NULL,
	[SittingDays] [int] NOT NULL,
	[CalendarDays] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK__MemberSu__3F9406AF54CB950F] PRIMARY KEY CLUSTERED 
(
	[MemberSuspension_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OppositionPostDepartments]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OppositionPostDepartments](
	[OppositionPostDepartment_Id] [int] IDENTITY(1,1) NOT NULL,
	[OppositionPost_Id] [int] NOT NULL,
	[Department_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_OppositionPostDepartments] PRIMARY KEY CLUSTERED 
(
	[OppositionPostDepartment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OppositionPosts]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OppositionPosts](
	[OppositionPost_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CabinetRank] [int] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[Promoted] [bit] NOT NULL,
	[Cabinet_Id] [int] NULL,
	[OppositionRank_Id] [int] NULL,
	[HansardName] [nvarchar](max) NULL,
	[CapitaliseForYellowList] [bit] NOT NULL,
	[YellowListName] [nvarchar](255) NULL,
 CONSTRAINT [PK_OppositionPosts] PRIMARY KEY CLUSTERED 
(
	[OppositionPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OppositionRanks]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OppositionRanks](
	[OppositionRank_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[MinisterialRank] [int] NULL,
	[StatsRank] [nvarchar](255) NULL,
	[ClerksRank] [nvarchar](255) NULL,
	[OrderRank] [int] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OppositionRank_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OtherParliaments]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherParliaments](
	[OtherParliament_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[ParliamentType_Id] [int] NULL,
	[Notes] [nvarchar](max) NULL,
	[Country_Id] [int] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_OtherParliaments] PRIMARY KEY CLUSTERED 
(
	[OtherParliament_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ParliamentaryPosts]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParliamentaryPosts](
	[ParliamentaryPost_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[ParliamentaryRank_Id] [int] NULL,
	[ExcludeFromCount] [bit] NOT NULL,
	[Promoted] [bit] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[IsCommons] [bit] NOT NULL,
	[IsLords] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[HansardName] [nvarchar](max) NULL,
	[IsLayingMinister] [bit] NOT NULL,
	[CapitaliseForYellowList] [bit] NOT NULL,
	[YellowListName] [nvarchar](255) NULL,
 CONSTRAINT [PK_ParliamentaryPosts] PRIMARY KEY CLUSTERED 
(
	[ParliamentaryPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ParliamentaryRanks]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParliamentaryRanks](
	[ParliamentaryRank_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsPromoted] [bit] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ParliamentaryRank_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ParliamentTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParliamentTypes](
	[ParliamentType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_ParliamentTypes] PRIMARY KEY CLUSTERED 
(
	[ParliamentType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parties]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parties](
	[Party_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Abbreviation] [nvarchar](50) NULL,
	[Initials] [nvarchar](50) NULL,
	[Colour] [nvarchar](10) NULL,
	[TextColour] [nvarchar](10) NULL,
	[LowResLogo] [varbinary](max) NULL,
	[HighResLogo] [varbinary](max) NULL,
	[IsCommons] [bit] NOT NULL,
	[IsLords] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[OldDISId] [int] NULL,
	[HoLMainParty] [bit] NOT NULL,
	[HoLOrder] [int] NULL,
	[HighResMIMEType] [varchar](255) NULL,
	[LowResMIMEType] [varchar](255) NULL,
	[HoL_IsSpiritualSide] [bit] NOT NULL,
 CONSTRAINT [PK_Parties] PRIMARY KEY CLUSTERED 
(
	[Party_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PartySubTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartySubTypes](
	[PartySubType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Party_Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_PartySubTypes] PRIMARY KEY CLUSTERED 
(
	[PartySubType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhotoOutputs]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoOutputs](
	[PhotoOutput_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_PhotoOutputs] PRIMARY KEY CLUSTERED 
(
	[PhotoOutput_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReferenceTypes]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenceTypes](
	[ReferenceType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_ReferenceTypes] PRIMARY KEY CLUSTERED 
(
	[ReferenceType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sections]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sections](
	[Section_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_Sections] PRIMARY KEY CLUSTERED 
(
	[Section_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[IsSuspension] [bit] NOT NULL,
	[IsLeave] [bit] NOT NULL,
	[IsDisqualification] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[ChangePartyTo_Id] [int] NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[Subscription_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Frequency] [char](1) NOT NULL,
	[Day] [smallint] NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](512) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Subscriptions] PRIMARY KEY CLUSTERED 
(
	[Subscription_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubscriptionTabList]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriptionTabList](
	[SubscriptionTabList_Id] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[IsCommons] [bit] NOT NULL,
	[IsLords] [bit] NOT NULL,
 CONSTRAINT [PK_SubscriptionTabList] PRIMARY KEY CLUSTERED 
(
	[SubscriptionTabList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubscriptionTabs]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriptionTabs](
	[SubscriptionTab_Id] [int] IDENTITY(1,1) NOT NULL,
	[Subscription_Id] [int] NOT NULL,
	[SubscriptionTabList_Id] [int] NOT NULL,
	[IsCommons] [bit] NOT NULL,
	[IsLords] [bit] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_SubscriptionTabs] PRIMARY KEY CLUSTERED 
(
	[SubscriptionTab_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Titles]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Titles](
	[Title_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_Titles] PRIMARY KEY CLUSTERED 
(
	[Title_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[UserLogin_Id] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](255) NOT NULL,
	[UserRole_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[UserLogin_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPermissions]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPermissions](
	[UserPermission_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_UserPermissions] PRIMARY KEY CLUSTERED 
(
	[UserPermission_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRolePermissions]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRolePermissions](
	[UserRolePermission_Id] [int] IDENTITY(1,1) NOT NULL,
	[UserRole_Id] [int] NOT NULL,
	[UserPermission_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_UserRolePermissions] PRIMARY KEY CLUSTERED 
(
	[UserRolePermission_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserRole_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserRole_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoleSections]    Script Date: 02/09/2016 16:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleSections](
	[UserRoleSection_Id] [int] IDENTITY(1,1) NOT NULL,
	[UserRole_Id] [int] NOT NULL,
	[Section_Id] [int] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedWhen] [datetime] NULL,
 CONSTRAINT [PK_UserRoleSections] PRIMARY KEY CLUSTERED 
(
	[UserRoleSection_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AddressTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_AddressTypes_Name] ON [dbo].[AddressTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UI_AnsweringBodies_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UI_AnsweringBodies_Name] ON [dbo].[AnsweringBodies]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Areas_AreaType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Areas_AreaType_Id] ON [dbo].[Areas]
(
	[AreaType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Areas_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Areas_Name] ON [dbo].[Areas]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AreaTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_AreaTypes_Name] ON [dbo].[AreaTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_BiographyCategories_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_BiographyCategories_Name] ON [dbo].[BiographyCategories]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Cabinets_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Cabinets_Name] ON [dbo].[Cabinets]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommitteeClerks_Committee_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_CommitteeClerks_Committee_Id] ON [dbo].[CommitteeClerks]
(
	[Committee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommitteeClerks_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_CommitteeClerks_Dates] ON [dbo].[CommitteeClerks]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CommitteeClerks_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_CommitteeClerks_Name] ON [dbo].[CommitteeClerks]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Committees_CommitteeType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Committees_CommitteeType_Id] ON [dbo].[Committees]
(
	[CommitteeType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Committees_CommitteeTypeId]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Committees_CommitteeTypeId] ON [dbo].[Committees]
(
	[CommitteeType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Committees_CreatedFromCommittee_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Committees_CreatedFromCommittee_Id] ON [dbo].[Committees]
(
	[CreatedFromCommittee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Committees_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Committees_Dates] ON [dbo].[Committees]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Committees_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Committees_Name] ON [dbo].[Committees]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Committees_ParentCommittee_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Committees_ParentCommittee_Id] ON [dbo].[Committees]
(
	[ParentCommittee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CommitteeTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_CommitteeTypes_Name] ON [dbo].[CommitteeTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Constituencies_ConstituencyType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Constituencies_ConstituencyType_Id] ON [dbo].[Constituencies]
(
	[ConstituencyType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Constituencies_CreatedFromConstituency_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Constituencies_CreatedFromConstituency_Id] ON [dbo].[Constituencies]
(
	[CreatedFromConstituency_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Constituencies_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Constituencies_Dates] ON [dbo].[Constituencies]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Constituencies_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Constituencies_Name] ON [dbo].[Constituencies]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Constituencies_ONSCode]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Constituencies_ONSCode] ON [dbo].[Constituencies]
(
	[ONSCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConstituencyAreas_Area_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ConstituencyAreas_Area_Id] ON [dbo].[ConstituencyAreas]
(
	[Area_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConstituencyAreas_Constituency_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ConstituencyAreas_Constituency_Id] ON [dbo].[ConstituencyAreas]
(
	[Constituency_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConstituencyAreas_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ConstituencyAreas_Dates] ON [dbo].[ConstituencyAreas]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConstituencyCandidates_ConstituencyResult_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ConstituencyCandidates_ConstituencyResult_Id] ON [dbo].[ConstituencyCandidates]
(
	[ConstituencyResult_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConstituencyCandidates_ConstituencyResults]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ConstituencyCandidates_ConstituencyResults] ON [dbo].[ConstituencyCandidates]
(
	[ConstituencyResult_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConstituencyCandidates_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ConstituencyCandidates_Member_Id] ON [dbo].[ConstituencyCandidates]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConstituencyCandidates_Party_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ConstituencyCandidates_Party_Id] ON [dbo].[ConstituencyCandidates]
(
	[Party_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConstituencyResults_Constituency_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ConstituencyResults_Constituency_Id] ON [dbo].[ConstituencyResults]
(
	[Constituency_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConstituencyResults_ConstituencyElection]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ConstituencyResults_ConstituencyElection] ON [dbo].[ConstituencyResults]
(
	[Constituency_Id] ASC,
	[Election_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConstituencyResults_Election_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ConstituencyResults_Election_Id] ON [dbo].[ConstituencyResults]
(
	[Election_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ConstituencyTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ConstituencyTypes_Name] ON [dbo].[ConstituencyTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Countries_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Countries_Name] ON [dbo].[Countries]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Departments_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Departments_Dates] ON [dbo].[Departments]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Departments_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Departments_Name] ON [dbo].[Departments]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_DisqualificationTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_DisqualificationTypes_Name] ON [dbo].[DisqualificationTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Elections_ElectionType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Elections_ElectionType_Id] ON [dbo].[Elections]
(
	[ElectionType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Elections_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Elections_Name] ON [dbo].[Elections]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ElectionTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ElectionTypes_Name] ON [dbo].[ElectionTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_EndReasons_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_EndReasons_Name] ON [dbo].[EndReasons]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_EntryTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_EntryTypes_Name] ON [dbo].[EntryTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ExperienceTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ExperienceTypes_Name] ON [dbo].[ExperienceTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GovernmentPostDepartments_Department_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_GovernmentPostDepartments_Department_Id] ON [dbo].[GovernmentPostDepartments]
(
	[Department_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GovernmentPostDepartments_GovernmentPost_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_GovernmentPostDepartments_GovernmentPost_Id] ON [dbo].[GovernmentPostDepartments]
(
	[GovernmentPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GovernmentPosts_Cabinet_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_GovernmentPosts_Cabinet_Id] ON [dbo].[GovernmentPosts]
(
	[Cabinet_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GovernmentPosts_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_GovernmentPosts_Dates] ON [dbo].[GovernmentPosts]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GovernmentPosts_GovernmentRank_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_GovernmentPosts_GovernmentRank_Id] ON [dbo].[GovernmentPosts]
(
	[GovernmentRank_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_GovernmentPosts_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_GovernmentPosts_Name] ON [dbo].[GovernmentPosts]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_GovernmentRanks_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_GovernmentRanks_Name] ON [dbo].[GovernmentRanks]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HonouraryPrefixes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_HonouraryPrefixes_Name] ON [dbo].[HonouraryPrefixes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UI_HonouraryPrefixExcludeTitles_PrefixTitle]    Script Date: 02/09/2016 16:47:03 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UI_HonouraryPrefixExcludeTitles_PrefixTitle] ON [dbo].[HonouraryPrefixExcludeTitles]
(
	[HonouraryPrefix_Id] ASC,
	[Title_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HonourLists_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_HonourLists_Name] ON [dbo].[HonourLists]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Honours_HonourType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Honours_HonourType_Id] ON [dbo].[Honours]
(
	[HonourType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Honours_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Honours_Name] ON [dbo].[Honours]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HonourTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_HonourTypes_Name] ON [dbo].[HonourTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Houses_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Houses_Name] ON [dbo].[Houses]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InterestCategories_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_InterestCategories_Dates] ON [dbo].[InterestCategories]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_InterestCategories_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_InterestCategories_Name] ON [dbo].[InterestCategories]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LordsMembershipTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_LordsMembershipTypes_Name] ON [dbo].[LordsMembershipTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LordsRanks_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_LordsRanks_Name] ON [dbo].[LordsRanks]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberAddresses_AddressType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberAddresses_AddressType_Id] ON [dbo].[MemberAddresses]
(
	[AddressType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberAddresses_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberAddresses_Member_Id] ON [dbo].[MemberAddresses]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberBiographies_BiographyCategory_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberBiographies_BiographyCategory_Id] ON [dbo].[MemberBiographies]
(
	[BiographyCategory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberBiographies_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberBiographies_Member_Id] ON [dbo].[MemberBiographies]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberCommitteeChairs_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberCommitteeChairs_Dates] ON [dbo].[MemberCommitteeChairs]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberCommitteeChairs_MemberCommittee_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberCommitteeChairs_MemberCommittee_Id] ON [dbo].[MemberCommitteeChairs]
(
	[MemberCommittee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberCommittees_Committee_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberCommittees_Committee_Id] ON [dbo].[MemberCommittees]
(
	[Committee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberCommittees_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberCommittees_Dates] ON [dbo].[MemberCommittees]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberCommittees_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberCommittees_Member_Id] ON [dbo].[MemberCommittees]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberConstituencies_Constituency_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberConstituencies_Constituency_Id] ON [dbo].[MemberConstituencies]
(
	[Constituency_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberConstituencies_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberConstituencies_Dates] ON [dbo].[MemberConstituencies]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberConstituencies_Election_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberConstituencies_Election_Id] ON [dbo].[MemberConstituencies]
(
	[Election_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberConstituencies_EndType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberConstituencies_EndType_Id] ON [dbo].[MemberConstituencies]
(
	[EndType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberConstituencies_EntryType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberConstituencies_EntryType_Id] ON [dbo].[MemberConstituencies]
(
	[EntryType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberConstituencies_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberConstituencies_Member_Id] ON [dbo].[MemberConstituencies]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberConstituencies_Title_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberConstituencies_Title_Id] ON [dbo].[MemberConstituencies]
(
	[Title_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberDisqualifications_DisqualificationType]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberDisqualifications_DisqualificationType] ON [dbo].[MemberDisqualifications]
(
	[DisqualificationType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberDisqualifications_DisqualificationType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberDisqualifications_DisqualificationType_Id] ON [dbo].[MemberDisqualifications]
(
	[DisqualificationType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberDisqualifications_MemberExclusion_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberDisqualifications_MemberExclusion_Id] ON [dbo].[MemberDisqualifications]
(
	[MemberStatus_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberDisqualifications_MemberStatus_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberDisqualifications_MemberStatus_Id] ON [dbo].[MemberDisqualifications]
(
	[MemberStatus_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberElectionsContested_Constituency_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberElectionsContested_Constituency_Id] ON [dbo].[MemberElectionsContested]
(
	[Constituency_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberElectionsContested_Election_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberElectionsContested_Election_Id] ON [dbo].[MemberElectionsContested]
(
	[Election_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberElectionsContested_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberElectionsContested_Member_Id] ON [dbo].[MemberElectionsContested]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberExperiences_Experience_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberExperiences_Experience_Id] ON [dbo].[MemberExperiences]
(
	[Experience_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberExperiences_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberExperiences_Member_Id] ON [dbo].[MemberExperiences]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberGovernmentPosts_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberGovernmentPosts_Dates] ON [dbo].[MemberGovernmentPosts]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberGovernmentPosts_GovernmentPost_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberGovernmentPosts_GovernmentPost_Id] ON [dbo].[MemberGovernmentPosts]
(
	[GovernmentPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberGovernmentPosts_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberGovernmentPosts_Member_Id] ON [dbo].[MemberGovernmentPosts]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberHonours_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberHonours_Dates] ON [dbo].[MemberHonours]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberHonours_Honour_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberHonours_Honour_Id] ON [dbo].[MemberHonours]
(
	[Honour_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberHonours_HonourList_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberHonours_HonourList_Id] ON [dbo].[MemberHonours]
(
	[HonourList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberHonours_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberHonours_Member_Id] ON [dbo].[MemberHonours]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberHouseMemberships_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberHouseMemberships_Dates] ON [dbo].[MemberHouseMemberships]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberHouseMemberships_EndReason_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberHouseMemberships_EndReason_Id] ON [dbo].[MemberHouseMemberships]
(
	[EndReason_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberHouseMemberships_House_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberHouseMemberships_House_Id] ON [dbo].[MemberHouseMemberships]
(
	[House_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberHouseMemberships_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberHouseMemberships_Member_Id] ON [dbo].[MemberHouseMemberships]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberInterests_InterestCategory_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberInterests_InterestCategory_Id] ON [dbo].[MemberInterests]
(
	[InterestCategory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberInterests_InterestDeleted]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberInterests_InterestDeleted] ON [dbo].[MemberInterests]
(
	[InterestDeleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberInterests_LastAmendment]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberInterests_LastAmendment] ON [dbo].[MemberInterests]
(
	[LastAmendment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberInterests_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberInterests_Member_Id] ON [dbo].[MemberInterests]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberInterestsPending_InterestCategory_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberInterestsPending_InterestCategory_Id] ON [dbo].[MemberInterestsPending]
(
	[InterestCategory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberInterestsPending_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberInterestsPending_Member_Id] ON [dbo].[MemberInterestsPending]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberKnownAs_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberKnownAs_Dates] ON [dbo].[MemberKnownAs]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberKnownAs_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberKnownAs_Member_Id] ON [dbo].[MemberKnownAs]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberLeaveOfAbsence_MemberExclusion_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberLeaveOfAbsence_MemberExclusion_Id] ON [dbo].[MemberLeaveOfAbsence]
(
	[MemberStatus_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberLeaveOfAbsence_MemberStatus_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberLeaveOfAbsence_MemberStatus_Id] ON [dbo].[MemberLeaveOfAbsence]
(
	[MemberStatus_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberLordsMembershipTypes_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberLordsMembershipTypes_Dates] ON [dbo].[MemberLordsMembershipTypes]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberLordsMembershipTypes_LordsMembershipType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberLordsMembershipTypes_LordsMembershipType_Id] ON [dbo].[MemberLordsMembershipTypes]
(
	[LordsMembershipType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberLordsMembershipTypes_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberLordsMembershipTypes_Member_Id] ON [dbo].[MemberLordsMembershipTypes]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberLordsPreferredNames_LordsRank_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberLordsPreferredNames_LordsRank_Id] ON [dbo].[MemberLordsPreferredNames]
(
	[LordsRank_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberLordsPreferredNames_LordsTitle_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberLordsPreferredNames_LordsTitle_Id] ON [dbo].[MemberLordsPreferredNames]
(
	[LordsRank_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberLordsPreferredNames_MemberPreferredName_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberLordsPreferredNames_MemberPreferredName_Id] ON [dbo].[MemberLordsPreferredNames]
(
	[MemberPreferredName_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberMaidenSpeeches_House_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberMaidenSpeeches_House_Id] ON [dbo].[MemberMaidenSpeeches]
(
	[House_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberMaidenSpeeches_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberMaidenSpeeches_Member_Id] ON [dbo].[MemberMaidenSpeeches]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberOaths_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberOaths_Member_Id] ON [dbo].[MemberOaths]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberObituaries_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberObituaries_Member_Id] ON [dbo].[MemberObituaries]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberOppositionPosts_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberOppositionPosts_Dates] ON [dbo].[MemberOppositionPosts]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberOppositionPosts_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberOppositionPosts_Member_Id] ON [dbo].[MemberOppositionPosts]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberOppositionPosts_OppositionPost_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberOppositionPosts_OppositionPost_Id] ON [dbo].[MemberOppositionPosts]
(
	[OppositionPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberOtherParliaments_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberOtherParliaments_Dates] ON [dbo].[MemberOtherParliaments]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberOtherParliaments_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberOtherParliaments_Member_Id] ON [dbo].[MemberOtherParliaments]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberOtherParliaments_OtherParliament_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberOtherParliaments_OtherParliament_Id] ON [dbo].[MemberOtherParliaments]
(
	[OtherParliament_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberParliamentaryPosts_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberParliamentaryPosts_Dates] ON [dbo].[MemberParliamentaryPosts]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberParliamentaryPosts_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberParliamentaryPosts_Member_Id] ON [dbo].[MemberParliamentaryPosts]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberParliamentaryPosts_ParliamentaryPost_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberParliamentaryPosts_ParliamentaryPost_Id] ON [dbo].[MemberParliamentaryPosts]
(
	[ParliamentaryPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberParties_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberParties_Dates] ON [dbo].[MemberParties]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberParties_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberParties_Member_Id] ON [dbo].[MemberParties]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberParties_Party_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberParties_Party_Id] ON [dbo].[MemberParties]
(
	[Party_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberParties_PartySubType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberParties_PartySubType_Id] ON [dbo].[MemberParties]
(
	[PartySubType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberPhotoContent_MemberPhoto_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberPhotoContent_MemberPhoto_Id] ON [dbo].[MemberPhotoContent]
(
	[MemberPhoto_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberPhotoOutputs_MemberPhoto_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberPhotoOutputs_MemberPhoto_Id] ON [dbo].[MemberPhotoOutputs]
(
	[MemberPhoto_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberPhotoOutputs_PhotoOutput_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberPhotoOutputs_PhotoOutput_Id] ON [dbo].[MemberPhotoOutputs]
(
	[PhotoOutput_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberPhotos_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberPhotos_Member_Id] ON [dbo].[MemberPhotos]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MemberPhotos_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberPhotos_Name] ON [dbo].[MemberPhotos]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberPreferredNameHonouraryPrefixes_HonouraryPrefix_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberPreferredNameHonouraryPrefixes_HonouraryPrefix_Id] ON [dbo].[MemberPreferredNameHonouraryPrefixes]
(
	[HonouraryPrefix_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberPreferredNameHonouraryPrefixes_MemberPreferredName_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberPreferredNameHonouraryPrefixes_MemberPreferredName_Id] ON [dbo].[MemberPreferredNameHonouraryPrefixes]
(
	[MemberPreferredName_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberPreferredNames_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberPreferredNames_Dates] ON [dbo].[MemberPreferredNames]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberPreferredNames_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberPreferredNames_Member_Id] ON [dbo].[MemberPreferredNames]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberPreferredNames_Title_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberPreferredNames_Title_Id] ON [dbo].[MemberPreferredNames]
(
	[Title_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberReferences_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberReferences_Member_Id] ON [dbo].[MemberReferences]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberReferences_ReferenceType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberReferences_ReferenceType_Id] ON [dbo].[MemberReferences]
(
	[ReferenceType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Members_BirthCountry_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Members_BirthCountry_Id] ON [dbo].[Members]
(
	[BirthCountry_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Members_Surname]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Members_Surname] ON [dbo].[Members]
(
	[Surname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberStaff_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberStaff_Member_Id] ON [dbo].[MemberStaff]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberStaff_Title_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberStaff_Title_Id] ON [dbo].[MemberStaff]
(
	[Title_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberStatuses_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberStatuses_Dates] ON [dbo].[MemberStatuses]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberStatuses_Member_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberStatuses_Member_Id] ON [dbo].[MemberStatuses]
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberStatuses_Status_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberStatuses_Status_Id] ON [dbo].[MemberStatuses]
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberSuspensions_MemberExclusion_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberSuspensions_MemberExclusion_Id] ON [dbo].[MemberSuspensions]
(
	[MemberStatus_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberSuspensions_MemberStatus_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_MemberSuspensions_MemberStatus_Id] ON [dbo].[MemberSuspensions]
(
	[MemberStatus_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OppositionPostDepartments_Department_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_OppositionPostDepartments_Department_Id] ON [dbo].[OppositionPostDepartments]
(
	[Department_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OppositionPostDepartments_OppositionPost_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_OppositionPostDepartments_OppositionPost_Id] ON [dbo].[OppositionPostDepartments]
(
	[OppositionPost_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OppositionPosts_Cabinet_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_OppositionPosts_Cabinet_Id] ON [dbo].[OppositionPosts]
(
	[Cabinet_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OppositionPosts_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_OppositionPosts_Dates] ON [dbo].[OppositionPosts]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_OppositionPosts_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_OppositionPosts_Name] ON [dbo].[OppositionPosts]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OppositionPosts_OppositionRank_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_OppositionPosts_OppositionRank_Id] ON [dbo].[OppositionPosts]
(
	[OppositionRank_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_OppositionRanks_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_OppositionRanks_Name] ON [dbo].[OppositionRanks]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OtherParliaments_Country_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_OtherParliaments_Country_Id] ON [dbo].[OtherParliaments]
(
	[Country_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_OtherParliaments_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_OtherParliaments_Name] ON [dbo].[OtherParliaments]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OtherParliaments_ParliamentType_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_OtherParliaments_ParliamentType_Id] ON [dbo].[OtherParliaments]
(
	[ParliamentType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParliamentaryPosts_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ParliamentaryPosts_Dates] ON [dbo].[ParliamentaryPosts]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ParliamentaryPosts_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ParliamentaryPosts_Name] ON [dbo].[ParliamentaryPosts]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParliamentaryPosts_ParliamentaryRank_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ParliamentaryPosts_ParliamentaryRank_Id] ON [dbo].[ParliamentaryPosts]
(
	[ParliamentaryRank_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ParliamentaryRanks_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ParliamentaryRanks_Name] ON [dbo].[ParliamentaryRanks]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ParliamentTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ParliamentTypes_Name] ON [dbo].[ParliamentTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Parties_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Parties_Name] ON [dbo].[Parties]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PartySubTypes_Dates]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_PartySubTypes_Dates] ON [dbo].[PartySubTypes]
(
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PartySubTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_PartySubTypes_Name] ON [dbo].[PartySubTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PartySubTypes_Party_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_PartySubTypes_Party_Id] ON [dbo].[PartySubTypes]
(
	[Party_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PhotoOutputs_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_PhotoOutputs_Name] ON [dbo].[PhotoOutputs]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ReferenceTypes_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_ReferenceTypes_Name] ON [dbo].[ReferenceTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Sections_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Sections_Name] ON [dbo].[Sections]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Statuses_ChangePartyTo_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Statuses_ChangePartyTo_Id] ON [dbo].[Statuses]
(
	[ChangePartyTo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Statuses_IsActive]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Statuses_IsActive] ON [dbo].[Statuses]
(
	[IsActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Statuses_IsDisqualification]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Statuses_IsDisqualification] ON [dbo].[Statuses]
(
	[IsDisqualification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Statuses_IsLeave]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Statuses_IsLeave] ON [dbo].[Statuses]
(
	[IsLeave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Statuses_IsSuspension]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Statuses_IsSuspension] ON [dbo].[Statuses]
(
	[IsSuspension] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Statuses_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Statuses_Name] ON [dbo].[Statuses]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Subscriptions_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Subscriptions_Name] ON [dbo].[Subscriptions]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SubscriptionTabList_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_SubscriptionTabList_Name] ON [dbo].[SubscriptionTabList]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubscriptionTabs_Subscription_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_SubscriptionTabs_Subscription_Id] ON [dbo].[SubscriptionTabs]
(
	[Subscription_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubscriptionTabs_SubscriptionTabList_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_SubscriptionTabs_SubscriptionTabList_Id] ON [dbo].[SubscriptionTabs]
(
	[SubscriptionTabList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Titles_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_Titles_Name] ON [dbo].[Titles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLogins_UserRole_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_UserLogins_UserRole_Id] ON [dbo].[UserLogins]
(
	[UserRole_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserPermissions_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_UserPermissions_Name] ON [dbo].[UserPermissions]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserRolePermissions_UserPermission_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_UserRolePermissions_UserPermission_Id] ON [dbo].[UserRolePermissions]
(
	[UserPermission_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserRolePermissions_UserRole_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_UserRolePermissions_UserRole_Id] ON [dbo].[UserRolePermissions]
(
	[UserRole_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserRoles_Name]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_UserRoles_Name] ON [dbo].[UserRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserRoleSections_Section_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_UserRoleSections_Section_Id] ON [dbo].[UserRoleSections]
(
	[Section_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserRoleSections_UserRole_Id]    Script Date: 02/09/2016 16:47:03 ******/
CREATE NONCLUSTERED INDEX [IX_UserRoleSections_UserRole_Id] ON [dbo].[UserRoleSections]
(
	[UserRole_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AddressTypes] ADD  CONSTRAINT [DF_Table_1_SimpleFormat]  DEFAULT ((0)) FOR [IsPhysicalAddress]
GO
ALTER TABLE [dbo].[BiographyCategories] ADD  CONSTRAINT [DF_BiographyCategories_SortOrder]  DEFAULT ((0)) FOR [SortOrder]
GO
ALTER TABLE [dbo].[BiographyCategories] ADD  CONSTRAINT [DF_BiographyCategories_IsCommons]  DEFAULT ((0)) FOR [IsCommons]
GO
ALTER TABLE [dbo].[BiographyCategories] ADD  CONSTRAINT [DF_BiographyCategories_IsLords]  DEFAULT ((0)) FOR [IsLords]
GO
ALTER TABLE [dbo].[Cabinets] ADD  DEFAULT ((1)) FOR [IsGovernment]
GO
ALTER TABLE [dbo].[Cabinets] ADD  DEFAULT ((1)) FOR [IsOpposition]
GO
ALTER TABLE [dbo].[Committees] ADD  DEFAULT ((0)) FOR [IsCommons]
GO
ALTER TABLE [dbo].[Committees] ADD  DEFAULT ((0)) FOR [IsLords]
GO
ALTER TABLE [dbo].[ConstituencyResults] ADD  DEFAULT ((0)) FOR [IsNotional]
GO
ALTER TABLE [dbo].[DbScripts] ADD  CONSTRAINT [DF_DbScripts_RanWhen]  DEFAULT (getdate()) FOR [RanWhen]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Dep_Minister]  DEFAULT ((0)) FOR [Minister]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Dep_Secretary]  DEFAULT ((0)) FOR [Secretary]
GO
ALTER TABLE [dbo].[EditMemberAddresses] ADD  CONSTRAINT [DF_EditMemberAddresses_IsPreferred]  DEFAULT ((0)) FOR [IsPreferred]
GO
ALTER TABLE [dbo].[EditMemberAddresses] ADD  CONSTRAINT [DF_EditMemberAddresses_IsWeb]  DEFAULT ((1)) FOR [IsWeb]
GO
ALTER TABLE [dbo].[EditMemberAddresses] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberBiographies] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberCommitteeChairs] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberCommittees] ADD  CONSTRAINT [DF_EditMemberCommittees_ExOfficio]  DEFAULT ((0)) FOR [ExOfficio]
GO
ALTER TABLE [dbo].[EditMemberCommittees] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberCommittees] ADD  DEFAULT ((0)) FOR [IsAlternate]
GO
ALTER TABLE [dbo].[EditMemberCommittees] ADD  DEFAULT ((0)) FOR [IsCoOpted]
GO
ALTER TABLE [dbo].[EditMemberConstituencies] ADD  CONSTRAINT [DF__EditMembe__IsNew__2E66C05C]  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberConstituencies] ADD  DEFAULT ((0)) FOR [IsStandingDown]
GO
ALTER TABLE [dbo].[EditMemberDisqualifications] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberElectionsContested] ADD  CONSTRAINT [DF__EditMembe__IsNew__304F08CE]  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberExperiences] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberGovernmentPosts] ADD  DEFAULT ((0)) FOR [IsUnpaid]
GO
ALTER TABLE [dbo].[EditMemberGovernmentPosts] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[EditMemberGovernmentPosts] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberHonours] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberHouseMemberships] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberInterests] ADD  CONSTRAINT [DF_EditMemberInterests_RegisteredLate]  DEFAULT ((0)) FOR [RegisteredLate]
GO
ALTER TABLE [dbo].[EditMemberInterests] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberInterests] ADD  DEFAULT ((0)) FOR [IsCorrection]
GO
ALTER TABLE [dbo].[EditMemberInterests] ADD  DEFAULT ((1)) FOR [ShowCreatedDate]
GO
ALTER TABLE [dbo].[EditMemberKnownAs] ADD  CONSTRAINT [DF_EditMemberKnownAs_UpdatedWhen]  DEFAULT (getdate()) FOR [UpdatedWhen]
GO
ALTER TABLE [dbo].[EditMemberKnownAs] ADD  CONSTRAINT [DF_EditMemberKnownAs_IsNewRow]  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberLeaveOfAbsence] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberLordsMembershipTypes] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberLordsPreferredNames] ADD  CONSTRAINT [DF_EditMemberLordsPreferredNames_UseOf]  DEFAULT ((0)) FOR [UseOf]
GO
ALTER TABLE [dbo].[EditMemberLordsPreferredNames] ADD  CONSTRAINT [DF_EditMemberLordsPreferredNames_UseThe]  DEFAULT ((0)) FOR [UseThe]
GO
ALTER TABLE [dbo].[EditMemberLordsPreferredNames] ADD  CONSTRAINT [DF_EditMemberLordsPreferredNames_IsPrimaryTitle]  DEFAULT ((0)) FOR [IsPrimaryTitle]
GO
ALTER TABLE [dbo].[EditMemberLordsPreferredNames] ADD  CONSTRAINT [DF_EditMemberLordsPreferredNames_IsKnownAd]  DEFAULT ((0)) FOR [IsKnownAs]
GO
ALTER TABLE [dbo].[EditMemberLordsPreferredNames] ADD  CONSTRAINT [DF_EditMemberLordsPreferredNames_IsByVirtue]  DEFAULT ((0)) FOR [IsByVirtue]
GO
ALTER TABLE [dbo].[EditMemberLordsPreferredNames] ADD  CONSTRAINT [DF_EditMemberLordsPreferredNames_IsOtherTitle]  DEFAULT ((0)) FOR [IsOtherTitle]
GO
ALTER TABLE [dbo].[EditMemberLordsPreferredNames] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberLordsPreferredNames] ADD  DEFAULT ((0)) FOR [IsWritAM]
GO
ALTER TABLE [dbo].[EditMemberMaidenSpeeches] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberOaths] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberObituaries] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberOppositionPosts] ADD  DEFAULT ((0)) FOR [IsUnpaid]
GO
ALTER TABLE [dbo].[EditMemberOppositionPosts] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[EditMemberOppositionPosts] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberOtherParliaments] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberParliamentaryPosts] ADD  CONSTRAINT [DF__EditMemberPar__IsUnp__5AD97420]  DEFAULT ((0)) FOR [IsUnpaid]
GO
ALTER TABLE [dbo].[EditMemberParliamentaryPosts] ADD  CONSTRAINT [DF__EditMemberPar__IsJoi__5BCD9859]  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[EditMemberParliamentaryPosts] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberParties] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberParties] ADD  DEFAULT ((0)) FOR [SitsOppositeSideToParty]
GO
ALTER TABLE [dbo].[EditMemberPhotoContent] ADD  CONSTRAINT [DF__EditMembe__IsNew__3F914C5E]  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberPhotoOutputs] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberPhotos] ADD  CONSTRAINT [DF_EditMemberPhotos_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[EditMemberPhotos] ADD  CONSTRAINT [DF_EditMemberPhotos_IsHiRes]  DEFAULT ((1)) FOR [IsHiRes]
GO
ALTER TABLE [dbo].[EditMemberPhotos] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberPreferredNameHonouraryPrefixes] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberPreferredNames] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberReferences] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMembers] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberStaff] ADD  CONSTRAINT [DF_EditMemberStaff_AddedWhen]  DEFAULT (getdate()) FOR [AddedWhen]
GO
ALTER TABLE [dbo].[EditMemberStaff] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberStatuses] ADD  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EditMemberSuspensions] ADD  CONSTRAINT [DF__EditMembe__IsNew__4826925F]  DEFAULT ((1)) FOR [IsNewRow]
GO
ALTER TABLE [dbo].[EndReasons] ADD  DEFAULT ((1)) FOR [EndDuringSession]
GO
ALTER TABLE [dbo].[EndReasons] ADD  CONSTRAINT [DF__EndReason__IsCom__0B287117]  DEFAULT ((1)) FOR [IsCommons]
GO
ALTER TABLE [dbo].[EndReasons] ADD  CONSTRAINT [DF__EndReason__IsLor__0C1C9550]  DEFAULT ((1)) FOR [IsLords]
GO
ALTER TABLE [dbo].[GovernmentPosts] ADD  CONSTRAINT [DF_GovernmentPosts_GovPost_Promoted]  DEFAULT ((0)) FOR [Promoted]
GO
ALTER TABLE [dbo].[GovernmentPosts] ADD  DEFAULT ((0)) FOR [IsLayingMinister]
GO
ALTER TABLE [dbo].[GovernmentPosts] ADD  DEFAULT ((0)) FOR [CapitaliseForYellowList]
GO
ALTER TABLE [dbo].[HonouraryPrefixes] ADD  CONSTRAINT [DF_HonouraryPrefixes_IsCommons]  DEFAULT ((0)) FOR [IsCommons]
GO
ALTER TABLE [dbo].[HonouraryPrefixes] ADD  CONSTRAINT [DF_HonouraryPrefixes_IsLords]  DEFAULT ((0)) FOR [IsLords]
GO
ALTER TABLE [dbo].[HonouraryPrefixes] ADD  DEFAULT ((0)) FOR [PrefixAsSuffix]
GO
ALTER TABLE [dbo].[Honours] ADD  CONSTRAINT [DF_Honours_Rank]  DEFAULT ((0)) FOR [Rank]
GO
ALTER TABLE [dbo].[Honours] ADD  CONSTRAINT [DF_Honours_IsPromoted]  DEFAULT ((0)) FOR [IsPromoted]
GO
ALTER TABLE [dbo].[InterestCategories] ADD  CONSTRAINT [DF_InterestCategories_SortOrder]  DEFAULT ((0)) FOR [SortOrder]
GO
ALTER TABLE [dbo].[InterestCategories] ADD  CONSTRAINT [DF_InterestCategories_IsCommons]  DEFAULT ((0)) FOR [IsCommons]
GO
ALTER TABLE [dbo].[InterestCategories] ADD  CONSTRAINT [DF_InterestCategories_IsLords]  DEFAULT ((0)) FOR [IsLords]
GO
ALTER TABLE [dbo].[InterestCategories] ADD  DEFAULT ((0)) FOR [CanHaveChildren]
GO
ALTER TABLE [dbo].[MemberAddresses] ADD  CONSTRAINT [DF_MemberAddresses_IsPreferred]  DEFAULT ((0)) FOR [IsPreferred]
GO
ALTER TABLE [dbo].[MemberAddresses] ADD  CONSTRAINT [DF_MemberAddresses_IsWeb]  DEFAULT ((1)) FOR [IsWeb]
GO
ALTER TABLE [dbo].[MemberCommittees] ADD  CONSTRAINT [DF_MemberCommittees_ExOfficio]  DEFAULT ((0)) FOR [ExOfficio]
GO
ALTER TABLE [dbo].[MemberCommittees] ADD  DEFAULT ((0)) FOR [IsAlternate]
GO
ALTER TABLE [dbo].[MemberCommittees] ADD  DEFAULT ((0)) FOR [IsCoOpted]
GO
ALTER TABLE [dbo].[MemberConstituencies] ADD  DEFAULT ((0)) FOR [IsStandingDown]
GO
ALTER TABLE [dbo].[MemberGovernmentPosts] ADD  DEFAULT ((0)) FOR [IsUnpaid]
GO
ALTER TABLE [dbo].[MemberGovernmentPosts] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[MemberInterests] ADD  CONSTRAINT [DF_MemberInterests_RegisteredLate]  DEFAULT ((0)) FOR [RegisteredLate]
GO
ALTER TABLE [dbo].[MemberInterests] ADD  DEFAULT ((0)) FOR [IsCorrection]
GO
ALTER TABLE [dbo].[MemberInterests] ADD  DEFAULT ((1)) FOR [ShowCreatedDate]
GO
ALTER TABLE [dbo].[MemberInterestsPending] ADD  DEFAULT ((1)) FOR [ShowCreatedDate]
GO
ALTER TABLE [dbo].[MemberKnownAs] ADD  CONSTRAINT [DF_MemberKnownAs_UpdatedWhen]  DEFAULT (getdate()) FOR [UpdatedWhen]
GO
ALTER TABLE [dbo].[MemberLordsPreferredNames] ADD  CONSTRAINT [DF_LordsPreferredNames_UseOf]  DEFAULT ((0)) FOR [UseOf]
GO
ALTER TABLE [dbo].[MemberLordsPreferredNames] ADD  CONSTRAINT [DF_LordsPreferredNames_UseThe]  DEFAULT ((0)) FOR [UseThe]
GO
ALTER TABLE [dbo].[MemberLordsPreferredNames] ADD  CONSTRAINT [DF_LordsPreferredNames_IsPrimaryTitle]  DEFAULT ((0)) FOR [IsPrimaryTitle]
GO
ALTER TABLE [dbo].[MemberLordsPreferredNames] ADD  CONSTRAINT [DF_Table_1_IsKnownAd]  DEFAULT ((0)) FOR [IsKnownAs]
GO
ALTER TABLE [dbo].[MemberLordsPreferredNames] ADD  CONSTRAINT [DF_LordsPreferredNames_IsByVirtue]  DEFAULT ((0)) FOR [IsByVirtue]
GO
ALTER TABLE [dbo].[MemberLordsPreferredNames] ADD  CONSTRAINT [DF_LordsPreferredNames_IsOtherTitle]  DEFAULT ((0)) FOR [IsOtherTitle]
GO
ALTER TABLE [dbo].[MemberLordsPreferredNames] ADD  DEFAULT ((0)) FOR [IsWritAM]
GO
ALTER TABLE [dbo].[MemberOppositionPosts] ADD  DEFAULT ((0)) FOR [IsUnpaid]
GO
ALTER TABLE [dbo].[MemberOppositionPosts] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[MemberParliamentaryPosts] ADD  CONSTRAINT [DF__MemberPar__IsUnp__5AD97420]  DEFAULT ((0)) FOR [IsUnpaid]
GO
ALTER TABLE [dbo].[MemberParliamentaryPosts] ADD  CONSTRAINT [DF__MemberPar__IsJoi__5BCD9859]  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[MemberParties] ADD  DEFAULT ((0)) FOR [SitsOppositeSideToParty]
GO
ALTER TABLE [dbo].[MemberPhotos] ADD  CONSTRAINT [DF_MemberPhotos_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[MemberPhotos] ADD  CONSTRAINT [DF_MemberPhotos_IsHiRes]  DEFAULT ((1)) FOR [IsHiRes]
GO
ALTER TABLE [dbo].[MemberStaff] ADD  CONSTRAINT [DF_MemberStaff_AddedWhen]  DEFAULT (getdate()) FOR [AddedWhen]
GO
ALTER TABLE [dbo].[OppositionPosts] ADD  DEFAULT ((0)) FOR [Promoted]
GO
ALTER TABLE [dbo].[OppositionPosts] ADD  DEFAULT ((0)) FOR [CapitaliseForYellowList]
GO
ALTER TABLE [dbo].[ParliamentaryPosts] ADD  CONSTRAINT [DF_ParliamentaryPosts_ParlPost_ExcludeFromCount]  DEFAULT ((0)) FOR [ExcludeFromCount]
GO
ALTER TABLE [dbo].[ParliamentaryPosts] ADD  CONSTRAINT [DF_ParliamentaryPosts_ParlPost_Promoted]  DEFAULT ((0)) FOR [Promoted]
GO
ALTER TABLE [dbo].[ParliamentaryPosts] ADD  CONSTRAINT [DF_ParliamentaryPosts_IsCommons]  DEFAULT ((0)) FOR [IsCommons]
GO
ALTER TABLE [dbo].[ParliamentaryPosts] ADD  CONSTRAINT [DF_ParliamentaryPosts_IsLords]  DEFAULT ((0)) FOR [IsLords]
GO
ALTER TABLE [dbo].[ParliamentaryPosts] ADD  DEFAULT ((0)) FOR [IsLayingMinister]
GO
ALTER TABLE [dbo].[ParliamentaryPosts] ADD  DEFAULT ((0)) FOR [CapitaliseForYellowList]
GO
ALTER TABLE [dbo].[Parties] ADD  CONSTRAINT [DF_Parties_IsCommons]  DEFAULT ((1)) FOR [IsCommons]
GO
ALTER TABLE [dbo].[Parties] ADD  CONSTRAINT [DF_Parties_IsLords]  DEFAULT ((1)) FOR [IsLords]
GO
ALTER TABLE [dbo].[Parties] ADD  DEFAULT ((1)) FOR [HoLMainParty]
GO
ALTER TABLE [dbo].[Parties] ADD  DEFAULT ((0)) FOR [HoL_IsSpiritualSide]
GO
ALTER TABLE [dbo].[Statuses] ADD  CONSTRAINT [DF_ExclusionTypes_IsSuspension]  DEFAULT ((0)) FOR [IsSuspension]
GO
ALTER TABLE [dbo].[Statuses] ADD  CONSTRAINT [DF_ExclusionTypes_IsLeave]  DEFAULT ((0)) FOR [IsLeave]
GO
ALTER TABLE [dbo].[Statuses] ADD  CONSTRAINT [DF_ExclusionTypes_IsDisqualification]  DEFAULT ((0)) FOR [IsDisqualification]
GO
ALTER TABLE [dbo].[Statuses] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AnsweringBodies]  WITH CHECK ADD  CONSTRAINT [FK_AnsweringBodies_Departments] FOREIGN KEY([Department_Id])
REFERENCES [dbo].[Departments] ([Department_Id])
GO
ALTER TABLE [dbo].[AnsweringBodies] CHECK CONSTRAINT [FK_AnsweringBodies_Departments]
GO
ALTER TABLE [dbo].[Areas]  WITH CHECK ADD  CONSTRAINT [FK_Areas_AreaTypes] FOREIGN KEY([AreaType_Id])
REFERENCES [dbo].[AreaTypes] ([AreaType_Id])
GO
ALTER TABLE [dbo].[Areas] CHECK CONSTRAINT [FK_Areas_AreaTypes]
GO
ALTER TABLE [dbo].[CommitteeClerks]  WITH CHECK ADD  CONSTRAINT [FK_CommitteeClerks_Committees] FOREIGN KEY([Committee_Id])
REFERENCES [dbo].[Committees] ([Committee_Id])
GO
ALTER TABLE [dbo].[CommitteeClerks] CHECK CONSTRAINT [FK_CommitteeClerks_Committees]
GO
ALTER TABLE [dbo].[CommitteeLayMembers]  WITH CHECK ADD  CONSTRAINT [FK_CommitteeLayMembers_Committees] FOREIGN KEY([Committee_Id])
REFERENCES [dbo].[Committees] ([Committee_Id])
GO
ALTER TABLE [dbo].[CommitteeLayMembers] CHECK CONSTRAINT [FK_CommitteeLayMembers_Committees]
GO
ALTER TABLE [dbo].[CommitteeLayMembers]  WITH CHECK ADD  CONSTRAINT [FK_CommitteeLayMembers_Titles] FOREIGN KEY([Title_Id])
REFERENCES [dbo].[Titles] ([Title_Id])
GO
ALTER TABLE [dbo].[CommitteeLayMembers] CHECK CONSTRAINT [FK_CommitteeLayMembers_Titles]
GO
ALTER TABLE [dbo].[Committees]  WITH CHECK ADD  CONSTRAINT [FK_Committees_Committees] FOREIGN KEY([ParentCommittee_Id])
REFERENCES [dbo].[Committees] ([Committee_Id])
GO
ALTER TABLE [dbo].[Committees] CHECK CONSTRAINT [FK_Committees_Committees]
GO
ALTER TABLE [dbo].[Committees]  WITH CHECK ADD  CONSTRAINT [FK_Committees_Committees1] FOREIGN KEY([CreatedFromCommittee_Id])
REFERENCES [dbo].[Committees] ([Committee_Id])
GO
ALTER TABLE [dbo].[Committees] CHECK CONSTRAINT [FK_Committees_Committees1]
GO
ALTER TABLE [dbo].[Committees]  WITH CHECK ADD  CONSTRAINT [FK_Committees_CommitteeTypes] FOREIGN KEY([CommitteeType_Id])
REFERENCES [dbo].[CommitteeTypes] ([CommitteeType_Id])
GO
ALTER TABLE [dbo].[Committees] CHECK CONSTRAINT [FK_Committees_CommitteeTypes]
GO
ALTER TABLE [dbo].[Constituencies]  WITH CHECK ADD  CONSTRAINT [FK_Constituencies_Constituencies] FOREIGN KEY([CreatedFromConstituency_Id])
REFERENCES [dbo].[Constituencies] ([Constituency_Id])
GO
ALTER TABLE [dbo].[Constituencies] CHECK CONSTRAINT [FK_Constituencies_Constituencies]
GO
ALTER TABLE [dbo].[Constituencies]  WITH CHECK ADD  CONSTRAINT [FK_Constituencies_ConstituencyTypes] FOREIGN KEY([ConstituencyType_Id])
REFERENCES [dbo].[ConstituencyTypes] ([ConstituencyType_Id])
GO
ALTER TABLE [dbo].[Constituencies] CHECK CONSTRAINT [FK_Constituencies_ConstituencyTypes]
GO
ALTER TABLE [dbo].[ConstituencyAreas]  WITH CHECK ADD  CONSTRAINT [FK_ConstituencyAreas_Areas] FOREIGN KEY([Area_Id])
REFERENCES [dbo].[Areas] ([Area_Id])
GO
ALTER TABLE [dbo].[ConstituencyAreas] CHECK CONSTRAINT [FK_ConstituencyAreas_Areas]
GO
ALTER TABLE [dbo].[ConstituencyAreas]  WITH CHECK ADD  CONSTRAINT [FK_ConstituencyAreas_Constituencies] FOREIGN KEY([Constituency_Id])
REFERENCES [dbo].[Constituencies] ([Constituency_Id])
GO
ALTER TABLE [dbo].[ConstituencyAreas] CHECK CONSTRAINT [FK_ConstituencyAreas_Constituencies]
GO
ALTER TABLE [dbo].[ConstituencyCandidates]  WITH CHECK ADD  CONSTRAINT [FK_ConstituencyCandidates_ConstituencyResults] FOREIGN KEY([ConstituencyResult_Id])
REFERENCES [dbo].[ConstituencyResults] ([ConstituencyResult_Id])
GO
ALTER TABLE [dbo].[ConstituencyCandidates] CHECK CONSTRAINT [FK_ConstituencyCandidates_ConstituencyResults]
GO
ALTER TABLE [dbo].[ConstituencyCandidates]  WITH NOCHECK ADD  CONSTRAINT [FK_ConstituencyCandidates_Members] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[ConstituencyCandidates] CHECK CONSTRAINT [FK_ConstituencyCandidates_Members]
GO
ALTER TABLE [dbo].[ConstituencyCandidates]  WITH NOCHECK ADD  CONSTRAINT [FK_ConstituencyCandidates_Parties] FOREIGN KEY([Party_Id])
REFERENCES [dbo].[Parties] ([Party_Id])
GO
ALTER TABLE [dbo].[ConstituencyCandidates] CHECK CONSTRAINT [FK_ConstituencyCandidates_Parties]
GO
ALTER TABLE [dbo].[ConstituencyResults]  WITH NOCHECK ADD  CONSTRAINT [FK_ConstituencyResults_Constituencies] FOREIGN KEY([Constituency_Id])
REFERENCES [dbo].[Constituencies] ([Constituency_Id])
GO
ALTER TABLE [dbo].[ConstituencyResults] CHECK CONSTRAINT [FK_ConstituencyResults_Constituencies]
GO
ALTER TABLE [dbo].[ConstituencyResults]  WITH NOCHECK ADD  CONSTRAINT [FK_ConstituencyResults_Elections] FOREIGN KEY([Election_Id])
REFERENCES [dbo].[Elections] ([Election_Id])
GO
ALTER TABLE [dbo].[ConstituencyResults] CHECK CONSTRAINT [FK_ConstituencyResults_Elections]
GO
ALTER TABLE [dbo].[EditMemberAddresses]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberAddresses_AddressTypes] FOREIGN KEY([AddressType_Id])
REFERENCES [dbo].[AddressTypes] ([AddressType_Id])
GO
ALTER TABLE [dbo].[EditMemberAddresses] CHECK CONSTRAINT [FK_EditMemberAddresses_AddressTypes]
GO
ALTER TABLE [dbo].[EditMemberAddresses]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberAddresses_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberAddresses] CHECK CONSTRAINT [FK_EditMemberAddresses_EditMember]
GO
ALTER TABLE [dbo].[EditMemberBiographies]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberBiographies_BiographyCategories] FOREIGN KEY([BiographyCategory_Id])
REFERENCES [dbo].[BiographyCategories] ([BiographyCategory_Id])
GO
ALTER TABLE [dbo].[EditMemberBiographies] CHECK CONSTRAINT [FK_EditMemberBiographies_BiographyCategories]
GO
ALTER TABLE [dbo].[EditMemberBiographies]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberBiographies_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberBiographies] CHECK CONSTRAINT [FK_EditMemberBiographies_EditMember]
GO
ALTER TABLE [dbo].[EditMemberCommitteeChairs]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberCommitteeChairs_EditMemberCommittees] FOREIGN KEY([EditMemberCommittee_Id])
REFERENCES [dbo].[EditMemberCommittees] ([EditMemberCommittee_Id])
GO
ALTER TABLE [dbo].[EditMemberCommitteeChairs] CHECK CONSTRAINT [FK_EditMemberCommitteeChairs_EditMemberCommittees]
GO
ALTER TABLE [dbo].[EditMemberCommittees]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberCommittees_Committees] FOREIGN KEY([Committee_Id])
REFERENCES [dbo].[Committees] ([Committee_Id])
GO
ALTER TABLE [dbo].[EditMemberCommittees] CHECK CONSTRAINT [FK_EditMemberCommittees_Committees]
GO
ALTER TABLE [dbo].[EditMemberCommittees]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberCommittees_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberCommittees] CHECK CONSTRAINT [FK_EditMemberCommittees_EditMember]
GO
ALTER TABLE [dbo].[EditMemberConstituencies]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberConstituencies_Constituencies] FOREIGN KEY([Constituency_Id])
REFERENCES [dbo].[Constituencies] ([Constituency_Id])
GO
ALTER TABLE [dbo].[EditMemberConstituencies] CHECK CONSTRAINT [FK_EditMemberConstituencies_Constituencies]
GO
ALTER TABLE [dbo].[EditMemberConstituencies]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberConstituencies_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberConstituencies] CHECK CONSTRAINT [FK_EditMemberConstituencies_EditMember]
GO
ALTER TABLE [dbo].[EditMemberConstituencies]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberConstituencies_Elections] FOREIGN KEY([Election_Id])
REFERENCES [dbo].[Elections] ([Election_Id])
GO
ALTER TABLE [dbo].[EditMemberConstituencies] CHECK CONSTRAINT [FK_EditMemberConstituencies_Elections]
GO
ALTER TABLE [dbo].[EditMemberConstituencies]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberConstituencies_EndReasons] FOREIGN KEY([EndType_Id])
REFERENCES [dbo].[EndReasons] ([EndReason_Id])
GO
ALTER TABLE [dbo].[EditMemberConstituencies] CHECK CONSTRAINT [FK_EditMemberConstituencies_EndReasons]
GO
ALTER TABLE [dbo].[EditMemberConstituencies]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberConstituencies_EntryTypes] FOREIGN KEY([EntryType_Id])
REFERENCES [dbo].[EntryTypes] ([EntryType_Id])
GO
ALTER TABLE [dbo].[EditMemberConstituencies] CHECK CONSTRAINT [FK_EditMemberConstituencies_EntryTypes]
GO
ALTER TABLE [dbo].[EditMemberConstituencies]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberConstituencies_Titles] FOREIGN KEY([Title_Id])
REFERENCES [dbo].[Titles] ([Title_Id])
GO
ALTER TABLE [dbo].[EditMemberConstituencies] CHECK CONSTRAINT [FK_EditMemberConstituencies_Titles]
GO
ALTER TABLE [dbo].[EditMemberDisqualifications]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberDisqualification_DisqualificationTypes] FOREIGN KEY([DisqualificationType_Id])
REFERENCES [dbo].[DisqualificationTypes] ([DisqualificationType_Id])
GO
ALTER TABLE [dbo].[EditMemberDisqualifications] CHECK CONSTRAINT [FK_EditMemberDisqualification_DisqualificationTypes]
GO
ALTER TABLE [dbo].[EditMemberDisqualifications]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberDisqualifications_EditMemberStatuses] FOREIGN KEY([EditMemberStatus_Id])
REFERENCES [dbo].[EditMemberStatuses] ([EditMemberStatus_Id])
GO
ALTER TABLE [dbo].[EditMemberDisqualifications] CHECK CONSTRAINT [FK_EditMemberDisqualifications_EditMemberStatuses]
GO
ALTER TABLE [dbo].[EditMemberElectionsContested]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberElectionsContested_Constituencies] FOREIGN KEY([Constituency_Id])
REFERENCES [dbo].[Constituencies] ([Constituency_Id])
GO
ALTER TABLE [dbo].[EditMemberElectionsContested] CHECK CONSTRAINT [FK_EditMemberElectionsContested_Constituencies]
GO
ALTER TABLE [dbo].[EditMemberElectionsContested]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberElectionsContested_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberElectionsContested] CHECK CONSTRAINT [FK_EditMemberElectionsContested_EditMember]
GO
ALTER TABLE [dbo].[EditMemberElectionsContested]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberElectionsContested_Elections] FOREIGN KEY([Election_Id])
REFERENCES [dbo].[Elections] ([Election_Id])
GO
ALTER TABLE [dbo].[EditMemberElectionsContested] CHECK CONSTRAINT [FK_EditMemberElectionsContested_Elections]
GO
ALTER TABLE [dbo].[EditMemberExperiences]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberExperiences_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberExperiences] CHECK CONSTRAINT [FK_EditMemberExperiences_EditMember]
GO
ALTER TABLE [dbo].[EditMemberExperiences]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberExperiences_ExperienceTypes] FOREIGN KEY([Experience_Id])
REFERENCES [dbo].[ExperienceTypes] ([ExperienceType_Id])
GO
ALTER TABLE [dbo].[EditMemberExperiences] CHECK CONSTRAINT [FK_EditMemberExperiences_ExperienceTypes]
GO
ALTER TABLE [dbo].[EditMemberGovernmentPosts]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberGovernmentPosts_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberGovernmentPosts] CHECK CONSTRAINT [FK_EditMemberGovernmentPosts_EditMember]
GO
ALTER TABLE [dbo].[EditMemberGovernmentPosts]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberGovernmentPosts_GovernmentPosts] FOREIGN KEY([GovernmentPost_Id])
REFERENCES [dbo].[GovernmentPosts] ([GovernmentPost_Id])
GO
ALTER TABLE [dbo].[EditMemberGovernmentPosts] CHECK CONSTRAINT [FK_EditMemberGovernmentPosts_GovernmentPosts]
GO
ALTER TABLE [dbo].[EditMemberHonours]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberHonours_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberHonours] CHECK CONSTRAINT [FK_EditMemberHonours_EditMember]
GO
ALTER TABLE [dbo].[EditMemberHonours]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberHonours_HonourLists] FOREIGN KEY([HonourList_Id])
REFERENCES [dbo].[HonourLists] ([HonourList_Id])
GO
ALTER TABLE [dbo].[EditMemberHonours] CHECK CONSTRAINT [FK_EditMemberHonours_HonourLists]
GO
ALTER TABLE [dbo].[EditMemberHonours]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberHonours_Honours] FOREIGN KEY([Honour_Id])
REFERENCES [dbo].[Honours] ([Honour_Id])
GO
ALTER TABLE [dbo].[EditMemberHonours] CHECK CONSTRAINT [FK_EditMemberHonours_Honours]
GO
ALTER TABLE [dbo].[EditMemberHouseMemberships]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberHouseMemberships_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberHouseMemberships] CHECK CONSTRAINT [FK_EditMemberHouseMemberships_EditMember]
GO
ALTER TABLE [dbo].[EditMemberHouseMemberships]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberHouseMemberships_EndReasons] FOREIGN KEY([EndReason_Id])
REFERENCES [dbo].[EndReasons] ([EndReason_Id])
GO
ALTER TABLE [dbo].[EditMemberHouseMemberships] CHECK CONSTRAINT [FK_EditMemberHouseMemberships_EndReasons]
GO
ALTER TABLE [dbo].[EditMemberHouseMemberships]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberHouseMemberships_Houses] FOREIGN KEY([House_Id])
REFERENCES [dbo].[Houses] ([House_Id])
GO
ALTER TABLE [dbo].[EditMemberHouseMemberships] CHECK CONSTRAINT [FK_EditMemberHouseMemberships_Houses]
GO
ALTER TABLE [dbo].[EditMemberInterests]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberInterests_CommonsRegisterPublications] FOREIGN KEY([CommonsRegisterPublication_Id])
REFERENCES [dbo].[CommonsRegisterPublications] ([CommonsRegisterPublication_Id])
GO
ALTER TABLE [dbo].[EditMemberInterests] CHECK CONSTRAINT [FK_EditMemberInterests_CommonsRegisterPublications]
GO
ALTER TABLE [dbo].[EditMemberInterests]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberInterests_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberInterests] CHECK CONSTRAINT [FK_EditMemberInterests_EditMember]
GO
ALTER TABLE [dbo].[EditMemberInterests]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberInterests_EditMemberInterests] FOREIGN KEY([ParentEditMemberInterest_Id])
REFERENCES [dbo].[EditMemberInterests] ([EditMemberInterest_Id])
GO
ALTER TABLE [dbo].[EditMemberInterests] CHECK CONSTRAINT [FK_EditMemberInterests_EditMemberInterests]
GO
ALTER TABLE [dbo].[EditMemberInterests]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberInterests_InterestCategories] FOREIGN KEY([InterestCategory_Id])
REFERENCES [dbo].[InterestCategories] ([InterestCategory_Id])
GO
ALTER TABLE [dbo].[EditMemberInterests] CHECK CONSTRAINT [FK_EditMemberInterests_InterestCategories]
GO
ALTER TABLE [dbo].[EditMemberKnownAs]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberKnownAs_EditMembers] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberKnownAs] CHECK CONSTRAINT [FK_EditMemberKnownAs_EditMembers]
GO
ALTER TABLE [dbo].[EditMemberLeaveOfAbsence]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberLeaveOfAbsence_EditMemberStatuses] FOREIGN KEY([EditMemberStatus_Id])
REFERENCES [dbo].[EditMemberStatuses] ([EditMemberStatus_Id])
GO
ALTER TABLE [dbo].[EditMemberLeaveOfAbsence] CHECK CONSTRAINT [FK_EditMemberLeaveOfAbsence_EditMemberStatuses]
GO
ALTER TABLE [dbo].[EditMemberLordsMembershipTypes]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberLordsMembershipTypes_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberLordsMembershipTypes] CHECK CONSTRAINT [FK_EditMemberLordsMembershipTypes_EditMember]
GO
ALTER TABLE [dbo].[EditMemberLordsMembershipTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberLordsMembershipTypes_LordsMembershipTypes] FOREIGN KEY([LordsMembershipType_Id])
REFERENCES [dbo].[LordsMembershipTypes] ([LordsMembershipType_Id])
GO
ALTER TABLE [dbo].[EditMemberLordsMembershipTypes] CHECK CONSTRAINT [FK_EditMemberLordsMembershipTypes_LordsMembershipTypes]
GO
ALTER TABLE [dbo].[EditMemberLordsPreferredNames]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberLordsPreferredNames_LordsRanks] FOREIGN KEY([LordsRank_Id])
REFERENCES [dbo].[LordsRanks] ([LordsRank_Id])
GO
ALTER TABLE [dbo].[EditMemberLordsPreferredNames] CHECK CONSTRAINT [FK_EditMemberLordsPreferredNames_LordsRanks]
GO
ALTER TABLE [dbo].[EditMemberLordsPreferredNames]  WITH CHECK ADD  CONSTRAINT [FK_LordsPreferredNames_EditMemberPreferredNames] FOREIGN KEY([EditMemberPreferredName_Id])
REFERENCES [dbo].[EditMemberPreferredNames] ([EditMemberPreferredName_Id])
GO
ALTER TABLE [dbo].[EditMemberLordsPreferredNames] CHECK CONSTRAINT [FK_LordsPreferredNames_EditMemberPreferredNames]
GO
ALTER TABLE [dbo].[EditMemberMaidenSpeeches]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberMaidenSpeeches_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberMaidenSpeeches] CHECK CONSTRAINT [FK_EditMemberMaidenSpeeches_EditMember]
GO
ALTER TABLE [dbo].[EditMemberMaidenSpeeches]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberMaidenSpeeches_Houses] FOREIGN KEY([House_Id])
REFERENCES [dbo].[Houses] ([House_Id])
GO
ALTER TABLE [dbo].[EditMemberMaidenSpeeches] CHECK CONSTRAINT [FK_EditMemberMaidenSpeeches_Houses]
GO
ALTER TABLE [dbo].[EditMemberOaths]  WITH CHECK ADD  CONSTRAINT [FK_LordsOaths_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberOaths] CHECK CONSTRAINT [FK_LordsOaths_EditMember]
GO
ALTER TABLE [dbo].[EditMemberObituaries]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberObituaries_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberObituaries] CHECK CONSTRAINT [FK_EditMemberObituaries_EditMember]
GO
ALTER TABLE [dbo].[EditMemberOppositionPosts]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberOppositionPosts_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberOppositionPosts] CHECK CONSTRAINT [FK_EditMemberOppositionPosts_EditMember]
GO
ALTER TABLE [dbo].[EditMemberOppositionPosts]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberOppositionPosts_OppositionPosts] FOREIGN KEY([OppositionPost_Id])
REFERENCES [dbo].[OppositionPosts] ([OppositionPost_Id])
GO
ALTER TABLE [dbo].[EditMemberOppositionPosts] CHECK CONSTRAINT [FK_EditMemberOppositionPosts_OppositionPosts]
GO
ALTER TABLE [dbo].[EditMemberOtherParliaments]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberOtherParliaments_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberOtherParliaments] CHECK CONSTRAINT [FK_EditMemberOtherParliaments_EditMember]
GO
ALTER TABLE [dbo].[EditMemberOtherParliaments]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberOtherParliaments_OtherParliaments] FOREIGN KEY([OtherParliament_Id])
REFERENCES [dbo].[OtherParliaments] ([OtherParliament_Id])
GO
ALTER TABLE [dbo].[EditMemberOtherParliaments] CHECK CONSTRAINT [FK_EditMemberOtherParliaments_OtherParliaments]
GO
ALTER TABLE [dbo].[EditMemberParliamentaryPosts]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberParliamentaryPosts_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberParliamentaryPosts] CHECK CONSTRAINT [FK_EditMemberParliamentaryPosts_EditMember]
GO
ALTER TABLE [dbo].[EditMemberParliamentaryPosts]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberParliamentaryPosts_ParliamentaryPosts] FOREIGN KEY([ParliamentaryPost_Id])
REFERENCES [dbo].[ParliamentaryPosts] ([ParliamentaryPost_Id])
GO
ALTER TABLE [dbo].[EditMemberParliamentaryPosts] CHECK CONSTRAINT [FK_EditMemberParliamentaryPosts_ParliamentaryPosts]
GO
ALTER TABLE [dbo].[EditMemberParties]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberParties_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberParties] CHECK CONSTRAINT [FK_EditMemberParties_EditMember]
GO
ALTER TABLE [dbo].[EditMemberParties]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberParties_Parties] FOREIGN KEY([Party_Id])
REFERENCES [dbo].[Parties] ([Party_Id])
GO
ALTER TABLE [dbo].[EditMemberParties] CHECK CONSTRAINT [FK_EditMemberParties_Parties]
GO
ALTER TABLE [dbo].[EditMemberParties]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberParties_PartySubTypes] FOREIGN KEY([PartySubType_Id])
REFERENCES [dbo].[PartySubTypes] ([PartySubType_Id])
GO
ALTER TABLE [dbo].[EditMemberParties] CHECK CONSTRAINT [FK_EditMemberParties_PartySubTypes]
GO
ALTER TABLE [dbo].[EditMemberPhotoContent]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberPhotoContent_EditMemberPhotos] FOREIGN KEY([EditMemberPhoto_Id])
REFERENCES [dbo].[EditMemberPhotos] ([EditMemberPhoto_Id])
GO
ALTER TABLE [dbo].[EditMemberPhotoContent] CHECK CONSTRAINT [FK_EditMemberPhotoContent_EditMemberPhotos]
GO
ALTER TABLE [dbo].[EditMemberPhotoOutputs]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberPhotoOutputs_EditMemberPhotos] FOREIGN KEY([EditMemberPhoto_Id])
REFERENCES [dbo].[EditMemberPhotos] ([EditMemberPhoto_Id])
GO
ALTER TABLE [dbo].[EditMemberPhotoOutputs] CHECK CONSTRAINT [FK_EditMemberPhotoOutputs_EditMemberPhotos]
GO
ALTER TABLE [dbo].[EditMemberPhotoOutputs]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberPhotoOutputs_PhotoOutputs] FOREIGN KEY([PhotoOutput_Id])
REFERENCES [dbo].[PhotoOutputs] ([PhotoOutput_Id])
GO
ALTER TABLE [dbo].[EditMemberPhotoOutputs] CHECK CONSTRAINT [FK_EditMemberPhotoOutputs_PhotoOutputs]
GO
ALTER TABLE [dbo].[EditMemberPhotos]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberPhotos_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberPhotos] CHECK CONSTRAINT [FK_EditMemberPhotos_EditMember]
GO
ALTER TABLE [dbo].[EditMemberPreferredNameHonouraryPrefixes]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberPreferredNameHonouraryPrefixes_CommonsPreferredNames] FOREIGN KEY([EditMemberPreferredName_Id])
REFERENCES [dbo].[EditMemberPreferredNames] ([EditMemberPreferredName_Id])
GO
ALTER TABLE [dbo].[EditMemberPreferredNameHonouraryPrefixes] CHECK CONSTRAINT [FK_EditMemberPreferredNameHonouraryPrefixes_CommonsPreferredNames]
GO
ALTER TABLE [dbo].[EditMemberPreferredNameHonouraryPrefixes]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberPreferredNameHonouraryPrefixes_HonouraryPrefixes] FOREIGN KEY([HonouraryPrefix_Id])
REFERENCES [dbo].[HonouraryPrefixes] ([HonouraryPrefix_Id])
GO
ALTER TABLE [dbo].[EditMemberPreferredNameHonouraryPrefixes] CHECK CONSTRAINT [FK_EditMemberPreferredNameHonouraryPrefixes_HonouraryPrefixes]
GO
ALTER TABLE [dbo].[EditMemberPreferredNames]  WITH CHECK ADD  CONSTRAINT [FK_CommonsPreferredNames_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberPreferredNames] CHECK CONSTRAINT [FK_CommonsPreferredNames_EditMember]
GO
ALTER TABLE [dbo].[EditMemberPreferredNames]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberPreferredNames_Titles] FOREIGN KEY([Title_Id])
REFERENCES [dbo].[Titles] ([Title_Id])
GO
ALTER TABLE [dbo].[EditMemberPreferredNames] CHECK CONSTRAINT [FK_EditMemberPreferredNames_Titles]
GO
ALTER TABLE [dbo].[EditMemberReferences]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberReferences_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberReferences] CHECK CONSTRAINT [FK_EditMemberReferences_EditMember]
GO
ALTER TABLE [dbo].[EditMemberReferences]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberReferences_ReferenceTypes] FOREIGN KEY([ReferenceType_Id])
REFERENCES [dbo].[ReferenceTypes] ([ReferenceType_Id])
GO
ALTER TABLE [dbo].[EditMemberReferences] CHECK CONSTRAINT [FK_EditMemberReferences_ReferenceTypes]
GO
ALTER TABLE [dbo].[EditMembers]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMembers_Countries] FOREIGN KEY([BirthCountry_Id])
REFERENCES [dbo].[Countries] ([Country_Id])
GO
ALTER TABLE [dbo].[EditMembers] CHECK CONSTRAINT [FK_EditMembers_Countries]
GO
ALTER TABLE [dbo].[EditMemberStaff]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberStaff_EditMembers] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberStaff] CHECK CONSTRAINT [FK_EditMemberStaff_EditMembers]
GO
ALTER TABLE [dbo].[EditMemberStaff]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberStaff_Titles] FOREIGN KEY([Title_Id])
REFERENCES [dbo].[Titles] ([Title_Id])
GO
ALTER TABLE [dbo].[EditMemberStaff] CHECK CONSTRAINT [FK_EditMemberStaff_Titles]
GO
ALTER TABLE [dbo].[EditMemberStatuses]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberExclusions_EditMember] FOREIGN KEY([EditMember_Id])
REFERENCES [dbo].[EditMembers] ([EditMember_Id])
GO
ALTER TABLE [dbo].[EditMemberStatuses] CHECK CONSTRAINT [FK_EditMemberExclusions_EditMember]
GO
ALTER TABLE [dbo].[EditMemberStatuses]  WITH NOCHECK ADD  CONSTRAINT [FK_EditMemberExclusions_Statuses] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Statuses] ([Status_Id])
GO
ALTER TABLE [dbo].[EditMemberStatuses] CHECK CONSTRAINT [FK_EditMemberExclusions_Statuses]
GO
ALTER TABLE [dbo].[EditMemberSuspensions]  WITH CHECK ADD  CONSTRAINT [FK_EditMemberSuspensions_EditMemberStatuses] FOREIGN KEY([EditMemberStatus_Id])
REFERENCES [dbo].[EditMemberStatuses] ([EditMemberStatus_Id])
GO
ALTER TABLE [dbo].[EditMemberSuspensions] CHECK CONSTRAINT [FK_EditMemberSuspensions_EditMemberStatuses]
GO
ALTER TABLE [dbo].[Elections]  WITH CHECK ADD  CONSTRAINT [FK_Elections_ElectionTypes] FOREIGN KEY([ElectionType_Id])
REFERENCES [dbo].[ElectionTypes] ([ElectionType_Id])
GO
ALTER TABLE [dbo].[Elections] CHECK CONSTRAINT [FK_Elections_ElectionTypes]
GO
ALTER TABLE [dbo].[GovernmentPostDepartments]  WITH CHECK ADD  CONSTRAINT [FK_GovernmentPostDepartments_Departments] FOREIGN KEY([Department_Id])
REFERENCES [dbo].[Departments] ([Department_Id])
GO
ALTER TABLE [dbo].[GovernmentPostDepartments] CHECK CONSTRAINT [FK_GovernmentPostDepartments_Departments]
GO
ALTER TABLE [dbo].[GovernmentPostDepartments]  WITH CHECK ADD  CONSTRAINT [FK_GovernmentPostDepartments_GovernmentPosts] FOREIGN KEY([GovernmentPost_Id])
REFERENCES [dbo].[GovernmentPosts] ([GovernmentPost_Id])
GO
ALTER TABLE [dbo].[GovernmentPostDepartments] CHECK CONSTRAINT [FK_GovernmentPostDepartments_GovernmentPosts]
GO
ALTER TABLE [dbo].[GovernmentPosts]  WITH NOCHECK ADD  CONSTRAINT [FK_GovernmentPosts_Cabinets] FOREIGN KEY([Cabinet_Id])
REFERENCES [dbo].[Cabinets] ([Cabinet_Id])
GO
ALTER TABLE [dbo].[GovernmentPosts] CHECK CONSTRAINT [FK_GovernmentPosts_Cabinets]
GO
ALTER TABLE [dbo].[GovernmentPosts]  WITH CHECK ADD  CONSTRAINT [FK_GovernmentPosts_GovernmentRanks] FOREIGN KEY([GovernmentRank_Id])
REFERENCES [dbo].[GovernmentRanks] ([GovernmentRank_Id])
GO
ALTER TABLE [dbo].[GovernmentPosts] CHECK CONSTRAINT [FK_GovernmentPosts_GovernmentRanks]
GO
ALTER TABLE [dbo].[HonouraryPrefixExcludeTitles]  WITH CHECK ADD  CONSTRAINT [FK_HonouraryPrefixExcludeTitles_HonouraryPrefixes] FOREIGN KEY([HonouraryPrefix_Id])
REFERENCES [dbo].[HonouraryPrefixes] ([HonouraryPrefix_Id])
GO
ALTER TABLE [dbo].[HonouraryPrefixExcludeTitles] CHECK CONSTRAINT [FK_HonouraryPrefixExcludeTitles_HonouraryPrefixes]
GO
ALTER TABLE [dbo].[HonouraryPrefixExcludeTitles]  WITH CHECK ADD  CONSTRAINT [FK_HonouraryPrefixExcludeTitles_Titles] FOREIGN KEY([Title_Id])
REFERENCES [dbo].[Titles] ([Title_Id])
GO
ALTER TABLE [dbo].[HonouraryPrefixExcludeTitles] CHECK CONSTRAINT [FK_HonouraryPrefixExcludeTitles_Titles]
GO
ALTER TABLE [dbo].[Honours]  WITH CHECK ADD  CONSTRAINT [FK_Honours_HonourTypes] FOREIGN KEY([HonourType_Id])
REFERENCES [dbo].[HonourTypes] ([HonourType_Id])
GO
ALTER TABLE [dbo].[Honours] CHECK CONSTRAINT [FK_Honours_HonourTypes]
GO
ALTER TABLE [dbo].[MemberAddresses]  WITH CHECK ADD  CONSTRAINT [FK_MemberAddresses_AddressTypes] FOREIGN KEY([AddressType_Id])
REFERENCES [dbo].[AddressTypes] ([AddressType_Id])
GO
ALTER TABLE [dbo].[MemberAddresses] CHECK CONSTRAINT [FK_MemberAddresses_AddressTypes]
GO
ALTER TABLE [dbo].[MemberAddresses]  WITH CHECK ADD  CONSTRAINT [FK_MemberAddresses_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberAddresses] CHECK CONSTRAINT [FK_MemberAddresses_Member]
GO
ALTER TABLE [dbo].[MemberBiographies]  WITH CHECK ADD  CONSTRAINT [FK_MemberBiographies_BiographyCategories] FOREIGN KEY([BiographyCategory_Id])
REFERENCES [dbo].[BiographyCategories] ([BiographyCategory_Id])
GO
ALTER TABLE [dbo].[MemberBiographies] CHECK CONSTRAINT [FK_MemberBiographies_BiographyCategories]
GO
ALTER TABLE [dbo].[MemberBiographies]  WITH CHECK ADD  CONSTRAINT [FK_MemberBiographies_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberBiographies] CHECK CONSTRAINT [FK_MemberBiographies_Member]
GO
ALTER TABLE [dbo].[MemberCommitteeChairs]  WITH CHECK ADD  CONSTRAINT [FK_MemberCommitteeChairs_MemberCommittees] FOREIGN KEY([MemberCommittee_Id])
REFERENCES [dbo].[MemberCommittees] ([MemberCommittee_Id])
GO
ALTER TABLE [dbo].[MemberCommitteeChairs] CHECK CONSTRAINT [FK_MemberCommitteeChairs_MemberCommittees]
GO
ALTER TABLE [dbo].[MemberCommittees]  WITH CHECK ADD  CONSTRAINT [FK_MemberCommittees_Committees] FOREIGN KEY([Committee_Id])
REFERENCES [dbo].[Committees] ([Committee_Id])
GO
ALTER TABLE [dbo].[MemberCommittees] CHECK CONSTRAINT [FK_MemberCommittees_Committees]
GO
ALTER TABLE [dbo].[MemberCommittees]  WITH CHECK ADD  CONSTRAINT [FK_MemberCommittees_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberCommittees] CHECK CONSTRAINT [FK_MemberCommittees_Member]
GO
ALTER TABLE [dbo].[MemberConstituencies]  WITH CHECK ADD  CONSTRAINT [FK_MemberConstituencies_Constituencies] FOREIGN KEY([Constituency_Id])
REFERENCES [dbo].[Constituencies] ([Constituency_Id])
GO
ALTER TABLE [dbo].[MemberConstituencies] CHECK CONSTRAINT [FK_MemberConstituencies_Constituencies]
GO
ALTER TABLE [dbo].[MemberConstituencies]  WITH CHECK ADD  CONSTRAINT [FK_MemberConstituencies_Elections] FOREIGN KEY([Election_Id])
REFERENCES [dbo].[Elections] ([Election_Id])
GO
ALTER TABLE [dbo].[MemberConstituencies] CHECK CONSTRAINT [FK_MemberConstituencies_Elections]
GO
ALTER TABLE [dbo].[MemberConstituencies]  WITH CHECK ADD  CONSTRAINT [FK_MemberConstituencies_EndReasons] FOREIGN KEY([EndType_Id])
REFERENCES [dbo].[EndReasons] ([EndReason_Id])
GO
ALTER TABLE [dbo].[MemberConstituencies] CHECK CONSTRAINT [FK_MemberConstituencies_EndReasons]
GO
ALTER TABLE [dbo].[MemberConstituencies]  WITH CHECK ADD  CONSTRAINT [FK_MemberConstituencies_EntryTypes] FOREIGN KEY([EntryType_Id])
REFERENCES [dbo].[EntryTypes] ([EntryType_Id])
GO
ALTER TABLE [dbo].[MemberConstituencies] CHECK CONSTRAINT [FK_MemberConstituencies_EntryTypes]
GO
ALTER TABLE [dbo].[MemberConstituencies]  WITH CHECK ADD  CONSTRAINT [FK_MemberConstituencies_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberConstituencies] CHECK CONSTRAINT [FK_MemberConstituencies_Member]
GO
ALTER TABLE [dbo].[MemberConstituencies]  WITH CHECK ADD  CONSTRAINT [FK_MemberConstituencies_Titles] FOREIGN KEY([Title_Id])
REFERENCES [dbo].[Titles] ([Title_Id])
GO
ALTER TABLE [dbo].[MemberConstituencies] CHECK CONSTRAINT [FK_MemberConstituencies_Titles]
GO
ALTER TABLE [dbo].[MemberDisqualifications]  WITH CHECK ADD  CONSTRAINT [FK_MemberDisqualification_DisqualificationTypes] FOREIGN KEY([DisqualificationType_Id])
REFERENCES [dbo].[DisqualificationTypes] ([DisqualificationType_Id])
GO
ALTER TABLE [dbo].[MemberDisqualifications] CHECK CONSTRAINT [FK_MemberDisqualification_DisqualificationTypes]
GO
ALTER TABLE [dbo].[MemberDisqualifications]  WITH CHECK ADD  CONSTRAINT [FK_MemberDisqualifications_MemberStatuses] FOREIGN KEY([MemberStatus_Id])
REFERENCES [dbo].[MemberStatuses] ([MemberStatus_Id])
GO
ALTER TABLE [dbo].[MemberDisqualifications] CHECK CONSTRAINT [FK_MemberDisqualifications_MemberStatuses]
GO
ALTER TABLE [dbo].[MemberElectionsContested]  WITH CHECK ADD  CONSTRAINT [FK_MemberElectionsContested_Constituencies] FOREIGN KEY([Constituency_Id])
REFERENCES [dbo].[Constituencies] ([Constituency_Id])
GO
ALTER TABLE [dbo].[MemberElectionsContested] CHECK CONSTRAINT [FK_MemberElectionsContested_Constituencies]
GO
ALTER TABLE [dbo].[MemberElectionsContested]  WITH CHECK ADD  CONSTRAINT [FK_MemberElectionsContested_Elections] FOREIGN KEY([Election_Id])
REFERENCES [dbo].[Elections] ([Election_Id])
GO
ALTER TABLE [dbo].[MemberElectionsContested] CHECK CONSTRAINT [FK_MemberElectionsContested_Elections]
GO
ALTER TABLE [dbo].[MemberElectionsContested]  WITH CHECK ADD  CONSTRAINT [FK_MemberElectionsContested_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberElectionsContested] CHECK CONSTRAINT [FK_MemberElectionsContested_Member]
GO
ALTER TABLE [dbo].[MemberExperiences]  WITH CHECK ADD  CONSTRAINT [FK_MemberExperiences_ExperienceTypes] FOREIGN KEY([Experience_Id])
REFERENCES [dbo].[ExperienceTypes] ([ExperienceType_Id])
GO
ALTER TABLE [dbo].[MemberExperiences] CHECK CONSTRAINT [FK_MemberExperiences_ExperienceTypes]
GO
ALTER TABLE [dbo].[MemberExperiences]  WITH CHECK ADD  CONSTRAINT [FK_MemberExperiences_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberExperiences] CHECK CONSTRAINT [FK_MemberExperiences_Member]
GO
ALTER TABLE [dbo].[MemberGovernmentPosts]  WITH CHECK ADD  CONSTRAINT [FK_MemberGovernmentPosts_GovernmentPosts] FOREIGN KEY([GovernmentPost_Id])
REFERENCES [dbo].[GovernmentPosts] ([GovernmentPost_Id])
GO
ALTER TABLE [dbo].[MemberGovernmentPosts] CHECK CONSTRAINT [FK_MemberGovernmentPosts_GovernmentPosts]
GO
ALTER TABLE [dbo].[MemberGovernmentPosts]  WITH CHECK ADD  CONSTRAINT [FK_MemberGovernmentPosts_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberGovernmentPosts] CHECK CONSTRAINT [FK_MemberGovernmentPosts_Member]
GO
ALTER TABLE [dbo].[MemberHonours]  WITH CHECK ADD  CONSTRAINT [FK_MemberHonours_HonourLists] FOREIGN KEY([HonourList_Id])
REFERENCES [dbo].[HonourLists] ([HonourList_Id])
GO
ALTER TABLE [dbo].[MemberHonours] CHECK CONSTRAINT [FK_MemberHonours_HonourLists]
GO
ALTER TABLE [dbo].[MemberHonours]  WITH CHECK ADD  CONSTRAINT [FK_MemberHonours_Honours] FOREIGN KEY([Honour_Id])
REFERENCES [dbo].[Honours] ([Honour_Id])
GO
ALTER TABLE [dbo].[MemberHonours] CHECK CONSTRAINT [FK_MemberHonours_Honours]
GO
ALTER TABLE [dbo].[MemberHonours]  WITH CHECK ADD  CONSTRAINT [FK_MemberHonours_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberHonours] CHECK CONSTRAINT [FK_MemberHonours_Member]
GO
ALTER TABLE [dbo].[MemberHouseMemberships]  WITH CHECK ADD  CONSTRAINT [FK_MemberHouseMemberships_EndReasons] FOREIGN KEY([EndReason_Id])
REFERENCES [dbo].[EndReasons] ([EndReason_Id])
GO
ALTER TABLE [dbo].[MemberHouseMemberships] CHECK CONSTRAINT [FK_MemberHouseMemberships_EndReasons]
GO
ALTER TABLE [dbo].[MemberHouseMemberships]  WITH CHECK ADD  CONSTRAINT [FK_MemberHouseMemberships_Houses] FOREIGN KEY([House_Id])
REFERENCES [dbo].[Houses] ([House_Id])
GO
ALTER TABLE [dbo].[MemberHouseMemberships] CHECK CONSTRAINT [FK_MemberHouseMemberships_Houses]
GO
ALTER TABLE [dbo].[MemberHouseMemberships]  WITH CHECK ADD  CONSTRAINT [FK_MemberHouseMemberships_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberHouseMemberships] CHECK CONSTRAINT [FK_MemberHouseMemberships_Member]
GO
ALTER TABLE [dbo].[MemberInterests]  WITH CHECK ADD  CONSTRAINT [FK_MemberInterests_CommonsRegisterPublications] FOREIGN KEY([CommonsRegisterPublication_Id])
REFERENCES [dbo].[CommonsRegisterPublications] ([CommonsRegisterPublication_Id])
GO
ALTER TABLE [dbo].[MemberInterests] CHECK CONSTRAINT [FK_MemberInterests_CommonsRegisterPublications]
GO
ALTER TABLE [dbo].[MemberInterests]  WITH CHECK ADD  CONSTRAINT [FK_MemberInterests_InterestCategories] FOREIGN KEY([InterestCategory_Id])
REFERENCES [dbo].[InterestCategories] ([InterestCategory_Id])
GO
ALTER TABLE [dbo].[MemberInterests] CHECK CONSTRAINT [FK_MemberInterests_InterestCategories]
GO
ALTER TABLE [dbo].[MemberInterests]  WITH CHECK ADD  CONSTRAINT [FK_MemberInterests_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberInterests] CHECK CONSTRAINT [FK_MemberInterests_Member]
GO
ALTER TABLE [dbo].[MemberInterests]  WITH CHECK ADD  CONSTRAINT [FK_MemberInterests_MemberInterests] FOREIGN KEY([ParentMemberInterest_Id])
REFERENCES [dbo].[MemberInterests] ([MemberInterest_Id])
GO
ALTER TABLE [dbo].[MemberInterests] CHECK CONSTRAINT [FK_MemberInterests_MemberInterests]
GO
ALTER TABLE [dbo].[MemberInterestsPending]  WITH CHECK ADD  CONSTRAINT [FK_MemberInterestsPending_CommonsRegisterPublications] FOREIGN KEY([CommonsRegisterPublication_Id])
REFERENCES [dbo].[CommonsRegisterPublications] ([CommonsRegisterPublication_Id])
GO
ALTER TABLE [dbo].[MemberInterestsPending] CHECK CONSTRAINT [FK_MemberInterestsPending_CommonsRegisterPublications]
GO
ALTER TABLE [dbo].[MemberInterestsPending]  WITH CHECK ADD  CONSTRAINT [FK_MemberInterestsPending_InterestCategories] FOREIGN KEY([InterestCategory_Id])
REFERENCES [dbo].[InterestCategories] ([InterestCategory_Id])
GO
ALTER TABLE [dbo].[MemberInterestsPending] CHECK CONSTRAINT [FK_MemberInterestsPending_InterestCategories]
GO
ALTER TABLE [dbo].[MemberInterestsPending]  WITH CHECK ADD  CONSTRAINT [FK_MemberInterestsPending_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberInterestsPending] CHECK CONSTRAINT [FK_MemberInterestsPending_Member]
GO
ALTER TABLE [dbo].[MemberInterestsPending]  WITH CHECK ADD  CONSTRAINT [FK_MemberInterestsPending_MemberInterests] FOREIGN KEY([ParentMemberInterestPending_Id])
REFERENCES [dbo].[MemberInterestsPending] ([MemberInterestPending_Id])
GO
ALTER TABLE [dbo].[MemberInterestsPending] CHECK CONSTRAINT [FK_MemberInterestsPending_MemberInterests]
GO
ALTER TABLE [dbo].[MemberKnownAs]  WITH NOCHECK ADD  CONSTRAINT [FK_MemberKnownAs_Members] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberKnownAs] CHECK CONSTRAINT [FK_MemberKnownAs_Members]
GO
ALTER TABLE [dbo].[MemberLeaveOfAbsence]  WITH CHECK ADD  CONSTRAINT [FK_MemberLeaveOfAbsence_MemberStatuses] FOREIGN KEY([MemberStatus_Id])
REFERENCES [dbo].[MemberStatuses] ([MemberStatus_Id])
GO
ALTER TABLE [dbo].[MemberLeaveOfAbsence] CHECK CONSTRAINT [FK_MemberLeaveOfAbsence_MemberStatuses]
GO
ALTER TABLE [dbo].[MemberLordsMembershipTypes]  WITH CHECK ADD  CONSTRAINT [FK_MemberLordsMembershipTypes_LordsMembershipTypes] FOREIGN KEY([LordsMembershipType_Id])
REFERENCES [dbo].[LordsMembershipTypes] ([LordsMembershipType_Id])
GO
ALTER TABLE [dbo].[MemberLordsMembershipTypes] CHECK CONSTRAINT [FK_MemberLordsMembershipTypes_LordsMembershipTypes]
GO
ALTER TABLE [dbo].[MemberLordsMembershipTypes]  WITH CHECK ADD  CONSTRAINT [FK_MemberLordsMembershipTypes_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberLordsMembershipTypes] CHECK CONSTRAINT [FK_MemberLordsMembershipTypes_Member]
GO
ALTER TABLE [dbo].[MemberLordsPreferredNames]  WITH CHECK ADD  CONSTRAINT [FK_LordsPreferredNames_MemberPreferredNames] FOREIGN KEY([MemberPreferredName_Id])
REFERENCES [dbo].[MemberPreferredNames] ([MemberPreferredName_Id])
GO
ALTER TABLE [dbo].[MemberLordsPreferredNames] CHECK CONSTRAINT [FK_LordsPreferredNames_MemberPreferredNames]
GO
ALTER TABLE [dbo].[MemberLordsPreferredNames]  WITH CHECK ADD  CONSTRAINT [FK_MemberLordsPreferredNames_LordsRanks] FOREIGN KEY([LordsRank_Id])
REFERENCES [dbo].[LordsRanks] ([LordsRank_Id])
GO
ALTER TABLE [dbo].[MemberLordsPreferredNames] CHECK CONSTRAINT [FK_MemberLordsPreferredNames_LordsRanks]
GO
ALTER TABLE [dbo].[MemberMaidenSpeeches]  WITH CHECK ADD  CONSTRAINT [FK_MemberMaidenSpeeches_Houses] FOREIGN KEY([House_Id])
REFERENCES [dbo].[Houses] ([House_Id])
GO
ALTER TABLE [dbo].[MemberMaidenSpeeches] CHECK CONSTRAINT [FK_MemberMaidenSpeeches_Houses]
GO
ALTER TABLE [dbo].[MemberMaidenSpeeches]  WITH CHECK ADD  CONSTRAINT [FK_MemberMaidenSpeeches_Members] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberMaidenSpeeches] CHECK CONSTRAINT [FK_MemberMaidenSpeeches_Members]
GO
ALTER TABLE [dbo].[MemberOaths]  WITH CHECK ADD  CONSTRAINT [FK_LordsOaths_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberOaths] CHECK CONSTRAINT [FK_LordsOaths_Member]
GO
ALTER TABLE [dbo].[MemberObituaries]  WITH CHECK ADD  CONSTRAINT [FK_MemberObituaries_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberObituaries] CHECK CONSTRAINT [FK_MemberObituaries_Member]
GO
ALTER TABLE [dbo].[MemberOppositionPosts]  WITH CHECK ADD  CONSTRAINT [FK_MemberOppositionPosts_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberOppositionPosts] CHECK CONSTRAINT [FK_MemberOppositionPosts_Member]
GO
ALTER TABLE [dbo].[MemberOppositionPosts]  WITH CHECK ADD  CONSTRAINT [FK_MemberOppositionPosts_OppositionPosts] FOREIGN KEY([OppositionPost_Id])
REFERENCES [dbo].[OppositionPosts] ([OppositionPost_Id])
GO
ALTER TABLE [dbo].[MemberOppositionPosts] CHECK CONSTRAINT [FK_MemberOppositionPosts_OppositionPosts]
GO
ALTER TABLE [dbo].[MemberOtherParliaments]  WITH CHECK ADD  CONSTRAINT [FK_MemberOtherParliaments_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberOtherParliaments] CHECK CONSTRAINT [FK_MemberOtherParliaments_Member]
GO
ALTER TABLE [dbo].[MemberOtherParliaments]  WITH CHECK ADD  CONSTRAINT [FK_MemberOtherParliaments_OtherParliaments] FOREIGN KEY([OtherParliament_Id])
REFERENCES [dbo].[OtherParliaments] ([OtherParliament_Id])
GO
ALTER TABLE [dbo].[MemberOtherParliaments] CHECK CONSTRAINT [FK_MemberOtherParliaments_OtherParliaments]
GO
ALTER TABLE [dbo].[MemberParliamentaryPosts]  WITH CHECK ADD  CONSTRAINT [FK_MemberParliamentaryPosts_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberParliamentaryPosts] CHECK CONSTRAINT [FK_MemberParliamentaryPosts_Member]
GO
ALTER TABLE [dbo].[MemberParliamentaryPosts]  WITH CHECK ADD  CONSTRAINT [FK_MemberParliamentaryPosts_ParliamentaryPosts] FOREIGN KEY([ParliamentaryPost_Id])
REFERENCES [dbo].[ParliamentaryPosts] ([ParliamentaryPost_Id])
GO
ALTER TABLE [dbo].[MemberParliamentaryPosts] CHECK CONSTRAINT [FK_MemberParliamentaryPosts_ParliamentaryPosts]
GO
ALTER TABLE [dbo].[MemberParties]  WITH CHECK ADD  CONSTRAINT [FK_MemberParties_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberParties] CHECK CONSTRAINT [FK_MemberParties_Member]
GO
ALTER TABLE [dbo].[MemberParties]  WITH CHECK ADD  CONSTRAINT [FK_MemberParties_Parties] FOREIGN KEY([Party_Id])
REFERENCES [dbo].[Parties] ([Party_Id])
GO
ALTER TABLE [dbo].[MemberParties] CHECK CONSTRAINT [FK_MemberParties_Parties]
GO
ALTER TABLE [dbo].[MemberParties]  WITH CHECK ADD  CONSTRAINT [FK_MemberParties_PartySubTypes] FOREIGN KEY([PartySubType_Id])
REFERENCES [dbo].[PartySubTypes] ([PartySubType_Id])
GO
ALTER TABLE [dbo].[MemberParties] CHECK CONSTRAINT [FK_MemberParties_PartySubTypes]
GO
ALTER TABLE [dbo].[MemberPhotoContent]  WITH CHECK ADD  CONSTRAINT [FK_MemberPhotoContent_MemberPhotos] FOREIGN KEY([MemberPhoto_Id])
REFERENCES [dbo].[MemberPhotos] ([MemberPhoto_Id])
GO
ALTER TABLE [dbo].[MemberPhotoContent] CHECK CONSTRAINT [FK_MemberPhotoContent_MemberPhotos]
GO
ALTER TABLE [dbo].[MemberPhotoOutputs]  WITH CHECK ADD  CONSTRAINT [FK_MemberPhotoOutputs_MemberPhotos] FOREIGN KEY([MemberPhoto_Id])
REFERENCES [dbo].[MemberPhotos] ([MemberPhoto_Id])
GO
ALTER TABLE [dbo].[MemberPhotoOutputs] CHECK CONSTRAINT [FK_MemberPhotoOutputs_MemberPhotos]
GO
ALTER TABLE [dbo].[MemberPhotoOutputs]  WITH NOCHECK ADD  CONSTRAINT [FK_MemberPhotoOutputs_PhotoOutputs] FOREIGN KEY([PhotoOutput_Id])
REFERENCES [dbo].[PhotoOutputs] ([PhotoOutput_Id])
GO
ALTER TABLE [dbo].[MemberPhotoOutputs] CHECK CONSTRAINT [FK_MemberPhotoOutputs_PhotoOutputs]
GO
ALTER TABLE [dbo].[MemberPhotos]  WITH NOCHECK ADD  CONSTRAINT [FK_MemberPhotos_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberPhotos] CHECK CONSTRAINT [FK_MemberPhotos_Member]
GO
ALTER TABLE [dbo].[MemberPreferredNameHonouraryPrefixes]  WITH CHECK ADD  CONSTRAINT [FK_CommonsPreferredNameHonouraryPrefixes_CommonsPreferredNames] FOREIGN KEY([MemberPreferredName_Id])
REFERENCES [dbo].[MemberPreferredNames] ([MemberPreferredName_Id])
GO
ALTER TABLE [dbo].[MemberPreferredNameHonouraryPrefixes] CHECK CONSTRAINT [FK_CommonsPreferredNameHonouraryPrefixes_CommonsPreferredNames]
GO
ALTER TABLE [dbo].[MemberPreferredNameHonouraryPrefixes]  WITH CHECK ADD  CONSTRAINT [FK_CommonsPreferredNameHonouraryPrefixes_HonouraryPrefixes] FOREIGN KEY([HonouraryPrefix_Id])
REFERENCES [dbo].[HonouraryPrefixes] ([HonouraryPrefix_Id])
GO
ALTER TABLE [dbo].[MemberPreferredNameHonouraryPrefixes] CHECK CONSTRAINT [FK_CommonsPreferredNameHonouraryPrefixes_HonouraryPrefixes]
GO
ALTER TABLE [dbo].[MemberPreferredNames]  WITH CHECK ADD  CONSTRAINT [FK_CommonsPreferredNames_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberPreferredNames] CHECK CONSTRAINT [FK_CommonsPreferredNames_Member]
GO
ALTER TABLE [dbo].[MemberPreferredNames]  WITH CHECK ADD  CONSTRAINT [FK_CommonsPreferredNames_Titles] FOREIGN KEY([Title_Id])
REFERENCES [dbo].[Titles] ([Title_Id])
GO
ALTER TABLE [dbo].[MemberPreferredNames] CHECK CONSTRAINT [FK_CommonsPreferredNames_Titles]
GO
ALTER TABLE [dbo].[MemberReferences]  WITH CHECK ADD  CONSTRAINT [FK_MemberReferences_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberReferences] CHECK CONSTRAINT [FK_MemberReferences_Member]
GO
ALTER TABLE [dbo].[MemberReferences]  WITH CHECK ADD  CONSTRAINT [FK_MemberReferences_ReferenceTypes] FOREIGN KEY([ReferenceType_Id])
REFERENCES [dbo].[ReferenceTypes] ([ReferenceType_Id])
GO
ALTER TABLE [dbo].[MemberReferences] CHECK CONSTRAINT [FK_MemberReferences_ReferenceTypes]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Countries] FOREIGN KEY([BirthCountry_Id])
REFERENCES [dbo].[Countries] ([Country_Id])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Countries]
GO
ALTER TABLE [dbo].[MemberStaff]  WITH CHECK ADD  CONSTRAINT [FK_MemberStaff_Members] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberStaff] CHECK CONSTRAINT [FK_MemberStaff_Members]
GO
ALTER TABLE [dbo].[MemberStaff]  WITH CHECK ADD  CONSTRAINT [FK_MemberStaff_Titles] FOREIGN KEY([Title_Id])
REFERENCES [dbo].[Titles] ([Title_Id])
GO
ALTER TABLE [dbo].[MemberStaff] CHECK CONSTRAINT [FK_MemberStaff_Titles]
GO
ALTER TABLE [dbo].[MemberStatuses]  WITH CHECK ADD  CONSTRAINT [FK_MemberExclusions_ExclusionTypes] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Statuses] ([Status_Id])
GO
ALTER TABLE [dbo].[MemberStatuses] CHECK CONSTRAINT [FK_MemberExclusions_ExclusionTypes]
GO
ALTER TABLE [dbo].[MemberStatuses]  WITH CHECK ADD  CONSTRAINT [FK_MemberExclusions_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Member_Id])
GO
ALTER TABLE [dbo].[MemberStatuses] CHECK CONSTRAINT [FK_MemberExclusions_Member]
GO
ALTER TABLE [dbo].[MemberSuspensions]  WITH CHECK ADD  CONSTRAINT [FK_MemberSuspensions_MemberStatuses] FOREIGN KEY([MemberStatus_Id])
REFERENCES [dbo].[MemberStatuses] ([MemberStatus_Id])
GO
ALTER TABLE [dbo].[MemberSuspensions] CHECK CONSTRAINT [FK_MemberSuspensions_MemberStatuses]
GO
ALTER TABLE [dbo].[OppositionPostDepartments]  WITH CHECK ADD  CONSTRAINT [FK_OppositionPostDepartments_Departments] FOREIGN KEY([Department_Id])
REFERENCES [dbo].[Departments] ([Department_Id])
GO
ALTER TABLE [dbo].[OppositionPostDepartments] CHECK CONSTRAINT [FK_OppositionPostDepartments_Departments]
GO
ALTER TABLE [dbo].[OppositionPostDepartments]  WITH CHECK ADD  CONSTRAINT [FK_OppositionPostDepartments_OppositionPosts] FOREIGN KEY([OppositionPost_Id])
REFERENCES [dbo].[OppositionPosts] ([OppositionPost_Id])
GO
ALTER TABLE [dbo].[OppositionPostDepartments] CHECK CONSTRAINT [FK_OppositionPostDepartments_OppositionPosts]
GO
ALTER TABLE [dbo].[OppositionPosts]  WITH NOCHECK ADD  CONSTRAINT [FK_OppositionPosts_Cabinets] FOREIGN KEY([Cabinet_Id])
REFERENCES [dbo].[Cabinets] ([Cabinet_Id])
GO
ALTER TABLE [dbo].[OppositionPosts] CHECK CONSTRAINT [FK_OppositionPosts_Cabinets]
GO
ALTER TABLE [dbo].[OppositionPosts]  WITH CHECK ADD  CONSTRAINT [FK_OppositionPosts_OppositionRanks] FOREIGN KEY([OppositionRank_Id])
REFERENCES [dbo].[OppositionRanks] ([OppositionRank_Id])
GO
ALTER TABLE [dbo].[OppositionPosts] CHECK CONSTRAINT [FK_OppositionPosts_OppositionRanks]
GO
ALTER TABLE [dbo].[OtherParliaments]  WITH CHECK ADD  CONSTRAINT [FK_OtherParliaments_Countries] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[Countries] ([Country_Id])
GO
ALTER TABLE [dbo].[OtherParliaments] CHECK CONSTRAINT [FK_OtherParliaments_Countries]
GO
ALTER TABLE [dbo].[OtherParliaments]  WITH CHECK ADD  CONSTRAINT [FK_OtherParliaments_ParliamentTypes] FOREIGN KEY([ParliamentType_Id])
REFERENCES [dbo].[ParliamentTypes] ([ParliamentType_Id])
GO
ALTER TABLE [dbo].[OtherParliaments] CHECK CONSTRAINT [FK_OtherParliaments_ParliamentTypes]
GO
ALTER TABLE [dbo].[ParliamentaryPosts]  WITH CHECK ADD  CONSTRAINT [FK_ParliamentaryPosts_ParliamentaryRanks] FOREIGN KEY([ParliamentaryRank_Id])
REFERENCES [dbo].[ParliamentaryRanks] ([ParliamentaryRank_Id])
GO
ALTER TABLE [dbo].[ParliamentaryPosts] CHECK CONSTRAINT [FK_ParliamentaryPosts_ParliamentaryRanks]
GO
ALTER TABLE [dbo].[PartySubTypes]  WITH CHECK ADD  CONSTRAINT [FK_PartySubTypes_Parties1] FOREIGN KEY([Party_Id])
REFERENCES [dbo].[Parties] ([Party_Id])
GO
ALTER TABLE [dbo].[PartySubTypes] CHECK CONSTRAINT [FK_PartySubTypes_Parties1]
GO
ALTER TABLE [dbo].[Statuses]  WITH CHECK ADD  CONSTRAINT [FK_Statuses_Parties] FOREIGN KEY([ChangePartyTo_Id])
REFERENCES [dbo].[Parties] ([Party_Id])
GO
ALTER TABLE [dbo].[Statuses] CHECK CONSTRAINT [FK_Statuses_Parties]
GO
ALTER TABLE [dbo].[SubscriptionTabs]  WITH CHECK ADD  CONSTRAINT [FK_SubscriptionTabs_Subscriptions] FOREIGN KEY([Subscription_Id])
REFERENCES [dbo].[Subscriptions] ([Subscription_Id])
GO
ALTER TABLE [dbo].[SubscriptionTabs] CHECK CONSTRAINT [FK_SubscriptionTabs_Subscriptions]
GO
ALTER TABLE [dbo].[SubscriptionTabs]  WITH CHECK ADD  CONSTRAINT [FK_SubscriptionTabs_SubscriptionTabList] FOREIGN KEY([SubscriptionTabList_Id])
REFERENCES [dbo].[SubscriptionTabList] ([SubscriptionTabList_Id])
GO
ALTER TABLE [dbo].[SubscriptionTabs] CHECK CONSTRAINT [FK_SubscriptionTabs_SubscriptionTabList]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_UserRoles] FOREIGN KEY([UserRole_Id])
REFERENCES [dbo].[UserRoles] ([UserRole_Id])
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_UserRoles]
GO
ALTER TABLE [dbo].[UserRolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_UserRolePermissions_UserPermissions] FOREIGN KEY([UserPermission_Id])
REFERENCES [dbo].[UserPermissions] ([UserPermission_Id])
GO
ALTER TABLE [dbo].[UserRolePermissions] CHECK CONSTRAINT [FK_UserRolePermissions_UserPermissions]
GO
ALTER TABLE [dbo].[UserRolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_UserRolePermissions_UserRoles] FOREIGN KEY([UserRole_Id])
REFERENCES [dbo].[UserRoles] ([UserRole_Id])
GO
ALTER TABLE [dbo].[UserRolePermissions] CHECK CONSTRAINT [FK_UserRolePermissions_UserRoles]
GO
ALTER TABLE [dbo].[UserRoleSections]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleSections_Sections] FOREIGN KEY([Section_Id])
REFERENCES [dbo].[Sections] ([Section_Id])
GO
ALTER TABLE [dbo].[UserRoleSections] CHECK CONSTRAINT [FK_UserRoleSections_Sections]
GO
ALTER TABLE [dbo].[UserRoleSections]  WITH NOCHECK ADD  CONSTRAINT [FK_UserRoleSections_UserRoles] FOREIGN KEY([UserRole_Id])
REFERENCES [dbo].[UserRoles] ([UserRole_Id])
GO
ALTER TABLE [dbo].[UserRoleSections] CHECK CONSTRAINT [FK_UserRoleSections_UserRoles]
GO
USE [master]
GO
ALTER DATABASE [PPE_MNIS] SET  READ_WRITE 
GO
