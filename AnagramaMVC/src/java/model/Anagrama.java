/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Arrays;

/**
 *
 * @author 04279207798
 */
public class Anagrama {
    private String palavra1, palavra2;
    public boolean verificar(){
        char p1[] = palavra1.toLowerCase().toCharArray();
        char p2[] = palavra2.toLowerCase().toCharArray();
        Arrays.sort(p1);
        Arrays.sort(p2);
        return Arrays.equals(p1, p2);
    }

    public Anagrama(String palavra1, String palavra2) {
        this.palavra1 = palavra1;
        this.palavra2 = palavra2;
    }
    
}
