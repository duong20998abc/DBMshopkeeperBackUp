CREATE TABLE [dbo].[Unit]
(
[UnitID] [uniqueidentifier] NOT NULL,
[UnitName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Unit] ADD CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED  ([UnitID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bảng đơn vị tính', 'SCHEMA', N'dbo', 'TABLE', N'Unit', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Khóa chính', 'SCHEMA', N'dbo', 'TABLE', N'Unit', 'COLUMN', N'UnitID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tên đơn vị', 'SCHEMA', N'dbo', 'TABLE', N'Unit', 'COLUMN', N'UnitName'
GO
