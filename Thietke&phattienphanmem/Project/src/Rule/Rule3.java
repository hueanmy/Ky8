package Rule;

/**
 * Created by katie on 11/03/2017.
 */
public class Rule3 extends Rule{
    @Override
    public boolean isValid(String x) {
        String VietnameseCharacters = "qertyuiopasdghklxcvbnm"
                + "èéẹẻẽ" + "ê" + "ềếệểễ"
                + "ùúụủũ" + "ư" + "ừứựửữ"
                + "ìíịỉĩ"
                + "òóọỏõ" + "ô" + "ồốộổỗ" + "ơ" + "ờớợởỡ"
                + "àáạảã" + "â" + "ầấậẩẫ" + "ă" + "ằắặẳẵ"
                + "đ"
                + "ỳýỵỷỹ" ;
        for(int i = 0; i<x.length(); i++){
            if(!VietnameseCharacters.contains(x.charAt(i)+ "")){
                return false;
            }
        }
        return true;
    }

    @Override
    public void showError() {

    }
}
