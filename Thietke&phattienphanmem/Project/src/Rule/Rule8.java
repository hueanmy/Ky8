package Rule;

/**
 * Created by katie on 11/03/2017.
 */
public class Rule8 extends Rule {
    @Override
    public boolean isValid(String x) {
        String character = "c";
        String constants  = "qrtypsdgklxcvbnmđh";
        String nguyeam = "eyuioa"
            + "èéẹẻẽ" + "ê" + "ềếệểễ"
            + "ùúụủũ" + "ư" + "ừứựửữ"
            + "ìíịỉĩ"
            + "òóọỏõ" + "ô" + "ồốộổỗ" + "ơ" + "ờớợởỡ"
            + "àáạảã" + "â" + "ầấậẩẫ" + "ă" + "ằắặẳẵ"
            + "ỳýỵỷỹ"
            ;
        boolean check = false;
        if(character.contains(x.charAt(0)+"")) {
            if (nguyeam.contains(x.charAt(1) + ""))
                return true;
            else
                check = true;

        }
        if(check = true){
            if(!"h".contains(x.charAt(1)+""))
                return false;
        }
        return true;
    }

    @Override
    public void showError() {
        System.out.println("rule8 error");

    }
}
