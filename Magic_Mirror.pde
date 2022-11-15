// Name: Arjun Ramsinghani //<>//
// Course: Human Computer Interaction

Button [] buttons = new Button[6];
PImage img;

//JSONObject valuecalender;
//JSONObject valueweather;
//JSONObject valuesleep;
//JSONObject valuemessage;

int flag = 0;

int d = day();
String sd = String.valueOf(d);

void setup() {
  size(900, 950);
  img = loadImage("MirrorImage.jpeg");
  image(img, 0, 0);
  fill(255, 255, 255);
  rect(30, 20, 300, 150);

  fill(0, 0, 0);
  textSize(75);
  text("12:00 PM", 40, 120);  
}

void draw() {

  if (flag == 0) {
    push();
    // Buttons on left side
    buttons[0] = new Button(150, 550, 200, 100, "Calender", #FFFFFF);
    buttons[1] = new Button(150, 675, 200, 100, "Weather", #FFFFFF);
    buttons[2] = new Button(150, 800, 200, 100, "Health", #FFFFFF);

    // Buttons on right side
    buttons[3] = new Button(550, 550, 200, 100, "News", #FFFFFF);
    buttons[4] = new Button(550, 675, 200, 100, "Social", #FFFFFF);
    buttons[5] = new Button(550, 800, 200, 100, "Messages", #FFFFFF);
    pop();
  }

  if (flag == 1) {
    push();
    fill(#11CCF0);
    rect(350, 20, 500, 500);
    fill(#000000);
    textSize(50);
    text("Calender", 585, 50);
    //valuecalender = loadJSONObject("calenderformat.json");

    text("November ", 570, 100);
    text(sd, 700, 100);
    line(475, 150, 475, 480); // vertical
    line(380, 190, 820, 190); // horizontal

    textSize(40);
    text("Time", 420, 160); // time column
    text("Event", 650, 160); // event column
    //String time = valuecalender.getString("Time");
    //text(time, 420, 180);
    textSize(30);
    text("5:00 PM", 420, 200);
    text("Submit Project", 650, 200);
    //String event = valuecalender.getString("Event");
    //text(event, 620, 180);
    pop();
  }

  if (flag == 2) {
    push();
    fill(#B4D9FF);
    rect(350, 20, 500, 500);
    fill(#000000);
    textSize(50);
    text("Weather", 585, 50);
    //valueweather = loadJSONObject("weatherformat.json");
    text("43 F", 410, 110);
    
    line(470, 150, 470, 480); // vertical
    line(360, 190, 820, 190); // horizontal
    
    textSize(30);
    text("Day", 420, 165);
    textSize(20);
    text("Today", 420, 200);
    text("Wednesday", 420, 250);
    text("Thursday", 420, 300);
    text("Friday", 420, 350);
    
    textSize(30);
    text("Temperature & Condition", 650, 165);
    textSize(20);
    // temperatures
    text("47 F / 27 F", 550, 200);
    text("47 F / 25 F", 550, 250);
    text("51 F / 24 F", 550, 300);
    text("42 F / 25 F", 550, 350);
    // conditions
    text("Partly Sunny", 750, 200);
    text("Partly Sunny", 750, 250);
    text("Sunny", 750, 300);
    text("Partly Sunny", 750, 350);
    pop();
  }

  if (flag == 3) {
    push();
    fill(#11CCF0);
    rect(350, 20, 500, 500);
    fill(#000000);
    textSize(50);
    text("Health", 585, 50);
    //valuesleep = loadJSONObject("sleepformat.json");

    textSize(30);
    text("Your total sleep last night is:", 585, 150);
    textSize(50);
    text("8 hrs", 584, 200);

    textSize(30);
    text("Your average sleep for the week is:", 585, 300);
    textSize(50);
    text("7.5 hrs", 584, 350);
    pop();
  }

  if (flag == 4) {
    push();
    fill(#DBB3D2);
    rect(350, 20, 500, 500);
    fill(#000000);
    textSize(50);
    text("News", 585, 50);
    textSize(30);
    text("Local News", 585, 100);
    text("National News", 585, 150);
    text("Sports News", 585, 200);
    text("Financial News", 585, 250);
    
    pop();
  }

  if (flag == 5) {
    push();
    fill(#FFFFFF);
    rect(350, 20, 500, 500);
    fill(#000000);
    textSize(50);
    text("Social", 585, 50);
    
    textSize(30);
    text("Twitter", 405, 100);
    fill(#DA98E8);
    rect(395, 130, 400, 200, 20);
    fill(#FFFFFF);
    circle(430, 175, 50);
    fill(#000000);
    textSize(25);
    text("Arjun Ramsinghani", 560, 155);
    text("@ArjunRamsinghani", 565, 180);
    textSize(27);
    String t = "3rd project down, 1 more to go";
    text(t, 590, 230);
    textSize(15);
    text("11:30AM Twitter for Smart Mirror", 520, 270);
    pop();
  }

  if (flag == 6) {
    push();
    fill(#FFFFFF);
    rect(350, 20, 500, 500);
    fill(#000000);
    textSize(50);
    text("Messages", 585, 50);
    //valuemessage = loadJSONObject("messageformat.json");
    line(495, 150, 495, 480); // vertical
    line(380, 190, 820, 190); // horizontal
    textSize(40);
    text("Name", 430, 160); // time column
    text("Message", 650, 160); // event column
    textSize(30);
    text("Roy", 430, 200);
    textSize(20);
    text("Yo, did you complete the project", 640, 400);
    
    pop();
  }

  buttons[0].update();
  buttons[1].update();
  buttons[2].update();
  buttons[3].update();
  buttons[4].update();
  buttons[5].update();
}

void mousePressed() {
  //here the buttons will turn blue before displaying next page
  if (buttons[0].mouseOver() == true) {
    buttons[0].press = true;
    flag = 1; // show calender
  }

  if (buttons[1].mouseOver() == true) {
    buttons[1].press = true;
    flag = 2; // show weather
  }

  if (buttons[2].mouseOver() == true) {
    buttons[2].press = true;
    flag = 3; // show health
  }

  if (buttons[3].mouseOver() == true) {
    buttons[3].press = true;
    flag = 4; // show news
  }

  if (buttons[4].mouseOver() == true) {
    buttons[4].press = true;
    flag = 5; // show social
  }
  if (buttons[5].mouseOver() == true) {
    buttons[5].press = true;
    flag = 6; // show messages
  }
}

void mouseReleased() {
  //here the buttons will turn off after half a second
  if (buttons[0].press == true) {
    delay(500);
    buttons[0].press = false;
  }

  if (buttons[1].press == true) {
    delay(500);
    buttons[1].press = false;
  }

  if (buttons[2].press == true) {
    delay(500);
    buttons[2].press = false;
  }

  if (buttons[3].press == true) {
    delay(500);
    buttons[3].press = false;
  }

  if (buttons[4].press == true) {
    delay(500);
    buttons[4].press = false;
  }
  if (buttons[5].press == true) {
    delay(500);
    buttons[5].press = false;
  }
}
