package Rule;
// con sai sot

/**
 * Created by katie on 14/03/2017.
 */
public class Rule9 extends Rule {
    @Override
    public boolean isValid(String x) {
        String consonants = "q r t p s d g h k l x c v b n m";
        boolean check = false;
        int count =0;
         String VowelCharacters = "eyuioa"
                + "èéẹẻẽ" + "ê" + "ềếệểễ"
                + "ùúụủũ" + "ư" + "ừứựửữ"
                + "ìíịỉĩ"
                + "òóọỏõ" + "ô" + "ồốộổỗ" + "ơ" + "ờớợởỡ"
                + "àáạảã" + "â" + "ầấậẩẫ" + "ă" + "ằắặẳẵ"
                + "ỳýỵỷỹ"
                ;
        for(int i=0;i<x.length()-1;i++) {
            if (consonants.contains(x.charAt(i) + ""))
                count++;
        }
        if(count>=2){
            for(int i=0;i<x.length()-1;i++) {
                if (consonants.contains(x.charAt(i) + "")) {
                    if (consonants.contains(x.charAt(i + 1) + ""))
                        check = true;
                }
            }
            if(check=true){
                for(int i=0;i<x.length()-1;i++){
                    if("p g k c".contains(x.charAt(i)+"")){
                        if("!h".contains(x.charAt(i+1)+""))
                            return false;
                    }
                    if("t".contains(x.charAt(i)+"")){
                        if(!"h r".contains(x.charAt(i+1)+""))
                            return false;
                    }
                    if("n".contains(x.charAt(i)+"")){
                        if(!"h g".contains(x.charAt(i+1)+""))
                            return false;
                    }
                }
            }
        }

        return true;
    }

    @Override
    public void showError() {
        System.out.println("Rule9 error");
    }
}
