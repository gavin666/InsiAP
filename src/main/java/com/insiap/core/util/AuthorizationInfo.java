package com.insiap.core.util;

public class AuthorizationInfo {
	String deviceId;
	long signTimestamp;
	String signVersion;
	String sign;
	public String getDeviceId() {
		return deviceId;
	}
	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}
	public long getSignTimestamp() {
		return signTimestamp;
	}
	public void setSignTimestamp(long signTimestamp) {
		this.signTimestamp = signTimestamp;
	}
	public String getSignVersion() {
		return signVersion;
	}
	public void setSignVersion(String signVersion) {
		this.signVersion = signVersion;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}

}
