if destroy=false
{
image_alpha+=0.2;
}
if image_alpha>1 {
destroy=true;
}
if destroy=true
{
image_alpha-=0.01;
}

