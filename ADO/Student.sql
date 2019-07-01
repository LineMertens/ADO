CREATE TABLE [dbo].[Student]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[FirstName] VARCHAR(50),
	[LastName] VARCHAR(50),
	[BirthDate] DATETIME2(7),
	[YearResult] int,
	[SectionID] int, 
	[Active] bit DEFAULT 1, 
    CONSTRAINT [FK_Student_Section] FOREIGN KEY ([SectionID]) REFERENCES [Section]([ID]), 
    CONSTRAINT [CK_Student_YearResult] CHECK (YearResult BETWEEN 0 AND 20), 
    CONSTRAINT [CK_Student_BirthDate] CHECK (BirthDate >= '1930-01-01') 
)
