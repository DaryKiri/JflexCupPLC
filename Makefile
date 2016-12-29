JAVA=java
JAVAC=javac
JFLEX=jflex
#Edit PROGRAM variable always
PROGRAM=PLC
TESTDIR=./testCases
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
	rm -f parser.java Yylex.java sym.java output.txt *.class plUtils/*.class *~

run:
	$(JAVA) -cp $(CP) $(PROGRAM) test.txt

testA: #TODO change to a for
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/a0.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/a1.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/a2.pl

testB:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/b0.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/b1.pl

testC:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/c0.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/c1.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/c2.pl

testD:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d0.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d1.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d2.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d3.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d4.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d5.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d6.pl

testF:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/f0.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/f1.pl

testG:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/g1.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/g2.pl	

testH:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/h0.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/h1.pl
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/h2.pl

testI:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/i0.pl

customTest:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/i0.pl

