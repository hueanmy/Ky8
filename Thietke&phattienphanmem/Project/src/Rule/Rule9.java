package Rule;

/**
 * Created by katie on 13/03/2017.
 */
public class Rule9 extends Rule {
    @Override
    public boolean isValid(String x) {
        String phuam =  "q r t p s d g h k l x c v b n m";
        int count =0;
        boolean check = false;
        String phuam1= "t p g k c n";
        String phuam2= "p g k c";
        for(int i = 0;i<x.length()-1;i++){
            if(phuam.contains(x.charAt(i)+""))
                count++;
        }
        if(count==2){
            for(int i = 0;i<x.length()-1;i++){
                if(phuam1.contains(x.charAt(i)+"")){
                    if(phuam.contains(x.charAt(i+1)+""))
                        check = true;
                }
                if(check=true){
                    if(phuam2.contains(x.charAt(i)+"")){
                        if(!"h".contains(x.charAt(i+1)+""))
                            return false;
                    }
                    if("t".contains(x.charAt(i)+"")){
                        if(!"r h ".contains(x.charAt(i+1)+""))
                            return false;
                    }
                    if("n".contains(x.charAt(i)+"")){
                        if(!"h g ".contains(x.charAt(i+1)+""))
                            return false;
                    }
                }
            }
        }
        return true;
    }

    @Override
    public void showError() {
        System.out.println("Rule9 error");
    }
}
