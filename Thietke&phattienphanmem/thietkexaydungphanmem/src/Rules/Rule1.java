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
public class Rule1 extends Rule {
    public void showError() {
        System.out.println("Có một số phụ ẩm chỉ được phép đứng đầu từ: q, s, d, đ, k, l, x, v, b");
    }

    @Override
    public boolean isValid(String x) {
        String firstConsonants = "q s d đ k l x v b";
        for (int i = 1; i < x.length(); i++) {
            if (firstConsonants.contains(x.charAt(i) + "")) {
                return false;
            }
        }
        return true;
    }
}
