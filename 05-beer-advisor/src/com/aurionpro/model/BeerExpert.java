package com.aurionpro.model;

import java.util.*;

public class BeerExpert {

	public List getBrands(String color) {
		List<String> brands = new ArrayList<String>();
		if (color.equals("amber")) {
			brands.add("Jack Amber");
			brands.add("Red Moose");
		} else {
			brands.add("Jail Pale Ale");
			brands.add("Gout Stout");
		}
		return (brands);
	}

}
