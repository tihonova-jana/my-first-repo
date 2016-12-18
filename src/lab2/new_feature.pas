PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Min: CHAR;
  F1, F2: TEXT;
BEGIN
  ASSIGN(F1, 'INPUT.TXT');
  ASSIGN(F2, 'F2.TXT');
  REWRITE(F1);
  WRITE(OUTPUT, '‚е®¤­лҐ ¤ ­­лҐ: ');
  READ(INPUT, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITE(F1, Ch);
      WRITE(OUTPUT, Ch);
      READ(INPUT, Ch)
    END;
  WRITELN(OUTPUT);
  WRITELN(F1, '#');
  WRITE(OUTPUT, '‚ле®¤­лҐ ¤ ­­лҐ: ');
  RESET(F1);
  READ(F1, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      REWRITE(F2);
      Min := Ch;
      WHILE Ch <> '#'
      DO
        BEGIN
          IF Ch < Min
          THEN
            BEGIN
              WRITE(F2, Min);
              Min :=Ch;
            END
          ELSE
            WRITE(F2, Ch);
          READ(F1, Ch)
        END;
      REWRITE(F1);
      WRITE(F1, '#');
      WRITE(F2, '#');
      WRITE(OUTPUT, Min);
      RESET(F2);
      READ(F2, Ch);
      WHILE Ch <> '#'
      DO
        BEGIN
          WRITE(F1, Ch);
          READ(F2, Ch)
        END;
      WRITE(F1, '#');
      RESET(F1);
      READ(F1, Ch)
    END;
  WRITELN(OUTPUT);
END.