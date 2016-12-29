/* Clase Principal 
  
  Compilacion en fedora:
  jflex Calculadora.flex
  java java_cup.Main < Calculadora.cup
  javac -cp .:$CLASSPATH *.java
  java -cp .:$CLASSPATH Calculadora test.txt
*/
import java.io.FileReader;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.io.InputStreamReader;
import java.io.Reader;

public class PLC {
	public static void main(String argv[]) {    
    try {
      Reader in = new InputStreamReader(System.in);	
      Utils.setOutput();
      if (argv.length>0) {
    	  in = new FileReader(argv[0]);
      }
      if (argv.length>1) {
    	  Utils.setOutput(argv[1]);
      }
      parser p = new parser(new Yylex(in));
      Object result = p.parse().value;      
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}