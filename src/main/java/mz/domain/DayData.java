package mz.domain;


public class DayData {

    private int id;
    private double amount;
    private String record_time;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getRecord_time() {
		return record_time;
	}
	public void setRecord_time(String record_time) {
		this.record_time = record_time;
	}
	
	public void setAll(int id, double amount, String record_time) {
		this.id = id;
		this.amount = amount;
		this.record_time = record_time;
	}

}