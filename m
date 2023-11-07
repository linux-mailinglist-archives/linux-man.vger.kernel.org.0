Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 181F17E48AC
	for <lists+linux-man@lfdr.de>; Tue,  7 Nov 2023 19:49:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232632AbjKGStT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Nov 2023 13:49:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229948AbjKGStS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Nov 2023 13:49:18 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66B78B9
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 10:49:16 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3b2e330033fso3581330b6e.3
        for <linux-man@vger.kernel.org>; Tue, 07 Nov 2023 10:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699382955; x=1699987755; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qiiy161guz5+C4wax5Tt7JJQ/hmBYh8yMfDgytjKHz8=;
        b=BrfCyS+Nso7vEFBeHk1l2Ge+qLL+nIeAhHZv4pqQ326vcFlhryt7FKrdYtR037FmOr
         ZswetGNbiYZ0r3mDBJmGOSR0RjohkKFlTyNlLl9EXpTpjEk5Tt2ehpAN+cuJv8+nes8D
         TPdIHNeb4rWLOU3vPPDwe8SEbdDsTArgAaS/7EFqYatbmWPg9B/h30FytP+PSzgBEswD
         ibte8/ar7+otfasVaQ/SU6tL9jGE1L6CY3hUbeBV40jISqnnSzJhPaccEygziZvcr9ti
         Kbe0ix2DxiUQMTZZiJU0KAo6qRJrVnBtrRekjOSYdMeG9z1/oc7q50WR1LhRCahrYuIU
         RLhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699382955; x=1699987755;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qiiy161guz5+C4wax5Tt7JJQ/hmBYh8yMfDgytjKHz8=;
        b=RisiIVdX8BZ1TDliz5ZESaBO8rEuN/e4xgzAnGtwjXBG3OJbTcsWwOjDG2lgeYMNb9
         ETH3MZSa7l/Io8fWVEOlx9PSy06jZeEtvUHdYk51OZIXTJiYhSt/5HildgHjZXzikpHh
         fvo4l9oTgXt2j0YBxU6jPg76A5X1bwhvIu0zKZa2FT+/zBPt6NHh5GYdruVuZgxBIwTH
         uz0OpKi+7RWuOrMoMLhitIlORK/n1JErSD5Q4XFobLbhtasIAre7H7Lx/CZDOa1FdaJG
         f1vlmht1HmZolhc7uhAABaa0Veoor54beo67HbsYR6sBva3ksw7W/UKeaABMHsRe9Dco
         xJvg==
X-Gm-Message-State: AOJu0YzGu6YoAtbbgo+5GEbcGpwRVi1v4qp+lE9xtjEwa9RlMvIJFAsc
        M2exwgued8r2hSL5qjWktibykUc1sSc=
X-Google-Smtp-Source: AGHT+IEddtYcsVgpybS9KrZu70QeUZrZLrFPjHCdE7uieM0OGBsGh6TOxPyBdDuc/cFomT39EXIBNA==
X-Received: by 2002:a05:6808:1152:b0:3b2:f27a:8a52 with SMTP id u18-20020a056808115200b003b2f27a8a52mr39753321oiu.41.1699382955632;
        Tue, 07 Nov 2023 10:49:15 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bg42-20020a05680817aa00b003afc33bf048sm1662451oib.2.2023.11.07.10.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 10:49:14 -0800 (PST)
Date:   Tue, 7 Nov 2023 12:49:12 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v6] man*/: srcfix
Message-ID: <20231107184912.klfiw7y53w3hm22v@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vyqye35xd2gxt5rq"
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vyqye35xd2gxt5rq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR sed".

Format only one man page cross reference per input line.

Begin parentheticals on their own input lines.

Also, groff 1.23.0's (and Plan 9 from User Space's) `MR` is not a font
style alternation macro; there is no "reversed" form as with `BR` and
`RB`.  So when a man page cross reference must be immediately preceded
by punctuation, put that punctuation on the previous text line and use
the `\c` escape sequence to connect them.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Changes since v5:

* Begin parentheticals on their own input lines.

Changes since v4:
* Drop the big `MR` migration part of the patch itself, which is
  entirely sed-driven.  I had already taken care of the proc_locks(5)
  change that Alex had requested in v4, but neither of us noticed this.
  It's still a benefit to apply this preparatory source fix.

