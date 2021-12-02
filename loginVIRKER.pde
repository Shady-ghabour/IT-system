import de.bezier.data.sql.*;
import de.bezier.data.sql.mapper.*;
import static javax.swing.JOptionPane.*;
import javax.swing.JPasswordField;

SQLite db;

String initUser = showInputDialog("Opret username:");
String initPass = showInputDialog("Opret password:");
String insert = "INSERT INTO players (Username,Password) VALUES ('" + initUser + "', '" + initPass + "');";
String input = showInputDialog("Indtast dit brugernavn:");
String pwinput = showInputDialog("Indtast dit password:");
String check = "SELECT * FROM players WHERE Username='" + input + "' AND Password='" + pwinput + "';";
boolean isLogged = false;

void setup(){
db = new SQLite(this, "mydatabase.sqlite");
if(input.length() == 0 || pwinput.length() == 0){
println("Indtast både username og password.");
exit();
}
size(800,800);
background(142);

if(db.connect()){
  if(input.length()>0 && pwinput.length()>0){
    db.query(insert);
  }
  db.query(check);
  while(db.next()){
    isLogged = true;
  }
} 
}

void draw(){


if(isLogged){
fill(0,255,0);
textSize(48);
textAlign(CENTER);
text("Login Success :)", width/2, height/2);
} else {
fill(255,0,0);
textSize(48);
textAlign(CENTER);
text("Login Failed ;(", width/2, height/2);
}
noLoop();
}
