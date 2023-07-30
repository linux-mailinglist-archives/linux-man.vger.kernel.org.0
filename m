Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 155F176877A
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 21:32:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229550AbjG3TcH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 15:32:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbjG3TcG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 15:32:06 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FCDFE5B
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 12:32:05 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6bc886d1504so1850159a34.0
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 12:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690745525; x=1691350325;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6R/bQKoV76aE18Uzdf7qp4TQyEdfcJmN9FGIog7Io9E=;
        b=mILTotxTFm9GbFEmQuQJGWaKzF+AomuKA091ReEUiEzI/XuDZYnp+DOuueI8hl189E
         YFAChms7YeWn3fFKJ2gPWHag42tBKf7P0RC/0ZaxUWJyNl63EN4ee0qsvz4qLNfQj0z9
         E6FgHvcZPfCmbfQj3AOF+6rxwQLnqLCo6TqZmBM1EEykNAR9EZmrTFvDeM5WIs0Hm1dC
         m09KErQ57rsPztFyjqbtvgglf/ZX8qPpMScL1jcHbDby80xt18POdUavaRj1JPnjQOxa
         kIIEN2XkJdQuJEbzv+o6/GBbNGhwjvz/P5KBRREq4AUUIRtYG/rpkwgCAM68U/Q3f+zG
         0YsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690745525; x=1691350325;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6R/bQKoV76aE18Uzdf7qp4TQyEdfcJmN9FGIog7Io9E=;
        b=G1nu3DEJg1spJeST0xnbHBf9qTs+YGWOzGmTrf8xMB49wk0wUGANO4WmHmcrTQWhm1
         HChOm6BTKJCnygq9JWmbUV69xj3+jwJJoVB3qcpfESORTYfNsh2cqrEmCa7DNnNbXKjM
         hLF3zgMyxDm8hmnTG7ZnsatTi0tS2dR7SNl9vvpOOj2+t8J08u3cQ3zo9yurgvjjmN47
         hVYgn472H1R7zmLZyyrV7+MLwgRKnon9yUY8qFgrnPLLuT+mTDE4PaCu8+Ue+zstUB4H
         txdPNBjw853PvFDrHI3gLewpoxuBcjPEyTl/BfV3L9HTm+qapDWAhsxtgaPo9juUtRCq
         uE7Q==
X-Gm-Message-State: ABy/qLa5YdT8QoatHkMsiEMbMWokykELYzgkCRl2jQ6wg9pNhIhiaaI4
        tBr0ft4fy2+SeZISeCzLkDTTvWYZSZk=
X-Google-Smtp-Source: APBJJlGcnNFMgWomRyqF6fXE2GpSdR+kYDi51zbFWejpgZ42l/MsEjUBrWH/ouZD8d2mkv//Jg7YbA==
X-Received: by 2002:a05:6830:1256:b0:6b9:9f84:dc8b with SMTP id s22-20020a056830125600b006b99f84dc8bmr7501955otp.19.1690745524603;
        Sun, 30 Jul 2023 12:32:04 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id t25-20020a9d7759000000b006bb334880d8sm3504419otl.81.2023.07.30.12.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 12:32:04 -0700 (PDT)
Date:   Sun, 30 Jul 2023 14:32:02 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] man*/: srcfix
Message-ID: <20230730193202.sly7va2kiv2edegr@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="s3llxyh6mepfqcic"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--s3llxyh6mepfqcic
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR sed".

Format only one man page cross reference per input line.

