public class HelloJni{
  public native void sayHello();

  static{
    System.loadLibrary("HelloJni");
  }

  public static void main(String args[]){
    HelloJni helloJni = new HelloJni();
    helloJni.sayHello();
  }
}
