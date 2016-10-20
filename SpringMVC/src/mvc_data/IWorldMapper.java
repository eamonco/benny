package mvc_data;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface IWorldMapper {

	@Select("Select distinct continent from country order by 1")
	List<String> getContinents();
	
}
