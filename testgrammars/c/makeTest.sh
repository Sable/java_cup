rm *.java
rm *.class
jflex c.jflex
java -jar ../../dist/java-cup-11b.jar -locations -interface -parser Parser -xmlactions c.cup
javac -cp ../../dist/java-cup-11b-runtime.jar:. *.java
java -cp ../../dist/java-cup-11b-runtime.jar:. Parser input.c test.xml
