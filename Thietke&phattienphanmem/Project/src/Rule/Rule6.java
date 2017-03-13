package Rule;

/**
 * Created by katie on 11/03/2017.
 */
public class Rule6 extends Rule {
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
        int count =0;
        for(int i=0;i<x.length();i++)
            if(VowelCharacters.contains(x.charAt(i)+"")){
                count++;
        }
        if(count>=1&&count<=3){
                for (int i=0;i<x.length()-1;i++){
                    if(VowelCharacters.contains(x.charAt(i)+""))
                        if(!VowelCharacters.contains(x.charAt(i+1)+""))
                            return false;

                }
        }
        return true;
    }

    @Override
    public void showError() {
        System.out.println("Rule6 error");

    }
}
