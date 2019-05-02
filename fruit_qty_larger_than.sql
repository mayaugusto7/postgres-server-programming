create type fruit_qty as (name text, qty int);

select '("APPLE", 3)'::fruit_qty;

create function fruit_qty_larger_than(left_fruit fruit_qty,
									  right_fruit fruit_qty)
									  returns bool
									  as $$
									  begin
										if (left_fruit.name = 'APPLE' and
											 right_fruit.name = 'ORANGE') then
												return left_fruit.qty > (1.5 * 
										  			   right_fruit.qty);
										end if;
										if (left_fruit.name = 'ORANGE' and
											 right_fruit.name = 'APPLE') then
											 	return (1.5 * left_fruit.qty) >
											 			right_fruit.qty;
										end if;
										
										return left_fruit.qty > right_fruit.qty;
									  end;
									  $$
									  language plpgsql;