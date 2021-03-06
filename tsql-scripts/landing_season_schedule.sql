CREATE TABLE [landing].[season_schedule](
	[gameId] [varchar](100) NULL,
	[seasonStageId] [int] NULL,
	[gameUrlCode] [varchar](100) NULL,
	[statusNum] [int] NULL,
	[extendedStatusNum] [int] NULL,
	[isStartTimeTBD] [bit] NULL,
	[startTimeUTC] [datetime] NULL,
	[startDateEastern] [date] NULL,
	[isNeutralVenue] [bit] NULL,
	[startTimeEastern] [varchar](50) NULL,
	[isBuzzerBeater] [bit] NULL,
	[period_current] [int] NULL,
	[period_type] [int] NULL,
	[period_maxRegular] [int] NULL,
	[nugget_text] [varchar](100) NULL,
	[hTeam_teamId] [varchar](100) NULL,
	[hTeam_score] [int] NULL,
	[hTeam_win] [int] NULL,
	[hTeam_loss] [int] NULL,
	[vTeam_teamId] [varchar](100) NULL,
	[vTeam_score] [int] NULL,
	[vTeam_win] [int] NULL,
	[vTeam_loss] [int] NULL,
	[playoffs_roundNum] [int] NULL,
	[playoffs_confName] [varchar](100) NULL,
	[playoffs_seriesId] [varchar](100) NULL,
	[playoffs_seriesSummaryText] [varchar](250) NULL,
	[playoffs_isSeriesCompleted] [bit] NULL,
	[playoffs_gameNumInSeries] [int] NULL,
	[playoffs_isIfNecessary] [bit] NULL,
	[created_timestamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [landing].[season_schedule] ADD  CONSTRAINT [DF_landing_season_schedule_created_timestamp]  DEFAULT CONVERT(DATETIME,GETDATE() AT TIME ZONE CURRENT_TIMEZONE_ID() AT TIME ZONE 'Eastern Standard Time') FOR [created_timestamp]
GO