package Rule;

/**
 * Created by katie on 11/03/2017.
 */
public class Rule7 extends Rule {
    @Override
    public boolean isValid(String x) {
        String consonant = "q r t p s d g h k l x c v b n m";
        int count =0;
        for(int i=0;i<x.length()-1;i++){
            if(consonant.contains(x.charAt(i)+"")){
                count++;
            }
        }
        if(count>=5){
            return false;
        }
        else
            return true;
    }

    @Override
    public void showError() {
        System.out.println("rule7 error");
    }
}
