package dkdasuya;

import java.util.ArrayList;

public class ListProvider {
	ArrayList<ListObject> list = new ArrayList<>();
	public ListProvider(){
		list.add(new ListObject("First","First Card","This is the first Card."));
		list.add(new ListObject("Second","Second Card","This is the Second Card."));
		list.add(new ListObject("Third","Third Card","This is the Third Card."));
	}
	public ArrayList<ListObject> provideList(){
		return list;
	}
}
