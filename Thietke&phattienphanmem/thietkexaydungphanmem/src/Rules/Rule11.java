package Rules;

/**
 * Created by katie on 09/03/2017.
 */
public class Rule11 extends Rule {
    @Override
    public boolean isValid(String x) {
        String consonants = "tcp" + "ch";
        if(consonants.contains(x.charAt(x.length()-1)+"")){
            String vowels = "éẹ" + "ếệ"
                    + "úụ" + "ứự"
                    + "íị"
                    + "óọ" + "ốộ" + "ớợ"
                    + "áạ" + "ấậ" + "ắặ"
                    + "ýỷ";
            if(!vowels.contains(x.charAt(x.length()-2) + ""))
                return false;
        }
       return true;
    }

    @Override
    public void showError() {
        System.out.println("không phải nguyên âm nào cũng đứng trước t, c, p, ch được");
    }
}
