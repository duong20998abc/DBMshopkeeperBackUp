CREATE TABLE [dbo].[Supplier]
(
[SupplierID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Supplier_SupplierID] DEFAULT (newid()),
[SupplierName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SupplierCode] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxNumber] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Supplier_CreatedDate] DEFAULT (getdate()),
[ModifiedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Supplier] ADD CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED  ([SupplierID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bảng nhà cung cấp', 'SCHEMA', N'dbo', 'TABLE', N'Supplier', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Địa chỉ', 'SCHEMA', N'dbo', 'TABLE', N'Supplier', 'COLUMN', N'Address'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người tạo', 'SCHEMA', N'dbo', 'TABLE', N'Supplier', 'COLUMN', N'CreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày tạo', 'SCHEMA', N'dbo', 'TABLE', N'Supplier', 'COLUMN', N'CreatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người sửa đổi', 'SCHEMA', N'dbo', 'TABLE', N'Supplier', 'COLUMN', N'ModifiedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày sửa đổi', 'SCHEMA', N'dbo', 'TABLE', N'Supplier', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Số điện thoại', 'SCHEMA', N'dbo', 'TABLE', N'Supplier', 'COLUMN', N'PhoneNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mã nhà cung cấp', 'SCHEMA', N'dbo', 'TABLE', N'Supplier', 'COLUMN', N'SupplierCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa chính', 'SCHEMA', N'dbo', 'TABLE', N'Supplier', 'COLUMN', N'SupplierID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tên nhà cung cấp', 'SCHEMA', N'dbo', 'TABLE', N'Supplier', 'COLUMN', N'SupplierName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mã số thuế', 'SCHEMA', N'dbo', 'TABLE', N'Supplier', 'COLUMN', N'TaxNumber'
GO
