public class EmpWageBuilderUC1{

	public static void main(String args[]){

		int is_full_time=1;
		double empCheck=Math.floor(Math.random() * 10) % 2;
		//double empCheck=Math.ceil(Math.random());
		System.out.println(empCheck);
		if(empCheck == is_full_time)
			System.out.println("Employee is Present");
		else
			System.out.println("Employee is Absent");

	}
}
