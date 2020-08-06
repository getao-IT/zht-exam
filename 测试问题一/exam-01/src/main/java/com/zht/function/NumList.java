package com.zht.function;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class NumList {

    /**
     * 出参
     * 随机返回10万个数
     * @param
     */
    public List<Integer> getNumList10() {
        // 入参
        List<Integer> numList = new ArrayList<Integer>();
        // 出参
        List<Integer> numList10 = new ArrayList<Integer>();
        Random random = new Random();

        // 获取50万随机值
        while (numList.size() <= 500000) {
            int i1 = random.nextInt(500000);
            if (!numList.contains(i1)) {
                numList.add(i1);
            }
        }

        // 随机获取10万个入参中的索引值，只添加出参中没有的数值
        while (numList10.size() < 100000) {
            int i1 = random.nextInt(numList.size());
            if (!numList10.contains(numList.get(i1))) {
                numList.add(i1);
            }
        }

        return numList10;
    }
}
