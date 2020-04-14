package bean;

import java.util.Properties;

public class CountryLanguage {

	private Properties language;

	public Properties getLanguage() {
		return language;
	}

	public void setLanguage(Properties language) {
		this.language = language;
	}
	
	public String toString()
	{
		return "language.[language="+language+"]";
	}
}
