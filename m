Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B6347686E9
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 19:53:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbjG3RxB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 13:53:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbjG3RxB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 13:53:01 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA98FA8
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 10:52:59 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3a1ebb85f99so2986315b6e.2
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 10:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690739579; x=1691344379;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kkGAw5YLW3EOz7g/LsVBiEsbwI7aHpc1lUVGI3MW/oI=;
        b=aGY56gIxsQNPJwmhfGKjQ4uM1iiehwJASR4rNdmBNSBkvFJ3tMrtsWIIFndWHRA5Gl
         3CEXIWaKwVF5HHBVQGEOL8tK4OHmqCL69KqKmkPlKWJTPUHSI8VtxV55lKYF4BS2L4Gq
         zhpP1T0kY0a/QGIFMJBl/wPKadWDuWdy2XAUvpdcCuVI6iwmOOmBJ9TxoeE1VvJYc7TS
         8hDewq391yanT+e3OkriLD0WxMwogG00OBjRPawT/pJfrzgp864QE0ZGNP3Rnmzcd3wc
         9D3Diq+uh5SuoA1bt8xGsWQozCKZgCRCKwPqVyODO6p0EUERd+WkEF1AxC+xIlu+hFwQ
         moHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690739579; x=1691344379;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kkGAw5YLW3EOz7g/LsVBiEsbwI7aHpc1lUVGI3MW/oI=;
        b=bJKfUZDBGy3rl7gZ+sClqrlZa4Yf6K2CqedUtgeF60RKazkUrrqydUw6nFTf8o/phF
         MIcFsHG2zTjccKulK6fvPLy2l+XAFm5YiALVSmkuvUfnsLZvMcZtoYS/wBKcy9v9JGX/
         CSP0g1lTppCb5ywTAlag5ydHJ5fPm8IPk4L9SmQc05WEIGW5TDGnhMSQ3eWrgugCqZmE
         LyBXRTheGpFBV3MAoqI55+P4pO4YfoOevEUeTJ++guNiuP1kIkd6oSKYpmsC8m2BkbuI
         +PbL8Nm7T2ohjE7BpTiuaoGGXR0zYboB17bsBE4u/CL7FuWK0ytPHx9fUO/sNBHt4s3k
         vUbw==
X-Gm-Message-State: ABy/qLawnpkFuO3Sz2KkFgZ5m+eEVgXRY6gXoS5JMrAvTIHBWdPzmOEw
        t7QIROuMAWQA3zFeohBb9eGOZEP+8zlKgg==
X-Google-Smtp-Source: APBJJlEqxtdLdq7EJvHrd5jPouuo40H8ksey5PitFVT8Br++5NRdzCrC+lSQHLoICZmt6Y7IMCDC/w==
X-Received: by 2002:a05:6808:124e:b0:3a4:34c8:f84e with SMTP id o14-20020a056808124e00b003a434c8f84emr8629000oiv.2.1690739578850;
        Sun, 30 Jul 2023 10:52:58 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id l22-20020a544116000000b003a375c11aa5sm3466785oic.30.2023.07.30.10.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 10:52:58 -0700 (PDT)
Date:   Sun, 30 Jul 2023 12:52:56 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man*/: srcfix
Message-ID: <20230730175256.63fzulvoqvzay3ff@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="mrbomsr6uxauyqs7"
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


--mrbomsr6uxauyqs7
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
index 77cb5e0ef..4bf908a8e 100644
--- a/man7/credentials.7
+++ b/man7/credentials.7
@@ -267,21 +267,26 @@ .SS Modifying process user and group IDs
 Subject to rules described in the relevant manual pages,
 a process can use the following APIs to modify its user and group IDs:
 .TP
-.BR setuid "(2) (" setgid (2))
+.BR setuid (2) \~(\c
+.BR setgid (2))
 Modify the process's real (and possibly effective and saved-set)
 user (group) IDs.
 .TP
-.BR seteuid "(2) (" setegid (2))
+.BR seteuid (2) \~(\c
+.BR setegid (2))
 Modify the process's effective user (group) ID.
 .TP
-.BR setfsuid "(2) (" setfsgid (2))
+.BR setfsuid (2) \~(\c
+.BR setfsgid (2))
 Modify the process's filesystem user (group) ID.
 .TP
-.BR setreuid "(2) (" setregid (2))
+.BR setreuid (2) \~(\c
+.BR setregid (2))
 Modify the process's real and effective (and possibly saved-set)
 user (group) IDs.
 .TP
-.BR setresuid "(2) (" setresgid (2))
+.BR setresuid (2) \~(\c
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

--mrbomsr6uxauyqs7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGo3EACgkQ0Z6cfXEm
bc4SvA//UFrUsLtmaht+7EGtWOm7PiBUgvFO7E9RqmoKSf2H5fQL6btLHilXqV4k
mXWCRZgTiIMcy4wflsyU4I1DMX+/QMRqs1roKEdStbGQjYxnzV17F7EsxN2VCwm9
XdZMBu2rJOVwFVAxdEoxLpiBl0O8/xtOZUjPfLrXuWGTH/4/tMNLtITkYk6JEs34
IWqgkmKjEacfDu+SyCiCJyd8GuqQ3PbTUhEweBlj5eSVVyJsDKRXl0G+Iej4G6fc
S3hh5EYlUaTsrHYUloCdlP/JxvzcWqwyqLRibO7eA3w7WYEbg7y96HgYMTiLiYSY
AJ19FlGBhKy6rKdLV9IfTZcYaXCqhhBj2SBCem9Bgt4aPEFNroIy3ZR3wWUNIwAG
Kj0b1wYulV2leg9iKxni06gGa9/5WrgszYtt+zbCRXUDu959FZQWux4AVPzVcZ67
HxGYEXFiT32uoI4p/9l+t77poEneH8IHtsokEt0vEFJTaYGf/Ul4SeEbJDjxxJ0f
P2BtPJ6CfWUVaTOslTZurzRd8u+Z4T7W8G6O29UdjRJoUWqTC5NAuG/BePsW/fwK
FP3VgISDaDd7f6xRja+DY81New6QbO9ciqldPYb+rh6xMoKNOjWBCILBlaqESe+q
b2L3WPLrLRaByNLPcUpK5lvpPRJPA5IvP+dae5AhEip/KusVViY=
=pR3d
-----END PGP SIGNATURE-----

--mrbomsr6uxauyqs7--
