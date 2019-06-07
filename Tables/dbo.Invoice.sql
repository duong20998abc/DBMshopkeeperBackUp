CREATE TABLE [dbo].[Invoice]
(
[InvoiceID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Invoice_InvoiceID] DEFAULT (newid()),
[ImportNumber] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExpenditureNumber] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ImportDate] [datetime] NOT NULL CONSTRAINT [DF_Invoice_ImportDate] DEFAULT (getdate()),
[ImportTime] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Explanation] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SupplierID] [uniqueidentifier] NOT NULL,
[EmployeeID] [uniqueidentifier] NOT NULL,
[TypeInvoice] [int] NOT NULL,
[Address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Deliver] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Receiver] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReasonExpenditure] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxCode] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[InvoiceNumber] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[InvoiceDate] [datetime] NOT NULL CONSTRAINT [DF_Invoice_InvoiceDate] DEFAULT (getdate()),
[CreatedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Invoice_CreatedDate] DEFAULT (getdate()),
[ModifiedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Invoice] ADD CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED  ([InvoiceID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Invoice] ADD CONSTRAINT [FK_Invoice_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Invoice] ADD CONSTRAINT [FK_Invoice_Supplier] FOREIGN KEY ([SupplierID]) REFERENCES [dbo].[Supplier] ([SupplierID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bảng hóa đơn', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Địa chỉ', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'Address'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người tạo', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'CreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày tạo', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'CreatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người giao', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'Deliver'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mã nhân viên', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'EmployeeID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Số phiếu chi', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'ExpenditureNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'DIễn giải', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'Explanation'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày nhập', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'ImportDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Số phiếu nhập', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'ImportNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Giờ nhập', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'ImportTime'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày hóa đơn', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'InvoiceDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa chính', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'InvoiceID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Số hóa đơn', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'InvoiceNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người sửa đổi', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'ModifiedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày sửa đổi', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Lý do chi', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'ReasonExpenditure'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người nhận', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'Receiver'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mã nhà cung cấp', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'SupplierID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mã số thuế', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'TaxCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Loại hóa đơn', 'SCHEMA', N'dbo', 'TABLE', N'Invoice', 'COLUMN', N'TypeInvoice'
GO
