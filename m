Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1970E57A6B4
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 20:48:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239510AbiGSSss (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 14:48:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239007AbiGSSso (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 14:48:44 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3214D564C5
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 11:48:41 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 4037378E;
        Tue, 19 Jul 2022 20:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658256520;
        bh=NoKw40Y42i5jJVYDJlUD9Eh5ULMlQyzU3McXb8hrTBM=;
        h=Date:From:To:Cc:Subject:From;
        b=qTZD0KZC7Ooh7aBlS9Esa4s38NhoWkwhp2j5/41eD41MzlQnZ863RGQo1lqDA/PW8
         UEqzBbWYOFrWTAa+j6KwJix3sdK8xxFvdCGfWytQlp7DXi2wngxe/YrM1/SZiCHeY+
         +QRx30+MxMmplK1+kRckKTfoBmgYbc4ZmyuMlzFqzPg1tgDKv68Sq1HyNUzu+ZjtrJ
         CwUK8yO0XTP+5RWS5HGAjexA5BmQE5rPgKdOZseitLfWAxZMFps/VBo0ZHOc0GDY7f
         dqgIAGP10bgD74Ut2LW9WaDcqn06H0EWKi8wB9BKrUKUmfp8H5wkG5cV4cJUFPDhyc
         w+rXJq/Kb6xQ28YYnY6WLCXaex047w1SQeO16I13dxJIO/j5BAVgl04zG4rYlmK/rK
         FCZkspS8NLfOoefY0veMkH+dHOfzx0MbgGBYs3qT0/yaQywggv7Z+tGnQTpzPbOuNE
         jGZnxd6ygifhdRO9Qkom6BVlhn0x018sxfLuQaSUyUfv/ay/sJ9rgtt0vdd1rzjPNK
         lBAUO2+d/+2S0905slX79IRx3I0TmHRXD7tjqaSsg2nFdcAgwrPfQTRdUpV6XFKTUJ
         +KhYLecXyyW6OHP8S9KzsJpVTqzpecKVJcN5rqez/wE8sSB9+cr4zYt2tRMTwXxhCy
         EjxvRMVdr/3FCfPRJCf21J/w=
Date:   Tue, 19 Jul 2022 20:48:39 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strftime.3: mention strftime_l() with .so link
Message-ID: <20220719184839.ear4elj2ls3fpzmz@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="d2byv75pbwcsunmi"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--d2byv75pbwcsunmi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/strftime.3   | 27 ++++++++++++++++++++++++++-
 man3/strftime_l.3 |  1 +
 2 files changed, 27 insertions(+), 1 deletion(-)
 create mode 100644 man3/strftime_l.3

diff --git a/man3/strftime.3 b/man3/strftime.3
index dc98a5122..11da7e787 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -27,6 +27,11 @@ Standard C library
 .BI "size_t strftime(char *restrict " s ", size_t " max ,
 .BI "                const char *restrict " format ,
 .BI "                const struct tm *restrict " tm );
+.PP
+.BI "size_t strftime_l(char *restrict " s ", size_t " max ,
+.BI "                  const char *restrict " format ,
+.BI "                  const struct tm *restrict " tm ,
+.BI "                  locale_t " locale );
 .fi
 .SH DESCRIPTION
 The
@@ -471,6 +476,20 @@ as an argument to a
 One example of such alternative forms is the Japanese era calendar scheme =
in the
 .B ja_JP
 glibc locale.
+.PP
+.\" POSIX.1-2008 TC2:
+.\"   [CX] The strftime_l() function shall be equivalent to the strftime()=
 function, except that the locale data used is from the locale represented =
by locale.
+.\"   [CX] The behavior is undefined if the locale argument to strftime_l(=
) is the special locale object LC_GLOBAL_LOCALE or is not a valid locale ob=
ject handle.
+.BR strftime_l ()
+is equivalent to
+.BR strftime (),
+except it uses the specified
+.I locale
+instead of the current locale.
+The behaviour is undefined if
+.I locale
+is invalid or
+.BR LC_GLOBAL_LOCALE .
 .SH RETURN VALUE
 Provided that the result string,
 including the terminating null byte, does not exceed
@@ -516,14 +535,20 @@ lbx lb lb
 l l l.
 Interface	Attribute	Value
 T{
-.BR strftime ()
+.BR strftime (),
+.BR strftime_l ()
 T}	Thread safety	MT-Safe env locale
 .TE
 .hy
 .ad
 .sp 1
 .SH CONFORMING TO
+.BR strftime ():
 SVr4, C89, C99.
+.br
+.BR strftime_l ():
+POSIX.1-2008.
+.PP
 .\" FIXME strftime() is in POSIX.1-2001 and POSIX.1-2008, but the details
 .\" in the standards changed across versions. Investigate and
 .\" write up.
diff --git a/man3/strftime_l.3 b/man3/strftime_l.3
new file mode 100644
index 000000000..a3aa4b41c
--- /dev/null
+++ b/man3/strftime_l.3
@@ -0,0 +1 @@
+.so man3/strftime.3
--=20
2.30.2

--d2byv75pbwcsunmi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLW/IYACgkQvP0LAY0m
WPFQVg/9EVFcVcqJEQbHfvj2XEVrOFMZCkm06hPYL39lqip38UjVVXZXuW/WZNPi
ojZNeyYfM3ZG58JfdnCcXbtLMQQsHV6czLrlOCXT9lDO3SoUqAj0DxrVTAbJqAn5
qjOZmrf6EYMIKCVMdYBg9Aoi0EqgKVkWQqT2g2lyF99eTZBy+87oyMbyHlfYXFL2
P683mNQwhPRSe6ZuWZiwLAe7oIrYyZ9zxMRKh7q6PvWoK+jRapTVHkD5n8EujQPD
zk30B51c9veb6DH3iYiKiwyo1Zg2Z4EB3TKw/SwH6LVTFZHLppo2uapOnuJsaoH6
2xhoyAjh7gIZz6Aj3W7y1UTjr9LmqC+p+bFrqwHE64evPHeAQ10MBn8DW8SYS9Sw
XUIjJUfdU0CGuvilXds3mcOuALbvL7dCCUhKW1gbcuAOtiyxU3pf8hDvv3mBx6Cg
/Z8SiwzWFARUXhclZz+Agg3FEBTX2BfzbtxnTtgc2VJdTw9lgawFkw1KW1L6KGPc
D9cBGzc3uoc5BOaeaK1ndufx7SFLXq9ONLojHdPZu3lDSeIRGf0wA502dgZo/evT
GRO3vhxTAIav2VZRfb0tJpTNtgiz4aB7KKmb0rmYSyCXg5ngA0nSe+BawzxCGXzo
nCrS8ZHpISAizuYlAsa+WNaWRx5NIc//Dj92/IxC9Ksf6nubMKA=
=hzqV
-----END PGP SIGNATURE-----

--d2byv75pbwcsunmi--
