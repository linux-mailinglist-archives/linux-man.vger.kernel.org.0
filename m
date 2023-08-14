Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 230C177AEFE
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 02:14:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbjHNAOZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 20:14:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230281AbjHNAOR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 20:14:17 -0400
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF7B2E5F
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 17:14:16 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5633b7e5f90so2799080eaf.1
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 17:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691972056; x=1692576856;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GWkItGt0CInHxQrSc4iBM0CSgOTpRXRR2wVaYrXt+VU=;
        b=MqwdLUoTIjD3kAt5LiIwdwp5F2QzreQBkB26nkMPGEYZ8ma1t3ubaxFgdB3LS1oulY
         gCmmad/z4sqE5wki9fXbsi6T0G8aL6CLfJVdlDgR4g9qAWDhUAu9ujYSBUjyaw+aZ1B5
         eBC2El3/b0zpSVgEEpNsixACD3z1J+GfWR64TRQVgrjNU8Aj1/fxIUBprF/nUJQZwdhk
         bfq5xQ6rqA0xeVcfNz+wzDx9wrG8k0HBHLguU+u1+rXBppmJha2PrBBi/EP0hwgP3gEX
         oynYX9Dbx2c9AaxaudzUw8GGVffjaFVF1vBV6/lTfjYSMV9lLyLH6TWYrPNMD7nmRbFE
         1GQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691972056; x=1692576856;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GWkItGt0CInHxQrSc4iBM0CSgOTpRXRR2wVaYrXt+VU=;
        b=cTro3K7JJPUBMYEKLbSmLZrMKgXv7I45KsFSRSkqeOhCq2HZ8ea1d0Cs0vSb0LWzz8
         7Ua0zvzjMlSeIyrH5OInsd+scc/Jift4HQcgio0RMTwOkIbWPYQEoCMSeCok5O8jG/0d
         jzq4JeXvz+zELAXKvYlFp6AyLwlknCxrwYIy2K+i/Cox9tZHR/DUyLVMBPTLrgjGX52T
         acojliemInVMK4yBRmJ1bR7u9FyJ3F8KIUe8WIUhwYXVFPyvZkts0ICDYGjw4hhkXu01
         9bhsOuL7ONBPVcLOIxz9KTRTXPvsTL/S2TgvF2IJm4qMIVt09R7wB94m5P3b47rgs2KO
         q/GA==
X-Gm-Message-State: AOJu0YzEItKvomrO0NC5JlshPjEVuJDpqtYniRtDqHCEM05Q51kW8sCP
        /IiL63tn46UlCf90yHTVk904vU9NO2A=
X-Google-Smtp-Source: AGHT+IExSibX3Pr/Ve1BPdIYSPlWxX+HGRrvhI+hMGNF0+W6tdINAsqdDp9Vt6jmgLtbmCCtzScABg==
X-Received: by 2002:a4a:91cd:0:b0:565:bbc0:2e36 with SMTP id e13-20020a4a91cd000000b00565bbc02e36mr4794753ooh.3.1691972055921;
        Sun, 13 Aug 2023 17:14:15 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v123-20020a4a5a81000000b0056d361ca33fsm4139132ooa.16.2023.08.13.17.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Aug 2023 17:14:15 -0700 (PDT)
Date:   Sun, 13 Aug 2023 19:14:13 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 1/2] man*/: srcfix
Message-ID: <20230814001413.py4jzfvdbjeevag5@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4x6kmdctgbb3t6j6"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4x6kmdctgbb3t6j6
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

v3: Resubmitted; no change to part 1/2.

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
index 3af3c3a3e..6c3c22ba7 100644
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


--4x6kmdctgbb3t6j6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTZcc0ACgkQ0Z6cfXEm
bc5GxA//QDAupsXZeGRCUSrXgcArbdQCmiTpB+3qRwVOB3FAzskpxxMRsy6A1NjN
ElybuczuLYeSHBBDy9ASk06JzFXhePcX63Xht74Nso/nCIj/admsAi8MOkYp4XpO
6GfhSJZXiPC8tiuQN2WKY4sibm68NEuQmGFyNQ97kmEyYV0rR3g1HL5Mgw2u5K/n
nOmPxWfj7XEj72Z4RrVlAhOTI0Qrm6ZdLP4aRS5rDBKRS0kgHdFT4uUX0gYknpC4
FcmZ3zyeFCIoo4WbYLySkx8ZQYx2CnCnAamN2Fq7Kltu7SlyJLrL/eJ/93NTLgA3
Ru5ut/Fa6RB2srH9hQpbsX1o/p00e4lqsV8apnCTnN1AKJRO+oQOMiXUEVq6L93M
h/pSOCnINSHvyj8j+GsFNwu3KCtwfdbn/o8fzOEMOjsXaApdaF/dzdhfi4EVI4Ak
RKgm2Tge5/rPalTiMpQxKoYCFqw78x+L3semrYrahXawSx6YYvnSa/LAOE2kKjL2
BeScEVoB1g0Ih+IIXbC4XkpLgJZnk2fBeBKhi/mnf1FNPZRA/m8ilMFgL3/Vztar
WEre/GXKa+QWm0gWVcRyEz7LmHp+hYgJGeNUZChUFq9cjn+8gSRQzqZRGVoe7OjW
XwQmGuxJVXS685NP5M4h5oDdfDyH7235cXgPMjF+7ZW4TSr21cY=
=cJVB
-----END PGP SIGNATURE-----

--4x6kmdctgbb3t6j6--
