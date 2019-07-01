CREATE PROCEDURE [dbo].[AddStudent]
	@FirstName VARCHAR(50),
	@LastName VARCHAR(50), 
	@BirthDate datetime2,
	@YearResult int, 
	@SectionID int, 
	@Active bit

AS
	BEGIN 
		INSERT INTO Student (FirstName, LastName, BirthDate, YearResult, SectionID, Active) 
		VALUES (@FirstName, @LastName, @BirthDate, @YearResult, @SectionID, @Active)		
	END

