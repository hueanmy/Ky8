/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Rules;

/**
 *
 * @author dinhq
 */
public class Rule8 extends Rule {

    @Override
    public boolean isValid(String x) {
        String word = "c";
        String phuam = "qrtypsdgklxcvbnmđh";
        boolean check = false;
        if(word.contains(x.charAt(0)+"")){
            if(phuam.contains(x.charAt(1)+"")){
                check = true;
            }
        }
        if (check = true){
            if("h".contains(x.charAt(1)+"")){
                return true;
            }
        }
        return false;
    }

    @Override
    public void showError() {
        System.out.println("Nếu có phụ âm c đứng đầu thì phụ âm sau nếu có chỉ có thể là h");
    }
    
}
