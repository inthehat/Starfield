Particle[] part;//your code here
void setup()
{
	size(300,300);//your code here
	background(0);
	part = new Particle[150];
	for(int i=0; i<part.length-2; i++)
	{
		part[i] = new NormalParticle();
	}
	part[148] = new OddballParticle();
	part[149] = new JumboParticle();
}
void draw()
{
	background(0);
	for(int i=0; i<part.length; i++)//your code here
	{
		part[i].move();
		part[i].show();
	}
}
class NormalParticle implements Particle
{
	double dX, dY, dSpeed, dAngle;//your code here
	int color1, color2, color3;
	NormalParticle()
	{
		dX = 150;
		dY = 150;
		dSpeed = Math.random()*3;
		dAngle = Math.PI*2*Math.random();
		color1 = (int)(Math.random()*255);
		color2 = (int)(Math.random()*255);
		color3 = (int)(Math.random()*255);
	}
	public void move()
	{
		dX = dX + Math.cos(dAngle) * dSpeed;
		dY = dY + Math.sin(dAngle) * dSpeed;
		if(dX>300)
		{
			dY=150;
			dX=150;
			dAngle = Math.PI*2*Math.random();
		}
		if(dX<0)
		{
			dY=150;
			dX=150;
			dAngle = Math.PI*2*Math.random();
		}
		if(dY>300)
		{
			dY=150;
			dX=150;
			dAngle = Math.PI*2*Math.random();
		}
		if(dY<0)
		{
			dY=150;
			dX=150;
			dAngle = Math.PI*2*Math.random();
		}
	}
	public void show()
	{
		fill(color1,color2,color3);
		ellipse((float)dX,(float)dY,5,5);
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
	double fX, fY, fSpeed, fAngle;//your code here
	int color4;
	OddballParticle()
	{
		fX = 150;
		fY = 150;
		fSpeed = Math.random()*10;
		fAngle = Math.PI*2*Math.random();
		color4 = 255;
	}
	public void move()
	{
		fX = fX + Math.cos(fAngle) * fSpeed;
		fY = fY + Math.sin(fAngle) * fSpeed;
		if(fX>300)
		{
			fY=150;
			fX=150;
			fAngle = Math.PI*2*Math.random();
		}
		if(fX<0)
		{
			fY=150;
			fX=150;
			fAngle = Math.PI*2*Math.random();
		}
		if(fY>300)
		{
			fY=150;
			fX=150;
			fAngle = Math.PI*2*Math.random();
		}
		if(fY<0)
		{
			fY=150;
			fX=150;
			fAngle = Math.PI*2*Math.random();
		}
	}
	public void show()
	{
		fill(color4);
		ellipse((float)fX,(float)fY,10,10);
	}
}
class JumboParticle extends NormalParticle
	{
		public void show()
		{
		fill(color1);
		ellipse((float)dX,(float)dY,20,20);
		}
	}
