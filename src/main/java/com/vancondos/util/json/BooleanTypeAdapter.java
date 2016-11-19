package com.vancondos.util.json;

import java.lang.reflect.Type;

import com.google.gson.*;

public class BooleanTypeAdapter implements JsonDeserializer<Boolean> {
    public Boolean deserialize(JsonElement json, Type typeOfT,
                               JsonDeserializationContext context) throws JsonParseException {
        String code = json.getAsString();
        return "on".equals(code) ? true : false;
    }
}
