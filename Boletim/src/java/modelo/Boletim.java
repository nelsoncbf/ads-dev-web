/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author 04279207798
 */
public class Boletim {

    private float av1, av2, av3;
    private String status;

    public Boletim(float av1, float av2, float av3) {
        this.av1 = av1;
        this.av2 = av2;
        this.av3 = av3;
    }

    public float getAv1() {
        return av1;
    }

    public float getAv2() {
        return av2;
    }

    public float getAv3() {
        return av3;
    }

    public String getStatus() {
        return status;
    }

    public float media() {
        float media = 0;
        if (av1 > av2) {
            if (av2 > av3) {
                media = (av1 + av2) / 2;
            } else {
                media = (av1 + av3) / 2;
            }
        } else if (av1 > av3) {
            media = (av1 + av2) / 2;
        } else {
            media = (av2 + av3) / 2;
        }
        status=(media>=7)?"APROVADO":"REPROVADO";
        return media;
    }

}
