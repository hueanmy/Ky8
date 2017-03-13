package Rule;

/**
 * Created by katie on 05/03/2017.
 */
public class Rule1 extends Rule {
    @Override
    public boolean isValid(String x) {
        String firstConstants = "q s d đ k l x v b";
        for (int i = 1; i < x.length(); i++) {
            if (firstConstants.contains(x.charAt(i) + "")) {
                return false;
            }

        }
        return true;
    }

    @Override
    public void showError() {
        System.out.println("Mot so phu am chi duoc phep dung dau  q s d đ k l x v b");
    }
}
