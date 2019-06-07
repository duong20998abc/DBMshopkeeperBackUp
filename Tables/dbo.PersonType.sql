CREATE TABLE [dbo].[PersonType]
(
[PersonTypeID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_PersonType_PersonTypeID] DEFAULT (newid()),
[PersonTypeName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_PersonType_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL,
[ModifiedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PersonType] ADD CONSTRAINT [PK_PersonType] PRIMARY KEY CLUSTERED  ([PersonTypeID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người tạo', 'SCHEMA', N'dbo', 'TABLE', N'PersonType', 'COLUMN', N'CreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày tạo', 'SCHEMA', N'dbo', 'TABLE', N'PersonType', 'COLUMN', N'CreatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người sửa', 'SCHEMA', N'dbo', 'TABLE', N'PersonType', 'COLUMN', N'ModifiedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày sửa', 'SCHEMA', N'dbo', 'TABLE', N'PersonType', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa chính', 'SCHEMA', N'dbo', 'TABLE', N'PersonType', 'COLUMN', N'PersonTypeID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tên loại đối tượng', 'SCHEMA', N'dbo', 'TABLE', N'PersonType', 'COLUMN', N'PersonTypeName'
GO
