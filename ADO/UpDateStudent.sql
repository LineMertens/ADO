CREATE PROCEDURE [dbo].[UpDateStudent]
	@SectionID int,
	@resultat int

AS
	BEGIN 
		UPDATE Student
		SET SectionID = @SectionID, 
			YearResult = @resultat
	END
