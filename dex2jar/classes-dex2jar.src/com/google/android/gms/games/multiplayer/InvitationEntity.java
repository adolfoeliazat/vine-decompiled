package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.internal.w;
import com.google.android.gms.internal.w.a;
import com.google.android.gms.internal.x;
import java.util.ArrayList;

public final class InvitationEntity
  implements Invitation
{
  public static final Parcelable.Creator<InvitationEntity> CREATOR = new Parcelable.Creator()
  {
    public InvitationEntity[] C(int paramAnonymousInt)
    {
      return new InvitationEntity[paramAnonymousInt];
    }

    public InvitationEntity p(Parcel paramAnonymousParcel)
    {
      GameEntity localGameEntity = (GameEntity)GameEntity.CREATOR.createFromParcel(paramAnonymousParcel);
      String str = paramAnonymousParcel.readString();
      long l = paramAnonymousParcel.readLong();
      int i = paramAnonymousParcel.readInt();
      Participant localParticipant = (Participant)ParticipantEntity.CREATOR.createFromParcel(paramAnonymousParcel);
      int j = paramAnonymousParcel.readInt();
      ArrayList localArrayList = new ArrayList(j);
      for (int k = 0; k < j; k++)
        localArrayList.add(ParticipantEntity.CREATOR.createFromParcel(paramAnonymousParcel));
      return new InvitationEntity(localGameEntity, str, l, i, localParticipant, localArrayList, null);
    }
  };
  private final GameEntity dE;
  private final String dF;
  private final long dG;
  private final int dH;
  private final Participant dI;
  private final ArrayList<Participant> dJ;

  private InvitationEntity(GameEntity paramGameEntity, String paramString, long paramLong, int paramInt, Participant paramParticipant, ArrayList<Participant> paramArrayList)
  {
    this.dE = paramGameEntity;
    this.dF = paramString;
    this.dG = paramLong;
    this.dH = paramInt;
    this.dI = paramParticipant;
    this.dJ = paramArrayList;
  }

  public InvitationEntity(Invitation paramInvitation)
  {
    this.dE = new GameEntity(paramInvitation.getGame());
    this.dF = paramInvitation.getInvitationId();
    this.dG = paramInvitation.getCreationTimestamp();
    this.dH = paramInvitation.getInvitationType();
    String str = paramInvitation.getInviter().getParticipantId();
    Object localObject = null;
    ArrayList localArrayList = paramInvitation.getParticipants();
    int i = localArrayList.size();
    this.dJ = new ArrayList(i);
    for (int j = 0; j < i; j++)
    {
      Participant localParticipant = (Participant)localArrayList.get(j);
      if (localParticipant.getParticipantId().equals(str))
        localObject = localParticipant;
      this.dJ.add(localParticipant.freeze());
    }
    x.b(localObject, "Must have a valid inviter!");
    this.dI = ((Participant)localObject.freeze());
  }

  public static int a(Invitation paramInvitation)
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = paramInvitation.getGame();
    arrayOfObject[1] = paramInvitation.getInvitationId();
    arrayOfObject[2] = Long.valueOf(paramInvitation.getCreationTimestamp());
    arrayOfObject[3] = Integer.valueOf(paramInvitation.getInvitationType());
    arrayOfObject[4] = paramInvitation.getInviter();
    arrayOfObject[5] = paramInvitation.getParticipants();
    return w.hashCode(arrayOfObject);
  }

  public static boolean a(Invitation paramInvitation, Object paramObject)
  {
    boolean bool = true;
    if (!(paramObject instanceof Invitation))
      bool = false;
    Invitation localInvitation;
    do
    {
      do
        return bool;
      while (paramInvitation == paramObject);
      localInvitation = (Invitation)paramObject;
    }
    while ((w.a(localInvitation.getGame(), paramInvitation.getGame())) && (w.a(localInvitation.getInvitationId(), paramInvitation.getInvitationId())) && (w.a(Long.valueOf(localInvitation.getCreationTimestamp()), Long.valueOf(paramInvitation.getCreationTimestamp()))) && (w.a(Integer.valueOf(localInvitation.getInvitationType()), Integer.valueOf(paramInvitation.getInvitationType()))) && (w.a(localInvitation.getInviter(), paramInvitation.getInviter())) && (w.a(localInvitation.getParticipants(), paramInvitation.getParticipants())));
    return false;
  }

  public static String b(Invitation paramInvitation)
  {
    return w.c(paramInvitation).a("Game", paramInvitation.getGame()).a("InvitationId", paramInvitation.getInvitationId()).a("CreationTimestamp", Long.valueOf(paramInvitation.getCreationTimestamp())).a("InvitationType", Integer.valueOf(paramInvitation.getInvitationType())).a("Inviter", paramInvitation.getInviter()).a("Participants", paramInvitation.getParticipants()).toString();
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }

  public Invitation freeze()
  {
    return this;
  }

  public long getCreationTimestamp()
  {
    return this.dG;
  }

  public Game getGame()
  {
    return this.dE;
  }

  public String getInvitationId()
  {
    return this.dF;
  }

  public int getInvitationType()
  {
    return this.dH;
  }

  public Participant getInviter()
  {
    return this.dI;
  }

  public ArrayList<Participant> getParticipants()
  {
    return this.dJ;
  }

  public int hashCode()
  {
    return a(this);
  }

  public String toString()
  {
    return b(this);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    this.dE.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.dF);
    paramParcel.writeLong(this.dG);
    paramParcel.writeInt(this.dH);
    this.dI.writeToParcel(paramParcel, paramInt);
    int i = this.dJ.size();
    paramParcel.writeInt(i);
    for (int j = 0; j < i; j++)
      ((Participant)this.dJ.get(j)).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.InvitationEntity
 * JD-Core Version:    0.6.2
 */