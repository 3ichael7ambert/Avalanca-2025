thickness=ceil(random(10));

size=.7-(random(3)/10);
x_dist=(x-sb_p1.x)/50;
y_dist=(y-sb_p1.y)/50;

  puff[0] = 1;
  i = 1;
  while (i < thickness) { puff[i] = random(2*puff[i-1])*choose(1,-1); i += 1;}




