CREATE TABLE EventJournal (
  PersistenceID NVARCHAR(255) NOT NULL,
  SequenceNr BIGINT NOT NULL,
  Timestamp DATETIME2 NOT NULL,
  Manifest NVARCHAR(500) NOT NULL,
  Payload VARBINARY(MAX) NOT NULL,
  IsDeleted bit NULL
  CONSTRAINT PK_EventJournal PRIMARY KEY (PersistenceID, SequenceNr)
);
GO

CREATE TABLE SnapshotStore (
  PersistenceID NVARCHAR(255) NOT NULL,
  SequenceNr BIGINT NOT NULL,
  Timestamp DATETIME2 NOT NULL,
  Manifest NVARCHAR(500) NOT NULL,
  Snapshot VARBINARY(MAX) NOT NULL
  CONSTRAINT PK_SnapshotStore PRIMARY KEY (PersistenceID, SequenceNr)
);
GO

CREATE TABLE Metadata (
  PersistenceID NVARCHAR(255) NOT NULL,
  SequenceNr BIGINT NOT NULL,
  CONSTRAINT PK_Metadata PRIMARY KEY (PersistenceID, SequenceNr)
);
GO