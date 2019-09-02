package service;

import java.util.List;
import java.util.stream.Collectors;

public class Nombres {

	public static String nombresConcatenados(List<String> nombres) {
		
		return nombres.stream().collect(Collectors.joining(","));
	}
}
