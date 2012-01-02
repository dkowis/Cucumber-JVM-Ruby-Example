package com.rackspace.example;

import java.util.Stack;

public class RackStack {
    
    private Stack s = new Stack();
    
    public void push(Object o){
        s.push(o);
    }
    
    public int size(){
        return s.size();
    }
}
