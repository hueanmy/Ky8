package Rule;

/**
 * Created by katie on 16/03/2017.
 */
public class Rule45A extends Rule {
    @Override
    public boolean isValid(String x) {
        boolean check = false;
        String[] words ={ "dũa","đũa"};
        for(int i=0;i<x.length()-1;i++){
            if("ũ ".contains(x.charAt(i)+"")){
                if("a".contains(x.charAt(i+1)+""))
                    check = true;
                    break;
            }
        }
        if(check==true){
            for(String c : words){
                if(x.equals(c)){
                    check = true;
                    break;
                }
                else {
                    check = false;
                }
            }
        }
        return check;
    }

    @Override
    public void showError() {
        System.out.println("Rule45A error");
    }
}
