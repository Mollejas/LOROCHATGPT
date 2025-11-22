-- Campos adicionales para roles por área en dbo.Usuarios
-- Ejecutar en la base de datos que usa la cadena de conexión "DaytonaDB".

IF COL_LENGTH('dbo.Usuarios', 'JefeServicio') IS NULL
    ALTER TABLE dbo.Usuarios ADD JefeServicio BIT NOT NULL CONSTRAINT DF_Usuarios_JefeServicio DEFAULT(0);

IF COL_LENGTH('dbo.Usuarios', 'JefeRefacciones') IS NULL
    ALTER TABLE dbo.Usuarios ADD JefeRefacciones BIT NOT NULL CONSTRAINT DF_Usuarios_JefeRefacciones DEFAULT(0);

IF COL_LENGTH('dbo.Usuarios', 'JefeAdministracion') IS NULL
    ALTER TABLE dbo.Usuarios ADD JefeAdministracion BIT NOT NULL CONSTRAINT DF_Usuarios_JefeAdministracion DEFAULT(0);

IF COL_LENGTH('dbo.Usuarios', 'JefeTaller') IS NULL
    ALTER TABLE dbo.Usuarios ADD JefeTaller BIT NOT NULL CONSTRAINT DF_Usuarios_JefeTaller DEFAULT(0);
