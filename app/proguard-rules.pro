# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

## adjust
-keep class com.adjust.sdk.** { *; }
-keep class com.google.android.gms.common.ConnectionResult {
    int SUCCESS;
}
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient {
    com.google.android.gms.ads.identifier.AdvertisingIdClient$Info getAdvertisingIdInfo(android.content.Context);
}
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient$Info {
    java.lang.String getId();
    boolean isLimitAdTrackingEnabled();
}
-keep public class com.android.installreferrer.** { *; }

#appsflyer
-keep class com.appsflyer.** { *; }


## kotchava
# KochavaCore: Ignore SDK warnings for missing dependencies.
-dontwarn com.kochava.core**

# KochavaCore: Uncomment only if needed. Do not run ProGuard on the SDK at all.
#-keep class com.kochava.core** { *; }

# KochavaCore: Keep annotations used for json serialization.
-keepattributes Signature
-keepattributes *Annotation*
-keepclassmembers class * {
  @com.kochava.core.json.annotation.internal.JsonSerialize ;
}
-keepclassmembers class * {
  @com.kochava.core.json.annotation.internal.JsonIgnore ;
}
-keepclassmembers class * {
  @com.kochava.core.json.annotation.internal.JsonEnumSerializedValue ;
}
-keep @com.kochava.core.json.annotation.internal.JsonSerializable class *

# KochavaCore: BuildConfig
-keep class com.kochava.core.BuildConfig { *; }

# KochavaCore: Google Instant Apps Collection.
-keep class com.google.android.gms.common.wrappers.InstantApps {
    boolean isInstantApp(android.content.Context);
}

# KochavaTracker: Ignore SDK warnings for missing dependencies.
-dontwarn com.kochava.tracker**

# KochavaTracker: Uncomment only if needed. Do not run ProGuard on the SDK at all.
#-keep class com.kochava.tracker** { *; }

# KochavaTracker: BuildConfig
-keep class com.kochava.tracker.BuildConfig { *; }

# KochavaTracker: Google ADID Collection.
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient {
    com.google.android.gms.ads.identifier.AdvertisingIdClient$Info getAdvertisingIdInfo(android.content.Context);
}
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient$Info {
    java.lang.String getId();
    boolean isLimitAdTrackingEnabled();
}

# KochavaTracker: Google Install Referrer Collection.
-keep class com.android.installreferrer.api.InstallReferrerClient { *; }
-keep class com.android.installreferrer.api.InstallReferrerClient$InstallReferrerResponse { *; }
-keep class com.android.installreferrer.api.InstallReferrerStateListener { *; }
-keep class com.android.installreferrer.api.ReferrerDetails { *; }

# KochavaTracker: Google App Set ID Collection
-keep class com.google.android.gms.appset.AppSet {
    com.google.android.gms.appset.AppSetIdClient getClient(android.content.Context);
}
-keep class com.google.android.gms.appset.AppSetIdClient {
    com.google.android.gms.tasks.Task getAppSetIdInfo();
}
-keep class com.google.android.gms.appset.AppSetIdInfo {
    java.lang.String getId();
    int getScope();
}
-keep class com.google.android.gms.tasks.Tasks {
    *** await(com.google.android.gms.tasks.Task, long, java.util.concurrent.TimeUnit);
}

# KochavaTracker: Huawei OAID Collection.
-keep class com.huawei.hms.ads.identifier.AdvertisingIdClient {
    com.huawei.hms.ads.identifier.AdvertisingIdClient$Info getAdvertisingIdInfo(android.content.Context);
}
-keep class com.huawei.hms.ads.identifier.AdvertisingIdClient$Info {
    java.lang.String getId();
    boolean isLimitAdTrackingEnabled();
}

# KochavaTracker: Huawei Install Referrer Collection.
-keep class com.huawei.hms.ads.installreferrer.api.InstallReferrerClient { *; }
-keep class com.huawei.hms.ads.installreferrer.api.InstallReferrerClient$InstallReferrerResponse { *; }
-keep class com.huawei.hms.ads.installreferrer.api.InstallReferrerStateListener { *; }
-keep class com.huawei.hms.ads.installreferrer.api.ReferrerDetails { *; }

# KochavaTracker: Notifications Enabled Collection.
-keep class androidx.core.app.NotificationManagerCompat {
    static androidx.core.app.NotificationManagerCompat from(android.content.Context);
    boolean areNotificationsEnabled();
}

# KochavaTrackerEvents: Ignore SDK warnings for missing dependencies.
-dontwarn com.kochava.tracker.events**

# KochavaTrackerEvents: Uncomment only if needed. Do not run ProGuard on the SDK at all.
#-keep class com.kochava.tracker.events** { *; }

# KochavaTrackerEvents: BuildConfig
-keep class com.kochava.tracker.events.BuildConfig { *; }

# KochavaTrackerEvents: Internal SDK
-keep class com.kochava.tracker.events.Events {
    static com.kochava.tracker.events.EventsApi getInstance();
    void setController(com.kochava.tracker.modules.events.internal.EventsControllerApi);
    com.kochava.tracker.modules.events.internal.EventsControllerApi getController();
}

# KochavaTrackerEngagement: Ignore SDK warnings for missing dependencies.
-dontwarn com.kochava.tracker.engagement**

# KochavaTrackerEngagement: Uncomment only if needed. Do not run ProGuard on the SDK at all.
#-keep class com.kochava.tracker.engagement** { *; }

# KochavaTrackerEngagement: BuildConfig
-keep class com.kochava.tracker.engagement.BuildConfig { *; }

# KochavaTrackerEngagement: Internal SDK
-keep class com.kochava.tracker.engagement.Engagement {
    static com.kochava.tracker.engagement.EngagementApi getInstance();
    void setController(com.kochava.tracker.modules.engagement.internal.EngagementControllerApi);
    com.kochava.tracker.modules.engagement.internal.EngagementControllerApi getController();
}

# KochavaTrackerDatapointNetwork: Ignore SDK warnings for missing dependencies.
-dontwarn com.kochava.tracker.datapointnetwork**

# KochavaTrackerDatapointNetwork: Uncomment only if needed. Do not run ProGuard on the SDK at all.
#-keep class com.kochava.tracker.datapointnetwork** { *; }

# KochavaTrackerDatapointNetwork: BuildConfig
-keep class com.kochava.tracker.datapointnetwork.BuildConfig { *; }

# KochavaTrackerDatapointNetwork: Internal SDK
-keep class com.kochava.tracker.datapointnetwork.internal.DataPointCollectionNetwork {
    public ;
}

# KochavaTrackerLegacyReferrer: Ignore SDK warnings for missing dependencies.
-dontwarn com.kochava.tracker.legacyreferrer**

# KochavaTrackerLegacyReferrer: Uncomment only if needed. Do not run ProGuard on the SDK at all.
#-keep class com.kochava.tracker.legacyreferrer** { *; }

# KochavaTrackerLegacyReferrer: BuildConfig
-keep class com.kochava.tracker.legacyreferrer.BuildConfig { *; }

# KochavaTrackerLegacyReferrer: Referrer Receiver
-keep class com.kochava.tracker.legacyreferrer.LegacyReferrerReceiver {
    void onReceive(android.content.Context, android.content.Intent);
}
