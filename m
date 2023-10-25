Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDDF87D739C
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 20:54:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229596AbjJYSyd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Oct 2023 14:54:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbjJYSyc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Oct 2023 14:54:32 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DEE2116
        for <linux-man@vger.kernel.org>; Wed, 25 Oct 2023 11:54:29 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1ea05b3f228so19145fac.1
        for <linux-man@vger.kernel.org>; Wed, 25 Oct 2023 11:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698260067; x=1698864867; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a64CS1wc4CxQ5nRlD74STYo6wZugcqOFhDkhAhJYpqE=;
        b=FyK4jmvVempjZB2AUonv/Fit+5zSm81oCcoDrf6dK4Wu+KSv8ueXb+Wzy/mHMRPGrk
         WBy7TqM/r0CirGaHJJ1VjrQvDxgZoJXsF7JlplalcGPX1C0XFMdUWGC/yhc6FBLO+KNZ
         ruOYKM9sXpxsD/68E3opewZf/AjyMHNA2nyJ/foZl2aFDHw0vznJJcXbjI7pKX2F1Nlw
         IhWJfk7wWWYmO0zTBVEGFAL6+g6A0ge6p5pYePK65rwuuygNbsK2vNH5c9mzrjWRY8sC
         GGVGpn61vGkRz16IrDDueS1CTx92hAsvx1BGwF86TbNu5pUAZu/7iXXBDLU/Aqn8FreF
         hfyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698260067; x=1698864867;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a64CS1wc4CxQ5nRlD74STYo6wZugcqOFhDkhAhJYpqE=;
        b=EHcTkf5BZAsNYpC7ZAFjpPhi1d08cncNn7UWLpe5hhfTIllGDXjdd66PqVlnKoB2TD
         Mdtprg1QL7FlPYvAd8i0WUD0xuN0N7auoNhR1moj3OuScVMUAVakdlngxabD2zMLF31V
         oc73O+L2jAz3IV5GNgEutG1ycEj2eS+J/9ImgfclRqnO8gV7FNk7QTVzuJ4dDWKKfFb1
         zb0HBTCi/4NKndevkqccbwFJJjGKHryzUbTvW4enxN2alJ5jUAtpkRnS5TFXRCMPoqZm
         82C2xvNsZO1wWEBlvCrKleV/CbVLR+pCp8U5ykW8GLQUFp8vliAkHpsleGlIKd1uu5ha
         PF3Q==
X-Gm-Message-State: AOJu0YwXwjfkOYv6HS7rCq+5nIUm92OPNWWakhv5A4nJOV0zzo7eZHGm
        extUl6M4F0IGnAFIVNiKYCFniIx8PEk=
X-Google-Smtp-Source: AGHT+IHzkdQt8K97meX99UkS8/6OIK45ybPvUaspCR/ckPaZ/03665nhP+Mp6z/NfmyObDkjz9HEcQ==
X-Received: by 2002:a05:6871:6a4:b0:1e9:bf07:783d with SMTP id l36-20020a05687106a400b001e9bf07783dmr18898401oao.33.1698260067447;
        Wed, 25 Oct 2023 11:54:27 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d41-20020a056870d2a900b001ef38a85f9bsm203073oae.16.2023.10.25.11.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 11:54:26 -0700 (PDT)
Date:   Wed, 25 Oct 2023 13:54:24 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] man*/: srcfix
Message-ID: <20231025185424.txreg7q47zigo24j@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="snieopije2xhn5ks"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--snieopije2xhn5ks
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
 man2/open.2            |  9 +++++++--
 man2/perf_event_open.2 |  7 ++++++-
 man5/proc_locks.5      | 10 ++++++----
 man7/credentials.7     | 15 ++++++++++-----
 man7/pty.7             |  5 ++++-
 5 files changed, 33 insertions(+), 13 deletions(-)

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
index 44a2ecbeb..4a0bfe65e 100644
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
diff --git a/man5/proc_locks.5 b/man5/proc_locks.5
index cf4ff678c..a938e4ad7 100644
--- a/man5/proc_locks.5
+++ b/man5/proc_locks.5
@@ -10,10 +10,12 @@ .SH NAME
 .SH DESCRIPTION
 .TP
 .I /proc/locks
-This file shows current file locks
-.RB ( flock "(2) and " fcntl (2))
-and leases
-.RB ( fcntl (2)).
+This file shows current file locks (\c
+.BR flock (2)
+and
+.BR fcntl (2))
+and leases (\c
+.BR fcntl (2)).
 .IP
 An example of the content shown in this file is the following:
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
--=20
2.30.2


--snieopije2xhn5ks
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmU5ZGAACgkQ0Z6cfXEm
bc5yQxAAglTBh8zwPbCiDm1Lk8JnmN8cFi7CrKAIBNOrNLCZHfR+ad/jNLL/jxzX
PympiFtDYR64HE1ZmibZ8mygooRElZqR5oknn4VBNB8zAB1rZ7E7z2hs0ypiGf9T
16JMGvFPEm+//pgQLsbKjcj/IRbe/xSETynabp+vtJPYcdAYVDwFt9DmRu/jJjqN
IP0nzjCUS/H/QRLCihCpBciL+/COI8Qn3iLejedcM8gQ/4nwMTapqhs1+8lqdJgJ
a4+LA4XZUYR4s0b4/kmP60Q1hXwOlHi29hPRZzldb905K5vRHJl9zDXgBilAZki1
9g0dJw0fdrw5f8JJEsGGDducz9tB/CsXPtaMSr7wziO8Iq3wpzb+O3Byq9Ct+5bU
TUtPLInjApB9rLf23pcerK4wCAqp45zWAZO/3iO0Q4HO8UUs8iYCvMokHcLE9TtI
BUVa9KJrVnTbpjgPWLYF7l36dd9XyMt5EAmQh0hReXuKHMZaA4yXUNMup//puxrZ
3xKfoAXFWs7Tnx+wLG7jVLtAqMzZkBJ7lG+ZxGuYd3DY/Qb50csHXt3il/fg9wHP
qTB1fBxToXABCTJDKNRd8XHerZ6OmnUrfIFO49emnF4yG3ZY/T2g+0AwqdUczxHc
dvvl0ahLSNjZDz1N4ysb1fKoM3dKDxIsHvI2PZnFRvrx4UVXY44=
=oFhD
-----END PGP SIGNATURE-----

--snieopije2xhn5ks--
