/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Pacote;

/**
 *
 * @author root
 */
public class Fibonacci {
    public String fibonacci(int n) {
        int fib_1 = 0, fib_2 = 1, f = 0;
        String fib_str;

        fib_str = 0 + "<br>";
        fib_str += 1;
        fib_str += "<br>";

        for (int i = 0; i < n; i++) {
            f = fib_1 + fib_2;
            fib_str += f;
            fib_str += "<br>";
            fib_1 = fib_2;
            fib_2 = f;
        }
        return fib_str;
    }
}
