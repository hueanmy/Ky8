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
public class Rule2 extends Rule{

    @Override
    public boolean isValid(String x) {
        String words = "w z j f";
        for (int i = 0; i < x.length(); i++) {
            if (words.contains(x.charAt(i) + "")) {
                return false;
            }
        }
        return true;
        
    }

    @Override
    public void showError() {
        System.out.println("Có một số chữ cái không tồn tại trong bảng chữ cái tiếng Việt: w, z, j, f");
    }
    
}
