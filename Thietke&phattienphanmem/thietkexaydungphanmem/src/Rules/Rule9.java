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
public class Rule9 extends Rule{

    @Override
    public boolean isValid(String x) {
        String phuam = "qrtypsdgklxcvbnmđh";
        
        int count = 0;
        for (int i = 0; i < x.length(); i++) {
            if (phuam.contains(x.charAt(i) + "")) {
                count ++;
            }
            
        }
        String[] capphuam = {"tr", "th", "ph", "gh", "kh", "ch", "nh", "ng"};
        String[] capphuamcuoi = {"ch", "nh", "ng"};
        if (count == 1) {
            if(phuam.contains(x.charAt(0)+"")) return true;
        } else if (count == 2 || count == 3){
            for (String cap : capphuam) {
                if (x.contains(cap)) {
                    return true;
                }
            }
        } else if (count == 4){
            for (String cap : capphuam) {
                if (x.contains(cap)) {
                    for(int i = x.length()-1; i > 0; i--){
                        if (phuam.contains(x.charAt(i)+"")) {
                            if(phuam.contains(x.charAt(i-1)+"")){
                                String sub = x.substring(x.length()-2);
                                for (String capcuoi : capphuamcuoi) {
                                    if(sub.contains(capcuoi)){
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            
            }
        } 
        return false;
    }

    @Override
    public void showError() {
        System.out.println("Từ có 2 phụ âm cạnh nhau thì phải là tr, th, ph, gh, kh, ch, nh, ng");
    }
    
}
