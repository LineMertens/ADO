CREATE PROCEDURE [dbo].[AddSection]
	@Section int,
	@SectionName VARCHAR(50)
AS
	BEGIN
		INSERT INTO Section VALUES (@Section, @SectionName)
	END