Changes since v3:
* Resync the preparatory patch (1/2) [all that is left now] with recent
  adoption of `TQ` macro in more places, reducing the number of manual
  preparations needed.
* Stop trying to migrate tzfile(5), tzselect(8), zdump(8), zic(8), and
  time2posix(3); and bpf-helpers(7), which are externally maintained.
  Thanks to Brian Inglis. [no longer applicable to v5]

Changes since v2:
* No changes to this part.  [The sed script grew an additional case,
  IIRC.]

Changes since v1:
* Add `\c` before flock(2) reference in proc(5) [now proc_locks(5)].

---
 man2/open.2            |  9 +++++++--
 man2/perf_event_open.2 |  9 +++++++--
 man5/proc_locks.5      |  8 ++++++--
 man7/credentials.7     | 15 ++++++++++-----
 man7/pty.7             |  5 ++++-
 5 files changed, 34 insertions(+), 12 deletions(-)

diff --git a/man2/open.2 b/man2/open.2
index 381da6235..f37ddbed0 100644
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
 .P
diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 2b2fc2596..5f68f5204 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -32,8 +32,13 @@ .SH DESCRIPTION
 Given a list of parameters,
 .BR perf_event_open ()
 returns a file descriptor, for use in subsequent system calls
-.RB ( read "(2), " mmap "(2), " prctl "(2), " fcntl "(2), etc.)."
-.P
+(\c
+.BR read (2),
+.BR mmap (2),
+.BR prctl (2),
+.BR fcntl (2),
+etc.).
+.PP
 A call to
 .BR perf_event_open ()
 creates a file descriptor that allows measuring performance
diff --git a/man5/proc_locks.5 b/man5/proc_locks.5
index cf4ff678c..63ea8c766 100644
--- a/man5/proc_locks.5
+++ b/man5/proc_locks.5
@@ -11,9 +11,13 @@ .SH DESCRIPTION
 .TP
 .I /proc/locks
 This file shows current file locks
-.RB ( flock "(2) and " fcntl (2))
+(\c
+.BR flock (2)
+and
+.BR fcntl (2))
 and leases
-.RB ( fcntl (2)).
+(\c
+.BR fcntl (2)).
 .IP
 An example of the content shown in this file is the following:
 .IP
diff --git a/man7/credentials.7 b/man7/credentials.7
index 32d8a3243..02427a9e5 100644
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
index ef8974f47..7f47ce550 100644
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

--vyqye35xd2gxt5rq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmVKhqEACgkQ0Z6cfXEm
bc75NBAAqUakR2m4LpilRQg0s3/uk7cqPy5BevJX2HVxegn7IsFzraiNX269ueuu
82ygOn2nFJvgobDBygptf02mGoViX2NacbcBgN6/7gYgeBo447/Z+pR7EjnlrHRg
Bsz/CiTH29zZX712jxq8gw0E7NMN7XAxCosFRWp1iCSe9MDPDistrgVYAfWoPDge
L5OoPlNVIO9NIZI2zJYniLaMcVDflv+G0xDzmiLe1MSWjg1ktaPzJJ81aujJt1Md
l7qI/fiy4Wgssy5nM+FGlpUlOlkTAYMAk8pDNGXDJQm5u/uFA8zPJjhgpSOUc09J
i52C2hoqTaDHaVdlWVx9AOJLSR1HY+gS3+Kmq7xhj/Fi1C3L0gwlRvVfphiiBBx9
HczhShStBirhmOLEdiETqGv0icCnOMMXmpGaVYOW32Ac/i52G17NRscCOyo9jBE9
ttX+LJgE6A7LLdQYyzXs2WpjOZhqfENh/scxacz6amAuBi0HPEIy1cO/vDjTU+yq
d5VJJNrv/fg8OG1J37w/UEWY9Sv4HcIOdZggHH/+UaMhkZ//4CjBBJbxUPINRf0o
6sotRJImEA8I9vO/jTU7PBe60iyI3Q2cugkRPUohfuvTwB2O0dl8REGnrKRifE9D
mesnSAsNUKmSh9PVq8lpe8ltIfiDN0OQqfIfZ/y1mQE8dCg5Yn4=
=LzFi
-----END PGP SIGNATURE-----

--vyqye35xd2gxt5rq--
