CREATE TABLE [dbo].[Person]
(
[PersonID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Person_PersonID] DEFAULT (newid()),
[PersonCode] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PersonName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PersonTypeID] [uniqueidentifier] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Person_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL,
[ModifiedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED  ([PersonID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_PersonType] FOREIGN KEY ([PersonTypeID]) REFERENCES [dbo].[PersonType] ([PersonTypeID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Địa chỉ', 'SCHEMA', N'dbo', 'TABLE', N'Person', 'COLUMN', N'Address'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người tạo', 'SCHEMA', N'dbo', 'TABLE', N'Person', 'COLUMN', N'CreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày tạo', 'SCHEMA', N'dbo', 'TABLE', N'Person', 'COLUMN', N'CreatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người sửa', 'SCHEMA', N'dbo', 'TABLE', N'Person', 'COLUMN', N'ModifiedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày sửa', 'SCHEMA', N'dbo', 'TABLE', N'Person', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mã đối tượng', 'SCHEMA', N'dbo', 'TABLE', N'Person', 'COLUMN', N'PersonCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa chính', 'SCHEMA', N'dbo', 'TABLE', N'Person', 'COLUMN', N'PersonID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tên đối tượng', 'SCHEMA', N'dbo', 'TABLE', N'Person', 'COLUMN', N'PersonName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa ngoại (Loại đối tượng)', 'SCHEMA', N'dbo', 'TABLE', N'Person', 'COLUMN', N'PersonTypeID'
GO
