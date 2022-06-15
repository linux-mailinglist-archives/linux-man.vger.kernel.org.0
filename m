Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45C5854CEDA
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 18:39:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355555AbiFOQjR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 12:39:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345124AbiFOQjR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 12:39:17 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4DE254B852
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 09:39:16 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9360F24F4;
        Wed, 15 Jun 2022 18:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1655311155;
        bh=bPZttVlWhofwMqcPl4D6ovkp6c3KR75xKg+o5D4HcWI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ZtBjeLN1uVEW/11V2xefbzaRTvO0sQgpXvLRGlTUTnZhHjanY82ZYA6wvdJHkACHb
         NPeRtcinl0W/NvYxG3HYpZb0dwA74UAqNBEqo4OH2uXFQh7/VAmjbfsLjX7ZHIQIuS
         v8dCx4vlZE5CyUb+5VJLhvDEhEKdqNpMWhWl6roctiHGzmQxebI/n+t2VSK5CYuNnD
         Z5R4Zpsyt4agKI9gIz/YtSHQhM3YfBABnpqymxw02bx2r3BKytVA/9rF2W4QRFy108
         Mro/fnSJ07erpX0/6AAj8BZ/f0K7GRahHYGqmWlqACAQTz3TmarSDa1dkvrrChRQTd
         E9dqyrrhOr5YA+L2RzEmMpDRS7D35S0ca0AgjD449EULlMT/FR7NdL7jWLuiJNK1og
         Gx64kQ/hOoaFcstUYp23EL+ndTn2z2YF+14q2HQDBrBwxG5NKTXC8l39HMZs0qDH45
         xkPe4v8XNMHgoMQg9GrzMlBjqVxXUrS0dasn6GmfY6rPkKl/dP6aLuno8oemLn8Jla
         NNs5tspUbHDiHrWYGQM0wVeYC3RgB9S/P4UG5ko+Y4suO9Y+OY9NspO/eQpxFQIVjq
         UiPS+ePFKa4xD3kPViTCitdn/hr9iBMrLPia7J52jr0Rce5DhECDqhikNqQ2cuf6Ph
         szpN1yrQogzd9JYPaissj3Ng=
Date:   Wed, 15 Jun 2022 18:39:14 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] uname.2: deweirdify
Message-ID: <96a6e5b49d12963b8c5bfbc93dc5e9fb40226562.1655311141.git.nabijaczleweli@nabijaczleweli.xyz>
References: <b0a8b39b-f05f-7809-c8a4-f4f84821770d@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fo7crigtjelvrk4s"
Content-Disposition: inline
In-Reply-To: <b0a8b39b-f05f-7809-c8a4-f4f84821770d@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fo7crigtjelvrk4s
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The NOTES were not only weirdly reductionist, but also highly
opinionated in the wrong direction.

Yes, it's a syscall in SysIII; not in 4.4BSD.
Well, in general, it exists in 4.4BSD for obvious conformace reasons.
No, it doesn't "know" (and if it does, that's not relevant),
historically and practically this is the broad CPU/machine type
(compare uname -p on SysVr4 (=3D> SunOS 5 =3D> NetBSD),
 which is the actual CPU model (usually)).
Everywhere, ex. def., the nodename is what the BSD calls the hostname.
"No standard" also speaks of sethostname(), so.
Historical precedent (i.e. all implementations, save *maybe* for weirdo
XENIX, who cares about weirdo XENIX) defines the hostname to be uname -n
(indeed, SVr3 uname -S sets /both/ nodename /and/ sysname!
 that's not relevant here;
 SunOS gets it from the network (unless configured manually)).
Someone clearly cited SysVr4's "Internet hostnames" comment w/o credit;
fix that.
8-byte truncation is really quite secondary here (indeed, that's what
 SysVr4 does for pre-SysVr4 uname() callers that haven't been rebuilt.
 you will never encounter it).
The hostname is not meaningless, obviously??
Also fix machine to say "hardware type", like the standard;
"hardware identifier" would be hostid. I wrote six seething pages about
hostid, and machine is /not/ hostid.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/uname.2 | 49 ++++++++++++-------------------------------------
 1 file changed, 12 insertions(+), 37 deletions(-)

