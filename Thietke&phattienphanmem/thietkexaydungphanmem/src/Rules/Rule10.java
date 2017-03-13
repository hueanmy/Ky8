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
public class Rule10 extends Rule{

    @Override
    public boolean isValid(String x) {
        String phuam = "qrtypsdgklxcvbnmđh";
        
        int count = 0;
        for (int i = 0; i < x.length(); i++) {
            if (phuam.contains(x.charAt(i) + "")) {
                count ++;
            }
            
        }
        
        if (count >= 3){
                if ("ngh".contains(x.charAt(0) + "")) {
                    if("ngh".contains(x.charAt(1)+"")){
                        if("ngh".contains(x.charAt(2)+"")){
                            return true;
                        } else if (!phuam.contains(x.charAt(3)+"")){
                            return true;
                        }
                    }
            
            }
        }
        return false;
    }

    @Override
    public void showError() {
        System.out.println("Từ có 3 phụ âm cạnh nhau phải là ngh");
    }
    
}
