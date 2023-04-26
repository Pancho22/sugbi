create table catalog.prestamo (
  prestamo_id bigint generated always as identity primary key,
  user_id bigint not null unique,
  pretamo_fecha date,
  fin_fecha date,
  book_id bigint not null references catalog.book,
  check((fin_fecha - pretamo_fecha)<= 14)
);