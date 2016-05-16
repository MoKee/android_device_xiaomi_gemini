/*
 * Copyright (C) 2013 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


#define LOG_NDEBUG 0
#define LOG_TAG "xiaomi-readmac"

#include <cutils/log.h>

#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

#include <sys/ioctl.h>
#include <sys/types.h>

#include <cutils/properties.h>

/******************************************************************************/

#define WLAN_MAC_BIN "/persist/wlan_mac.bin"

extern int qmi_nv_read_wlan_mac(char** mac);

static int check_wlan_mac_bin_file()
{
	char content[1024];	
	FILE *fp = fopen(WLAN_MAC_BIN, "r");
	if (fp != NULL) {
		memset(content, 0, sizeof(content));
		fread(content, 1, sizeof(content)-1, fp);
		fclose(fp);

		if (strstr(content, "Intf0MacAddress") == NULL)
		{
			ALOGV(WLAN_MAC_BIN " Missing value Intf0MacAddress");	
			return 1;
		}

		if (strstr(content, "Intf1MacAddress") == NULL)
		{
			ALOGV(WLAN_MAC_BIN " Missing value Intf1MacAddress");	
			return 1;
		}

		return 0;
	}
	return 1;
}

int main(int argc, char **argv)
{
	unsigned char wlan_addr[] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, };
	char* nv_wlan_mac = NULL;
	//char XiaomiMac[PROPERTY_VALUE_MAX];
	char macStr[64];
	int ret, i;
	FILE *fp;

	(void)argc;
	(void)argv;

	// read wlan mac address from modem NV
	ret = qmi_nv_read_wlan_mac(&nv_wlan_mac);
	if (!nv_wlan_mac)
	{
		ALOGE("qmi_nv_read_wlan_mac error %d", ret);
		return 1;
	}
	for (i=0; i<6; i++) {
	    wlan_addr[i] = nv_wlan_mac[i];
	}

	if (check_wlan_mac_bin_file())
	{
		fp = fopen(WLAN_MAC_BIN, "w");
		fprintf(fp, "Intf0MacAddress=%02X%02X%02X%02X%02X%02X\n",
			wlan_addr[0], wlan_addr[1], wlan_addr[2], wlan_addr[3], wlan_addr[4], wlan_addr[5]);
		fprintf(fp, "Intf1MacAddress=%02X%02X%02X%02X%02X%02X\n",
			wlan_addr[0], wlan_addr[1], wlan_addr[2], wlan_addr[3], wlan_addr[4], (unsigned char)(wlan_addr[5]+1));
		fprintf(fp, "END\n");
		fclose(fp);

		// FIXME
		//chown(WLAN_MAC_BIN, AID_SYSTEM, AID_SYSTEM);
		//chmod(WLAN_MAC_BIN, S_IRUSR | S_IWUSR | S_IRGRP); // 640

		ALOGV(WLAN_MAC_BIN " written");
	} else {
		ALOGV(WLAN_MAC_BIN " already valid");
	}

	// mac=0xfc,0x64,0xba,0x53,0x30,0x70
    sprintf(macStr, "mac=0x%02x,0x%02x,0x%02x,0x%02x,0x%02x,0x%02x", 
		wlan_addr[5], wlan_addr[4], wlan_addr[3], wlan_addr[2], wlan_addr[1], wlan_addr[0]);
	    
	//property_get("persist.ts.wifi.arg", tsMac, "");
	//if (strcmp(tsMac, macStr))
	//{
	//    property_set("persist.ts.wifi.mac", macStr);
	//    ALOGV("Set persist.ts.wifi.mac -> '%s'\n", macStr);
	//}

    return 0;
}
