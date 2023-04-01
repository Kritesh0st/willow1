package Model;
public class User {
    private String name=null,email=null,password=null,address=null,dob=null,wishlist=null,cart=null,mostvisited=null,phnumber=null;
    private int id=0,maxspent=0,primecount=0;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getWishlist() {
        return wishlist;
    }

    public void setWishlist(String wishlist) {
        this.wishlist = wishlist;
    }

    public String getCart() {
        return cart;
    }

    public void setCart(String cart) {
        this.cart = cart;
    }

    public String getMostvisited() {
        return mostvisited;
    }

    public void setMostvisited(String mostvisited) {
        this.mostvisited = mostvisited;
    }

    public String getPhnumber() {
        return phnumber;
    }

    public void setPhnumber(String phnumber) {
        this.phnumber = phnumber;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMaxspent() {
        return maxspent;
    }

    public void setMaxspent(int maxspent) {
        this.maxspent = maxspent;
    }

    public int getPrimecount() {
        return primecount;
    }

    public void setPrimecount(int primecount) {
        this.primecount = primecount;
    }
}
