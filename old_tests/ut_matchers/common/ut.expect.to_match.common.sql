declare
  l_actual    &1 := &2;
  l_pattern   varchar2(32767) := '&3';
  l_modifiers varchar2(32767) := '&4';
  l_result    integer;
begin
--Act
  ut.expect( l_actual ).&&6.to_match(l_pattern, l_modifiers);
  l_result := ut_expectation_processor.get_status();
--Assert
  if l_result = &5 then
    :test_result := ut_utils.gc_success;
  else
    dbms_output.put_line('expected: '''||l_actual||''', to match: '''||l_pattern||''' using modifiers:'''||l_modifiers||'''' );
  end if;
end;
/
