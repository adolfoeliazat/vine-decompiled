package com.flurry.org.codehaus.jackson.node;

import com.flurry.org.codehaus.jackson.Base64Variant;
import com.flurry.org.codehaus.jackson.Base64Variants;
import com.flurry.org.codehaus.jackson.JsonGenerator;
import com.flurry.org.codehaus.jackson.JsonLocation;
import com.flurry.org.codehaus.jackson.JsonParseException;
import com.flurry.org.codehaus.jackson.JsonProcessingException;
import com.flurry.org.codehaus.jackson.JsonToken;
import com.flurry.org.codehaus.jackson.io.NumberInput;
import com.flurry.org.codehaus.jackson.map.SerializerProvider;
import com.flurry.org.codehaus.jackson.util.ByteArrayBuilder;
import com.flurry.org.codehaus.jackson.util.CharTypes;
import java.io.IOException;

public final class TextNode extends ValueNode
{
  static final TextNode EMPTY_STRING_NODE = new TextNode("");
  static final int INT_SPACE = 32;
  final String _value;

  public TextNode(String paramString)
  {
    this._value = paramString;
  }

  protected static void appendQuoted(StringBuilder paramStringBuilder, String paramString)
  {
    paramStringBuilder.append('"');
    CharTypes.appendQuoted(paramStringBuilder, paramString);
    paramStringBuilder.append('"');
  }

  public static TextNode valueOf(String paramString)
  {
    if (paramString == null)
      return null;
    if (paramString.length() == 0)
      return EMPTY_STRING_NODE;
    return new TextNode(paramString);
  }

  protected void _reportBase64EOF()
    throws JsonParseException
  {
    throw new JsonParseException("Unexpected end-of-String when base64 content", JsonLocation.NA);
  }

  protected void _reportInvalidBase64(Base64Variant paramBase64Variant, char paramChar, int paramInt)
    throws JsonParseException
  {
    _reportInvalidBase64(paramBase64Variant, paramChar, paramInt, null);
  }

  protected void _reportInvalidBase64(Base64Variant paramBase64Variant, char paramChar, int paramInt, String paramString)
    throws JsonParseException
  {
    String str;
    if (paramChar <= ' ')
      str = "Illegal white space character (code 0x" + Integer.toHexString(paramChar) + ") as character #" + (paramInt + 1) + " of 4-char base64 unit: can only used between units";
    while (true)
    {
      if (paramString != null)
        str = str + ": " + paramString;
      throw new JsonParseException(str, JsonLocation.NA);
      if (paramBase64Variant.usesPaddingChar(paramChar))
        str = "Unexpected padding character ('" + paramBase64Variant.getPaddingChar() + "') as character #" + (paramInt + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
      else if ((!Character.isDefined(paramChar)) || (Character.isISOControl(paramChar)))
        str = "Illegal character (code 0x" + Integer.toHexString(paramChar) + ") in base64 content";
      else
        str = "Illegal character '" + paramChar + "' (code 0x" + Integer.toHexString(paramChar) + ") in base64 content";
    }
  }

  public boolean asBoolean(boolean paramBoolean)
  {
    if ((this._value != null) && ("true".equals(this._value.trim())))
      paramBoolean = true;
    return paramBoolean;
  }

  public double asDouble(double paramDouble)
  {
    return NumberInput.parseAsDouble(this._value, paramDouble);
  }

  public int asInt(int paramInt)
  {
    return NumberInput.parseAsInt(this._value, paramInt);
  }

  public long asLong(long paramLong)
  {
    return NumberInput.parseAsLong(this._value, paramLong);
  }

  public String asText()
  {
    return this._value;
  }

  public JsonToken asToken()
  {
    return JsonToken.VALUE_STRING;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == this)
      bool = true;
    Class localClass1;
    Class localClass2;
    do
    {
      do
      {
        return bool;
        bool = false;
      }
      while (paramObject == null);
      localClass1 = paramObject.getClass();
      localClass2 = getClass();
      bool = false;
    }
    while (localClass1 != localClass2);
    return ((TextNode)paramObject)._value.equals(this._value);
  }

  public byte[] getBinaryValue()
    throws IOException
  {
    return getBinaryValue(Base64Variants.getDefaultVariant());
  }

  public byte[] getBinaryValue(Base64Variant paramBase64Variant)
    throws IOException
  {
    ByteArrayBuilder localByteArrayBuilder = new ByteArrayBuilder(100);
    String str = this._value;
    int i = 0;
    int j = str.length();
    if (i < j);
    while (true)
    {
      int k = i + 1;
      char c1 = str.charAt(i);
      if (k >= j);
      int i3;
      int i5;
      while (true)
      {
        return localByteArrayBuilder.toByteArray();
        if (c1 <= ' ')
          break label399;
        int m = paramBase64Variant.decodeBase64Char(c1);
        if (m < 0)
          _reportInvalidBase64(paramBase64Variant, c1, 0);
        if (k >= j)
          _reportBase64EOF();
        int n = k + 1;
        char c2 = str.charAt(k);
        int i1 = paramBase64Variant.decodeBase64Char(c2);
        if (i1 < 0)
          _reportInvalidBase64(paramBase64Variant, c2, 1);
        int i2 = i1 | m << 6;
        if (n >= j)
        {
          if (!paramBase64Variant.usesPadding())
            localByteArrayBuilder.append(i2 >> 4);
          else
            _reportBase64EOF();
        }
        else
        {
          i3 = n + 1;
          char c3 = str.charAt(n);
          int i4 = paramBase64Variant.decodeBase64Char(c3);
          if (i4 < 0)
          {
            if (i4 != -2)
              _reportInvalidBase64(paramBase64Variant, c3, 2);
            if (i3 >= j)
              _reportBase64EOF();
            i = i3 + 1;
            char c5 = str.charAt(i3);
            if (!paramBase64Variant.usesPaddingChar(c5))
              _reportInvalidBase64(paramBase64Variant, c5, 3, "expected padding character '" + paramBase64Variant.getPaddingChar() + "'");
            localByteArrayBuilder.append(i2 >> 4);
            break;
          }
          i5 = i4 | i2 << 6;
          if (i3 < j)
            break label331;
          if (paramBase64Variant.usesPadding())
            break label327;
          localByteArrayBuilder.appendTwoBytes(i5 >> 2);
        }
      }
      label327: _reportBase64EOF();
      label331: i = i3 + 1;
      char c4 = str.charAt(i3);
      int i6 = paramBase64Variant.decodeBase64Char(c4);
      if (i6 < 0)
      {
        if (i6 != -2)
          _reportInvalidBase64(paramBase64Variant, c4, 3);
        localByteArrayBuilder.appendTwoBytes(i5 >> 2);
        break;
      }
      localByteArrayBuilder.appendThreeBytes(i6 | i5 << 6);
      break;
      label399: i = k;
    }
  }

  public String getTextValue()
  {
    return this._value;
  }

  public int hashCode()
  {
    return this._value.hashCode();
  }

  public boolean isTextual()
  {
    return true;
  }

  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException
  {
    if (this._value == null)
    {
      paramJsonGenerator.writeNull();
      return;
    }
    paramJsonGenerator.writeString(this._value);
  }

  public String toString()
  {
    int i = this._value.length();
    StringBuilder localStringBuilder = new StringBuilder(i + 2 + (i >> 4));
    appendQuoted(localStringBuilder, this._value);
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     com.flurry.org.codehaus.jackson.node.TextNode
 * JD-Core Version:    0.6.2
 */