function get-ipinfo {
get-ciminstance win32_networkadapterconfiguration | where-object ipenabled | format-table Description,InterfaceIndex,IPAddress,IPSubnet,DNSDomain,DNSServerSearchOrder
}