diff --git a/man2/uname.2 b/man2/uname.2
index fa991edfc..b0da6270b 100644
--- a/man2/uname.2
+++ b/man2/uname.2
@@ -34,7 +34,7 @@ struct utsname {
     char release[];    /* Operating system release
                           (e.g., "2.6.28") */
     char version[];    /* Operating system version */
-    char machine[];    /* Hardware identifier */
+    char machine[];    /* Hardware type identifier */
 #ifdef _GNU_SOURCE
     char domainname[]; /* NIS or YP domain name */
 #endif
@@ -57,49 +57,23 @@ is set to indicate the error.
 .I buf
 is not valid.
 .SH CONFORMING TO
-POSIX.1-2001, POSIX.1-2008, SVr4.
-There is no
-.BR uname ()
-call in 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, SVr4, 4.4BSD.
 .PP
 The
 .I domainname
 member (the NIS or YP domain name) is a GNU extension.
 .SH NOTES
-This is a system call, and the operating system presumably knows
-its name, release, and version.
-It also knows what hardware it runs on.
-So, four of the fields of the struct are meaningful.
-On the other hand, the field
+The kernel has the name, release, version, and supported machine type buil=
t in.
+Conversely, the
 .I nodename
-is meaningless:
-it gives the name of the present machine in some network
-to which it's attached,
-but typically machines are in more than one network
-and have several names by which they're reachable.
-Moreover, the kernel has no way of knowing
-about such things, so it has to be told what to answer here.
-The same holds for the additional
+field is configured by the administrator to match the network
+(this is what the BSD historically calls the "hostname",
+and is set via
+.BR sethostname (2)).
+Similarly, the
 .I domainname
-field.
-.PP
-To this end, Linux uses the system calls
-.BR sethostname (2)
-and
+field is set via
 .BR setdomainname (2).
-Note that there is no standard that says that the hostname set by
-.BR sethostname (2)
-is the same string as the
-.I nodename
-field of the struct returned by
-.BR uname ()
-(indeed, some systems allow a 256-byte hostname and an 8-byte nodename),
-but this is true on Linux.
-The same holds for
-.BR setdomainname (2)
-and the
-.I domainname
-field.
 .PP
 The length of the fields in the struct varies.
 Some operating systems
@@ -114,7 +88,8 @@ or
 .BR _UTSNAME_LENGTH .
 Clearly, it is a bad
 idea to use any of these constants; just use sizeof(...).
-Often 257 is chosen in order to have room for an internet hostname.
+SVr4 uses 257, "to support Internet hostnames"
+\(em this is the largest value likely to be encountered in the wild.
 .PP
 Part of the utsname information is also accessible via
 .IR /proc/sys/kernel/ { ostype ,
--=20
2.30.2

--fo7crigtjelvrk4s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKqCzIACgkQvP0LAY0m
WPHxew//Uaeb8pDN+PrelgfSGaO9zPcY52a9l74vy36W3QtTF9Xufgj9/cyXK/BH
MsqDoRD0w8djpjgKNRxmczc553HTZptPJ8XPiGKj16t1NEghRM8pqslC9BS+zfZk
pdCLD+ThKh7c+t/2mXD81xZ3hVKTwiyGvuzV5DJbzaMF7B+yme46y7ZHyS/nrBhz
Q4oKCQrqLyQkcn2QAYD3nkLAFs5d/Ud8jWaUPCE0ylsUsy7M4aCsS1fKgusTqErR
/OrJQ6T7XXyXJ11K5fqygO5jPny6RndoFIrq9v1rlwMlq4h71Yyzn2kq15zg4o4z
+lnMNUX+FV1iI1iRbzwON8pb7IT6JULq/rpckMEtsefgkW6gkWA3/eMtitwHJYoy
5up8Vt4EOf3/JJFxeCXf+ByNBqO+IgVkm3+fAvS5THRBXcp5diVCEsRVEzT2onup
USN7JkpjgVUjxDXIcj0dHyQ3h+ZxiCL4Zxf9xLJsr8Yh5upMBMOZbAEobHFgiKTR
wrXcUoZqnTT/Vg4sq3fRIxsOOWe5HTOpA134jU0jMHsarBZRnS+FTiuqrW4T1rWS
c90H0ZB3L1eQb1CdYEV1rijXVNXNq0AQWNmCSWJpJflInxuYOBRVhsFDDaKIoYdr
E8f5N8luew0Sk4ZREDx4t+RwDE3NBEMl38P+DStPd/pjXrxcn+Q=
=OgMv
-----END PGP SIGNATURE-----

--fo7crigtjelvrk4s--
