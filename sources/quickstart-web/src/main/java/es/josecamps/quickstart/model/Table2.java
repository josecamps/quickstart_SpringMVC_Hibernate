package es.josecamps.quickstart.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the table2 database table.
 * 
 */
@Entity
@NamedQuery(name="Table2.findAll", query="SELECT t FROM Table2 t")
public class Table2 implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private Integer id;

	private String text;

	//bi-directional many-to-many association to Table1
	@ManyToMany
	@JoinTable(
		name="table12"
		, joinColumns={
			@JoinColumn(name="table2_id")
			}
		, inverseJoinColumns={
			@JoinColumn(name="table1_id")
			}
		)
	private List<Table1> table1s;

	public Table2() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getText() {
		return this.text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public List<Table1> getTable1s() {
		return this.table1s;
	}

	public void setTable1s(List<Table1> table1s) {
		this.table1s = table1s;
	}

}