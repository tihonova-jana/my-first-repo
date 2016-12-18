PROGRAM Split2Commit3(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN
  ASSIGN(Odds, 'Odds.txt');
  ASSIGN(Evens, 'Evens.txt');
  REWRITE(Odds);
  REWRITE(Evens);
  WRITE(OUTPUT, 'INPUT DATA: ');
  READ(INPUT, Ch);
  Next:= 'O';
  WHILE Ch <> '#'
  DO
    BEGIN
      IF Next = 'O'
      THEN
        BEGIN
          WRITE(Odds, Ch);
          READ(INPUT, Ch);
          Next:= 'E';
        END
      ELSE
        BEGIN
          WRITE(Evens, Ch);
          READ(INPUT, Ch);
          Next:= 'O';
        END
    END;
  WRITE(Evens, '#');
  WRITE(Odds, '#');
  RESET(Odds);
  READ(Odds, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITE(OUTPUT, Ch);
      READ(Odds, Ch);
    END;
  RESET(Evens);
  READ(Evens, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITE(OUTPUT, Ch);
      READ(Evens, Ch);
    END;
END.