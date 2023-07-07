package utility;

public class FindMinMax {
	
	public static <T extends Comparable<T>> T max(T t1,T t2,T t3,T t4) {
		T max=t1;
		
		if(t2.compareTo(max)>0)
			max=t2;
		if(t3.compareTo(max)>0)
			max=t3;
		if(t4.compareTo(max)>0)
			max=t4;
		return max;
	}
	
	public static <T extends Comparable<T>> T min(T t1,T t2,T t3,T t4) {
		T min=t1;
		
		if(t2.compareTo(min)<0)
			min=t2;
		if(t3.compareTo(min)<0)
			min=t3;
		if(t4.compareTo(min)<0)
			min=t4;
		return min;
	}

}
