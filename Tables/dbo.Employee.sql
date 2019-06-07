CREATE TABLE [dbo].[Employee]
(
[EmployeeID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Employee_EmployeeID] DEFAULT (newid()),
[EmployeeName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmployeeCode] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Birthday] [date] NOT NULL,
[Gender] [bit] NOT NULL,
[PhoneNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Employee_CreatedDate] DEFAULT (getdate()),
[ModifiedBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee] ADD CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED  ([EmployeeID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bảng nhân viên', 'SCHEMA', N'dbo', 'TABLE', N'Employee', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Địa chỉ', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'Address'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày sinh', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'Birthday'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người tạo', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'CreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày tạo', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'CreatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mã nhân viên', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'EmployeeCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa chính', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'EmployeeID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tên nhân viên', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'EmployeeName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Giới tính ( 0: nữ; 1 :nam)', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'Gender'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Người sửa đổi', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'ModifiedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ngày sửa đổi', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Số điện thoại', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'PhoneNumber'
GO
