CREATE TABLE [dbo].[Product]
(
[ProductID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Product_ProductID] DEFAULT (newid()),
[ProductName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SKU] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UnitID] [uniqueidentifier] NOT NULL,
[Storage] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UnitPrice] [money] NOT NULL,
[Barcode] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CategoryID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Product_CategoryID] DEFAULT (newid()),
[CreatedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Product_CreatedDate] DEFAULT (getdate()),
[ModifiedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED  ([ProductID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_Product_Category] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_Product_Unit] FOREIGN KEY ([UnitID]) REFERENCES [dbo].[Unit] ([UnitID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bảng sản phẩm, hàng hóa', 'SCHEMA', N'dbo', 'TABLE', N'Product', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mã vạch', 'SCHEMA', N'dbo', 'TABLE', N'Product', 'COLUMN', N'Barcode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa ngoại', 'SCHEMA', N'dbo', 'TABLE', N'Product', 'COLUMN', N'CategoryID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người tạo', 'SCHEMA', N'dbo', 'TABLE', N'Product', 'COLUMN', N'CreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày tạo', 'SCHEMA', N'dbo', 'TABLE', N'Product', 'COLUMN', N'CreatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người sửa đổi', 'SCHEMA', N'dbo', 'TABLE', N'Product', 'COLUMN', N'ModifiedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày sửa đổi', 'SCHEMA', N'dbo', 'TABLE', N'Product', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa chính', 'SCHEMA', N'dbo', 'TABLE', N'Product', 'COLUMN', N'ProductID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tên sản phẩm', 'SCHEMA', N'dbo', 'TABLE', N'Product', 'COLUMN', N'ProductName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'SKU', 'SCHEMA', N'dbo', 'TABLE', N'Product', 'COLUMN', N'SKU'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Kho', 'SCHEMA', N'dbo', 'TABLE', N'Product', 'COLUMN', N'Storage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa ngoại', 'SCHEMA', N'dbo', 'TABLE', N'Product', 'COLUMN', N'UnitID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Đơn giá', 'SCHEMA', N'dbo', 'TABLE', N'Product', 'COLUMN', N'UnitPrice'
GO
