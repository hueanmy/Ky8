package Rule;

/**
 * Created by katie on 16/03/2017.
 */
public class Rule44 extends Rule {
    @Override
    public boolean isValid(String x) {
        String w44_1 ="i a y m n";
        String w44_2 ="i a y m n t c p";
        for(int i=0;i<x.length()-1;i++){
            if("ú ụ".contains(x.charAt(i)+"")){
                if(!w44_2.contains(x.charAt(i+1)+""))
                    return false;
            }
            else if("ù ủ".contains(x.charAt(i)+"")){
                if(!w44_1.contains(x.charAt(i+1)+""))
                    return false;
            }
        }
        return true;
    }

    @Override
    public void showError() {
        System.out.println("Rule44 error");
    }
}
