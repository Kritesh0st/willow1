package Model;
public class Product {
    private int id,rcount,rpoint,price;
    private String name,description;
    private boolean x,xl,xxl,xxxl;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRcount() {
        return rcount;
    }

    public void setRcount(int rcount) {
        this.rcount = rcount;
    }

    public int getRpoint() {
        return rpoint;
    }

    public void setRpoint(int rpoint) {
        this.rpoint = rpoint;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isX() {
        return x;
    }

    public void setX(boolean x) {
        this.x = x;
    }

    public boolean isXl() {
        return xl;
    }

    public void setXl(boolean xl) {
        this.xl = xl;
    }

    public boolean isXxl() {
        return xxl;
    }

    public void setXxl(boolean xxl) {
        this.xxl = xxl;
    }

    public boolean isXxxl() {
        return xxxl;
    }

    public void setXxxl(boolean xxxl) {
        this.xxxl = xxxl;
    }
}
