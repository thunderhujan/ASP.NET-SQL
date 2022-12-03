CREATE TABLE [dbo].[tbUser] (
    [UserID]     BIGINT       IDENTITY (0, 1) NOT NULL,
    [UserName]   VARCHAR (20) NOT NULL,
    [UserNo]     INT          NOT NULL,
    [CreateDate] DATETIME     DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC),
    UNIQUE NONCLUSTERED ([UserNo] ASC)
);

