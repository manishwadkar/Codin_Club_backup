public class demoIntern{
   public static void main(String args[]){
        String str1 = "abc";

        String str2 = "abc";

        String str3 = "abc".intern();

        String str4 = new String("abc");

        if ( str1 == str2 ){
            System.out.println("String str1 and str2 are same");
        }

        if ( str2 == str3 ){
            System.out.println("String str2 and str3 are same" );
        }

        if ( str1 == str4 ){
            System.out.println("String str1 and str4 are same" );
        }

        if ( str3 == str4 ){
            System.out.println("String str3 and str5 are same" );
        }
}
}