Also, since groff 1.23.0 (and Plan 9 from User Space's) `MR` is not a
font style alternation macro, there is no "reversed" form as with `BR`
and `RB`.  So when a man page cross reference must be immediately
preceded by punctuation, put that punctuation on the previous text line
and use the `\c` escape sequence to connect them.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man2/eventfd.2         |  4 +++-
 man2/open.2            |  9 +++++++--
 man2/perf_event_open.2 |  7 ++++++-
 man2/signalfd.2        |  4 +++-
 man2/timerfd_create.2  |  4 +++-
 man5/proc.5            |  4 +++-
 man7/credentials.7     | 15 ++++++++++-----
 man7/pty.7             |  5 ++++-
 man7/spufs.7           |  6 +++++-
 9 files changed, 44 insertions(+), 14 deletions(-)

diff --git a/man2/eventfd.2 b/man2/eventfd.2
index 2bd781bdf..003a64eb6 100644
--- a/man2/eventfd.2
+++ b/man2/eventfd.2
@@ -142,7 +142,9 @@ .SH DESCRIPTION
 if the size of the supplied buffer is less than 8 bytes,
 or if an attempt is made to write the value 0xffffffffffffffff.
 .TP
-.BR poll "(2), " select "(2) (and similar)"
+.BR poll (2),\~\c
+.BR select (2)\~\c
+(and similar)
 The returned file descriptor supports
 .BR poll (2)
 (and analogously
diff --git a/man2/open.2 b/man2/open.2
index 4c921723c..6603dfdff 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -82,8 +82,13 @@ .SH DESCRIPTION
 to an entry in the process's table of open file descriptors.
 The file descriptor is used
 in subsequent system calls
-.RB ( read "(2), " write "(2), " lseek "(2), " fcntl (2),
-etc.) to refer to the open file.
+(\c
+.BR read (2),
+.BR write (2),
+.BR lseek (2),
+.BR fcntl (2),
+etc.)
+to refer to the open file.
 The file descriptor returned by a successful call will be
 the lowest-numbered file descriptor not currently open for the process.
 .PP
diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index aa23a4977..40686917b 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -32,7 +32,12 @@ .SH DESCRIPTION
 Given a list of parameters,
 .BR perf_event_open ()
 returns a file descriptor, for use in subsequent system calls
-.RB ( read "(2), " mmap "(2), " prctl "(2), " fcntl "(2), etc.)."
+(\c
+.BR read (2),
+.BR mmap (2),
+.BR prctl (2),
+.BR fcntl (2),
+etc.).
 .PP
 A call to
 .BR perf_event_open ()
diff --git a/man2/signalfd.2 b/man2/signalfd.2
index 2b97c4640..9d0708799 100644
--- a/man2/signalfd.2
+++ b/man2/signalfd.2
@@ -131,7 +131,9 @@ .SH DESCRIPTION
 .B EAGAIN
 if the file descriptor has been made nonblocking.
 .TP
-.BR poll "(2), " select "(2) (and similar)"
+.BR poll (2),\~\c
+.BR select (2)\~\c
+(and similar)
 The file descriptor is readable
 (the
 .BR select (2)
diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index d68206b05..9ba0dd315 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -317,7 +317,9 @@ .SS Operating on a timer file descriptor
 .BR read (2)
 on the file descriptor.
 .TP
-.BR poll "(2), " select "(2) (and similar)"
+.BR poll (2),\~\c
+.BR select (2)\~\c
+(and similar)
 The file descriptor is readable
 (the
 .BR select (2)
diff --git a/man5/proc.5 b/man5/proc.5
index 04b45ccb7..fd51dcec0 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -3459,7 +3459,9 @@ .SS Files and directories
 .TP
 .I /proc/locks
 This file shows current file locks
-.RB ( flock "(2) and " fcntl (2))
+.RB ( flock (2)
+and
+.BR fcntl (2))
 and leases
 .RB ( fcntl (2)).
 .IP
diff --git a/man7/credentials.7 b/man7/credentials.7
index 77cb5e0ef..b07f150bd 100644
--- a/man7/credentials.7
+++ b/man7/credentials.7
@@ -267,21 +267,26 @@ .SS Modifying process user and group IDs
 Subject to rules described in the relevant manual pages,
 a process can use the following APIs to modify its user and group IDs:
 .TP
-.BR setuid "(2) (" setgid (2))
+.BR setuid (2)\~(\c
+.BR setgid (2))
 Modify the process's real (and possibly effective and saved-set)
 user (group) IDs.
 .TP
-.BR seteuid "(2) (" setegid (2))
+.BR seteuid (2)\~(\c
+.BR setegid (2))
 Modify the process's effective user (group) ID.
 .TP
-.BR setfsuid "(2) (" setfsgid (2))
+.BR setfsuid (2)\~(\c
+.BR setfsgid (2))
 Modify the process's filesystem user (group) ID.
 .TP
-.BR setreuid "(2) (" setregid (2))
+.BR setreuid (2)\~(\c
+.BR setregid (2))
 Modify the process's real and effective (and possibly saved-set)
 user (group) IDs.
 .TP
-.BR setresuid "(2) (" setresgid (2))
+.BR setresuid (2)\~(\c
+.BR setresgid (2))
 Modify the process's real, effective, and saved-set user (group) IDs.
 .TP
 .BR setgroups (2)
