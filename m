Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F8BD54C578
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 12:08:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346820AbiFOKIg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 06:08:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347470AbiFOKId (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 06:08:33 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3900A2F00C
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 03:08:32 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 762502362;
        Wed, 15 Jun 2022 12:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1655287711;
        bh=rYzJRaLMLicSkj5e9LJCCABRUvx6VCT22Edujj75UCU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=KH6YmGE0+64M8gI0WYgtLu0vRL27csoSblXpJzoQP9Bv5wQtudGqxtxfX457RJ1X0
         ba5XbNmlKRj86Gr0ZDbvd28NRhoGDUKgpJJIpF+0tYP7EYK1FdQTjeNn7VB2k4K3PR
         bsppiWhoDGnsZoX5VOP1x6PLlc/yWe1nUwFbkxwt25edQIzJBGC5CBzJ58S/n+Wynu
         qJExvB55j+YWtifNEjyDgh9KIrAzr2jaL/STe6qv1WDC0E3rNCVaiR/GLqvr/Vycap
         oZrBZcaA8H3ZjLyOTRdR59sdIGudUPZkdu+2Qw7H9v7EcP9VcLJh/+CxHlGniEy9jx
         R73CIT+MTSXhjvBwn4U8m2hCb5OmYAzHpb00PqQGeOg9LbIWgvL8PAg1kCQGfTMdZ0
         gFvF2vwTkXEtevE7o/wcqazAusy3cpHHPblcXYehP2Bcu9o94ZV0F8mjnTA2mYnUIV
         wDANssurO5NIpD/Kv6FxUhqeu9oGD/r7VNdMXWE0bz497GsApBDi6/+1wjV7cx+jIa
         dnJkW5w33YoMF/2YlNLzPrFZqeKZOfEHNtdK9NFE4iM3rKhwZX1i910+XIivae+cW7
         egXdyrYnmfuFuIP5pCBYFx3QqIwiyQ21F5ukUlBwOE1XxJ48h/t/UAekikxWLPWQ9/
         YpJdRLel6XKk8WuabTeCMWlA=
Date:   Wed, 15 Jun 2022 12:08:30 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/2] uname.2: deweirdify
Message-ID: <132c675935023339e0f98559a479866ee3dd3ec0.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
References: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="imepa5h3ou46hsws"
Content-Disposition: inline
In-Reply-To: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
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


--imepa5h3ou46hsws
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The NOTES were not only weirdly reductionist, but also highly
opinionated in the wrong direction.

Yes, it's a syscall in SysIII; not in 4.4BSD.
Well, in general, it exists in 4.4BSD for obvious conformace reasons.
No, it doesn't "know" (and if it does, that's not relevant),
historically and practically this is the broad CPU/machine type
(compare SunOS 3 mach =3D> SysVr4 uname -p (=3D> SunOS 5 =3D> NetBSD),
 which is the actual CPU model (usually)).
Everywhere, ex def., the nodename is what the BSD calls the hostname.
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
Here's a preprint of uname history (3.3 pages):
  https://twitter.com/nabijaczleweli/status/1537013517257265152
and the 6 scathing pages:
  https://twitter.com/nabijaczleweli/status/1531611680639225863

 man2/uname.2 | 49 ++++++++++++-------------------------------------
 1 file changed, 12 insertions(+), 37 deletions(-)

diff --git a/man2/uname.2 b/man2/uname.2
index b43f5d8d6..b0da6270b 100644
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
-it gives the name of the present machine in some "the" network
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

--imepa5h3ou46hsws
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKpr50ACgkQvP0LAY0m
WPH5FA/+JFPWEd6eZ3z8WgAqnrPwMWSwiyrehETYI5cFtkWPeFS5hT72GCMswMuZ
hNP0tOdXy2uCX8ADYb3sJrX1hrIWL+yEcGUb7OcyTkGVwcSG6GG5+qEM87kltKWL
hexi9TGCNbsun8QtYNzS73uEbf0ffV3VWT4Ug8t/rr6VHqge3Jskv3q2zrqhuURU
xrTOuo8xYdnkPD6mF2SmGbia2+gxxCpwrMKToqV6bkkgj5/5Q2T8qHdYtXG0al0W
VfZsGbPzAGBJ7FYToh6yYzNLhDDuW+xkt2w6zDQ5O86e9ksChZMqCeu7sxlzPZxe
MCt6jq3dTau/79SKbunqKIX7o8WM06sd+tyFYLVQDacyuwkfgV32mYVyNk6FX0SK
H4Nyf7Sr9KpmFEJtQLwZEC1M4hFk4WV6iIMouyta8Qbsh+rKBRtthMrbCN5xbFEF
D/7cv37i45PJgAzloZBmy0kBZ2s3IfU5VRy1RHXLawbH2DbzTXsYTbhsG6huBiit
7QJeSPlbQVOgf9pEeHFkeJhp77tPAYAfvSL6+7wFpHhgFQ9OnErKplcpf4shAHNv
zvmDVsPEFh6cID6tyW2rhM/mDS5rW0tc2z4CujBD/Uc4oMG5ZOh9xYDYPV+IWX46
guWi7lktpQmj43se3nIfZHSgcy1b6cXnULA2HfT4GQN1m0u4z1A=
=VfwH
-----END PGP SIGNATURE-----

--imepa5h3ou46hsws--
