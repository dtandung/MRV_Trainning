package com.pilot.dto;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

class SomeObject {
    private String value;
    
    /**
	 * @param value the value to set
	 */
	public void setValue(String value) {
		this.value = value;
	}


	public SomeObject(String value) {
        this.value = value;
    }
    
    
    /**
	 * 
	 */
	public SomeObject() {
		super();
		// TODO Auto-generated constructor stub
	}



	public String getValue() {
        return value;
    }
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SomeObject that = (SomeObject) o;
        return !Objects.equals(value, that.value);
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(value);
    }
}