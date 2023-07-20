Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9242E75A43C
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 04:04:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbjGTCEl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Jul 2023 22:04:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbjGTCEk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Jul 2023 22:04:40 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC9851FFE
        for <linux-man@vger.kernel.org>; Wed, 19 Jul 2023 19:04:39 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-1bac8445e06so222076fac.1
        for <linux-man@vger.kernel.org>; Wed, 19 Jul 2023 19:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689818679; x=1690423479;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=midqnXLOxi5BfzcJZkwfpORF0PF+TFn9NO23vplLknM=;
        b=YYkFHuqtexJVDTVY1f9Rywe7jkEVYhpCtgUGKFYHkhV0uDsaZ9QZpUnhTHX1JGOO9V
         +nGTkckby9EkenMsjrQ8uN8uIuPPYDqSrNqoRSQ8Y6HiQ2Ms3ilWrzIXW/9AjrG6Qd8N
         h0bZaUQQsbfUYhTtS5seQidiUQj9dlWs20y3/w5mzQ7LhlupbUlr8UPbQWgs97dz+MiW
         rvNbRMaQQO8wIqpMJuUyT+FQbF74gnVzPATdnds6ChU87UNLWrZdN9dIUuLgxfk5xlZm
         LITrCSOYovH8FPMqIE83jDRCzuYa3mbXOcpx3B7kCzrlqqLSuRK9tdPY4cZfD5H51Uux
         2JzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689818679; x=1690423479;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=midqnXLOxi5BfzcJZkwfpORF0PF+TFn9NO23vplLknM=;
        b=N139ZOQgMf5Oha8P4nZsOx2/FNYvISr9mQUdN8IfJN0qoV24DFdfkTB8gNzMiTdscx
         TMcBtUB3yk9h0iYu1rvU7hPA9e2YDFLmnS0iMLX+G0cHTm6Qj6BBYD613IX1mX0LVYiC
         DXIQqJlKc4xVRuo/WgRug9W6ZbJzpPk+kGHnaXSKtf6r0rMHdGTcVpWoqkQT2mXdck2Q
         HWXkV7R6QKRJ2jSm5jBvRhktRVapPX/VbJyxHINPR1tEwrHsoq79HnvTzBhgUOTa+DNS
         K9YJQP2sjOBqi/jW4svcpfbTk7+Dj+d1omfpk+1emwbnPo5xg80pzWEnyvGhWiwIGVR0
         pyxA==
X-Gm-Message-State: ABy/qLY+zPI5eAbFBb6L3f1X3IywpxUC1iiIJG7q8eqM4JT9MLHEd/yN
        im73xMXsDS/pLVzjbg9gz4aYKfLRXXM=
X-Google-Smtp-Source: APBJJlGsG6Pv3DBHOS293Zsyuzft3dxjTgnfAnOUaoSQEIJdvypfNMjhXBX3Tuxz8I5DfPJbpZwh3w==
X-Received: by 2002:a05:6870:80cb:b0:1a6:979f:2a2e with SMTP id r11-20020a05687080cb00b001a6979f2a2emr367251oab.13.1689818678827;
        Wed, 19 Jul 2023 19:04:38 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id h7-20020a4aa9c7000000b005660b585a00sm3372oon.22.2023.07.19.19.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 19:04:38 -0700 (PDT)
Date:   Wed, 19 Jul 2023 21:04:36 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH 1/2] man*/: ffix (use `\%`)
Message-ID: <20230720020436.vejzttvkklhmkgpn@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="lbmndliqxjoazquu"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        WEIRD_QUOTING autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lbmndliqxjoazquu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=46rom 25d379c486d28357a8341b0cfbce1b43b82e177f Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Wed, 19 Jul 2023 17:59:27 -0500
Subject: [PATCH 1/2] man*/: ffix (use `\%`)

Protect instances of some literals from hyphenation.  These are only
those necessary to improve analyzability of a large-scale (500+ file),
sed-driven change to improve adjustment and hyphenation enablement
management around tables.

* man2/getrlimit.2: Protect some instances of `RLIMIT_MSGQUEUE`,
  `RLIMIT_SIGPENDING`, `RLIMIT_FSIZE`, and `getrlimit` from hyphenation.
* man2/sigaltstack.2: Protect an instance of `setrlimit` from
  hyphenation.
* man3/gethostbyname.3: Protect an instance of `endhostent` from
  hyphenation.
* man3/getmntent.3: Protect an instance of `getmntinfo` from
  hyphenation.
---
 man2/getrlimit.2     | 10 +++++-----
 man2/sigaltstack.2   |  2 +-
 man3/gethostbyname.3 |  2 +-
 man3/getmntent.3     |  2 +-
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
index 21f919fdc..5d4e428d1 100644
--- a/man2/getrlimit.2
+++ b/man2/getrlimit.2
@@ -577,12 +577,12 @@ .SH STANDARDS
 .B RLIMIT_RSS
 derives from BSD and is not specified in POSIX.1;
 it is nevertheless present on most implementations.
