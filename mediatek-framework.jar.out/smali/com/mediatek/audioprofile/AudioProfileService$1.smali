.class Lcom/mediatek/audioprofile/AudioProfileService$1;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerModeChanged(I)V
    .locals 7
    .parameter "newRingerMode"

    .prologue
    const/4 v6, 0x0

    .line 732
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 733
    .local v1, ringerMode:I
    if-eq v1, p1, :cond_0

    .line 734
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRingerModeChanged: ringermode is not latest: new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", latest = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1700(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 738
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRingerModeChanged with same ringerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_1
    :goto_0
    return-void

    .line 740
    :cond_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #setter for: Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I
    invoke-static {v3, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1702(Lcom/mediatek/audioprofile/AudioProfileService;I)I

    .line 743
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1800(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->onRingerModeChanged(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 747
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$000(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 748
    .local v0, activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRingerModeChanged: ringermode changed by other app, change profile! ringerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    packed-switch v1, :pswitch_data_0

    .line 782
    const-string v3, "AudioProfileService"

    const-string v4, "undefined RingerMode!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 755
    :pswitch_0
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 756
    const-string v3, "AudioProfileService"

    const-string v4, "RingerMode change to SILENT, change profile to silent"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto :goto_0

    .line 764
    :pswitch_1
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 765
    const-string v3, "AudioProfileService"

    const-string v4, "RingerMode change to VIBRATE, change profile to meeting!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 773
    :pswitch_2
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 774
    :cond_3
    const-string v3, "AudioProfileService"

    const-string v4, "RingerMode change to NORMAL, change profile to last active profile!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 776
    .local v2, systemVolume:I
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1600(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 777
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1600(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 751
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
