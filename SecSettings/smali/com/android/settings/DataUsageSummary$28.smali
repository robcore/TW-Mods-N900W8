.class Lcom/android/settings/DataUsageSummary$28;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2564
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$28;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$28;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$28;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings/DataUsageSummary;->access$2000(Lcom/android/settings/DataUsageSummary;J)V

    .line 2573
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$28;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$28;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings/DataUsageSummary;->access$2300(Lcom/android/settings/DataUsageSummary;J)V

    .line 2568
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$28;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 2583
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$28;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 2578
    return-void
.end method
