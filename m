Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0481769FB9
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 19:48:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231192AbjGaRsz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 13:48:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231391AbjGaRsq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 13:48:46 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF5D51718
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 10:48:38 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1bb75afeee3so3262465fac.0
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 10:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690825718; x=1691430518;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L1U1u32MNXf37ukfzkiqlnpMrPn4/mativcsqlLgKWI=;
        b=DAs4wJtBUXDZY7TS4RO/Ttwixsbzfoz2wTyKdWOqYb4JTU9N7fJeg2HTVQkYEZ1Ywf
         l3AKmjscfgoIwPj3jgQOvbIzyR9l8uEqeSG0cw4V5hw7v+whHFM1hTJSVJmJP32kqm6X
         uMjNDQePQFX6pR3sROzct7/ARI+uqnKelwT0Gm7z464haklG6IZFAHsrOUW4zfrg7v6Q
         8uYOm9WW/xFRZiOqGSwssMZV6hFKknERoWDSVAAmRvwD3bcJr7CIyA0VzWTeoFq+6mAL
         gJ+MetQuJr/vhimSxKhrFkdmxEfOPqs85S6puH5U6i7UAnGlANdWEnCZD1wDMWf8gRty
         18bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690825718; x=1691430518;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L1U1u32MNXf37ukfzkiqlnpMrPn4/mativcsqlLgKWI=;
        b=IroOcsLXwyidrx6il8RNJ/CgL7dy7MKz+zIg94NKKpCUPcOpachxzJPKAak/YvKbJB
         V9DCaSmfgdlB/rq/byeH5TcTtRocbWR6TQR5wj33XeM09JoHBeyF+4idcoRLEeJkEHc3
         GH46Af0zIkUVFhpUs5u4bOTfRZ3vY3/Fxy41yPVvjygzEqyT7jVZo0w7Yecrh7jXI25c
         oLqqD3H+RntDG1mXxGQa+Z32t2dBDRdRcJd9NtKzga1MYY/49T4Iz+KXUC4doajqhgvH
         iY2Zmhk+Kw5Y8UZD8aKbZ8PL6VyZDz2h0xnCgdtB9hAP5XGhh4+iAkkoFprXsH8sWwZp
         HOsQ==
X-Gm-Message-State: ABy/qLbNaN/L9D9G1UhVkioLQXOTAIuCyP3DX75vWIGjx93rEoakWUxK
        btZNLt5yLGwH69BVhgYxqJvFlscVis8=
X-Google-Smtp-Source: APBJJlH9md4lYxFhysHty7ov3FzKwYD8he3/XC7jyQRn7Fg3zvWeBSYR9gjbd4P9K1XjXDcPE7dJKw==
X-Received: by 2002:a05:6870:f5a1:b0:1bb:75af:37b5 with SMTP id eh33-20020a056870f5a100b001bb75af37b5mr11820974oab.10.1690825717971;
        Mon, 31 Jul 2023 10:48:37 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 68-20020a4a0047000000b00565fcfabab8sm4576354ooh.21.2023.07.31.10.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 10:48:37 -0700 (PDT)
Date:   Mon, 31 Jul 2023 12:48:36 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3] man*/: srcfix
Message-ID: <20230731174836.5e3fxxe6csgitm4s@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="avwodrk5vdi66gik"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--avwodrk5vdi66gik
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR sed".

Format only one man page cross reference per input line.

Also, groff 1.23.0's (and Plan 9 from User Space's) `MR` is not a font
style alternation macro; there is no "reversed" form as with `BR` and
`RB`.  So when a man page cross reference must be immediately preceded
by punctuation, put that punctuation on the previous text line and use
the `\c` escape sequence to connect them.

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

v3: Resubmitted; no change.  A revision to "MR.sed" handles this case.
v2: Fix goof that boldfaced some opening parentheses in credentials(7).

--avwodrk5vdi66gik
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTH8+sACgkQ0Z6cfXEm
bc74ug//Y+Rp9WMGmuWDgjawcG73y0Oi/dpRQjZt8OPTC25E7gi0xBmbUKTvTKEN
Ic0uyG5rdn6jtH0rw/3WWVibe+BHGkMkyFvLnmR1O/hJDc4z/Exvulo+/EZGtdEd
2TZZ2fxt0otQQqcStcQ2vbRMW4+pug51rujZh1njOJSNY/wKL5goNs+2Kde7N6kN
AgKyxGFOahQ2IhtkCLaZseMnnVfcazLZZ/BD2LzYi6QIoIpv+IKwAHeTevZ7nxUs
ui7i3L2Fsii9CRGfsdBUaOtze0ln88U19EOi4N/gQjXCrAHHv01YjC4gqdTvQtrH
DfgJ45jBcqOQjAUUCnMMm4DCW561+e4rYkLFlDIPBOJOee2gsQHjFrxheTbBtpx9
SJN/Wva260A2O1tJigF4E+tWrmKedvgwJA0RUKcMrze4gM5wSDDamaoXQxZ2IYcM
TYo7dj36CwfctiQKCKIjjODiF8WP0Nb8qXVk0c2qnZNYSdg5MSJjTWr1PbphZVUS
1AhRZRmOkuUU/fJDCZ/qKMylY5E421d2xE8FcYG7uYNel780FiyJTlh6vOvKG/SI
RoSdp8B5QDRJUbOdbG44G/cemn57FXLCrOzL/b11rpcscbg8UmF7MJVVrjaDZmjz
uYOAkkWplIfaZjDk6HEYdm/s6YEBxBOJ1bBzV5lWGEwI1ng/aeE=
=BEow
-----END PGP SIGNATURE-----

--avwodrk5vdi66gik--
