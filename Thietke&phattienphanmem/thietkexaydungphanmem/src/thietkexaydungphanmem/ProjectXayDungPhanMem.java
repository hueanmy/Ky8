/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package thietkexaydungphanmem;

import Rules.*;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author maisakura
 */
public class ProjectXayDungPhanMem {
    private ArrayList<Rule> listRules;
    
    /**
     * @param args the command line arguments
     */


    public static void main(String[] args) {
        // TODO code application logic here
        String[] arrayWords = new String[]{"ca"};
        ProjectXayDungPhanMem pr = new ProjectXayDungPhanMem();
        pr.listRules = new ArrayList<>();

//        pr.listRules.add(new Rule4());
        pr.listRules.add(new Rule8());
        for (String word : arrayWords) {
            for (Rule rule : pr.listRules) {
                if (!rule.isValid(word)) {
                    System.out.println("Tu sai la: " + word);
                    rule.showError();
                    break;
                }
            }
        }
    }

}
