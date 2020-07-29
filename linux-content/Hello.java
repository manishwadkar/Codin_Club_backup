class Hello{

	public static void main(String args[]){


		while(true){
			System.out.println("Hello world");
   
			try{
				Thread.sleep(2000);
			}
			catch(Exception e){
			System.out.print(e);
			}
		}
	}
}