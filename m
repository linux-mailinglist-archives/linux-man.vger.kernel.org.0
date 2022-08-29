Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC5245A5727
	for <lists+linux-man@lfdr.de>; Tue, 30 Aug 2022 00:33:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbiH2Wd6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Aug 2022 18:33:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbiH2Wd5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Aug 2022 18:33:57 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2D6E683F38
        for <linux-man@vger.kernel.org>; Mon, 29 Aug 2022 15:33:55 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 3B46C2608;
        Tue, 30 Aug 2022 00:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1661812433;
        bh=Zwt7i13nfKjLEz4d7jse5hVSOzKuNoCq17LFuen6qF8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EeR+Y7K8xOhIGRTPpFE6LJqAS9WwLfgmJr7f3bpf7XcO9KdItYqC1c45wUOtziob9
         AfJUuaDitXk2k66h13IdBRpejBlaTm5L2O9fNLKXVo7iH0xZXBeKFdxKIHbw9OXj5q
         vhjgEyvvo33V02vx2wbQ8Oje2brQF/6c4eL9hU2omEKtbXA8PQG/E3sV+FsW9awTaI
         9R1j5Ljjp5B/hbfLKDpjXVWDZU37Kfdn0ViEidhy9oV9rpwsnC7orb/KokIUrGam9r
         YBA5ufX5QNMyq3x5dyKYl7xh+UaML2gW9FX0YYB2Mjn3YrLTy9Z2kwLOd77RyaqqXx
         W26kVnBOgB3RsKucwRYAffITMguiJPpSHn9Kwz1i0DwtusOXA4AnT/q7nrcyhB1cr0
         Eoy4ibg8uiwMJlO/E5czS3Uy+47ReFjt8wjO6eztyGhBFEUuwqbALEheEgY5Weq0g4
         jA+ynDc2d5shUEZgN+/O/Xz5DyFECzi+tFxnPuvQKyrgb6O8uYU5hOxecQTZK2wPWH
         xxslLjMa/xQPLISUt4pPotcbrtXJNIA69zXfzTo2oBTgr0Q9SMuKCdPw0XHitrAEgb
         WibHzK9Q9Tap/pNJQb4uuYNzP4HbE+/8+lBt6K08cimWGeA6pQkNfR/MjP0fSqdk5k
         U7wVc8dX2FMuh2ziImNUInF4=
Date:   Tue, 30 Aug 2022 00:33:52 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] cc_t.3type, speed_t.3type, tcflag_t.3type: document
 all together
Message-ID: <20220829223352.dkxto5dtp4txted6@tarta.nabijaczleweli.xyz>
References: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
 <3cbbf2e5-6213-198f-4cab-c6f42204d471@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="65rgb7bw6uyuyrax"
Content-Disposition: inline
In-Reply-To: <3cbbf2e5-6213-198f-4cab-c6f42204d471@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--65rgb7bw6uyuyrax
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Tue, Aug 30, 2022 at 12:16:58AM +0200, Alejandro Colomar wrote:
> Types are formatted with .I, but that seems to be existing practice and I
> don't find it documented anywhere.  (Branden, do you know of any source t=
hat
> discusses this?  Is it also like that in other manual pages?  Would you do
> that even if it is the main subject of the page?)

I'd used B because the typedefs in SYNOPSIS were B.

(FWIW mdoc agrees =E2=80=92 groff and mandoc Vt are italic in all output mo=
des)

