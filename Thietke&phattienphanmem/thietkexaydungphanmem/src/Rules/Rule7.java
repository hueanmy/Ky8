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
public class Rule7 extends Rule{

    @Override
    public boolean isValid(String x) {
        String Phuam = "qrtypsdghklxcvbnmđ";
        int count = 0;
        
        for (int i = 0; i < x.length(); i++) {
            if (Phuam.contains(x.charAt(i) + "")) {
                count ++;
                
            }
        }
        if (count <= 5 && count >= 1){
            return true;
        } else {
            return false;
        }
    }

    @Override
    public void showError() {
        System.out.println("1 Từ có tối đa 5 phụ âm");
    }
    
}
