package Rule;

/**
 * Created by katie on 14/03/2017.
 */
public class Rule13 extends Rule {
    @Override
    public boolean isValid(String x) {
        boolean check = false;
        String consonants = "h g";
        if(x.endsWith(consonants)) {
            check = true;
        }
        if(check=true){
            if(!"n c".contains(x.charAt(x.length()-2)+"")){
                if("h".contains(x.charAt(x.length()-1)+""))
                    return false;
            }
            if(!"n".contains(x.charAt(x.length()-2)+"")){
                if("g".contains(x.charAt(x.length()-1)+""))
                    return false;
            }
        }
        return true;
    }

    @Override
    public void showError() {
        System.out.println("Rule13 error");
    }
}
