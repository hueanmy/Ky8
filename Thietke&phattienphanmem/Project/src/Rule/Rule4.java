package Rule;

/**
 * Created by katie on 11/03/2017.
 */
public class Rule4 extends Rule {
    @Override
    public boolean isValid(String x) {
    String VowelCharacters = "eyuioa"
            + "èéẹẻẽ" + "ê" + "ềếệểễ"
            + "ùúụủũ" + "ư" + "ừứựửữ"
            + "ìíịỉĩ"
            + "òóọỏõ" + "ô" + "ồốộổỗ" + "ơ" + "ờớợởỡ"
            + "àáạảã" + "â" + "ầấậẩẫ" + "ă" + "ằắặẳẵ"
            + "ỳýỵỷỹ"
            ;
    boolean check = false;
    for (int i = 0 ; i<x.length();i++){
        if(VowelCharacters.contains(x.charAt(i)+"")){
            check = true;
        }
    }
        return check;
    }

    @Override
    public void showError() {
        System.out.println("Rule4 error");

    }
}
