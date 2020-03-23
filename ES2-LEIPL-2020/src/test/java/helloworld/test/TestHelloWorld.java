package helloworld.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import es2.helloWorld.HelloWorld;

class TestHelloWorld {

	@Test
	void test() {
		assertEquals("Hello World", HelloWorld.s);
	}

}
