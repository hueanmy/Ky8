package Project;

import Rule.Rule;
import Rule.Rule9;
import Rule.Rule13;

import java.util.ArrayList;

import Rule.Rule11;
/**
 * Created by katie on 05/03/2017.
 */
public class Main {
    protected ArrayList<Rule> listRules;

    public static void main(String[] args) {
    String[] arrayWords = new String[] {"nhunk"};
        Main m = new Main();
        m.listRules = new ArrayList<>();

        m.listRules.add(new Rule13());
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
