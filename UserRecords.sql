-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nurul Atiqah
-- Description:	Select records
-- =============================================
CREATE PROCEDURE SA_SelectUserRecords
AS
BEGIN
	SELECT * FROM tbUser
END
GO

-- =============================================
-- Author:		Nurul Atiqah
-- Description:	Add records
-- =============================================
CREATE PROCEDURE SA_AddUserRecords
(
	@UserID bigint = 0,
	@UserName varchar(20) = '',
	@UserNo int = 0,
	@CreateDate datetime = ''
)
AS
BEGIN
	INSERT INTO tbUser (UserName, UserNo, CreateDate)
	VALUES (@UserName, @UserNo, @CreateDate)
END
GO

-- =============================================
-- Author:		Nurul Atiqah
-- Description:	Update records
-- =============================================
CREATE PROCEDURE SA_UpdateUserRecords
(
	@UserID bigint = 0,
	@UserName varchar(20) = '',
	@UserNo int = 0,
	@CreateDate datetime = ''
)
AS
BEGIN
	UPDATE tbUser SET UserName = @UserName, UserNo = @UserNo
	WHERE UserID = @UserID
END
GO

-- =============================================
-- Author:		Nurul Atiqah
-- Description:	Delete records
-- =============================================
CREATE PROCEDURE SA_DeleteUserRecords
(
	@UserID bigint = 0
)
AS
BEGIN
	DELETE FROM tbUser WHERE UserID = @UserID 
END
GO
