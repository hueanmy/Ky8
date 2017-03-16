package Rule;

/**
 * Created by katie on 14/03/2017.
 */
public class Rule13 extends Rule {
    @Override
    public boolean isValid(String x) {
        boolean check = false;
        String consonants = "n c";
        if(consonants.contains(x.charAt(x.length()-1)+"")) {
            check = true;
        }
        if(check=true){
            if(!"h g".contains(x.charAt(x.length()-2)+"")){
                if("n".contains(x.charAt(x.length()-1)+""))
                    return false;
            }
            if(!"h".contains(x.charAt(x.length()-2)+"")){
                if("c".contains(x.charAt(x.length()-1)+""))
                    return false;
            }
        }
        return true;
    }

    @Override
    public void showError() {

    }
}
