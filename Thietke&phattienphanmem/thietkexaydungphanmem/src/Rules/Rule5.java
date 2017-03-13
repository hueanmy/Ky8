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
public class Rule5 extends Rule {

    @Override
    public boolean isValid(String x) {
        String VietnameseVowels = "èéẹẻẽe" + "ê" + "ềếệểễ"
                + "ùúụủũ" + "ư" + "ừứựửữ"
                + "ìíịỉĩi"
                + "òóọỏõ" + "ô" + "ồốộổỗ" + "ơ" + "ờớợởỡ"
                + "àáạảãa" + "â" + "ầấậẩẫ" + "ă" + "ằắặẳẵ"
                + "ỳýỵỷỹ"
                ;
        int count = 0;
        for (int i = 0; i < x.length(); i++) {
            if (VietnameseVowels.contains(x.charAt(i) + "")) {
                count ++;
            }
        }
        if (count >= 1 && count <= 3){
            return true;
        } else {
            return false;
        }
    }

    @Override
    public void showError() {
        System.out.println("1 từ chỉ có tối đa 3 nguyên âm!");
    }
    
}
