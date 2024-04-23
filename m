Return-Path: <linux-man+bounces-803-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2568A8ADE9D
	for <lists+linux-man@lfdr.de>; Tue, 23 Apr 2024 09:53:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A42FE1F23432
	for <lists+linux-man@lfdr.de>; Tue, 23 Apr 2024 07:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7F00481B7;
	Tue, 23 Apr 2024 07:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fz-juelich.de header.i=@fz-juelich.de header.b="ziYCax2G"
X-Original-To: linux-man@vger.kernel.org
Received: from mailgw-k01.its.kfa-juelich.de (mailgw-k01.its.kfa-juelich.de [134.94.4.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1CA47F64
	for <linux-man@vger.kernel.org>; Tue, 23 Apr 2024 07:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.94.4.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713858792; cv=none; b=Y3ziOvdNKI7rk0axz36yc4HqkkH9C0U+qZPk8b4qwPmDBz6E40n72TlUzeDObWkBpVWqdV6hySwlzcWgfGm7vZL23qcgchVpRWUyIff2Tz9/AZkPT5/zljoX0fxPLTXFNJ0gh9bib+sGEhspBcKkj6XxSvJRrUYW0y2WD5U3NV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713858792; c=relaxed/simple;
	bh=B/6As7eQ0VL7PL58yvZazyiqMvfTWyhU/kOa6dHCnZM=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=OgHGGAQv1v/8iIHUooZNC77LmdLMw6jF6E1Jm7srg7P5C//f9Sv4I3ydJFHQU0BN6XBD0OTJF1Li8YTB0jEepYqc/1+WSkBbdsX1jOfwuBSIzf9pfJRYqbNLb4qRI6uBVtMRV+ydq9/l281aFV8Y/wlfWysmlO/MUgYPbmfhU1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fz-juelich.de; spf=pass smtp.mailfrom=fz-juelich.de; dkim=pass (1024-bit key) header.d=fz-juelich.de header.i=@fz-juelich.de header.b=ziYCax2G; arc=none smtp.client-ip=134.94.4.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fz-juelich.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fz-juelich.de
Received: from localhost (localhost [127.0.0.1])
	by mailgw-k01.its.kfa-juelich.de (Postfix) with ESMTP id BEC93140565;
	Tue, 23 Apr 2024 09:53:06 +0200 (CEST)
Authentication-Results: mailgw-k01.its.kfa-juelich.de (amavisd-new);
	dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
	header.d=fz-juelich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fz-juelich.de; h=
	content-type:content-type:in-reply-to:from:from:references
	:content-language:subject:subject:user-agent:mime-version:date
	:date:message-id:received:received:received; s=main; t=
	1713858784; bh=B/6As7eQ0VL7PL58yvZazyiqMvfTWyhU/kOa6dHCnZM=; b=z
	iYCax2G6YU/LvYCk6udGkpa722uA9XPOl+hxOCayc3TvyG2AlHEuihQWh0766UrG
	LIMzC3A9BO2V1bMUKKqkLNCuEsoH5H04S0G2uN4fD0N1OMvtM42qbmMPiC+Ux/sD
	WOy1Yv3pDlX85WT9X7zd2qpqJj3AYTtnI/F0RvXHPI=
X-Virus-Scanned: Debian amavisd-new at mailgw-k01.its.kfa-juelich.de
Received: from mailgw-k01.its.kfa-juelich.de ([127.0.0.1])
	by localhost (mailgw-k01.its.kfa-juelich.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dh3_Q7BdSBDS; Tue, 23 Apr 2024 09:53:04 +0200 (CEST)
Received: from exch2019-k.ad.fz-juelich.de (exch2019-k.its.kfa-juelich.de [134.94.4.37])
	by mailgw-k01.its.kfa-juelich.de (Postfix) with ESMTPS;
	Tue, 23 Apr 2024 09:53:04 +0200 (CEST)
Received: from [172.25.80.180] (172.25.80.180) by exch2019-k.ad.fz-juelich.de
 (134.94.4.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Tue, 23 Apr
 2024 09:53:03 +0200
Message-ID: <9674d2f0-6455-4233-8da6-4181d8e57781@fz-juelich.de>
Date: Tue, 23 Apr 2024 09:53:03 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [patch] elf.5 and ld.so.8: undeprecate DT_RPATH; explain DT_RPATH vs
 DT_RUNPATH
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
CC: <bug-binutils@gnu.org>, <linux-man@vger.kernel.org>, Mike Frysinger
	<vapier@gentoo.org>, Joseph Myers <josmyers@redhat.com>
References: <643ad7be-1cf5-491d-bd0c-d87e2b260912@fz-juelich.de>
 <ZiXpBp-vigNCwpHx@debian> <48c28639-f09d-dab2-10bb-9a6813b28062@redhat.com>
 <ZialT7CDXzj28K4Q@debian>
From: Joachim Wuttke <j.wuttke@fz-juelich.de>
In-Reply-To: <ZialT7CDXzj28K4Q@debian>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms010803050206020804040801"
X-ClientProxiedBy: exch2019-e.ad.fz-juelich.de (134.94.4.35) To
 exch2019-k.ad.fz-juelich.de (134.94.4.37)

--------------ms010803050206020804040801
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

In elf.5 and ld.so.8, remove deprecation of DT_RPATH
In elf.5, amend the description of DT_RUNPATH and DT_RPATH.

Rationale:
There is no credible path towards removal of DT_RPATH.
Lots of software depend on DT_RPATH as is.
It is used e.g. for testing and in binary installers.

Signed-off-by: Joachim Wuttke <j.wuttke@fz-juelich.de>
---
  man5/elf.5   | 4 ++--
  man8/ld.so.8 | 1 -
  2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/man5/elf.5 b/man5/elf.5
index 9aff88afb..57136159c 100644
--- a/man5/elf.5
+++ b/man5/elf.5
@@ -1787,7 +1787,7 @@ Address of the termination function
  String table offset to name of shared object
  .TP
  .B DT_RPATH
-String table offset to library search path (deprecated)
+String table offset to search path for direct and indirect library dependencies
  .TP
  .B DT_SYMBOLIC
  Alert linker to search this shared object before the executable for symbols
@@ -1819,7 +1819,7 @@ Instruct dynamic linker to process all relocations before
  transferring control to the executable
  .TP
  .B DT_RUNPATH
-String table offset to library search path
+String table offset to search path for direct library dependencies
  .TP
  .B DT_LOPROC
  .TQ
diff --git a/man8/ld.so.8 b/man8/ld.so.8
index fa75b7820..23cddb9df 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -61,7 +61,6 @@ then it is searched for in the following order:
  Using the directories specified in the
  DT_RPATH dynamic section attribute
  of the binary if present and DT_RUNPATH attribute does not exist.
-Use of DT_RPATH is deprecated.
  .IP (2)
  Using the environment variable
  .BR LD_LIBRARY_PATH ,
-- 
2.43.0


--------------ms010803050206020804040801
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
KoZIhvcNAQkFMQ8XDTI0MDQyMzA3NTMwM1owTwYJKoZIhvcNAQkEMUIEQLWN7mWBbMGkHv9E
2asfKMHP23XWx7EGM8n9qDV4YZiBSmSkprKc6hTaYGcEECt2Gp8Uu9R1OqJK/gXNe68UZc4w
bAYJKoZIhvcNAQkPMV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMH
MA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIB
KDCBrwYJKwYBBAGCNxAEMYGhMIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWlu
IHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYu
MRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5n
IENBAgwmRW5Pe/5QogtEUZcwgbEGCyqGSIb3DQEJEAILMYGhoIGeMIGNMQswCQYDVQQGEwJE
RTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3Jz
Y2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVy
ZWluIEdsb2JhbCBJc3N1aW5nIENBAgwmRW5Pe/5QogtEUZcwDQYJKoZIhvcNAQEBBQAEggIA
OloIVRkIRHkRsn2gTNYJQ0ixBrHDJE2FJ2rkNparpsCe9LSZUxpaFMCGCmpSw5qCGQvg5jbe
cgPSH3m+khRKjfjaAZfzLWuQUC5MncP40SHXy6TJ7qs7nzJYKLqvk6ah0LDK4BXJZze4VJYx
fAS5uV1Oo5lHt/9Xztx/wbRglkGDaKgULvzlUuOUjK94uDvum1UKnhCfJgIowpLBn5ehQ1tD
UbQwzsFTfR4KGW0OQAAg30+zwcHzJ1Be8DA5WkwT42/IzSKrQTZjn8Wjc3Hjc2Jvekw0haUj
ivsLEE7kWvIfRY1caUA0Viq+GnhFL+NaKikTD56RaCO+nDcNyHoLYoVJJs21u5WBVGy63UE/
xydX1eXP1dTjjQxOexaT5qMu9mVQUIk2ozS7h6A2Lzueh6LhIsKexdgeUrF9vjd42Sl6hnLo
DhlaS5oxz70DseoaOAey8wIzGsdaFAlANLRttPVE5NtBQ++5qL3NkQLOrl5FKW4QU1/hUuV/
mmBJUzaZhU84vv+61Ti3w5Bp2OZq2zKtqbm3ziL/g4MWnXiQ6ytizUPL74VIe3N0uhDkLqt5
zI99Fx8T8xuLwy+7Tl9nsWzoDPnXP33uZcEUrGBdVufQ51cK0KX1KnXtJhslXJKPQmIN1XOm
QlBRI0d2Njizv0zdgChsPQCT/ixggKLnieEAAAAAAAA=
--------------ms010803050206020804040801--

