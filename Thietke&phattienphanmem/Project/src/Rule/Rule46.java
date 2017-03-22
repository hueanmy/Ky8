package Rule;

/**
 * Created by katie on 16/03/2017.
 */
public class Rule46 extends Rule{
    @Override
    public boolean isValid(String x) {
        String[] words = {"iữa", "iễu", "iếu", "iều", "iểu", "iêu", "iệu",
                          "iai", "iải", "iới", "iỏi", "iươ", "iườ", "iòi"};
        boolean check = false;
        String VowelCharacters = "eyuioa"
            + "èéẹẻẽ" + "ê" + "ềếệểễ"
            + "ùúụủũ" + "ư" + "ừứựửữ"
            + "ìíịỉĩ"
            + "òóọỏõ" + "ô" + "ồốộổỗ" + "ơ" + "ờớợởỡ"
            + "àáạảã" + "â" + "ầấậẩẫ" + "ă" + "ằắặẳẵ"
            + "ỳýỵỷỹ"
            ;
        for(int i=0;i<x.length()-1;i++){
            if(VowelCharacters.contains(x.charAt(i)+"")){
                if(VowelCharacters.contains(x.charAt(i+1)+"")) {
                    if (VowelCharacters.contains(x.charAt(i + 2) + ""))
                        check = true;
                }
            }
        }
        if(check == true){
            for(String c : words){
                if(!x.contains(c)){
                    check = false;
                }
                else{
                    check = true;
                }
            }
        }

        return false;
    }

    @Override
    public void showError() {
        System.out.println("Rule46 error");
    }
}
