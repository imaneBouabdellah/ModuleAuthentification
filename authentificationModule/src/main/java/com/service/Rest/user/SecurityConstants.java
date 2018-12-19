package com.service.Rest.user;

public class SecurityConstants {
	  public static final String SECRET = "SecretKeyToGenJWTs";
	    public static final long EXPIRATION_TIME = 864_000_000; // 10 days
	    public static final String TOKEN_PREFIX = "Bearer ";
	    public static final String HEADER_STRING = "Authorization";
	    public static final String SIGN_UP_URL = "/api/sign-up";
	    public static final String SOCKET_UP_URL = "/socket";

}
