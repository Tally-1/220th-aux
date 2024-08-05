(_self get "stick")     call ["show"];
{_x call ["show"]} forEach (_self get "indicator");
{_x call ["show"]} forEach (_self get "arrows");

true;