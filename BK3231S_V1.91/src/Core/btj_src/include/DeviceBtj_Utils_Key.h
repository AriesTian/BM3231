#ifndef __DEVICEBTJ_UTILS_KEY_DOT_H_
#define __DEVICEBTJ_UTILS_KEY_DOT_H_
#ifdef __cplusplus
extern "C" {
#endif
    void
    DeviceBtj_Utils_Key_Read(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR DevMemAddr
    );
    void
    DeviceBtj_Utils_Key_Store(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR DevMemAddr,
        DEV_LINK_KEY DevLinkKey
    );
#ifdef __cplusplus
}
#endif
#endif /* __DEVICEBTJ_UTILS_KEY_DOT_H_ */
