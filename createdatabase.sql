CREATE DATABASE foy3 ON PRIMARY 
(
    NAME = foy3,
    FILENAME = 'C:\Users\LENOVO\OneDrive\Masaüstü\VTL\foy3.mdf',
    SIZE = 8MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
)
LOG ON 
(
    NAME = foy3log,
    FILENAME = 'C:\Users\LENOVO\OneDrive\Masaüstü\VTL\foy3.ldf',
    SIZE = 8MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
);
