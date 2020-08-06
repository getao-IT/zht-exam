package com.zht.test;

import com.zht.function.NumList;

import java.util.List;

public class Test {

    public static void main(String[] args) {
        NumList numList = new NumList();
        // 输出返回结果
        List<Integer> numList10 = numList.getNumList10();

        for (Integer num : numList10) {
            System.out.println(num);
        }
    }
}
