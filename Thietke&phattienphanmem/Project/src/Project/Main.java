package Project;

import Rule.*;

import java.util.ArrayList;

/**
 * Created by katie on 05/03/2017.
 */
public class Main {
    protected ArrayList<Rule> listRules;

    public static void main(String[] args) {
        String[] arrayWords = new String[] {"giữa"};
        Main m = new Main();
        m.listRules = new ArrayList<>();

        m.listRules.add(new Rule46());
        for (String word : arrayWords) {
            for (Rule rule : m.listRules){
                if(!rule.isValid(word)){
                    System.out.println("Tu sai la :" +word);
                    rule.showError();
                    break;
                }
            }

        }

    }
}
