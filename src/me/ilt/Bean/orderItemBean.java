package me.ilt.Bean;

public class orderItemBean {
private int id; //������ĿID
private int goodsId;  //��ƴID
private String goodsName;  //��ƴ����
private String proPic;  //��ƷͼƬ
private double goodsPrice; //��Ʒ�۸�
private int sum;  //��������
private double subTotal;  //С�ƽ��
private String orderId;  //������ID
public orderItemBean() {
}
public orderItemBean(int goodsId, String goodsName, String proPic,
		double goodsPrice, int sum, double subTotal, String orderId) {
	this.goodsId = goodsId;
	this.goodsName = goodsName;
	this.proPic = proPic;
	this.goodsPrice = goodsPrice;
	this.sum = sum;
	this.subTotal = subTotal;
	this.orderId = orderId;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getGoodsId() {
	return goodsId;
}
public void setGoodsId(int goodsId) {
	this.goodsId = goodsId;
}
public String getGoodsName() {
	return goodsName;
}
public void setGoodsName(String goodsName) {
	this.goodsName = goodsName;
}
public String getProPic() {
	return proPic;
}
public void setProPic(String proPic) {
	this.proPic = proPic;
}
public double getGoodsPrice() {
	return goodsPrice;
}
public void setGoodsPrice(double goodsPrice) {
	this.goodsPrice = goodsPrice;
}
public int getSum() {
	return sum;
}
public void setSum(int sum) {
	this.sum = sum;
}
public double getSubTotal() {
	return subTotal;
}
public void setSubTotal(double subTotal) {
	this.subTotal = subTotal;
}
public String getOrderId() {
	return orderId;
}
public void setOrderId(String orderId) {
	this.orderId = orderId;
}
@Override
public String toString() {
	return "orderItemBean [id=" + id + ", goodsId=" + goodsId + ", goodsName="
			+ goodsName + ", proPic=" + proPic + ", goodsPrice=" + goodsPrice
			+ ", sum=" + sum + ", subTotal=" + subTotal + ", orderId="
			+ orderId + "]";
}

}