Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 031676E85E5
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 01:26:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231282AbjDSX00 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 19:26:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229700AbjDSX0X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 19:26:23 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3811D1FD3
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 16:26:22 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8CC9F62C8;
        Thu, 20 Apr 2023 01:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681946781;
        bh=Kt6jxVx41fIKAhGQbQUjg/iIT6q3hW3t1w6wF/QoZpY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ASl6ZD+Swlo+DfcBFavs93NDXl7/kAYk4jz+s2PmZSNifi6bnsGyZJAJpQSGw8mg1
         3mJhdgdg/w/oipogOzAzuK+cHVxGhlc/tYOfVIG9q+2Taj3q8/kHI+p8shuFUPeX0H
         kNXi2F3C9iy2AhDnnDd8wlAhB9BftnUvF5kq6dL1/M1M5QEm00Iy+BRzfennU2gDZv
         j1Ydat++vfUKgdZkF7RiEggeIuLGJhkO/89mwP+VJInE0GeABT8igVt+bVBn5Hqrsn
         O4zvb95YDV9S2pXxbo41t/cxOfNcs7CK5kNYR7hFb8BTiYe5olHMRQr1WYN92shHgD
         24jmwtq4gslFA==
Date:   Thu, 20 Apr 2023 01:26:20 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 9/9] regex.3: fix subsection headings
Message-ID: <f5ef1d788924aa9b9b011a17024bee59130853cc.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="jiu57jbzk7imwsjz"
Content-Disposition: inline
In-Reply-To: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jiu57jbzk7imwsjz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 7d08d4042..58eb81c8b 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -45,7 +45,7 @@ size_t " errbuf_size );
 .BR typedef " /* ... */  " regoff_t;
 .EE
 .SH DESCRIPTION
-.SS POSIX regex compiling
+.SS Compilation
 .BR regcomp ()
 is used to compile a regular expression into a form that is suitable
 for subsequent
@@ -131,7 +131,7 @@ whether
 .I eflags
 contains
 .BR REG_NOTEOL .
-.SS POSIX regex matching
+.SS Matching
 .BR regexec ()
 is used to match a null-terminated string
 against the precompiled pattern buffer in
@@ -185,7 +185,7 @@ remain relative to
 (not
 .IR string " + " pmatch->rm_so ).
 This flag is a BSD extension, not present in POSIX.
-.SS Byte offsets
+.SS Match offsets
 Unless
 .B REG_NOSUB
 was passed to
@@ -224,7 +224,7 @@ capable of storing the largest value that can be stored=
 in either an
 type or a
 .I ssize_t
 type.
-.SS POSIX error reporting
+.SS Error reporting
 .BR regerror ()
 is used to turn the error codes that can be returned by both
 .BR regcomp ()
@@ -249,7 +249,7 @@ Otherwise, up to
 bytes are copied to
 .IR errbuf ;
 the error string is always null-terminated, and truncated to fit.
-.SS POSIX pattern buffer freeing
+.SS Freeing
 .BR regfree ()
 invalidates the pattern buffer at
 .IR *preg ,
--=20
2.30.2

--jiu57jbzk7imwsjz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRAeJwACgkQvP0LAY0m
WPF5Ww/+IS26CJvOPMlJoieEtYaj6+wKF1i6Ftv30AnuRZsHmCHheSMCMFj7fRHy
8BD0cSJifFdiyiYiyluRp6oDHbzWgLPVVxq3fmCcDMD6s3fxULGdNtL+7SIwIyeN
r5tWgGj7AuYgcDRgkSLf+IthH/yF28jBoNovQBjb5iEoOetPGeGtQU8sofS3z2sT
4F3QhU275E45qTDM2eh+GOCvCpDW6lQzuGJ64Qc8aa3Pz6waUaE6lz6U3mQnlZn1
R5Hhij2pq4tGtsJ3h+d7oNSM/5s+0lcJBQomuY4iRwSZDAFfyi4hwxvyOThrqIfw
HOMYG2jYP70kai+yr1l1oRhJIw/GrCCSiDquKG/ryfXi+4ekxRrM3i5vsGsv+8Md
oabeXwhmF9b005Yg/ZdkMisOesyP1PP4Okij7pd39yiqStHmmTB53sjypv4jkn7s
waZO43GU4Q8c/FcBip6axXo8dJ6e3yqICs6XEB/8TFYqojmtIuwzzm0pV8iZkbwa
ZKnlHNrp92cC73maqTfuP/Fb3rG6t8OQWdHMgFUndTcfw/pJ3/qRWl5LQgpsdNUm
B9Q1K8L8PIYdQkZWBDjE4EV9xZKZcl3hcDHxtprfWimJg0Ey+GzlEtGo+65bkK0Z
23d4JX4Q3wmJuw4In8JEJguI/pxaz64HNxOKMIUISwGx33rC5Uo=
=gIl8
-----END PGP SIGNATURE-----

--jiu57jbzk7imwsjz--
