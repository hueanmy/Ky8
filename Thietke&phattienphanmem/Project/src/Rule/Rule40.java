package Rule;

/**
 * Created by katie on 16/03/2017.
 */
public class Rule40 extends Rule {
    @Override
    public boolean isValid(String x) {
        String aftervowels_40 = "e i a n m";
        String aftervowels_40_1 = "e i a n m t c p";
        for (int i = 0; i < x.length() - 1; i++) {
            if ("ò ỏ".contains(x.charAt(i) + "")) {
                if (!aftervowels_40.contains(x.charAt(i + 1) + ""))
                    return false;
            }
            if("ó ọ".contains(x.charAt(i)+"")){
                if(!aftervowels_40_1.contains(x.charAt(i+1)+""))
                    return false;
            }
        }
            return true;
        }

        @Override
        public void showError () {

        }
    }

