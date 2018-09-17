import java.util.List;
import java.util.Map;

import com.google.gson.Gson;

public class JsonTest {

	public static void main(String[] args) {
		Gson gson = new Gson();
		String strs = "[{\"name\":\"홍길동\",\"age\":20}]";
		System.out.println(strs);
		
		List<Map<String,Object>> list = gson.fromJson(strs, List.class);
		System.out.println(list.get(0).get("name"));
	}
}
