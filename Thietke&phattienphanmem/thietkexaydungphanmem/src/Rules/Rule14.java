package Rules;

/**
 * Created by katie on 10/03/2017.
 */
public class Rule14 extends Rule{
    @Override
    public boolean isValid(String x) {
        String word = "a";
        String nguyenamcodau = "a"+"â" +
                 "ô" + "e" + "ă" +"ư";
        boolean check = true;
        for(int i = 0; i<x.length();i++)
            if (x.charAt(i) == 'a') {
                if(nguyenamcodau.contains(x.charAt(i+1) + "")) {
                    check = false;
                    break;
                }
            }
        return check;
    }

    @Override
    public void showError() {
        System.out.println("Loi luat 14 roi ong ei");
    }
}


/*            if(word.contains(x.charAt(i) + "")){
                if(!nguyenamcodau.contains(x.charAt(i+1) +""))
                    return false;
            }*/
