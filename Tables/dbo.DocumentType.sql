CREATE TABLE [dbo].[DocumentType]
(
[DocumentTypeID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_DocumentType_DocumentTypeID] DEFAULT (newid()),
[DocumentTypeName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_DocumentType_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL,
[ModifiedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentType] ADD CONSTRAINT [PK_DocumentType] PRIMARY KEY CLUSTERED  ([DocumentTypeID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người tạo', 'SCHEMA', N'dbo', 'TABLE', N'DocumentType', 'COLUMN', N'CreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày tạo', 'SCHEMA', N'dbo', 'TABLE', N'DocumentType', 'COLUMN', N'CreatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa chính', 'SCHEMA', N'dbo', 'TABLE', N'DocumentType', 'COLUMN', N'DocumentTypeID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tên loại chứng từ', 'SCHEMA', N'dbo', 'TABLE', N'DocumentType', 'COLUMN', N'DocumentTypeName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người sửa', 'SCHEMA', N'dbo', 'TABLE', N'DocumentType', 'COLUMN', N'ModifiedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày sửa', 'SCHEMA', N'dbo', 'TABLE', N'DocumentType', 'COLUMN', N'ModifiedDate'
GO
