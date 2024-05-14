/// Fading
if(state==FadeState.Out)
{
  scale = twerp(TwerpType.out_cubic, 0, 1, timer / length_out);
  timer++;
  if(timer >= length_out)
  {
    timer = 0;
    state = FadeState.In;
    if(target_room != noone)
      room_goto(target_room);
  }
}
else
{
	scale = twerp(TwerpType.out_cubic, 1, 0, timer / length_in);
  timer++
  if(timer >= length_in)
	{
    instance_destroy();
	}
}

enum FadeState{In, Out}


