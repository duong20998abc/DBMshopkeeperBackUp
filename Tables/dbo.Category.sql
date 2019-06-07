CREATE TABLE [dbo].[Category]
(
[CategoryID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Category_CategoryID] DEFAULT (newid()),
[CategoryName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CategoryCode] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Category_CreatedDate] DEFAULT (getdate()),
[ModifiedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Category] ADD CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED  ([CategoryID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bảng danh mục sản phẩm', 'SCHEMA', N'dbo', 'TABLE', N'Category', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mã danh mục', 'SCHEMA', N'dbo', 'TABLE', N'Category', 'COLUMN', N'CategoryCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa chính', 'SCHEMA', N'dbo', 'TABLE', N'Category', 'COLUMN', N'CategoryID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tên danh mục', 'SCHEMA', N'dbo', 'TABLE', N'Category', 'COLUMN', N'CategoryName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người tạo', 'SCHEMA', N'dbo', 'TABLE', N'Category', 'COLUMN', N'CreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày tạo', 'SCHEMA', N'dbo', 'TABLE', N'Category', 'COLUMN', N'CreatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mô tả', 'SCHEMA', N'dbo', 'TABLE', N'Category', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người sửa đổi', 'SCHEMA', N'dbo', 'TABLE', N'Category', 'COLUMN', N'ModifiedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày sửa đổi', 'SCHEMA', N'dbo', 'TABLE', N'Category', 'COLUMN', N'ModifiedDate'
GO
