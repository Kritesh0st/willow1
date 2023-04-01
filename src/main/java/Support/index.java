package Support;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class index {
    public double getPercentOf(int percent, int value){
        double val = (double) percent / 100 * value;
        return val;
    }
    public String toStrikeByDiscount(int discount){
        String returnval = "tdn";
        if(discount>0){returnval = "tdlt";}
        return returnval;
    }
    
    public String toDisplayByDiscount(int discount){
        String returnval = "none";
        if(discount>0){returnval = "";}
        return returnval;
    }
    public int countBlackStar(){
        int returnval = 0;
        
        return returnval;
    }
    public String isProductNewByDate(String prodDate){
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");
        LocalDateTime now = LocalDateTime.now();
        String d = dtf.format(now);
        int[] nowDateArr = stringDateToInt(d);
        int[] prodDateArr = stringDateToInt(prodDate);
//        System.out.println(nowDayInt+" "+nowMonthInt+" "+nowYearInt+" "+d);
//        
        String returnval = "none";
        System.out.println("product uploded date ");
        System.out.println(prodDateArr[0]+" "+prodDateArr[1]+" "+prodDateArr[2]);
        if(prodDateArr[0] > nowDateArr[0]-7){
            returnval = "";
        }
        return returnval;

    }
    public int[] stringDateToInt(String date){
        String d = date;
        String nowDayStr,nowMonthStr,nowYearStr;
        int nowDayInt,nowMonthInt,nowYearInt;
        nowDayStr = String.valueOf(d.charAt(0)).concat(String.valueOf(d.charAt(1)));
        nowMonthStr = String.valueOf(d.charAt(3)).concat(String.valueOf(d.charAt(4)));
        nowYearStr = String.valueOf(d.charAt(6)).concat(String.valueOf(d.charAt(7))).concat(String.valueOf(d.charAt(8))).concat(String.valueOf(d.charAt(9)));
        nowDayInt = Integer.parseInt(nowDayStr);
        nowMonthInt = Integer.parseInt(nowMonthStr);
        nowYearInt = Integer.parseInt(nowYearStr);
        int[] returnval = {nowDayInt,nowMonthInt,nowYearInt};
        return returnval;
    }
    
    public String signedInOrOut(boolean userdata){
        String returnval = "";
        if(!userdata){
            returnval = "none";
        }
        return returnval ;
    }
    
    public String extractFirstName(String fullname){
        String firstname=fullname;
        if (fullname.contains(" ")) {
            int firstSpacePosition = fullname.indexOf(" ");
            firstname = fullname.substring(0,firstSpacePosition);
        }
        return firstname;
    }
    public static void main(String[] args) {
        index i = new index();
        System.out.println("First name: "+i.extractFirstName("Kritesh Thapa"));        
    }
}
/*


1  2  3  4  5  6  7 
16 17 18 19 20 21 22

less than 15 => none
more than 15 => ""
*/