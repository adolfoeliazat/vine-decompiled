package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.Base64Variant;
import com.flurry.org.codehaus.jackson.JsonParser;
import com.flurry.org.codehaus.jackson.JsonProcessingException;
import com.flurry.org.codehaus.jackson.JsonToken;
import com.flurry.org.codehaus.jackson.map.type.TypeFactory;
import com.flurry.org.codehaus.jackson.map.util.ArrayBuilders;
import com.flurry.org.codehaus.jackson.map.util.ObjectBuffer;
import com.flurry.org.codehaus.jackson.node.JsonNodeFactory;
import com.flurry.org.codehaus.jackson.type.JavaType;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

public abstract class DeserializationContext
{
  protected final DeserializationConfig _config;
  protected final int _featureFlags;

  protected DeserializationContext(DeserializationConfig paramDeserializationConfig)
  {
    this._config = paramDeserializationConfig;
    this._featureFlags = paramDeserializationConfig._featureFlags;
  }

  public abstract Calendar constructCalendar(Date paramDate);

  public JavaType constructType(Class<?> paramClass)
  {
    return this._config.constructType(paramClass);
  }

  public abstract Object findInjectableValue(Object paramObject1, BeanProperty paramBeanProperty, Object paramObject2);

  public abstract ArrayBuilders getArrayBuilders();

  public Base64Variant getBase64Variant()
  {
    return this._config.getBase64Variant();
  }

  public DeserializationConfig getConfig()
  {
    return this._config;
  }

  public DeserializerProvider getDeserializerProvider()
  {
    return null;
  }

  public final JsonNodeFactory getNodeFactory()
  {
    return this._config.getNodeFactory();
  }

  public abstract JsonParser getParser();

  public TypeFactory getTypeFactory()
  {
    return this._config.getTypeFactory();
  }

  public abstract boolean handleUnknownProperty(JsonParser paramJsonParser, JsonDeserializer<?> paramJsonDeserializer, Object paramObject, String paramString)
    throws IOException, JsonProcessingException;

  public abstract JsonMappingException instantiationException(Class<?> paramClass, String paramString);

  public abstract JsonMappingException instantiationException(Class<?> paramClass, Throwable paramThrowable);

  public boolean isEnabled(DeserializationConfig.Feature paramFeature)
  {
    return (this._featureFlags & paramFeature.getMask()) != 0;
  }

  public abstract ObjectBuffer leaseObjectBuffer();

  public abstract JsonMappingException mappingException(Class<?> paramClass);

  public abstract JsonMappingException mappingException(Class<?> paramClass, JsonToken paramJsonToken);

  public JsonMappingException mappingException(String paramString)
  {
    return JsonMappingException.from(getParser(), paramString);
  }

  public abstract Date parseDate(String paramString)
    throws IllegalArgumentException;

  public abstract void returnObjectBuffer(ObjectBuffer paramObjectBuffer);

  public abstract JsonMappingException unknownFieldException(Object paramObject, String paramString);

  public abstract JsonMappingException unknownTypeException(JavaType paramJavaType, String paramString);

  public abstract JsonMappingException weirdKeyException(Class<?> paramClass, String paramString1, String paramString2);

  public abstract JsonMappingException weirdNumberException(Class<?> paramClass, String paramString);

  public abstract JsonMappingException weirdStringException(Class<?> paramClass, String paramString);

  public abstract JsonMappingException wrongTokenException(JsonParser paramJsonParser, JsonToken paramJsonToken, String paramString);
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     com.flurry.org.codehaus.jackson.map.DeserializationContext
 * JD-Core Version:    0.6.2
 */