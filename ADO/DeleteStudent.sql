CREATE PROCEDURE [dbo].[DeleteStudent]
	@studentID int
AS
		DELETE FROM Student WHERE Student.Id = @studentID



