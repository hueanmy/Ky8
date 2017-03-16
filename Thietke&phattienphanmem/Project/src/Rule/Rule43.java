package Rule;

/**
 * Created by katie on 16/03/2017.
 */
public class Rule43 extends Rule {
    @Override
    public boolean isValid(String x) {
        String word43 = "i a y ê ở ế n m";
        for(int i=0;i<x.length()-1;i++){
            if("u".contains(x.charAt(i)+"")){
                if(!word43.contains(x.charAt(i+1)+""))
                    return false;
            }
        }
        return true;
    }

    @Override
    public void showError() {
        System.out.println("Rule43 error");
    }
}
