default:
	javac HelloJni.java
	javac HelloJni.java -h jniH
	cp jniH/HelloJni.h .
	gcc -fPIC -I/usr/local/java/jdk-12.0.1/include/ -I/usr/local/java/jdk-12.0.1/include/linux/ -c HelloJni.c
	gcc -fPIC -I/usr/local/java/jdk-12.0.1/include/ -I/usr/local/java/jdk-12.0.1/include/linux/ -shared HelloJni.o -o libHelloJni.so
	java -Djava.library.path="/home/jiaming-zhang/Desktop/cJNITest/" HelloJni
clean:
	rm -rf jniH
	rm -f HelloJni.h HelloJni.class HelloJni.o libHelloJni.so
