create or replace function reserve_stock_on_offer() returns trigger as $$
	begin
		if tg_op = 'INSERT' then
			update fruits_in_stock set reserved = reserved + new.offered_amount
			where name = new.fruit_name;
		elsif tg_op = 'UPDATE' then
			update fruits_in_stock set reserved = reserved - old.offered_amount
			+ new.offered_amount where name = new.fruit_name;
		elsif tg_op = 'DELETE' then
			update fruits_in_stock set reserved = reserved - old.offered_amount
			where name = old.fruit_name;
		end if;
		return new;
	end;
$$ language plpgsql;