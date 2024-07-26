#include "include/wireguard_2govpn/wireguard_2govpn_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "wireguard_2govpn_plugin.h"

void WireguardFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  wireguard_2govpn::WireguardFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
