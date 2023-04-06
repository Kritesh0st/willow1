package Model;
public class Product {
    private int id=0,price=0,discount=0,totalcount=0,discountedprice=0;
    private String name,description,image,brand,category,tags,releasedate,focused,avilablesize;
    private boolean visibility=true;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public int getTotalcount() {
        return totalcount;
    }

    public void setTotalcount(int totalcount) {
        this.totalcount = totalcount;
    }

    public int getDiscountedprice() {
        return discountedprice;
    }

    public void setDiscountedprice(int discountedprice) {
        this.discountedprice = discountedprice;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public String getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(String releasedate) {
        this.releasedate = releasedate;
    }

    public String getFocused() {
        return focused;
    }

    public void setFocused(String focused) {
        this.focused = focused;
    }

    public String getAvilablesize() {
        return avilablesize;
    }

    public void setAvilablesize(String avilablesize) {
        this.avilablesize = avilablesize;
    }
    
    
    public boolean isVisibility() {
        return visibility;
    }

    public void setVisibility(boolean visibility) {
        this.visibility = visibility;
    }
}
