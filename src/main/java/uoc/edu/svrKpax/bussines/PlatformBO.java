package uoc.edu.svrKpax.bussines;

import java.util.List;

import uoc.edu.svrKpax.vo.Platform;

public interface PlatformBO {

	public List<Platform> listPlatforms(String campusSession);
	public Platform getPlatform(String campusSession, int idPlatform);

}
