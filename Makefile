JAVA=java
JAVAC=javac
JFLEX=jflex
#Edit PROGRAM variable always
PROGRAM=PLC
CUP=$(JAVA) java_cup.Main <
CP=.:$(CLASSPATH)

all: output.txt

#test: output.txt
#	@(diff output.txt output.good && echo "Test OK!") || echo "Test failed!"

output.txt: $(PROGRAM).class test.txt
	$(JAVA) -cp $(CP) $(PROGRAM) test.txt > output.txt

$(PROGRAM).class: $(PROGRAM).java Yylex.java parser.java

%.class: %.java
	$(JAVAC) -cp $(CP) $^

Yylex.java: $(PROGRAM).flex
	$(JFLEX) $(PROGRAM).flex

parser.java: $(PROGRAM).cup
	$(CUP) $(PROGRAM).cup

clean:
	rm -f parser.java Yylex.java sym.java output.txt *.class *~

run:
	$(JAVA) -cp $(CP) $(PROGRAM) test.txt
