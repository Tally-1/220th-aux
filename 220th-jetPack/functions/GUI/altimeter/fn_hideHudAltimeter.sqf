(_self get "stick")     call ["hide"];
{_x call ["hide"]} forEach (_self get "indicator");
{_x call ["hide"]} forEach (_self get "arrows");

true;