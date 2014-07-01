void setup() {
	size(400, 400);
	background(255, 255, 255);
	size=100;
	

}

void roundRect(float x, float y, float w, float h)
{
  float corner = w/10.0;
  float midDisp = w/20.0;
  
  beginShape();  
  curveVertex(x+corner,y);
  curveVertex(x+w-corner,y);
  curveVertex(x+w+midDisp,y+h/2.0);
  curveVertex(x+w-corner,y+h);
  curveVertex(x+corner,y+h);
  curveVertex(x-midDisp,y+h/2.0);
  
  curveVertex(x+corner,y);
  curveVertex(x+w-corner,y);
  curveVertex(x+w+midDisp,y+h/2.0);
  endShape();

} 



void draw() {
	var size=100;
	var faceSize=size;
	var earSize=size/3;
	var eyeSize=size/3;
	var noseSize=eyeSize;
	var upMouth=eyeSize/3;
	var downMouth=upMouth*1.5;
	var wrinkle=downMouth;
	var cheek=upMouth*1.5;
	var bodyWidth= size*.9;
	var bodyHeight= size*1.2;
	var footSize=earSize/1.5;
	var y=100
	var x=180;

	
	// if(x==0){
		
	// }else{
	// 	x=x-2
	// }



	background(255,255,255);

	noStroke();

	//foot
	fill(0,0,0);
	ellipse(x-faceSize/3,y+size*1.2,footSize,footSize);
	ellipse(x+faceSize/3,y+size*1.2,footSize,footSize);	

	//body
	stroke(0,0,0);
	fill(0,0,0);
	roundRect(x-size/1.72,y+size/5,bodyWidth*0.3,bodyHeight*0.6);//hand
	//if(x!=0){
		roundRect(x+size/3.333,y+size/5,bodyWidth*0.3,bodyHeight*0.6);//right hand	
	//}
	



	fill(255,255,255);
	roundRect(x-size/2.222,y,bodyWidth,bodyHeight);

	//ear
	fill(0,0,0);
	ellipse(x-faceSize/3,y-faceSize/2.5,earSize,earSize);
	ellipse(x+faceSize/3,y-faceSize/2.5,earSize,earSize);

	//face
	stroke(0,0,0);
	fill(255,255,255);
	ellipse(x,y,faceSize/0.8,faceSize);


	//eyes
	fill(0,0,0);
	ellipse(x-faceSize/4,y-faceSize/7,eyeSize*1.3,eyeSize*1.2);
	ellipse(x+faceSize/4,y-faceSize/7,eyeSize*1.3,eyeSize*1.2);

	fill(255,255,255);
	ellipse(x-faceSize/4,y-faceSize/7,eyeSize*1.3,eyeSize/3);
	ellipse(x+faceSize/4,y-faceSize/7,eyeSize*1.3,eyeSize/3);

	fill(0,0,0);
	ellipse(x-faceSize/4,y-faceSize/7,eyeSize/4,eyeSize/4);
	ellipse(x+faceSize/4,y-faceSize/7,eyeSize/4,eyeSize/4);

	//eyes
	ellipse(x-faceSize/30,y+faceSize/18,eyeSize/8,eyeSize/8);
	ellipse(x+faceSize/30,y+faceSize/18,eyeSize/8,eyeSize/8);

	//mouth
	fill(255, 0, 0);
	arc(x-faceSize/16, y+faceSize/5, upMouth, upMouth,  PI,PI*2);
	arc(x+faceSize/16, y+faceSize/5, upMouth, upMouth,  PI,PI*2);
	arc(x, y+faceSize/5, downMouth*1.5, downMouth,  0,PI);
	line(x-faceSize/8,y+faceSize/5, x+faceSize/8, y+faceSize/5);
	
	//checck
	noStroke();
	ellipse(x+faceSize/2,y+faceSize/5,cheek,cheek);
	ellipse(x-faceSize/2,y+faceSize/5,cheek,cheek);

	//wrinkle
	stroke(0,0,0);
	line(x-faceSize/20,y-faceSize/2, x-faceSize/20, y-faceSize/3);
	line(x+faceSize/20,y-faceSize/2, x+faceSize/20, y-faceSize/3);
	line(x-faceSize/25,y-faceSize/3, x-faceSize/10, y-faceSize/4);
	line(x+faceSize/20,y-faceSize/3, x+faceSize/10, y-faceSize/4);


	//check wrinkle
	line(x-faceSize/2.5,y-faceSize/20, x-faceSize/3, y+faceSize/3);
	line(x+faceSize/2.8,y+faceSize/30, x+faceSize/3, y+faceSize/3);
	

	line(x-faceSize/3,y+faceSize/3, x-faceSize/5, y+faceSize/2.1);
	line(x+faceSize/3,y+faceSize/3, x+faceSize/5, y+faceSize/2.1);

	stroke(0,0,0);
	fill(0,0,0);

	// if(x==0){
	// 	roundRect(x+size/30,y+size/3,bodyWidth*0.6,bodyHeight*0.12);//right hand
	// }

}