package Rule;

/**
 * Created by katie on 16/03/2017.
 */
public class Rule39 extends Rule {
    @Override
    public boolean isValid(String x) {
        String tusau_o = "a i e n m";
        for(int i=0;i<x.length()-1;i++){
            if("o".contains(x.charAt(i)+"")){
                if(!tusau_o.contains(x.charAt(i+1)+""))
                    return false;
            }
        }
        return true;
    }

    @Override
    public void showError() {
        System.out.println("Rule39 error");
    }
}
