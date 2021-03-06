.class Lcom/android/internal/widget/ImageDigitalClock$AmPm;
.super Ljava/lang/Object;
.source "ImageDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ImageDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPmDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;ILjava/util/ArrayList;I)V
    .locals 2
    .parameter "parent"
    .parameter "tf"
    .parameter "color"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/Typeface;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz p4, :cond_2

    iput-object p4, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmDrawables:Ljava/util/ArrayList;

    :cond_2
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    return-void
.end method

.method private getAmPmImageResId(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "s"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const-string v0, "ImageDigitalClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmPmImageResId(), s = : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmDrawables:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmDrawables:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const-string v0, "\u4e0a\u5348"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmDrawables:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const-string v0, "\u4e0b\u5348"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmDrawables:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method reloadStringResource()V
    .locals 2

    .prologue
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    return-void
.end method

.method setIsMorning(Z)V
    .locals 4
    .parameter "isMorning"

    .prologue
    iget-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmDrawables:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .local v1, s:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->getAmPmImageResId(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #s:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #s:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_2
.end method

.method setShowAmPm(Z)V
    .locals 3
    .parameter "show"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v0, "ImageDigitalClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowAmPm(), show = : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
