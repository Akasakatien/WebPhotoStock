package photostock.entities;
// Generated Mar 8, 2018 3:01:44 PM by Hibernate Tools 5.2.3.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Orders generated by hbm2java
 */
@Entity
@Table(name = "orders", catalog = "photostock")
public class Orders implements java.io.Serializable {

	private Integer id;
	private Buyer buyer;
	private String name;
	private Date datecreation;
	private boolean status;
	private Set<Ordersdetail> ordersdetails = new HashSet<Ordersdetail>(0);

	public Orders() {
	}

	public Orders(Buyer buyer, String name, Date datecreation, boolean status) {
		this.buyer = buyer;
		this.name = name;
		this.datecreation = datecreation;
		this.status = status;
	}

	public Orders(Buyer buyer, String name, Date datecreation, boolean status, Set<Ordersdetail> ordersdetails) {
		this.buyer = buyer;
		this.name = name;
		this.datecreation = datecreation;
		this.status = status;
		this.ordersdetails = ordersdetails;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "buyer_pk", nullable = false)
	public Buyer getBuyer() {
		return this.buyer;
	}

	public void setBuyer(Buyer buyer) {
		this.buyer = buyer;
	}

	@Column(name = "name", nullable = false, length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "datecreation", nullable = false, length = 10)
	public Date getDatecreation() {
		return this.datecreation;
	}

	public void setDatecreation(Date datecreation) {
		this.datecreation = datecreation;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "orders")
	public Set<Ordersdetail> getOrdersdetails() {
		return this.ordersdetails;
	}

	public void setOrdersdetails(Set<Ordersdetail> ordersdetails) {
		this.ordersdetails = ordersdetails;
	}

}
