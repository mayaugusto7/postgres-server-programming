select fruit_qty_larger_than('("apple", 3)'::fruit_qty,'("orange", 2)'::fruit_qty);
select fruit_qty_larger_than('("apple", 4)'::fruit_qty,'("orange", 2)'::fruit_qty);

create operator > (
    leftarg = fruit_qty,
    rightarg = fruit_qty,
    procedure = fruit_qty_larger_than,
    commutator = >
);

select '("orange", 2)'::fruit_qty > '("apple", 2)'::fruit_qty;
select '("orange", 2)'::fruit_qty > '("apple", 3)'::fruit_qty;