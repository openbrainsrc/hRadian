<h3>Example 56 (date axis formatting)</h3>

<plot height=300 aspect=3 stroke-width=2 stroke="red"
      axis-x-label="off">
  <lines x="[[vic2012ooa.date]]" y="[[vic2012ooa.tmp]]"/>
</plot>

<plot height=300 aspect=3 stroke-width=2 stroke="red"
      axis-x-label="off" axis-x-format="%Y-%m">
  <lines x="[[vic2012ooa.date]]" y="[[vic2012ooa.tmp]]"/>
</plot>

<plot height=300 aspect=3 stroke-width=2 stroke="red"
      axis-x-label="off" axis-x-format="%W" axis-x-ticks="2week">
  <lines x="[[vic2012ooa.date]]" y="[[vic2012ooa.tmp]]"/>
</plot>

<plot-data name="vic2012ooa" format="csv" cols="date,tmp,prc">
  <metadata name="date" format="date" date-format="%b"></metadata>
  <metadata name="tmp" label="Temperature" units="&deg;C"></metadata>
  <metadata name="prc" label="Rainfall" units="mm/day"></metadata>
  "2012-01-01",  3.80,  0.90
  "2012-01-02",  5.50,  3.40
  "2012-01-03",  7.90,  9.40
  "2012-01-04",  8.50, 13.00
  "2012-01-05",  4.90,  3.20
  "2012-01-06",  2.70,  1.40
  "2012-01-07",  5.70,  1.60
  "2012-01-08",  6.50,  0.60
  "2012-01-09",  6.80,  0.40
  "2012-01-10",  2.20,  0.00
  "2012-01-11",  1.40,  0.00
  "2012-01-12",  1.60,  0.00
  "2012-01-13", -0.10,  0.00
  "2012-01-14",  1.70,  3.40
  "2012-01-15", -1.10,  0.00
  "2012-01-16", -1.20,  0.00
  "2012-01-17", -1.40,  0.00
  "2012-01-18", -3.80,  0.00
  "2012-01-19", -2.60,  0.00
  "2012-01-20",  2.60, 15.40
  "2012-01-21",  5.50,  3.20
  "2012-01-22",  5.10,  2.20
  "2012-01-23",  5.50,  2.70
  "2012-01-24",  7.50, 13.00
  "2012-01-25",  6.80, 12.80
  "2012-01-26",  4.00,  3.40
  "2012-01-27",  2.50,  0.00
  "2012-01-28",  2.70,  0.50
  "2012-01-29",  5.40, 11.00
  "2012-01-30",  7.60,  0.80
  "2012-01-31",  6.80,  1.80
  "2012-02-01",  4.90,  6.60
  "2012-02-02",  4.90,  0.00
  "2012-02-03",  4.70,  0.00
  "2012-02-04",  4.10,  0.00
  "2012-02-05",  3.20,  0.00
  "2012-02-06",  4.80,  0.00
  "2012-02-07",  5.10,  0.00
  "2012-02-08",  6.40,  5.60
  "2012-02-09",  5.60, 12.20
  "2012-02-10",  8.10,  3.60
  "2012-02-11",  7.50,  0.20
  "2012-02-12",  6.40,  2.80
  "2012-02-13",  5.90,  1.00
  "2012-02-14",  4.10,  0.40
  "2012-02-15",  3.20,  0.00
  "2012-02-16",  4.20,  5.00
  "2012-02-17",  6.80,  4.80
  "2012-02-18",  4.30, 20.60
  "2012-02-19",  3.70,  0.00
  "2012-02-20",  4.40,  2.70
  "2012-02-21",  8.30,  1.20
  "2012-02-22",  7.10,  0.00
  "2012-02-23",  4.20,  0.20
  "2012-02-24",  5.20, 28.00
  "2012-02-25",  6.00,  0.80
  "2012-02-26",  0.80,  0.20
  "2012-02-27",  0.20,  0.00
  "2012-02-28",  2.40,  0.20
  "2012-02-29",  2.20,  6.40
  "2012-03-01",  3.90,  0.40
  "2012-03-02",  3.60,  2.60
  "2012-03-03",  9.30,  0.20
  "2012-03-04",  8.50,  0.60
  "2012-03-05",  4.40,  8.70
  "2012-03-06",  3.00,  0.00
  "2012-03-07",  2.10,  0.00
  "2012-03-08",  4.60,  0.00
  "2012-03-09",  5.10,  7.60
  "2012-03-10",  6.90,  7.40
  "2012-03-11",  6.20,  0.20
  "2012-03-12",  4.60,  6.60
  "2012-03-13",  3.00,  0.20
  "2012-03-14",  4.40,  2.80
  "2012-03-15",  8.40, 14.20
  "2012-03-16",  6.60,  2.00
  "2012-03-17",  7.20,  0.40
  "2012-03-18",  3.90,  0.60
  "2012-03-19",  2.40,  0.00
  "2012-03-20",  4.20,  6.70
  "2012-03-21",  4.00,  0.20
  "2012-03-22",  3.10,  0.00
  "2012-03-23",  5.10,  0.00
  "2012-03-24",  5.70,  0.00
  "2012-03-25",  8.00,  0.00
  "2012-03-26",  6.70,  2.40
  "2012-03-27",  9.30,  0.40
  "2012-03-28",  8.90,  2.60
  "2012-03-29",  7.40,  8.60
  "2012-03-30",  5.80, 11.20
  "2012-03-31",  3.70,  2.60
  "2012-04-01",  6.80,  4.50
  "2012-04-02",  9.90,  0.00
  "2012-04-03",  6.70,  1.80
  "2012-04-04",  4.30,  0.00
  "2012-04-05",  6.20,  0.00
  "2012-04-06",  4.80,  0.00
  "2012-04-07",  6.20,  0.00
  "2012-04-08",  8.70,  0.00
  "2012-04-09", 11.50,  0.00
  "2012-04-10", 11.60,  0.00
  "2012-04-11",  8.90,  4.20
  "2012-04-12",  8.40,  1.20
  "2012-04-13",  8.20,  0.00
  "2012-04-14",  7.90,  0.00
  "2012-04-15", 10.10,  0.00
  "2012-04-16",  9.50,  8.40
  "2012-04-17",  5.70,  1.00
  "2012-04-18", 10.20,  1.00
  "2012-04-19",  7.50,  8.20
  "2012-04-20",  9.30,  0.60
  "2012-04-21",  8.80,  0.00
  "2012-04-22", 13.00,  0.00
  "2012-04-23", 13.10,  0.00
  "2012-04-24", 11.00,  3.60
  "2012-04-25", 11.90,  4.00
  "2012-04-26", 11.10,  0.20
  "2012-04-27",  8.00,  1.60
  "2012-04-28", 10.30,  0.20
  "2012-04-29", 11.60,  0.90
  "2012-04-30", 10.70,  5.10
  "2012-05-01",  9.00,  0.00
  "2012-05-02",  7.40,  0.00
  "2012-05-03",  9.10,  7.80
  "2012-05-04", 10.50,  0.00
  "2012-05-05",  8.40,  0.00
  "2012-05-06",  9.70,  0.00
  "2012-05-07", 12.10,  0.00
  "2012-05-08", 13.70,  0.00
  "2012-05-09",  9.80,  0.00
  "2012-05-10",  8.60,  0.00
  "2012-05-11",  9.30,  0.00
  "2012-05-12", 12.80,  0.00
  "2012-05-13", 14.60,  0.00
  "2012-05-14", 15.90,  0.00
  "2012-05-15", 12.90,  0.00
  "2012-05-16", 12.40,  0.00
  "2012-05-17", 10.50,  0.00
  "2012-05-18",  9.30,  0.00
  "2012-05-19", 10.60,  0.00
  "2012-05-20", 12.40,  0.00
  "2012-05-21", 13.80,  7.00
  "2012-05-22", 11.10,  0.30
  "2012-05-23", 11.40,  0.30
  "2012-05-24", 10.90,  0.20
  "2012-05-25", 15.00,  0.00
  "2012-05-26", 16.60,  0.00
  "2012-05-27", 12.80,  0.00
  "2012-05-28", 13.00,  0.00
  "2012-05-29", 11.80,  0.00
  "2012-05-30", 12.10,  8.00
  "2012-05-31", 12.40,  1.20
  "2012-06-01", 15.80,  4.40
  "2012-06-02", 13.50,  1.00
  "2012-06-03", 11.50,  0.00
  "2012-06-04",  9.90,  0.50
  "2012-06-05", 13.30,  0.00
  "2012-06-06", 10.20,  0.20
  "2012-06-07", 11.60, 12.20
  "2012-06-08", 11.10,  2.20
  "2012-06-09", 12.20,  0.00
  "2012-06-10", 12.70,  0.00
  "2012-06-11", 13.80,  0.00
  "2012-06-12", 14.50,  0.00
  "2012-06-13", 14.20,  0.00
  "2012-06-14", 11.80,  0.00
  "2012-06-15", 12.10,  0.00
  "2012-06-16", 15.30,  0.60
  "2012-06-17", 15.00,  0.40
  "2012-06-18", 13.90,  1.50
  "2012-06-19", 14.40,  0.00
  "2012-06-20", 14.80,  0.00
  "2012-06-21", 16.30,  0.00
  "2012-06-22", 13.10, 10.80
  "2012-06-23", 13.80,  5.00
  "2012-06-24", 12.00,  0.00
  "2012-06-25", 14.00,  0.00
  "2012-06-26", 16.50,  0.00
  "2012-06-27", 13.00,  0.00
  "2012-06-28", 13.30,  1.80
  "2012-06-29", 16.70,  0.20
  "2012-06-30", 15.50,  3.20
  "2012-07-01", 16.20,  0.00
  "2012-07-02", 13.00,  4.30
  "2012-07-03", 14.30,  8.90
  "2012-07-04", 12.90,  0.00
  "2012-07-05", 15.00,  0.00
  "2012-07-06", 16.30,  0.00
  "2012-07-07", 17.50,  0.00
  "2012-07-08", 18.30,  0.00
  "2012-07-09", 17.30,  0.00
  "2012-07-10", 15.40,  0.00
  "2012-07-11", 16.80,  0.00
  "2012-07-12", 17.80,  0.00
  "2012-07-13", 18.00,  3.00
  "2012-07-14", 18.30,  0.00
  "2012-07-15", 15.00,  1.80
  "2012-07-16", 18.10,  0.00
  "2012-07-17", 18.50,  0.00
  "2012-07-18", 15.60,  0.00
  "2012-07-19", 17.80,  0.00
  "2012-07-20", 16.40,  2.40
  "2012-07-21", 17.00,  0.00
  "2012-07-22", 16.80,  0.00
  "2012-07-23", 17.80,  0.20
  "2012-07-24", 17.40,  0.00
  "2012-07-25", 17.40,  0.00
  "2012-07-26", 17.40,  0.00
  "2012-07-27", 15.80,  0.00
  "2012-07-28", 15.20,  0.00
  "2012-07-29", 16.40,  0.00
  "2012-07-30", 17.00,  0.00
  "2012-07-31", 17.10,  0.00
  "2012-08-01", 17.00,  0.00
  "2012-08-02", 17.20,  0.00
  "2012-08-03", 18.80,  0.00
  "2012-08-04", 21.60,  0.00
  "2012-08-05", 22.30,  0.00
  "2012-08-06", 17.20,  0.00
  "2012-08-07", 16.70,  1.40
  "2012-08-08", 15.70,  0.00
  "2012-08-09", 17.90,  0.00
  "2012-08-10", 17.20,  0.00
  "2012-08-11", 18.30,  0.00
  "2012-08-12", 20.60,  0.00
  "2012-08-13", 17.60,  0.00
  "2012-08-14", 18.40,  0.00
  "2012-08-15", 22.60,  0.00
  "2012-08-16", 22.10,  0.00
  "2012-08-17", 21.20,  0.00
  "2012-08-18", 16.20,  0.00
  "2012-08-19", 16.30,  0.00
  "2012-08-20", 17.70,  0.00
  "2012-08-21", 17.10,  0.00
  "2012-08-22", 17.00,  0.00
  "2012-08-23", 16.20,  0.00
  "2012-08-24", 15.00,  0.00
  "2012-08-25", 16.50,  0.00
  "2012-08-26", 14.20,  0.20
  "2012-08-27", 14.90,  0.00
  "2012-08-28", 16.50,  0.00
  "2012-08-29", 16.00,  0.00
  "2012-08-30", 15.10,  0.00
  "2012-08-31", 14.70,  0.00
  "2012-09-01", 14.90,  0.00
  "2012-09-02", 14.50,  0.00
  "2012-09-03", 15.20,  0.00
  "2012-09-04", 15.60,  0.00
  "2012-09-05", 15.60,  0.00
  "2012-09-06", 19.40,  0.00
  "2012-09-07", 18.60,  0.00
  "2012-09-08", 18.50,  0.00
  "2012-09-09", 14.20,  0.00
  "2012-09-10", 13.30,  0.20
  "2012-09-11", 10.90,  0.00
  "2012-09-12", 12.80,  0.00
  "2012-09-13", 14.90,  0.00
  "2012-09-14", 15.20,  0.00
  "2012-09-15", 14.90,  0.00
  "2012-09-16", 16.20,  0.00
  "2012-09-17", 17.30,  0.00
  "2012-09-18", 16.70,  0.00
  "2012-09-19", 14.60,  0.00
  "2012-09-20", 14.60,  0.00
  "2012-09-21", 11.50,  0.00
  "2012-09-22", 13.90,  0.00
  "2012-09-23", 13.30,  0.00
  "2012-09-24", 13.10,  0.00
  "2012-09-25", 12.90,  0.00
  "2012-09-26", 12.30,  0.00
  "2012-09-27", 14.00,  0.00
  "2012-09-28", 14.10,  2.00
  "2012-09-29", 12.20,  0.00
  "2012-09-30", 12.20,  0.00
  "2012-10-01", 15.30,  0.00
  "2012-10-02", 10.50,  0.00
  "2012-10-03", 11.10,  0.00
  "2012-10-04", 10.70,  0.00
  "2012-10-05", 11.50,  0.00
  "2012-10-06", 12.60,  0.00
  "2012-10-07", 13.70,  0.00
  "2012-10-08", 12.40,  0.00
  "2012-10-09",  9.30,  0.00
  "2012-10-10",  8.80,  0.00
  "2012-10-11", 10.40,  0.00
  "2012-10-12", 10.70,  3.60
  "2012-10-13", 13.60, 12.80
  "2012-10-14", 13.60, 17.20
  "2012-10-15", 10.20, 10.10
  "2012-10-16", 10.70,  0.00
  "2012-10-17",  8.00,  0.00
  "2012-10-18",  9.30, 13.80
  "2012-10-19", 10.70,  0.40
  "2012-10-20",  6.10,  0.00
  "2012-10-21",  6.30,  0.00
  "2012-10-22",  7.50,  3.80
  "2012-10-23",  7.70,  4.40
  "2012-10-24",  7.10,  3.80
  "2012-10-25",  7.90,  0.00
  "2012-10-26",  7.60,  6.20
  "2012-10-27",  8.70, 16.20
  "2012-10-28", 11.20,  0.80
  "2012-10-29", 12.30, 15.50
  "2012-10-30", 11.20, 29.80
  "2012-10-31", 10.50, 14.80
  "2012-11-01", 12.10,  1.40
  "2012-11-02", 11.60,  3.00
  "2012-11-03", 12.10,  9.00
  "2012-11-04", 12.80,  7.40
  "2012-11-05", 10.30,  0.00
  "2012-11-06",  9.10,  5.30
  "2012-11-07",  7.80,  0.60
  "2012-11-08",  6.90,  0.00
  "2012-11-09",  3.80,  0.00
  "2012-11-10",  2.10,  0.00
  "2012-11-11",  2.40, 23.80
  "2012-11-12",  7.30, 13.60
  "2012-11-13",  7.80,  0.20
  "2012-11-14",  5.90,  0.00
  "2012-11-15",  5.20,  0.00
  "2012-11-16",  6.20,  0.20
  "2012-11-17",  8.50,  2.20
  "2012-11-18",  7.50,  8.20
  "2012-11-19",  7.00, 25.80
  "2012-11-20",  7.90,  7.80
  "2012-11-21",  4.30, 15.00
  "2012-11-22",  4.30,  0.40
  "2012-11-23",  7.50, 10.40
  "2012-11-24",  4.70,  0.00
  "2012-11-25",  3.90,  0.00
  "2012-11-26",  3.10,  0.00
  "2012-11-27",  3.50,  0.00
  "2012-11-28",  3.40,  6.40
  "2012-11-29",  9.10,  0.80
  "2012-11-30",  9.50, 14.60
  "2012-12-01",  8.20, 21.00
  "2012-12-02",  8.60, 10.40
  "2012-12-03",  7.60, 12.30
  "2012-12-04",  9.60,  9.60
  "2012-12-05",  5.60,  5.80
  "2012-12-06",  4.10,  2.20
  "2012-12-07",  3.60,  6.20
  "2012-12-08",  3.50,  0.00
  "2012-12-09",  3.40,  5.40
  "2012-12-10",  3.60,  0.00
  "2012-12-11",  4.90,  2.80
  "2012-12-12",  5.30,  0.00
  "2012-12-13",  5.40,  5.20
  "2012-12-14",  3.40,  3.40
  "2012-12-15",  3.60,  0.80
  "2012-12-16",  4.10, 22.20
  "2012-12-17",  3.30, 10.50
  "2012-12-18",  2.50,  0.40
  "2012-12-19",  4.50, 26.80
  "2012-12-20",  3.70,  7.40
  "2012-12-21",  5.20,  0.40
  "2012-12-22",  4.40,  3.80
  "2012-12-23",  5.00,  0.40
  "2012-12-24",  3.90,  4.50
  "2012-12-25",  4.30, 27.10
  "2012-12-26",  5.00,  7.80
  "2012-12-27",  4.30,  0.40
  "2012-12-28",  5.00,  2.20
  "2012-12-29",  4.80,  2.80
  "2012-12-30",  2.70,  0.00
  "2012-12-31",  2.90,  4.30
</plot-data>
