JAVA=java
JAVAC=javac
JFLEX=jflex
#Edit PROGRAM variable always
DIRTEST=./TEST
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
	rm -f parser.java Yylex.java sym.java output.txt *.class plUtils/*.class *.ctd *~

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

testE:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/e1.pl 
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/e2.pl 

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

cleanTest:
	rm -f TEST/*.ctd

testAFile:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/a0.pl a0.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/a1.pl a1.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/a2.pl a2.ctd

testBFile:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/b0.pl $(DIRTEST)/b0.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/b1.pl $(DIRTEST)/b1.ctd

testCFile:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/c0.pl $(DIRTEST)/c0.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/c1.pl $(DIRTEST)/c1.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/c2.pl $(DIRTEST)/c2.ctd

testDFile:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d0.pl $(DIRTEST)/d0.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d1.pl $(DIRTEST)/d1.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d2.pl $(DIRTEST)/d2.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d3.pl $(DIRTEST)/d3.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d4.pl $(DIRTEST)/d4.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d5.pl $(DIRTEST)/d5.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/d6.pl $(DIRTEST)/d6.ctd

testEFile:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/e1.pl $(DIRTEST)/e1.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/e2.pl $(DIRTEST)/e2.ctd

testFFile:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/f0.pl $(DIRTEST)/f0.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/f1.pl $(DIRTEST)/f1.ctd

testGFile:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/g1.pl $(DIRTEST)/g1.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/g2.pl $(DIRTEST)/g2.ctd	

testHFile:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/h0.pl $(DIRTEST)/h0.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/h1.pl $(DIRTEST)/h1.ctd
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/h2.pl $(DIRTEST)/h2.ctd

testIFile:
	$(JAVA) -cp $(CP) $(PROGRAM) $(TESTDIR)/i0.pl $(DIRTEST)/i0.ctd