> > +is used for terminal special characters,
> > +.B speed_t
> > +\(em baud rates, and
> I would use a 'for' here:
> A is used for X, B for Y, and C for Z.
> rather than
> A is used for X, B -- Y, and C--Z.

Sure, see updated scissor-patch below.

Best,

-- >8 --
speed_t and tcflag_t were both unmentioned in general

Issue 7 has this to say:
  The <termios.h> header shall define the following data types through type=
def:
    cc_t     Used for terminal special characters.
    speed_t  Used for terminal baud rates.
    tcflag_t Used for terminal modes.
  The above types shall be all unsigned integer types.
---
 man3type/cc_t.3type     | 14 +++++++++++---
 man3type/speed_t.3type  |  1 +
 man3type/tcflag_t.3type |  1 +
 3 files changed, 13 insertions(+), 3 deletions(-)
 create mode 100644 man3type/speed_t.3type
 create mode 100644 man3type/tcflag_t.3type

diff --git a/man3type/cc_t.3type b/man3type/cc_t.3type
index 029cf945c..6414dbf20 100644
--- a/man3type/cc_t.3type
+++ b/man3type/cc_t.3type
@@ -6,7 +6,7 @@
 .\"
 .TH CC_T 3type 2021-11-02 "Linux man-pages (unreleased)"
 .SH NAME
-cc_t \- terminal special characters
+cc_t, speed_t, tcflag_t \- terminal special characters, baud rates, modes
 .SH LIBRARY
 Standard C library
 .RI ( libc )
@@ -15,10 +15,18 @@ Standard C library
 .B #include <termios.h>
 .PP
 .BR typedef " /* ... */ " cc_t;
+.BR typedef " /* ... */ " speed_t;
+.BR typedef " /* ... */ " tcflag_t;
 .fi
 .SH DESCRIPTION
-Used for terminal special characters.
-It is an unsigned integer type.
+.I cc_t
+is used for terminal special characters,
+.I speed_t
+for baud rates, and
+.I tcflag_t
+for modes.
+.PP
+All are unsigned integer types.
 .SH STANDARDS
 POSIX.1-2001 and later.
 .SH SEE ALSO
diff --git a/man3type/speed_t.3type b/man3type/speed_t.3type
new file mode 100644
index 000000000..26cfd0171
--- /dev/null
+++ b/man3type/speed_t.3type
@@ -0,0 +1 @@
+.so man3type/cc_t.3type
diff --git a/man3type/tcflag_t.3type b/man3type/tcflag_t.3type
new file mode 100644
index 000000000..26cfd0171
--- /dev/null
+++ b/man3type/tcflag_t.3type
@@ -0,0 +1 @@
+.so man3type/cc_t.3type
--=20
2.30.2

--65rgb7bw6uyuyrax
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmMNPs8ACgkQvP0LAY0m
WPFibRAAoO0x6qnTEJAVVBNCfrSBDBqLZ61wNn4Kpa2X1ffQV4dmORcWOtGTXd70
adDjM8bgPRvXOVhKhdZNMSMzHJmYxsI2clH61qTu/M0eUf2VL4SB7H3L5L0QtgHl
aaphHUFRwbcPpTMSbOoCA8u/5uWdzon3NBr6z1+53Rvgaxd8qRGQY/AUsKOzJUjh
3vu/3mihKCv6BkUjJDwzkZEmCE52Yr82jXVWCWaSH/TLHmBtMv7Z7t8UNPUuiNsA
ARN3Q2ceL4QS2IlOjtAKVaKb4MLYwmM2+3EcCpWu+fOMqvu1YAy0PW4PqkjUVHy/
euaMZjHGuKlF8M2XfXVKdtFcw3XUGcBcnykYTqjHMV3BFzsO+9pRpFJ7Vc9CoMLr
0RH/Om9Cg77RE2ZGJqdVhloXcknLuLt86s9SKeWKYpG1hUnkMiXdEaPoJ6Hp6mMn
/JoQdl50KUwyNEjdDt5JwbtIlJeOY5sZ7MgAwIlxOs4XGYhdyzl28Jai+W7Vf0DE
+/3Tpcb/qsMN974UKtHn8tHR3bSTXwbiev7Rkhpx/PUa1fveQuphXIj0G3Q1QfgS
NT5sOG4CNlQ9FjmsfbpZ6qKz4lMgi2b+OTyQEEovcxL00aNn+tGmU7zCs8bHQ4sZ
InU1NnVzowVCB2dhZStq/t8i7bjU+WY8WdcBP0pC25WjWsn5c6Y=
=SSKv
-----END PGP SIGNATURE-----

--65rgb7bw6uyuyrax--
