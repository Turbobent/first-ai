
Popluation test;
PVector goal = new PVector(400,10);

void setup(){
    size(800,800);
    test = new Popluation(2000);
}

void draw(){
  background(255);
  fill(255,0,0);
  ellipse(goal.x,goal.y,10,10);
  
  fill(0,0,255);
  //2
  rect(0,300,600,10);
  //1
  rect(100,450,700,10);
  //3
  rect(0,600,420,10);
  rect(500,600,420,10);

  if(test.allDotsDead()){
    test.calculateFitness();
    test.naturalSelection();
    test.mutateDemBabies();
  }else{
  
  test.update();
  test.show();
  }
}
