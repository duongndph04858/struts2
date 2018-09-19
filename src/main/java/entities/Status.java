package entities;

public class Status {
private String key;
private String value;


/**
 * @param key
 * @param value
 */
public Status(String key, String value) {
	super();
	this.key = key;
	this.value = value;
}
/**
 * 
 */
public Status() {
	super();
	// TODO Auto-generated constructor stub
}
/**
 * @return the key
 */
public String getKey() {
	return key;
}
/**
 * @param key the key to set
 */
public void setKey(String key) {
	this.key = key;
}
/**
 * @return the value
 */
public String getValue() {
	return value;
}
/**
 * @param value the value to set
 */
public void setValue(String value) {
	this.value = value;
}

}
