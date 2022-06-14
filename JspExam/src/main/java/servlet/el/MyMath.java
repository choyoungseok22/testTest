package servlet.el;

//--------------------------------------------------------------------------------------------------
//public class MyMath
//--------------------------------------------------------------------------------------------------
public class MyMath {
	
	//--------------------------------------------------------------------------------------------------
	// 우리가 직접 작성한 정적(static) 메서드
	//start 부터 시작해서 end까지 누적 시키는 메서드
	//--------------------------------------------------------------------------------------------------
	public static int sum(int start, int end) {
		int sum = 0;
		for(int cnt = start; cnt < end; cnt++) {
			sum += cnt;
		}
		return sum;
		
	}// End - public static int sum(int start, int end)

	//--------------------------------------------------------------------------------------------------
	//피보나치 수열 : 두 개의 정수가 주어지고, 이 수로부터  몇 번째의 값을 찾아보자.
	//--------------------------------------------------------------------------------------------------
	public static int fibonacci(int num1, int num2, int howMany) {
		int num3 = 0;
		
		if(howMany < 3) {
		    System.out.println("세번째 수는 3이상을 입력하셔야 합니다.");    	
		}
		System.out.print(num1 + ", " + num2);
		
		for(int cnt = 0; cnt < howMany - 2; cnt++) {
			num3 = num1 + num2;
			System.out.print(", " + num3);
			
			num1 = num2;
			num2 = num3;
		}		
		return num3;
	}
	
}// End - public class MyMath
