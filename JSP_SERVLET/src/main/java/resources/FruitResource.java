package resources;

import java.util.ListResourceBundle;

public class FruitResource extends ListResourceBundle {

	static final Object[][] FRUIT_RESOURCE ={
			{"fruit.fav","Pineapple"},
			{"fruit.hate","Banana"},
			{"fruit.lov","Apple"},
			{"fruit.new","Honey Orange"},
			{"fruit.strange","DragonFruit"},
			{"fruit.joy","Melon"},
	};
	
	@Override
	protected Object[][] getContents() {
		// TODO Auto-generated method stub
		return FRUIT_RESOURCE ;
	}

}
