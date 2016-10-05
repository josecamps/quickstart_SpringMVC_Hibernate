package es.josecamps.quickstart.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the table1 database table.
 * 
 */
@Entity
@NamedQuery(name="Table1.findAll", query="SELECT t FROM Table1 t")
public class Table1 implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private Integer id;

	private String text;

	//bi-directional many-to-many association to Table2
	@ManyToMany(mappedBy="table1s")
	private List<Table2> table2s;

	public Table1() {
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

	public List<Table2> getTable2s() {
		return this.table2s;
	}

	public void setTable2s(List<Table2> table2s) {
		this.table2s = table2s;
	}

}