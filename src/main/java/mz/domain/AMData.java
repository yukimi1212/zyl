package mz.domain;

public class AMData {
	private int id;
    private int ranking;
    private int active;
    private int page_amount;
    private String record_time;
    
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public int getPage_amount() {
		return page_amount;
	}
	public void setPage_amount(int page_amount) {
		this.page_amount = page_amount;
	}
	public String getRecord_time() {
		return record_time;
	}
	public void setRecord_time(String record_time) {
		this.record_time = record_time;
	}
	
	public void setAll(int id, int ranking, int active, int page_amount, String record_time) {
		this.id = id;
		this.ranking = ranking;
		this.active = active;
		this.page_amount = page_amount;
		this.record_time = record_time;
	}
}
