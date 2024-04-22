Return-Path: <linux-man+bounces-802-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4818AD64F
	for <lists+linux-man@lfdr.de>; Mon, 22 Apr 2024 23:08:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D9561C20E37
	for <lists+linux-man@lfdr.de>; Mon, 22 Apr 2024 21:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A000B1C286;
	Mon, 22 Apr 2024 21:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fz-juelich.de header.i=@fz-juelich.de header.b="l8Nwr0Ld"
X-Original-To: linux-man@vger.kernel.org
Received: from mailgw-k01.its.kfa-juelich.de (mailgw-k01.its.kfa-juelich.de [134.94.4.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335531CD15
	for <linux-man@vger.kernel.org>; Mon, 22 Apr 2024 21:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.94.4.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713820120; cv=none; b=rMnpUpIhuymzUjmOFRSH2lg4P2BAWlSvgWaW921nOfaUO4x+APBHskfgddRHYA2lgWAZ9B8OwO7wU60P/sUu2jE7/bSQpwz22m5iXuTAdKG5zE0DryGdj+D126YlwfiVMyGh3C47k/784f3DnDVo+v6xznfg2ItJjXhhoe5k1L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713820120; c=relaxed/simple;
	bh=Oeo4Qq6b9YgyHtgayjSFxpp2Bsxvf8mLu9TW+/YFyOw=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=JDR0aINrAd7AGswQs7OHymTdYEWC/dSQmer+urrCfaifvzo74dw73dE7Yg4PegsVl8RNKE8FCeRcvnJ01Qd0BZhjukxDVUL/ixuSr5JRRMcfBrMn7cA2Pxnh1hyPYYfLdyR6qGceDI5d2g+W+7VLDbCTa1O4dO28yw2QQTm4xOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fz-juelich.de; spf=pass smtp.mailfrom=fz-juelich.de; dkim=pass (1024-bit key) header.d=fz-juelich.de header.i=@fz-juelich.de header.b=l8Nwr0Ld; arc=none smtp.client-ip=134.94.4.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fz-juelich.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fz-juelich.de
Received: from localhost (localhost [127.0.0.1])
	by mailgw-k01.its.kfa-juelich.de (Postfix) with ESMTP id 9541B14011F;
	Mon, 22 Apr 2024 23:08:29 +0200 (CEST)
Authentication-Results: mailgw-k01.its.kfa-juelich.de (amavisd-new);
	dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
	header.d=fz-juelich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fz-juelich.de; h=
	content-type:content-type:in-reply-to:from:from:references
	:content-language:subject:subject:user-agent:mime-version:date
	:date:message-id:received:received:received; s=main; t=
	1713820107; bh=Oeo4Qq6b9YgyHtgayjSFxpp2Bsxvf8mLu9TW+/YFyOw=; b=l
	8Nwr0LdrWBzYPX6sxjOtyF0+qBQPdapXkhIWxnSV6IFFaMQIpBPLvekxU7UEIGv5
	Eag9tqWrbLxXLpm0UG64jB4I03p09O9k+HnXE8KljWB43ZwZuswSSbJNrJUn7pgh
	ZD11Lz8xKb1DpiaXnckdjiCQsJi71Sz0/lDAPgEBOw=
X-Virus-Scanned: Debian amavisd-new at mailgw-k01.its.kfa-juelich.de
Received: from mailgw-k01.its.kfa-juelich.de ([127.0.0.1])
	by localhost (mailgw-k01.its.kfa-juelich.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rPJbWJjze4ty; Mon, 22 Apr 2024 23:08:27 +0200 (CEST)
Received: from exch2019-k.ad.fz-juelich.de (exch2019-k.its.kfa-juelich.de [134.94.4.37])
	by mailgw-k01.its.kfa-juelich.de (Postfix) with ESMTPS;
	Mon, 22 Apr 2024 23:08:27 +0200 (CEST)
Received: from [192.168.178.21] (62.216.210.241) by
 exch2019-k.ad.fz-juelich.de (134.94.4.37) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.4; Mon, 22 Apr 2024 23:08:26 +0200
Message-ID: <eba65fdb-e70b-4478-bfd7-8a7a31741774@fz-juelich.de>
Date: Mon, 22 Apr 2024 23:08:22 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: elf(5) and ld.so(8): DT_RPATH deprecated - really?
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>, Joseph Myers <josmyers@redhat.com>
CC: <bug-binutils@gnu.org>, <linux-man@vger.kernel.org>, Mike Frysinger
	<vapier@gentoo.org>
References: <643ad7be-1cf5-491d-bd0c-d87e2b260912@fz-juelich.de>
 <ZiXpBp-vigNCwpHx@debian> <48c28639-f09d-dab2-10bb-9a6813b28062@redhat.com>
 <ZialT7CDXzj28K4Q@debian>
From: Joachim Wuttke <j.wuttke@fz-juelich.de>
In-Reply-To: <ZialT7CDXzj28K4Q@debian>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms070705060801080208030308"
X-ClientProxiedBy: exch2019-e.ad.fz-juelich.de (134.94.4.35) To
 exch2019-k.ad.fz-juelich.de (134.94.4.37)

--------------ms070705060801080208030308
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Alex and all:

 > But it seems people want to remove it "eventually" ...
 > in a couple of centuries ...

Deprecation, in my understanding, requires a realistic
roadmap for change, and in particular there must be
a way to replace any legitimate use of the old facility
by a functionally equivalent new construct.

 > if you have the intention of using it in new software,
 > or keeping it in existing software, maybe you could
 > give your reasons

In addition to what Joseph wrote:

 > ... useful as it always was for testing purposes ...

We are using RPATH not only in testing, but also in
deployment, namely in binary installers where we
bundle our application's binary executable with
all direct and indirect shared library dependencies,
except the most basic system libraries.

 > would you mind sending a patch, and CC binutils

I'll try tomorrow.

Kind greetings, Joachim


--------------ms070705060801080208030308
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCC
EbEwggUSMIID+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYT
AkRFMSswKQYDVQQKDCJULVN5c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYD
VQQLDBZULVN5c3RlbXMgVHJ1c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFs
Um9vdCBDbGFzcyAyMB4XDTE2MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNV
BAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVu
IEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNVBAMTJERG
Ti1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAMtg1/9moUHN0vqHl4pzq5lN6mc5WqFggEcVToyVsuXPztNXS43O+FZs
FVV2B+pG/cgDRWM+cNSrVICxI5y+NyipCf8FXRgPxJiZN7Mg9mZ4F4fCnQ7MSjLnFp2uDo0p
eQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+BaL2w8pQDcNb1lDY9/Mm3yWmpLYgHurDg0
WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qLNupOkSk9s1FcragMvp0049ENF4N1
xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCrKq4Xl14zzsjz9AkH4wKGMUZrAcUQDBHHWekC
AwEAAaOCAXQwggFwMA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUk+PYMiba1fFKpZFK4OpL
4qIMz+EwHwYDVR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYDVR0TAQH/BAgwBgEB
/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGCLB4wCAYGZ4EM
AQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUvcmwvVGVs
ZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3JsMIGGBggrBgEFBQcBAQR6MHgwLAYIKwYBBQUH
MAGGIGh0dHA6Ly9vY3NwMDMzNi50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRw
Oi8vcGtpMDMzNi50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5j
ZXIwDQYJKoZIhvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5Ri71sqQPrhE4
eTizDnS6dl2e6BiClmLbTDPo3flq3zK9LExHYFV/53RrtCyD2HlrtrdNUAtmB7Xts5et6u5/
MOaZ/SLick0+hFvu+c+Z6n/XUjkurJgARH5pO7917tALOxrN5fcPImxHhPalR6D90Bo0fa3S
PXez7vTXTf/D6OWST1k+kEcQSrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc2
2CzeIs2LgtjZeOJVEqM7h0S2EQvVDFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bP
ZYoaorVyGTkwggWsMIIElKADAgECAgcbY7rQHiw9MA0GCSqGSIb3DQEBCwUAMIGVMQswCQYD
VQQGEwJERTFFMEMGA1UEChM8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hl
biBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLEwdERk4tUEtJMS0wKwYDVQQDEyRE
Rk4tVmVyZWluIENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDIwHhcNMTYwNTI0MTEzODQwWhcN
MzEwMjIyMjM1OTU5WjCBjTELMAkGA1UEBhMCREUxRTBDBgNVBAoMPFZlcmVpbiB6dXIgRm9l
cmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHplcyBlLiBWLjEQMA4GA1UE
CwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9iYWwgSXNzdWluZyBDQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ07eRxH3h+Gy8Zp1xCeOdfZojDbchwFfylf
S2jxrRnWTOFrG7ELf6Gr4HuLi9gtzm6IOhDuV+UefwRRNuu6cG1joL6WLkDh0YNMZj0cZGnl
m6Stcq5oOVGHecwX064vXWNxSzl660Knl5BpBb+Q/6RAcL0D57+eGIgfn5mITQ5HjUhfZZkQ
0tkqSe3BuS0dnxLLFdM/fx5ULzquk1enfnjK1UriGuXtQX1TX8izKvWKMKztFwUkP7agCwf9
TRqaA1KgNpzeJIdl5Of6x5ZzJBTN0OgbaJ4YWa52fvfRCng8h0uwN89Tyjo4EPPLR22MZD08
WkVKusqAfLjz56dMTM0CAwEAAaOCAgUwggIBMBIGA1UdEwEB/wQIMAYBAf8CAQEwDgYDVR0P
AQH/BAQDAgEGMCkGA1UdIAQiMCAwDQYLKwYBBAGBrSGCLB4wDwYNKwYBBAGBrSGCLAEBBDAd
BgNVHQ4EFgQUazqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0jBBgwFoAUk+PYMiba1fFKpZFK
4OpL4qIMz+EwgY8GA1UdHwSBhzCBhDBAoD6gPIY6aHR0cDovL2NkcDEucGNhLmRmbi5kZS9n
bG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDBAoD6gPIY6aHR0cDovL2NkcDIu
cGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDCB3QYIKwYB
BQUHAQEEgdAwgc0wMwYIKwYBBQUHMAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1T
ZXJ2ZXIvT0NTUDBKBggrBgEFBQcwAoY+aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwt
cm9vdC1nMi1jYS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwSgYIKwYBBQUHMAKGPmh0dHA6Ly9j
ZHAyLnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3QtZzItY2EvcHViL2NhY2VydC9jYWNlcnQuY3J0
MA0GCSqGSIb3DQEBCwUAA4IBAQCBeEWkTqR/DlXwCbFqPnjMaDWpHPOVnj/z+N9rOHeJLI21
rT7H8pTNoAauusyosa0zCLYkhmI2THhuUPDVbmCNT1IxQ5dGdfBi5G5mUcFCMWdQ5UnnOR7L
n8qGSN4IFP8VSytmm6A4nwDO/afr0X9XLchMX9wQEZc+lgQCXISoKTlslPwQkgZ7nu7YRrQb
tQMMONncsKk/cQYLsgMHM8KNSGMlJTx6e1du94oFOO+4oK4v9NsH1VuEGMGpuEvObJAaguS5
Pfp38dIfMwK/U+d2+dwmJUFvL6Yb+qQTkPp8ftkLYF3sv8pBoGH7EUkp2KgtdRXYShjqFu9V
NCIaE40GMIIG5zCCBc+gAwIBAgIMJkVuT3v+UKILRFGXMA0GCSqGSIb3DQEBCwUAMIGNMQsw
CQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRz
Y2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQD
DBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBMB4XDTIyMDMwNzExNDcxNVoXDTI1MDMw
NjExNDcxNVowgYExCzAJBgNVBAYTAkRFMScwJQYDVQQKDB5Gb3JzY2h1bmdzemVudHJ1bSBK
dWVsaWNoIEdtYkgxDTALBgNVBAsMBEpDTlMxDzANBgNVBAQMBld1dHRrZTEQMA4GA1UEKgwH
Sm9hY2hpbTEXMBUGA1UEAwwOSm9hY2hpbSBXdXR0a2UwggIiMA0GCSqGSIb3DQEBAQUAA4IC
DwAwggIKAoICAQC6fSddJW1c3jmNtNtpBWDTtgpLFOpsSjScamtclgKeYysTyAUygT7GZDEb
HYRS5LfVpdE4R3KgM2CvfJDUsg4Uk2ftQ+A76f0TlprWz0YIcZJy6cuxGuFccjt1wQ29BIWv
/owCJR4Ntd38WRd0L2hhW0Fm19XCosWs5xcV28Glgn+omVbpDhYMj9mBW3fDxXbNA/yLrLzE
L5iUh8BKrCzs0RZGvvbLV/FMUSMDGL21lTKhTXguFXYLhxdveWtV3eRmZQatwPxvid9s3kyD
hQv310VO9I92/PNLk2U5ErIayB8DU4+GI7Ho4LDuoKn1bVTE4cXF8q2cvNLCjTO/6mJmndRJ
KkIGvs7u/F+8HfQsyfoccEFtYoR4M95bYy4z7jlWJQfXmGMSp6MXsrN02rNAZur4j5pAO3q2
jJvuFUVYKhgBBkvQLy2sJ0z/DgbdsruHC3QqUEAUsAz5bmUl2Lxe5PfgMe1K8zf3kxAyQ5eh
4x8dJZL3AgDXioyAG6Xdx8HQxuHjZroPRCagArP6nl1DF9Fa33SiBj9qGg8jLBhnyIDehVCg
nl4MH5Jm8wJKKWyxCD6KAi48JCALFDfxuYqbCQcnDqW+RtPeDHt+N5RR8rkusvwp/91cwpem
jLie9DhjcdigYCJop2lbHbO5PlMzcRlubQ0MftZHMG4qrnYM3wIDAQABo4ICTzCCAkswPgYD
VR0gBDcwNTAPBg0rBgEEAYGtIYIsAQEEMBAGDisGAQQBga0hgiwBAQQKMBAGDisGAQQBga0h
giwCAQQKMAkGA1UdEwQCMAAwDgYDVR0PAQH/BAQDAgXgMB0GA1UdJQQWMBQGCCsGAQUFBwMC
BggrBgEFBQcDBDAdBgNVHQ4EFgQUoosjELpspvkvlz/lB2UWNhDb3sgwHwYDVR0jBBgwFoAU
azqYi/nyU4na4K2yMh4JH+iqO3QwIQYDVR0RBBowGIEWai53dXR0a2VAZnotanVlbGljaC5k
ZTCBjQYDVR0fBIGFMIGCMD+gPaA7hjlodHRwOi8vY2RwMS5wY2EuZGZuLmRlL2Rmbi1jYS1n
bG9iYWwtZzIvcHViL2NybC9jYWNybC5jcmwwP6A9oDuGOWh0dHA6Ly9jZHAyLnBjYS5kZm4u
ZGUvZGZuLWNhLWdsb2JhbC1nMi9wdWIvY3JsL2NhY3JsLmNybDCB2wYIKwYBBQUHAQEEgc4w
gcswMwYIKwYBBQUHMAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1TZXJ2ZXIvT0NT
UDBJBggrBgEFBQcwAoY9aHR0cDovL2NkcDEucGNhLmRmbi5kZS9kZm4tY2EtZ2xvYmFsLWcy
L3B1Yi9jYWNlcnQvY2FjZXJ0LmNydDBJBggrBgEFBQcwAoY9aHR0cDovL2NkcDIucGNhLmRm
bi5kZS9kZm4tY2EtZ2xvYmFsLWcyL3B1Yi9jYWNlcnQvY2FjZXJ0LmNydDANBgkqhkiG9w0B
AQsFAAOCAQEAHej5zUFmdEJ2rIxmaux8+Mpt2z6UXH9cUBUhuL9Cf1EoILoKo6Ok8F8OYXRW
p/LhwhnXI+fzboN/Sdhh6z4ckJ51lZctUiHcYio9XOJiAOvpgF5xkLfBfAsbaKQ0gWWH2AE0
dDnlGEcWJ8/ZU6/II91IAJugQ/fMIO6tyltvpOsSAc3ORYbungrfy86XpAP3UzHRFCFeD7qa
tW5XGJlTiU0LrdZT6ADSeFYLLx+bMdGuQG58ythjA6CbANogFJ5m2UNw//h9rbGL5N9Yp5rw
T26SiBJaZ7ebIXBg5YUicn7uyei4OFIC6luTL31Jh4ktHx89TRONV/QXkAibpyY0ZjGCBSsw
ggUnAgEBMIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVy
dW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdE
Rk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBAgwmRW5Pe/5Q
ogtEUZcwDQYJYIZIAWUDBAIDBQCgggJdMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJ
KoZIhvcNAQkFMQ8XDTI0MDQyMjIxMDgyMlowTwYJKoZIhvcNAQkEMUIEQO7OoKMRABnyhXbu
Lqdb/07QCJoP6VfYv/kJec0go+bRh85tbl59jl9OmjCwvcl8en1yybsMBhUGNhLsEk1UFFAw
bAYJKoZIhvcNAQkPMV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMH
MA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIB
KDCBrwYJKwYBBAGCNxAEMYGhMIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWlu
IHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYu
MRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5n
IENBAgwmRW5Pe/5QogtEUZcwgbEGCyqGSIb3DQEJEAILMYGhoIGeMIGNMQswCQYDVQQGEwJE
RTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3Jz
Y2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVy
ZWluIEdsb2JhbCBJc3N1aW5nIENBAgwmRW5Pe/5QogtEUZcwDQYJKoZIhvcNAQEBBQAEggIA
Nt3Zr7V4wmEhLxr+XtR6T+v7LUphC4iCCaEkuwAODsNFwLjy9VNB8PgwSklSIUu47Jx996NO
IG9vtmnZdBilNo6FKIbenCIZ4jr1qWR53gaNON8j8sEb//cBqmzgW/ctvDrg7BP2ozAXYymm
ABYjk86qeSfUitvKHjVxqcbiR8ui/bTq6TVNzBafr97s8lYayx3FMyPFCAo0QY4Z7ogUgQ9y
Ua7lv3eI5kxklV7UKXPkvJQz2Q/G+UvzTTnPCSIFdNPyOVlBD0AIvnTa/F5Ul1/QUNQBcsOj
TpAISREJk6607by6Xn63MT1SUMwOtMW53pAplNAR5rStdoLVn1nCuWpD47SNSnzbGCUNTiD8
O8jD/h3h9v0E+P6wDOYd2BvBFN9G7kjLQEXoDBfTfzvadKTjclZpSwuAeFxY2eRBV2UjrDyo
Tx/2mFco1HkU15iwPNEsooXZh/TdpkDdV3bjyv5yGhN/QVo21ZR9AnElta5MaG1vLd0wiUee
1HwKzfxgADwQouTpPkSoXpK/LgtW/oaVkBAOIUKC2fOHrFLdfbs6UGV21NwnI0bXPJJuVRSq
WUv62Dn0fYBQfqEvlv3/wJ1ahdYSGJJCWXASmLPj0aEGVn4rh1uPCAptQjI/J2tVEiEMnKhn
ftPo83FgRlnP60FzBlD0vxi0ZJqdzBPcKDIAAAAAAAA=
--------------ms070705060801080208030308--

