#ifndef wireguard_2govpn_UTILS_H
#define wireguard_2govpn_UTILS_H

#include <flutter/encodable_value.h>
#include <windows.h>

#include <sstream>
#include <string>

namespace wireguard_2govpn {

const flutter::EncodableValue *ValueOrNull(const flutter::EncodableMap &map, const char *key);

std::string ErrorWithCode(const char *msg, unsigned long error_code);

std::string WideToUtf8(const std::wstring &wstr);

std::wstring Utf8ToWide(const std::string &str);

std::string WideToAnsi(const std::wstring &wstr);

std::wstring AnsiToWide(const std::string &str);

// Pops a message box (useful for debugging native code)
void DebugMessageBox(const char* msg);

}  // namespace wireguard_2govpn

#endif
