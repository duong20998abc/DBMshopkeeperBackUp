CREATE TABLE [dbo].[InvoiceDetail]
(
[InvoiceDetailID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_InvoiceDetail_InvoiceDetailID] DEFAULT (newid()),
[InvoiceID] [uniqueidentifier] NOT NULL,
[ProductName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SKU] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UnitID] [uniqueidentifier] NOT NULL,
[Storage] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UnitPrice] [money] NULL CONSTRAINT [DF_InvoiceDetail_UnitPrice] DEFAULT ((0)),
[DiscountPercentage] [decimal] (18, 4) NULL CONSTRAINT [DF_InvoiceDetail_DiscountPercentage] DEFAULT ((0)),
[TaxPercentage] [decimal] (18, 4) NULL CONSTRAINT [DF_InvoiceDetail_TaxPercentage] DEFAULT ((0)),
[Quantity] [decimal] (18, 4) NULL CONSTRAINT [DF_InvoiceDetail_Quantity] DEFAULT ((0)),
[ModifiedDate] [datetime] NOT NULL,
[Barcode] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CategoryID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_InvoiceDetail_CategoryID] DEFAULT (newid()),
[CreatedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_InvoiceDetail_CreatedDate] DEFAULT (getdate()),
[ModifiedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InvoiceDetail] ADD CONSTRAINT [PK_InvoiceDetail] PRIMARY KEY CLUSTERED  ([InvoiceDetailID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InvoiceDetail] ADD CONSTRAINT [FK_InvoiceDetail_Category] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[InvoiceDetail] ADD CONSTRAINT [FK_InvoiceDetail_Invoice] FOREIGN KEY ([InvoiceID]) REFERENCES [dbo].[Invoice] ([InvoiceID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetail] ADD CONSTRAINT [FK_InvoiceDetail_Unit] FOREIGN KEY ([UnitID]) REFERENCES [dbo].[Unit] ([UnitID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bảng chi tiết hóa đơn', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mã vạch', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'Barcode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa ngoại', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'CategoryID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người tạo', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'CreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày tạo', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'CreatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'% CK', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'DiscountPercentage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa chính', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'InvoiceDetailID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa ngoại (Bảng hóa đơn)', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'InvoiceID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người sửa đổi', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'ModifiedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày sửa đổi', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tên sản phẩm', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'ProductName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Số lượng', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'Quantity'
GO
EXEC sp_addextendedproperty N'MS_Description', N'SKU', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'SKU'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Kho', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'Storage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Thuế suất', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'TaxPercentage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa ngoại ( Bảng đơn vị tính)', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'UnitID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Đơn giá', 'SCHEMA', N'dbo', 'TABLE', N'InvoiceDetail', 'COLUMN', N'UnitPrice'
GO