-.BR RLIMIT_MSGQUEUE ,
+.BR \%RLIMIT_MSGQUEUE ,
 .BR RLIMIT_NICE ,
 .BR RLIMIT_RTPRIO ,
 .BR RLIMIT_RTTIME ,
 and
-.B RLIMIT_SIGPENDING
+.B \%RLIMIT_SIGPENDING
 are Linux-specific.
 .SH HISTORY
 .TP
@@ -747,7 +747,7 @@ .SS Representation of """large""" resource limit values=
 on 32-bit platforms
 .\" https://bugzilla.kernel.org/show_bug.cgi?id=3D5042
 .\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D12201
 The most pertinent limit here is
-.BR RLIMIT_FSIZE ,
+.BR \%RLIMIT_FSIZE ,
 which specifies the maximum size to which a file can grow:
 to be useful, this limit must be represented using a type
 that is as wide as the type used to
@@ -769,13 +769,13 @@ .SS Representation of """large""" resource limit valu=
es on 32-bit platforms
 Since glibc 2.13,
 .\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D12201
 glibc works around the limitations of the
-.BR getrlimit ()
+.BR \%getrlimit ()
 and
 .BR setrlimit ()
 system calls by implementing
 .BR setrlimit ()
 and
-.BR getrlimit ()
+.BR \%getrlimit ()
 as wrapper functions that call
 .BR prlimit ().
 .SH EXAMPLES
diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
index 6ae8a612c..b42149541 100644
--- a/man2/sigaltstack.2
+++ b/man2/sigaltstack.2
@@ -230,7 +230,7 @@ .SH NOTES
 expects that it may exhaust its standard stack.
 This may occur, for example, because the stack grows so large
 that it encounters the upwardly growing heap, or it reaches a
-limit established by a call to \fBsetrlimit(RLIMIT_STACK, &rlim)\fP.
+limit established by a call to \fB\%setrlimit(RLIMIT_STACK, &rlim)\fP.
 If the standard stack is exhausted, the kernel sends
 the thread a \fBSIGSEGV\fP signal.
 In these circumstances the only way to catch this signal is
diff --git a/man3/gethostbyname.3 b/man3/gethostbyname.3
index 492e22d69..b467e92d9 100644
--- a/man3/gethostbyname.3
+++ b/man3/gethostbyname.3
@@ -377,7 +377,7 @@ .SH ATTRIBUTES
 .BR gethostent (),
 .BR gethostent_r (),
 or
-.BR endhostent ()
+.BR \%endhostent ()
 are used in parallel in different threads of a program,
 then data races could occur.
 .SH STANDARDS
diff --git a/man3/getmntent.3 b/man3/getmntent.3
index 5c0cfde0a..37e7225bd 100644
--- a/man3/getmntent.3
+++ b/man3/getmntent.3
@@ -249,7 +249,7 @@ .SH HISTORY
 .I /etc/mnttab
 is used.
 4.4BSD and Digital UNIX have a routine
-.BR getmntinfo (),
+.BR \%getmntinfo (),
 a wrapper around the system call
 .BR getfsstat ().
 .SH SEE ALSO
--=20
2.30.2


--lbmndliqxjoazquu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmS4li0ACgkQ0Z6cfXEm
bc7pLxAAjgC1ArkJ/CtntOrxLw4+CaKZuRiPBVSdqxXyMyg0ULSt3AxJ4qyRwaYS
fgRjD2SUIbr3EOklHAz0yC7qEGhrl0LCHJyfMS/TuDDJb3EIGdwbux7Ro5mV96hu
2pPYyNFtG7yEtyDds/gop8MZSRIihu0yqI6HKQvQaAGYF1Bh1n9HoIJXtFm1cWWt
KTHfWLFwCLvy/KiC2Fp6M6USIcyTFId0HSJdyqbuJ2dLVH+SKZJKJsyXZVxGiLaw
6tzubUhsudN9MOA4Ct7eh6w8vYCUkYRnl+nglfBXuMMRQacqwvSZ5qre+1W06vcU
uhMsSwYD5vaOxiq6sBYMcNhKQxFW07O8pVHuojiDMr2E4AWHnRVpHBBVAAsjff2u
v02JmfJ+aLu9LiTq4FRxw/PrXIdVMCzuQsp/1D+xdjqqN0wi8JryS8Eu3j8K4tWH
3SvlxanO1OvGeG13HXWrV97z+Zy4RfCe8hyh5jU7ZMb4VU0LW+jfDiJyLzAxDLqI
eV3GcnupuhZHdzDBGkGOmN53bKkBIbgjrc2gUtdO6KoxVRg44lwMIjtAM/OwYpaJ
bdFvD8EOTIMQ8eDhaAohgkgvnJdFzXrX+ern4HZvuSa1MgO3DyimQxp5xaYlAd/1
FDLguj5SSiR6MdqW+RM8lnwyKTaCVoH8dFKagSi9WbbENVTZYZc=
=mEGm
-----END PGP SIGNATURE-----

--lbmndliqxjoazquu--
