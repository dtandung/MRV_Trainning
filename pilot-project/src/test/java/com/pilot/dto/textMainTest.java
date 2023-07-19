/**
 * 
 */
package com.pilot.dto;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.junit.jupiter.api.Test;

/**
 * @author Admin
 *
 * @since 4 thg 7, 2023
 */
class textMainTest {

	@Test
	void test() {
		var textMainTest = new textMain();
		assertTrue(textMainTest.add(2, 2) == 4);
		
	}

}
