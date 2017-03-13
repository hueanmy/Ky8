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
public class Rule4 extends Rule {

    @Override
    public boolean isValid(String x) {
        String VietnameseVowels = "èéẹẻẽ" + "ê" + "ềếệểễ"
                + "ùúụủũ" + "ư" + "ừứựửữ"
                + "ìíịỉĩ"
                + "òóọỏõ" + "ô" + "ồốộổỗ" + "ơ" + "ờớợởỡ"
                + "àáạảãa" + "â" + "ầấậẩẫ" + "ă" + "ằắặẳẵ"
                + "ỳýỵỷỹ"
                ;

        boolean check = false;
        for (int i = 0; i<x.length(); i++) {
            if (VietnameseVowels.contains(x.charAt(i) + "")) {
                check = true;
            }
        }
        return check;
    }


    @Override
    public void showError() {
        System.out.println("Từ trên không có nguyên âm nào!");
    }

}
