//import com.hamoid.*;
//VideoExport videoExport;

void keyPressed() {
  save("video/when-love-seems-gone-"+System.currentTimeMillis()+".png");

  if (key == 'q') {
    //videoExport.endMovie();
    exit();
  }
}

String letters;
PFont cousine;

float fontsize = 17;
float angle = 0;

void setup() {
  size(1280, 720, P3D);
  //videoExport = new VideoExport(this);
  //videoExport.startMovie();

  letters = "    M.A.R.S {     When Love Seems Gone () More..Share  |  wh.n.l..e.seems:g0n' ,. (#sound of broken heart) ::://m-a-r-s-music/when-love-seems-gone:            >>> 10_when_love_seems_gone.mp3  } ";
  cousine = createFont("data/Cousine/Cousine-Regular.ttf", fontsize);
  textFont(cousine);
}

void draw() {
  background(255);
  fill(0, 100);
  float n = map(frameCount, 0, 30000, 0, 1);
  float z = 0.0f;
  float u = width/2 - 50;
  float v = height/2 - 50;
  float c = fontsize;
  float i = 0.0f;
  float r = 80;
  int l = 0;
  translate(width/2, height/2);
  rotateY(angle);
  for (float y = -v; y < v; y+=c) {
    for (float x = -u; x < u; x+=c) {
      z = sin(i) * r;
      fill(0);
      pushMatrix();
      translate(x, y, z);
      text(letters.charAt(l), 0, 0);
      popMatrix();
      i += n;
      if (l < letters.length()-1) { l++; } else { l = 0; }
    }
  }
  angle += 0.001;
  //videoExport.saveFrame();
}
