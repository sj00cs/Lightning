int startX = 320;
int startY = 0;
int endX = 320;
int endY = 0;

void setup() {
size(640, 480);
strokeWeight(2);
background(10, 10, 25);
}

void draw() {
float r = 150 + (float)(Math.random() * 105); // 150 to 255
float g = 150 + (float)(Math.random() * 105); // 150 to 255

while (endY < height) {
endX = startX + (int)(Math.random() * 19) - 9; // -9 to 9
endY = startY + (int)(Math.random() * 10); // 0 to 9

// wide, faint glow underneath a thin bright core
stroke(r, g, 255, 80);
strokeWeight(5);
line(startX, startY, endX, endY);

stroke(255);
strokeWeight(1);
line(startX, startY, endX, endY);

startX = endX;
startY = endY;
}
}

void mousePressed() {
background(10, 10, 25);
startX = (int)(Math.random() * width);
startY = 0;
endX = startX;
endY = startY;
}
