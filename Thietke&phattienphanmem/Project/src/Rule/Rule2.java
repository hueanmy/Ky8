package Rule;

/**
 * Created by katie on 11/03/2017.
 */
public class Rule2 extends Rule{
    @Override
    public boolean isValid(String x) {
        String constants = "w z j f";
        for (int i = 0; i<x.length();i++){
            if(constants.contains(x.charAt(i) + "")){
                return false;
            }
        }
        return true;
    }

    @Override
    public void showError() {
        System.out.println("Luat 2 sai");

    }
}
