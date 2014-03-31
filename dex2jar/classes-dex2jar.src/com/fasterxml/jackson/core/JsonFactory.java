package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.format.InputAccessor;
import com.fasterxml.jackson.core.format.MatchStrength;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.InputDecorator;
import com.fasterxml.jackson.core.io.OutputDecorator;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.io.UTF8Writer;
import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import com.fasterxml.jackson.core.json.PackageVersion;
import com.fasterxml.jackson.core.json.ReaderBasedJsonParser;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.fasterxml.jackson.core.json.WriterBasedJsonGenerator;
import com.fasterxml.jackson.core.sym.BytesToNameCanonicalizer;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringReader;
import java.io.Writer;
import java.lang.ref.SoftReference;
import java.net.URL;

public class JsonFactory
  implements Versioned, Serializable
{
  protected static final int DEFAULT_FACTORY_FEATURE_FLAGS = 0;
  protected static final int DEFAULT_GENERATOR_FEATURE_FLAGS = 0;
  protected static final int DEFAULT_PARSER_FEATURE_FLAGS = 0;
  private static final SerializableString DEFAULT_ROOT_VALUE_SEPARATOR = DefaultPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR;
  public static final String FORMAT_NAME_JSON = "JSON";
  protected static final ThreadLocal<SoftReference<BufferRecycler>> _recyclerRef = new ThreadLocal();
  private static final long serialVersionUID = 8726401676402117450L;
  protected CharacterEscapes _characterEscapes;
  protected int _factoryFeatures = DEFAULT_FACTORY_FEATURE_FLAGS;
  protected int _generatorFeatures = DEFAULT_GENERATOR_FEATURE_FLAGS;
  protected InputDecorator _inputDecorator;
  protected ObjectCodec _objectCodec;
  protected OutputDecorator _outputDecorator;
  protected int _parserFeatures = DEFAULT_PARSER_FEATURE_FLAGS;
  protected final transient BytesToNameCanonicalizer _rootByteSymbols = BytesToNameCanonicalizer.createRoot();
  protected final transient CharsToNameCanonicalizer _rootCharSymbols = CharsToNameCanonicalizer.createRoot();
  protected SerializableString _rootValueSeparator = DEFAULT_ROOT_VALUE_SEPARATOR;

  public JsonFactory()
  {
    this((ObjectCodec)null);
  }

  protected JsonFactory(JsonFactory paramJsonFactory, ObjectCodec paramObjectCodec)
  {
    this._objectCodec = null;
    this._factoryFeatures = paramJsonFactory._factoryFeatures;
    this._parserFeatures = paramJsonFactory._parserFeatures;
    this._generatorFeatures = paramJsonFactory._generatorFeatures;
    this._characterEscapes = paramJsonFactory._characterEscapes;
    this._inputDecorator = paramJsonFactory._inputDecorator;
    this._outputDecorator = paramJsonFactory._outputDecorator;
    this._rootValueSeparator = paramJsonFactory._rootValueSeparator;
  }

  public JsonFactory(ObjectCodec paramObjectCodec)
  {
    this._objectCodec = paramObjectCodec;
  }

  protected void _checkInvalidCopy(Class<?> paramClass)
  {
    if (getClass() != paramClass)
      throw new IllegalStateException("Failed copy(): " + getClass().getName() + " (version: " + version() + ") does not override copy(); it has to");
  }

  protected IOContext _createContext(Object paramObject, boolean paramBoolean)
  {
    return new IOContext(_getBufferRecycler(), paramObject, paramBoolean);
  }

  protected JsonGenerator _createGenerator(Writer paramWriter, IOContext paramIOContext)
    throws IOException
  {
    WriterBasedJsonGenerator localWriterBasedJsonGenerator = new WriterBasedJsonGenerator(paramIOContext, this._generatorFeatures, this._objectCodec, paramWriter);
    if (this._characterEscapes != null)
      localWriterBasedJsonGenerator.setCharacterEscapes(this._characterEscapes);
    SerializableString localSerializableString = this._rootValueSeparator;
    if (localSerializableString != DEFAULT_ROOT_VALUE_SEPARATOR)
      localWriterBasedJsonGenerator.setRootValueSeparator(localSerializableString);
    return localWriterBasedJsonGenerator;
  }

  @Deprecated
  protected JsonGenerator _createJsonGenerator(Writer paramWriter, IOContext paramIOContext)
    throws IOException
  {
    return _createGenerator(paramWriter, paramIOContext);
  }

  @Deprecated
  protected JsonParser _createJsonParser(InputStream paramInputStream, IOContext paramIOContext)
    throws IOException, JsonParseException
  {
    return _createParser(paramInputStream, paramIOContext);
  }

  @Deprecated
  protected JsonParser _createJsonParser(Reader paramReader, IOContext paramIOContext)
    throws IOException, JsonParseException
  {
    return _createParser(paramReader, paramIOContext);
  }

  @Deprecated
  protected JsonParser _createJsonParser(byte[] paramArrayOfByte, int paramInt1, int paramInt2, IOContext paramIOContext)
    throws IOException, JsonParseException
  {
    return _createParser(paramArrayOfByte, paramInt1, paramInt2, paramIOContext);
  }

  protected JsonParser _createParser(InputStream paramInputStream, IOContext paramIOContext)
    throws IOException, JsonParseException
  {
    return new ByteSourceJsonBootstrapper(paramIOContext, paramInputStream).constructParser(this._parserFeatures, this._objectCodec, this._rootByteSymbols, this._rootCharSymbols, isEnabled(Feature.CANONICALIZE_FIELD_NAMES), isEnabled(Feature.INTERN_FIELD_NAMES));
  }

  protected JsonParser _createParser(Reader paramReader, IOContext paramIOContext)
    throws IOException, JsonParseException
  {
    return new ReaderBasedJsonParser(paramIOContext, this._parserFeatures, paramReader, this._objectCodec, this._rootCharSymbols.makeChild(isEnabled(Feature.CANONICALIZE_FIELD_NAMES), isEnabled(Feature.INTERN_FIELD_NAMES)));
  }

  protected JsonParser _createParser(byte[] paramArrayOfByte, int paramInt1, int paramInt2, IOContext paramIOContext)
    throws IOException, JsonParseException
  {
    return new ByteSourceJsonBootstrapper(paramIOContext, paramArrayOfByte, paramInt1, paramInt2).constructParser(this._parserFeatures, this._objectCodec, this._rootByteSymbols, this._rootCharSymbols, isEnabled(Feature.CANONICALIZE_FIELD_NAMES), isEnabled(Feature.INTERN_FIELD_NAMES));
  }

  protected JsonGenerator _createUTF8Generator(OutputStream paramOutputStream, IOContext paramIOContext)
    throws IOException
  {
    UTF8JsonGenerator localUTF8JsonGenerator = new UTF8JsonGenerator(paramIOContext, this._generatorFeatures, this._objectCodec, paramOutputStream);
    if (this._characterEscapes != null)
      localUTF8JsonGenerator.setCharacterEscapes(this._characterEscapes);
    SerializableString localSerializableString = this._rootValueSeparator;
    if (localSerializableString != DEFAULT_ROOT_VALUE_SEPARATOR)
      localUTF8JsonGenerator.setRootValueSeparator(localSerializableString);
    return localUTF8JsonGenerator;
  }

  @Deprecated
  protected JsonGenerator _createUTF8JsonGenerator(OutputStream paramOutputStream, IOContext paramIOContext)
    throws IOException
  {
    return _createUTF8Generator(paramOutputStream, paramIOContext);
  }

  protected Writer _createWriter(OutputStream paramOutputStream, JsonEncoding paramJsonEncoding, IOContext paramIOContext)
    throws IOException
  {
    if (paramJsonEncoding == JsonEncoding.UTF8)
      return new UTF8Writer(paramIOContext, paramOutputStream);
    return new OutputStreamWriter(paramOutputStream, paramJsonEncoding.getJavaName());
  }

  public BufferRecycler _getBufferRecycler()
  {
    SoftReference localSoftReference = (SoftReference)_recyclerRef.get();
    if (localSoftReference == null);
    for (BufferRecycler localBufferRecycler = null; ; localBufferRecycler = (BufferRecycler)localSoftReference.get())
    {
      if (localBufferRecycler == null)
      {
        localBufferRecycler = new BufferRecycler();
        _recyclerRef.set(new SoftReference(localBufferRecycler));
      }
      return localBufferRecycler;
    }
  }

  protected InputStream _optimizedStreamFromURL(URL paramURL)
    throws IOException
  {
    if ("file".equals(paramURL.getProtocol()))
    {
      String str = paramURL.getHost();
      if (((str == null) || (str.length() == 0)) && (paramURL.getPath().indexOf('%') < 0))
        return new FileInputStream(paramURL.getPath());
    }
    return paramURL.openStream();
  }

  public boolean canUseSchema(FormatSchema paramFormatSchema)
  {
    String str = getFormatName();
    return (str != null) && (str.equals(paramFormatSchema.getSchemaType()));
  }

  public final JsonFactory configure(Feature paramFeature, boolean paramBoolean)
  {
    if (paramBoolean)
      return enable(paramFeature);
    return disable(paramFeature);
  }

  public final JsonFactory configure(JsonGenerator.Feature paramFeature, boolean paramBoolean)
  {
    if (paramBoolean)
      return enable(paramFeature);
    return disable(paramFeature);
  }

  public final JsonFactory configure(JsonParser.Feature paramFeature, boolean paramBoolean)
  {
    if (paramBoolean)
      return enable(paramFeature);
    return disable(paramFeature);
  }

  public JsonFactory copy()
  {
    _checkInvalidCopy(JsonFactory.class);
    return new JsonFactory(this, null);
  }

  public JsonGenerator createGenerator(File paramFile, JsonEncoding paramJsonEncoding)
    throws IOException
  {
    Object localObject = new FileOutputStream(paramFile);
    IOContext localIOContext = _createContext(localObject, true);
    localIOContext.setEncoding(paramJsonEncoding);
    if (paramJsonEncoding == JsonEncoding.UTF8)
    {
      if (this._outputDecorator != null)
        localObject = this._outputDecorator.decorate(localIOContext, (OutputStream)localObject);
      return _createUTF8Generator((OutputStream)localObject, localIOContext);
    }
    Writer localWriter = _createWriter((OutputStream)localObject, paramJsonEncoding, localIOContext);
    if (this._outputDecorator != null)
      localWriter = this._outputDecorator.decorate(localIOContext, localWriter);
    return _createGenerator(localWriter, localIOContext);
  }

  public JsonGenerator createGenerator(OutputStream paramOutputStream)
    throws IOException
  {
    return createGenerator(paramOutputStream, JsonEncoding.UTF8);
  }

  public JsonGenerator createGenerator(OutputStream paramOutputStream, JsonEncoding paramJsonEncoding)
    throws IOException
  {
    IOContext localIOContext = _createContext(paramOutputStream, false);
    localIOContext.setEncoding(paramJsonEncoding);
    if (paramJsonEncoding == JsonEncoding.UTF8)
    {
      if (this._outputDecorator != null)
        paramOutputStream = this._outputDecorator.decorate(localIOContext, paramOutputStream);
      return _createUTF8Generator(paramOutputStream, localIOContext);
    }
    Writer localWriter = _createWriter(paramOutputStream, paramJsonEncoding, localIOContext);
    if (this._outputDecorator != null)
      localWriter = this._outputDecorator.decorate(localIOContext, localWriter);
    return _createGenerator(localWriter, localIOContext);
  }

  public JsonGenerator createGenerator(Writer paramWriter)
    throws IOException
  {
    IOContext localIOContext = _createContext(paramWriter, false);
    if (this._outputDecorator != null)
      paramWriter = this._outputDecorator.decorate(localIOContext, paramWriter);
    return _createGenerator(paramWriter, localIOContext);
  }

  @Deprecated
  public JsonGenerator createJsonGenerator(File paramFile, JsonEncoding paramJsonEncoding)
    throws IOException
  {
    return createGenerator(paramFile, paramJsonEncoding);
  }

  @Deprecated
  public JsonGenerator createJsonGenerator(OutputStream paramOutputStream)
    throws IOException
  {
    return createGenerator(paramOutputStream, JsonEncoding.UTF8);
  }

  @Deprecated
  public JsonGenerator createJsonGenerator(OutputStream paramOutputStream, JsonEncoding paramJsonEncoding)
    throws IOException
  {
    return createGenerator(paramOutputStream, paramJsonEncoding);
  }

  @Deprecated
  public JsonGenerator createJsonGenerator(Writer paramWriter)
    throws IOException
  {
    return createGenerator(paramWriter);
  }

  @Deprecated
  public JsonParser createJsonParser(File paramFile)
    throws IOException, JsonParseException
  {
    return createParser(paramFile);
  }

  @Deprecated
  public JsonParser createJsonParser(InputStream paramInputStream)
    throws IOException, JsonParseException
  {
    return createParser(paramInputStream);
  }

  @Deprecated
  public JsonParser createJsonParser(Reader paramReader)
    throws IOException, JsonParseException
  {
    return createParser(paramReader);
  }

  @Deprecated
  public JsonParser createJsonParser(String paramString)
    throws IOException, JsonParseException
  {
    return createParser(paramString);
  }

  @Deprecated
  public JsonParser createJsonParser(URL paramURL)
    throws IOException, JsonParseException
  {
    return createParser(paramURL);
  }

  @Deprecated
  public JsonParser createJsonParser(byte[] paramArrayOfByte)
    throws IOException, JsonParseException
  {
    return createParser(paramArrayOfByte);
  }

  @Deprecated
  public JsonParser createJsonParser(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonParseException
  {
    return createParser(paramArrayOfByte, paramInt1, paramInt2);
  }

  public JsonParser createParser(File paramFile)
    throws IOException, JsonParseException
  {
    IOContext localIOContext = _createContext(paramFile, true);
    Object localObject = new FileInputStream(paramFile);
    if (this._inputDecorator != null)
      localObject = this._inputDecorator.decorate(localIOContext, (InputStream)localObject);
    return _createParser((InputStream)localObject, localIOContext);
  }

  public JsonParser createParser(InputStream paramInputStream)
    throws IOException, JsonParseException
  {
    IOContext localIOContext = _createContext(paramInputStream, false);
    if (this._inputDecorator != null)
      paramInputStream = this._inputDecorator.decorate(localIOContext, paramInputStream);
    return _createParser(paramInputStream, localIOContext);
  }

  public JsonParser createParser(Reader paramReader)
    throws IOException, JsonParseException
  {
    IOContext localIOContext = _createContext(paramReader, false);
    if (this._inputDecorator != null)
      paramReader = this._inputDecorator.decorate(localIOContext, paramReader);
    return _createParser(paramReader, localIOContext);
  }

  public JsonParser createParser(String paramString)
    throws IOException, JsonParseException
  {
    Object localObject = new StringReader(paramString);
    IOContext localIOContext = _createContext(localObject, true);
    if (this._inputDecorator != null)
      localObject = this._inputDecorator.decorate(localIOContext, (Reader)localObject);
    return _createParser((Reader)localObject, localIOContext);
  }

  public JsonParser createParser(URL paramURL)
    throws IOException, JsonParseException
  {
    IOContext localIOContext = _createContext(paramURL, true);
    InputStream localInputStream = _optimizedStreamFromURL(paramURL);
    if (this._inputDecorator != null)
      localInputStream = this._inputDecorator.decorate(localIOContext, localInputStream);
    return _createParser(localInputStream, localIOContext);
  }

  public JsonParser createParser(byte[] paramArrayOfByte)
    throws IOException, JsonParseException
  {
    IOContext localIOContext = _createContext(paramArrayOfByte, true);
    if (this._inputDecorator != null)
    {
      InputStream localInputStream = this._inputDecorator.decorate(localIOContext, paramArrayOfByte, 0, paramArrayOfByte.length);
      if (localInputStream != null)
        return _createParser(localInputStream, localIOContext);
    }
    return _createParser(paramArrayOfByte, 0, paramArrayOfByte.length, localIOContext);
  }

  public JsonParser createParser(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonParseException
  {
    IOContext localIOContext = _createContext(paramArrayOfByte, true);
    if (this._inputDecorator != null)
    {
      InputStream localInputStream = this._inputDecorator.decorate(localIOContext, paramArrayOfByte, paramInt1, paramInt2);
      if (localInputStream != null)
        return _createParser(localInputStream, localIOContext);
    }
    return _createParser(paramArrayOfByte, paramInt1, paramInt2, localIOContext);
  }

  public JsonFactory disable(Feature paramFeature)
  {
    this._factoryFeatures &= (0xFFFFFFFF ^ paramFeature.getMask());
    return this;
  }

  public JsonFactory disable(JsonGenerator.Feature paramFeature)
  {
    this._generatorFeatures &= (0xFFFFFFFF ^ paramFeature.getMask());
    return this;
  }

  public JsonFactory disable(JsonParser.Feature paramFeature)
  {
    this._parserFeatures &= (0xFFFFFFFF ^ paramFeature.getMask());
    return this;
  }

  public JsonFactory enable(Feature paramFeature)
  {
    this._factoryFeatures |= paramFeature.getMask();
    return this;
  }

  public JsonFactory enable(JsonGenerator.Feature paramFeature)
  {
    this._generatorFeatures |= paramFeature.getMask();
    return this;
  }

  public JsonFactory enable(JsonParser.Feature paramFeature)
  {
    this._parserFeatures |= paramFeature.getMask();
    return this;
  }

  public CharacterEscapes getCharacterEscapes()
  {
    return this._characterEscapes;
  }

  public ObjectCodec getCodec()
  {
    return this._objectCodec;
  }

  public String getFormatName()
  {
    if (getClass() == JsonFactory.class)
      return "JSON";
    return null;
  }

  public InputDecorator getInputDecorator()
  {
    return this._inputDecorator;
  }

  public OutputDecorator getOutputDecorator()
  {
    return this._outputDecorator;
  }

  public String getRootValueSeparator()
  {
    if (this._rootValueSeparator == null)
      return null;
    return this._rootValueSeparator.getValue();
  }

  public MatchStrength hasFormat(InputAccessor paramInputAccessor)
    throws IOException
  {
    if (getClass() == JsonFactory.class)
      return hasJSONFormat(paramInputAccessor);
    return null;
  }

  protected MatchStrength hasJSONFormat(InputAccessor paramInputAccessor)
    throws IOException
  {
    return ByteSourceJsonBootstrapper.hasJSONFormat(paramInputAccessor);
  }

  public final boolean isEnabled(Feature paramFeature)
  {
    return (this._factoryFeatures & paramFeature.getMask()) != 0;
  }

  public final boolean isEnabled(JsonGenerator.Feature paramFeature)
  {
    return (this._generatorFeatures & paramFeature.getMask()) != 0;
  }

  public final boolean isEnabled(JsonParser.Feature paramFeature)
  {
    return (this._parserFeatures & paramFeature.getMask()) != 0;
  }

  protected Object readResolve()
  {
    return new JsonFactory(this, this._objectCodec);
  }

  public boolean requiresCustomCodec()
  {
    return false;
  }

  public JsonFactory setCharacterEscapes(CharacterEscapes paramCharacterEscapes)
  {
    this._characterEscapes = paramCharacterEscapes;
    return this;
  }

  public JsonFactory setCodec(ObjectCodec paramObjectCodec)
  {
    this._objectCodec = paramObjectCodec;
    return this;
  }

  public JsonFactory setInputDecorator(InputDecorator paramInputDecorator)
  {
    this._inputDecorator = paramInputDecorator;
    return this;
  }

  public JsonFactory setOutputDecorator(OutputDecorator paramOutputDecorator)
  {
    this._outputDecorator = paramOutputDecorator;
    return this;
  }

  public JsonFactory setRootValueSeparator(String paramString)
  {
    if (paramString == null);
    for (SerializedString localSerializedString = null; ; localSerializedString = new SerializedString(paramString))
    {
      this._rootValueSeparator = localSerializedString;
      return this;
    }
  }

  public Version version()
  {
    return PackageVersion.VERSION;
  }

  public static enum Feature
  {
    private final boolean _defaultState;

    static
    {
      CANONICALIZE_FIELD_NAMES = new Feature("CANONICALIZE_FIELD_NAMES", 1, true);
      Feature[] arrayOfFeature = new Feature[2];
      arrayOfFeature[0] = INTERN_FIELD_NAMES;
      arrayOfFeature[1] = CANONICALIZE_FIELD_NAMES;
    }

    private Feature(boolean paramBoolean)
    {
      this._defaultState = paramBoolean;
    }

    public static int collectDefaults()
    {
      int i = 0;
      for (Feature localFeature : values())
        if (localFeature.enabledByDefault())
          i |= localFeature.getMask();
      return i;
    }

    public boolean enabledByDefault()
    {
      return this._defaultState;
    }

    public boolean enabledIn(int paramInt)
    {
      return (paramInt & getMask()) != 0;
    }

    public int getMask()
    {
      return 1 << ordinal();
    }
  }
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     com.fasterxml.jackson.core.JsonFactory
 * JD-Core Version:    0.6.2
 */