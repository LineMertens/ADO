CREATE TRIGGER [dbo].[Trigger]
ON Student
INSTEAD OF DELETE 
AS
	BEGIN 
		UPDATE Student
		SET Active = 0
		WHERE Student.Id IN (SELECT Student.Id FROM deleted)
	END

