package com.zendesk_helpcenter



import android.app.Activity
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import zendesk.core.AnonymousIdentity
import zendesk.core.Identity
import zendesk.core.Zendesk
import zendesk.support.Support

/** FlutterZendeskPlugin */
class FlutterZendeskPlugin: FlutterPlugin, MethodCallHandler, ActivityAware {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private val tag = "[ZendeskMessagingPlugin]"
  private lateinit var channel: MethodChannel
  var activity: Activity? = null
  var isInitialize: Boolean = false

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    val sendData: Any? = call.arguments
    val zendeskFlutterCombination = FlutterZendeskCommonMethod(this, channel)

    when (call.method) {

      "initialize" -> {

        val appId = call.argument<String>("appId")!!
        val clientId = call.argument<String>("clientId")!!
        val nameIdentifier = call.argument<String>("nameIdentifier")!!
        val urlString = call.argument<String>("urlString")!!
        zendeskFlutterCombination.initialize(
          appId =appId,
          clientId = clientId,
          nameIdentifier =nameIdentifier, urlString = urlString  )
      }

      "showRequestList" -> {
        zendeskFlutterCombination.showRequestList(call)
      }

    }

    if (sendData != null) {
      result.success(sendData)
    } else {
      try {
        result.success(0)
      }catch ( e: Exception){
        e.printStackTrace();
      }
    }
  }


  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "flutter_helpcenter")
    channel.setMethodCallHandler(this)
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    activity = binding.activity
  }

  override fun onDetachedFromActivityForConfigChanges() {
    activity = null
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    activity = binding.activity
  }

  override fun onDetachedFromActivity() {
    activity = null
  }

}