diff --git a/man7/pty.7 b/man7/pty.7
index bef60e931..3f23be44d 100644
--- a/man7/pty.7
+++ b/man7/pty.7
@@ -122,7 +122,10 @@ .SH FILES
 BSD slave devices
 .SH NOTES
 Pseudoterminals are used by applications such as network login services
-.RB ( ssh "(1), " rlogin "(1), " telnet (1)),
+(\c
+.BR ssh (1),
+.BR rlogin (1),
+.BR telnet (1)),
 terminal emulators such as
 .BR xterm (1),
 .BR script (1),
diff --git a/man7/spufs.7 b/man7/spufs.7
index 39fdf583a..96b100b8c 100644
--- a/man7/spufs.7
+++ b/man7/spufs.7
@@ -119,7 +119,11 @@ .SS Files
 file are:
 .RS
 .TP
-.BR read "(2), " pread "(2), " write "(2), " pwrite "(2), " lseek (2)
+.BR read (2),\~\c
+.BR pread (2),\~\c
+.BR write (2),\~\c
+.BR pwrite (2),\~\c
+.BR lseek (2)
 These operate as usual, with the exception that
 .BR lseek (2),
 .BR write (2),
--=20
2.30.2

v2: Fix goof that boldfaced some opening parentheses in credentials(7).

--s3llxyh6mepfqcic
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGuqYACgkQ0Z6cfXEm
bc6wXxAAnX1Zix4/SpUG2pfKDW4Pwlv4t+4ZI3PxJDUHZ8d9y3Lnr7C+/bR95mzx
FwZ5hyxSXXh/hvvvjdmd+ucUrNvNZ3D+Waz0SL+WUsUy/xPg+iWJKP46cbwg7e9N
35pGKRTuwYO4I01D+vtCqS/tW/yXKk9Dy/hkiYz4E7di8eNS167tmPejMt2Ry2FI
fQgdXuhJ/kCEFXAC/PIAe583NnrsZpAfNhJ883oreouk4YU3X9VOKg6zUOOb9MSo
EnTo6IBwW2vqcbYy202V4QUyMBFOIrQc1taJXjgzH/mCHUMAQSMfVDPuu60REPyh
pFdss2L+edM9gHD+1cS84JFkqXM8MkIUidPh7QWiTVA1eku4B1ZECsDC0qhqz97Q
/MWa1ZYIaUqqogGY8OWhv9pbKyj19n4kNIOaqqssheES83I7WM0P9P9Pv0a12Sfo
O4c3nCLrA6LxKoaEPKnhiEZUimazREMJoDVN9yetVDH5XiCXBhxH/r+aSJ1MkUJI
a5/cByVXfH30exKuNWcDSJS2wv5OrvneORS8zeOWuIRKt4uyvFk3SWlMh3sFCumf
rmZ8Igewx/v3FuO92DgpEyibsW1nl1uW9SuvkmORVT70YQKFhhyoGN7YhWqXGTKq
usGBD3A5+4B15umkA3aL+sW8bdekE/+xbEqunwmkC8EN2bB5fcA=
=pxcy
-----END PGP SIGNATURE-----

--s3llxyh6mepfqcic--
