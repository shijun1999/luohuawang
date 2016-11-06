package com.vancondos.util.json;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class GsonTaoFun {
    static public Gson gson = new GsonBuilder()
            .setExclusionStrategies(new GsonExclusionStrategy())
            .serializeNulls()
            .create();

    static class GsonExclusionStrategy implements ExclusionStrategy {

        public boolean shouldSkipClass(Class<?> clazz) {
            return false;
        }

        public boolean shouldSkipField(FieldAttributes f) {
            return f.getAnnotation(GsonExclusion.class) != null;
        }
    }
}

