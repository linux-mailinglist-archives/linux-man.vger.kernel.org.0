Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A4AB57902C
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 03:56:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233502AbiGSB4c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jul 2022 21:56:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234779AbiGSB4b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jul 2022 21:56:31 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 01C5526AE1
        for <linux-man@vger.kernel.org>; Mon, 18 Jul 2022 18:56:30 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 39DC6A84;
        Tue, 19 Jul 2022 03:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658195790;
        bh=GC5qvll5zN7CteAlI1UDbEkTFbY5qiMLKFzI4rwW4/8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pj1iJ7XUCosxBTi+bzcpIBDLq/pRTQayHai8nNE6bTQIQdPSr2KzWLmGdPN2QdnQP
         L//6MJTuikPVt1mQhpu2p+75UmIcLlu5sJH5/fCT41lvEUsxo6VRFdIaNzK+gVNr6c
         XddHx9qlZ1XcfyTE35fe7CqSZCXLntcNf14U1h+GVN2RMnvIRpxZhYjZRnw9Y2jxeg
         w+HoAfq1eSk43+ZlqVS9w7Ws8wwZzgY9EvkvqSEGZ2y/q273SD6DifE3ACY2dTwQl+
         BvdXLipvQrzh+FDjhxCPvMWbsPxhV35Q6OBB/SFSHRlf03osgRg7TLKY+vSawg8/Hp
         2VV73/OAWHJHoI7nNG+X6+wgRxE1v4cH7ijneACOmyjRcgg4jgu8booSWvXg58hO+u
         Qg8scCH5AlvkE2G/KiG5XqekRcfKqsUL1Vc8a2/GiG8jVjZwf33+2aytH6zkGcUWkn
         Ey8IuacNk+Gdqr1VpVmX14LdOk511lTo1foscGm7mybu/N9LNiRcnWwlV2f5tH3PM3
         eylIuJi6IrVR9eRp+Mn6Tuyk7dCLHoQQB9/G2SZ1MScFHDySAJmV90dACpjhgCKz3c
         o7BRgn0sCs51J3jtsJbF3ICrxgn/QGGIFuFU9SiOfQGgpcXEhrykv87Yit98Mi6T1q
         1wMLqGpiz8isdlSS5jTDYUI8=
Date:   Tue, 19 Jul 2022 03:56:29 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zs466mm3ht35t6e5"
Content-Disposition: inline
In-Reply-To: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zs466mm3ht35t6e5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

FreeBSD timezone(3) is V7 char *timezone(int zone, int dst),
our documentation would imply it's impossible to service this type of
system portably

Indeed, glibc defines them both, and they make more sense for most
use-cases than trying to use the globals

glibc cited for __USE_MISC, tm_zone invalidation is Debian 2.33-7
POSIX cited for XSI marking is Issue 7 TC2
CSRG CD #2 contains 4.3BSD-Tahoe with both members

This also fixes the multiple lies in man-pages 5.10 localtime(3),
which says only:
    The glibc version of struct tm has additional fields
        const char *tm_zone;      /* Timezone abbreviation */
    defined when _BSD_SOURCE was set before including <time.h>.
    This is a BSD extension, present in 4.3BSD-Reno.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/tm.3type | 45 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/man3/tm.3type b/man3/tm.3type
index 1931d890d..8b6f8d9bf 100644
--- a/man3/tm.3type
+++ b/man3/tm.3type
@@ -25,8 +25,26 @@ Standard C library
 .BR "    int  tm_yday;" \
 "   /* Day of the year  [" 0 ", " 365 "] (Jan/01 =3D " 0 ") */"
 .BR "    int  tm_isdst;" "  /* Daylight savings flag */"
+
+.BR "    long tm_gmtoff;" " /* Seconds East of UTC */"
+.BR "    char*tm_zone;" "   /* Timezone abbreviation */"
 .B };
 .fi
+.PP
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.PP
+.IR tm_gmtoff ,
+.IR tm_zone :
+.nf
+.\" Guarded with __USE_MISC:
+    Since glibc 2.19:
+        _DEFAULT_SOURCE
+    Glibc 2.19 and earlier:
+        _BSD_SOURCE || _SVID_SOURCE
+.fi
 .SH DESCRIPTION
 Describes time, broken down into distinct components.
 .PP
@@ -35,6 +53,16 @@ describes wether daylight saving time is in effect at th=
e time described.
 The value is positive if daylight saving time is in effect,
 zero if it is not,
 and negative if the information is not available.
+.PP
+.I tm_gmtoff
+is the difference, in seconds, of the timezone represented by this broken-=
down time and UTC
+(this is the reverse of
+.BR timezone (3)).
+.PP
+.I tm_zone
+is the equivalent of
+.BR tzname (3)
+for the timezone represented by this broken-down time.
 .SH VERSIONS
 In C90,
 .I tm_sec
@@ -48,10 +76,27 @@ in C99.
 .SH CONFORMING TO
 C90 and later;
 POSIX.1-2001 and later.
+.PP
+.IR tm_gmtoff " and " tm_zone
+originate from 4.3BSD-Tahoe.
 .SH NOTES
 .I tm_sec
 can represent a leap second with the value
 .BR 60 .
+.PP
+.BR timezone (3),
+as a variable, is an XSI extension \(em some systems provide the V7-compat=
ible
+.\" FreeBSD
+.BR timezone ()
+function.
+The
+.I tm_gmtoff
+fields provides an alternative (with the opposite sign) for those systems.
+.PP
+.I tm_zone
+points to potentially-constant static storage and may be overriden on subs=
equent calls to
+.BR localtime (3)
+&a. (this, however, never happens under glibc).
 .SH SEE ALSO
 .BR ctime (3),
 .BR strftime (3),
--=20
2.30.2


--zs466mm3ht35t6e5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLWD0wACgkQvP0LAY0m
WPFLOQ//Wwbe9e18zJmwiOe8h9h/TVMLGHp9KhDeMA8oMAe6Nd3Svef/yInH30G2
4mS2ESbHgO0RZENkRy9f4ItFUB5Y3v3stiVL78bQ1pa9Hce7/t1BKwJmJRFBavsa
X4UMLY9oXq94qEVEbjm0fENv+nKFZC2x04fBJos0klWYadSuJB7EAQB80abq0sXI
fFy54wkkkxWUdwXa8uqR96s1f6ufwzbS/cszjdlNJJhfd4ybVnRBf7BzHXHmAA/J
Ryun/uRF4yhNMoTgQLwQUugYVBkR1oERHbQXtaz7wFtz3O0ODOCmtnId7KwbzpJj
LF9ckilX746wi+ZyxfVVW0/u6WdVNr7ajH/tFM1M3Q8U8YgABuWnq5GZMrg7itlE
XBbeQlXKlx3TQFlT+vHjTc00xQ63SnDISSGYxK4e+669cGgh7p+NUfa5WpHXz/oi
7hkcvL9T3gQJZy6COmI3qotZlmENZ58xoJo+AEx3TiXWQUtWzzmZ3e8vcP0bdH1g
F7O/iG2p704OD1Fkaq/IgCs1IpyItzqqomzXKKZEBThvhfBk9ioEFk+jz3KDOnDZ
K6O+7tLoybh3unptKk+0+bnv6nRoL0n6m71nizHLv4Nsls2sWkW9rU416XOOYXLD
70qE0/z6WWR7WZEgfwY6Q0371PMTLXeIiKAVZt5ulTdKeVcuA0w=
=xGC4
-----END PGP SIGNATURE-----

--zs466mm3ht35t6e5--
