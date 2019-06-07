CREATE TABLE [dbo].[Document]
(
[DocumentID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Document_DocumentID] DEFAULT (newid()),
[DocumentCode] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DocumentDate] [date] NOT NULL,
[TotalMoney] [money] NOT NULL CONSTRAINT [DF_Document_TotalMoney] DEFAULT ((0)),
[Reason] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AmountPaid] [money] NOT NULL CONSTRAINT [DF_Document_AmountPaid] DEFAULT ((0)),
[PersonID] [uniqueidentifier] NOT NULL,
[DocumentTypeID] [uniqueidentifier] NOT NULL,
[Name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmployeeID] [uniqueidentifier] NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Document_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL,
[ModifiedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Document] ADD CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED  ([DocumentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Document] ON [dbo].[Document] ([DocumentID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Document] ADD CONSTRAINT [FK_Document_DocumentType] FOREIGN KEY ([DocumentTypeID]) REFERENCES [dbo].[DocumentType] ([DocumentTypeID])
GO
ALTER TABLE [dbo].[Document] ADD CONSTRAINT [FK_Document_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Document] ADD CONSTRAINT [FK_Document_Person] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Person] ([PersonID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Số trả', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'AmountPaid'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người tạo', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'CreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày tạo', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'CreatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mã chứng từ', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'DocumentCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày chứng từ', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'DocumentDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa chính', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'DocumentID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa ngoại (Loại chứng từ)', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'DocumentTypeID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa ngoại (Bảng nhân viên)', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'EmployeeID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người sửa', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'ModifiedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày sửa', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tên người nộp/nhận', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa ngoại (Bảng đối tượng)', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'PersonID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Lý do', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'Reason'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tổng tiền', 'SCHEMA', N'dbo', 'TABLE', N'Document', 'COLUMN', N'TotalMoney'
GO
