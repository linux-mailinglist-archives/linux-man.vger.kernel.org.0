Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE9E97E4842
	for <lists+linux-man@lfdr.de>; Tue,  7 Nov 2023 19:31:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232861AbjKGSbw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Nov 2023 13:31:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229664AbjKGSbw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Nov 2023 13:31:52 -0500
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE5E3125
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 10:31:49 -0800 (PST)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-1ea48ef2cbfso3631779fac.2
        for <linux-man@vger.kernel.org>; Tue, 07 Nov 2023 10:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699381909; x=1699986709; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=omwDtFJvmwxYjADmRdZOjOQ/RTIHFz520IXwy2g+g1c=;
        b=X1o9hPO5elxuw3gz6oxUYsp75Ehw3ZuSNS9sNS+IcfmIi9yCP63vPwmSmcnodZmPMX
         Mpii1H7z/TNr+PGKuJRFwPimicsWz7Gj3GJqOrYlRHKO9QMvYEnsxqjL5vjVBB9nh17u
         eLa+golsOcH+SLDreeKQoqXNdK271NtPDp3nlQ6b/wx38f0oDQUcOMk7+b5PAlgVH8jr
         ZLk+lPVOBhTXAnFL86wupPEsPRlbbdLkblzQBnJ+qkKAEbo+VN0sv//AnJQzz5wkNqGj
         rnRCj+Op5OPaD+QhJUKrZFUdN+l8p3XdQN8aoGqbhsSzzwOIIU8j2tjhsgMDA14ARTvt
         iR6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699381909; x=1699986709;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=omwDtFJvmwxYjADmRdZOjOQ/RTIHFz520IXwy2g+g1c=;
        b=oVUwtDZRtOYXTbNPtjQZYkDrIHyhtfLFofZKEDG5W7dTDFT/LF2oD4ILSk0LI0mhVS
         nVm1L9IuUicd8hOrUGG9eZpZ8QX1PssZLFf8zoooXmRBgv40ohZV0f1fCyLBXoTCB2/r
         fHdQPe+vGEr/EfpEcTY4so9uS6shkH3mjk8uxK6yu514TFFoBXE7hYcUU9Rod3z1C3Nl
         w1dZJJuVHOl81TevQ6hAsfumcfeiYiJTAfv14mluyUXkuuishtQlrdT93oKorYlCvQvs
         WMdmgREkpSqgvR+KsXJ4PkkDmAYR25cKWuqN9vDOS6VQyPO5IfvwOJ5KnMH/PhjcYEWP
         OrmQ==
X-Gm-Message-State: AOJu0Yxw6PfqC29PzYXDxG+tRR5evcltd3iArfxxnlHli5HHiITP5fio
        yAUBQHiCO8+JC0Z5HsEYy8ve8E8fgrk=
X-Google-Smtp-Source: AGHT+IHbq1b2vKA/8KhHB0ky75emYLndYA8EukgBvoa0+Mo779Egz/3xno/JvhYhRt60vGWYErQpPw==
X-Received: by 2002:a05:6871:458a:b0:1e9:b495:bd0 with SMTP id nl10-20020a056871458a00b001e9b4950bd0mr321099oab.8.1699381909044;
        Tue, 07 Nov 2023 10:31:49 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v2-20020a056830140200b006d2d1dd16aesm1627110otp.33.2023.11.07.10.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 10:31:47 -0800 (PST)
Date:   Tue, 7 Nov 2023 12:31:44 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5] man*/: srcfix
Message-ID: <20231107183144.a4ieq3dy5ukvvzb6@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="e2m7shhtcxsiqki6"
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--e2m7shhtcxsiqki6
Content-Type: multipart/mixed; boundary="etcxtyobkascpp5v"
Content-Disposition: inline


--etcxtyobkascpp5v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR.sed".

Format only one man page cross reference per input line.

Also, groff 1.23.0's (and Plan 9 from User Space's) `MR` is not a font
style alternation macro; there is no "reversed" form as with `BR` and
`RB`.  So when a man page cross reference must be immediately preceded
by punctuation, put that punctuation on the previous text line and use
the `\c` escape sequence to connect them.

With this decoupling accomplished, "MR.sed" can be run at any fortuitous
time on all but a few pages (see below).

As a preview and yet another heads-up, I am also attaching the "MR.sed"
script and the commit message that I prepared to accompany the change it
makes.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

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
 man5/proc_locks.5      | 10 ++++++----
 man7/credentials.7     | 15 ++++++++++-----
 man7/pty.7             |  5 ++++-
 5 files changed, 34 insertions(+), 14 deletions(-)

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

--etcxtyobkascpp5v
Content-Type: text/plain; charset=us-ascii
Content-Description: MR.sed
Content-Disposition: attachment; filename="MR.sed"

# Handle simplest cases: ".BR foo (1)" and ".IR foo (1)".
s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))$/.MR \2 \3/
# Handle case: trailing punctuation, as in ".IR foo (1),".
s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))\([^[:space:]]\+\)$/.MR \2 \3 \4/
# Handle case: leading punctuation, as in ".RI ( foo (1)".
s/^.R[BI] \(\\%\)*\([^[:space:]]\+\) \([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))\([^[:space:]]\+\)$/\\%\2\\c\n.MR \3 \4 \5/
# Handle case: 3rd+ arguments or trailing comments.  This case is rare
# and will require manual fixup if there are 4+ arguments to MR.  Use
# groff -man -rCHECKSTYLE=1 to have them automatically reported.
s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-8a-z]\+\))\( .*\)/.MR \2 \3\4/

--etcxtyobkascpp5v
Content-Type: text/plain; charset=us-ascii
Content-Description: MR-BIG
Content-Disposition: attachment; filename=MR-BIG

man*/: ffix (migrate to `MR`)

Use the man(7) macro `MR`, new to groff 1.23.0, instead of font style
alternation macros to mark up man page cross reference.

Depending on your configuration of groff man(7), this change may also
alter the typeface that is used to mark up man page topic names (that
is, the "ls" in "ls(1)".  groff by default sets these italics (which
often appear underlined on terminals), in concord with the original AT&T
Unix troff man(7) implementation in 1979.  A motivational excursus is
available.[1]  To change this typeface selection, see the end of this
commit message.

Background (from the groff 1.23.0 release announcement and "NEWS" file):

o The an (man) macro package supports a new macro, `MR`, intended for
  use by man page cross references in preference to the font style
  alternation macros historically used.  Where before you would write
    .BR ls (1).
  or
    .IR ls (1).
  you should now write
    .MR ls 1 .
  (the third argument, typically used for trailing punctuation, is
  optional).  Because the macro semantically identifies a man page, it
  can create a clickable hyperlink ("man:ls(1)" for the above example)
  on supporting devices.  Furthermore, a new string, `MF`, defines the
  font to be used for setting the man page topic (the first argument to
  `MR` and `TH`), permitting configuration by distributions, sites, and
  users.

  Inclusion of the `MR` macro was prompted by its introduction to
  Plan 9 from User Space's troff in August 2020.  Its purpose is to
  ameliorate several long-standing problems with man page cross
  references: (1) the package's lack of inherent hyperlink support for
  them; (2) false-positive identification of strings resembling man page
  cross references (as can happen with "exit(1)", "while(1)",
  "sleep(5)", "time(0)" and others) by terminal emulators and other
  programs; (3) the unwanted intrusion of hyphens into man page topics,
  which frustrates copy-and-paste operations (this problem has always
  been avoidable through use of the \% escape sequence, but cross
  references are frequent in man pages and some page authors are
  inexpert *roff users); and (4) deep divisions in man page maintenance
  communities over which typeface should be used to set the man page
  topic (italics, roman, or bold).
[...]
o The an (man) macro package can now produce clickable hyperlinks within
  terminal emulators, using the OSC 8 support added to grotty(1) (see
  below).  The groff man(7) extension macros `UR` and `MT`, present
  since 2007, expose this feature.  At present the feature is disabled
  by default in `man.local` pending more widespread recognition of OSC 8
  sequences in pager programs.  The package now recognizes a `U`
  register to enable hyperlinks in any output driver supporting them.

  Use a command like
    printf '\033]8;;man:grotty(1)\033\\grotty(1)\033]8;;\033\\\n' | more
  to check your terminal and pager for OSC 8 support.  If you see
  "grotty(1)" and no additional garbage characters, then you may wish to
  edit "man.local" to remove the lines that disable this feature.

When the text of all Linux man-pages documents (excluding those
containing only `so` requests) is dumped, with adjustment mode 'l'
("-dAD=l") and automatic hyphenation disabled ("-rHY=0") before and
after this change, there is no change to rendered output.

When automatic hyphenation is enabled, this change suppresses
hyphenation of approximately 3,100+ man page names when cross referenced
when using the default terminal width of 80 (meaning that the text
is formatted for a line length of 78 for historical reasons).

I prepared this change with the following GNU sed script.

\# Handle simplest cases: ".BR foo (1)" and ".IR foo (1)".
s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))$/.MR \2 \3/
\# Handle case: trailing punctuation, as in ".IR foo (1),".
s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))\([^[:space:]]\+\)$/.MR \2 \3 \4/
\# Handle case: leading punctuation, as in ".RI ( foo (1)".
s/^.R[BI] \(\\%\)*\([^[:space:]]\+\) \([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))\([^[:space:]]\+\)$/\\%\2\\c\n.MR \3 \4 \5/
\# Handle case: 3rd+ arguments or trailing comments.  This case is rare
\# and will require manual fixup if there are 4+ arguments to MR.  Use
\# groff -man -rCHECKSTYLE=1 to have them automatically reported.
s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-8a-z]\+\))\( .*\)/.MR \2 \3\4/

(The sed comment characters are escaped because they are also comments
in Git commit messages.)

$ sed -i -f MR.sed man*/*

Confirm no errors arising in the `MR` argument count as follows.

$ groff --version | head -n 1
GNU groff version 1.23.0
$ groff -z -t -rCHECKSTYLE=1 -m andoc -T utf8 -P -cbou \
  $(grep -L '^\.so ' man*/* | sort) 2>&1 | grep -q MR \
  || echo "IT'S CLEAN"
IT'S CLEAN

To get the man page topic names to render in bold again as the Linux
man-pages have historically done, set the *roff "MF" string to "B".

1.  man-db man(1) supports an environment variable for passing options
    to the formatter.

      MANROFFOPT="-dMF=B"

    You might wish to set this in your shell startup file and export the
    variable.

2.  When rendering pages directly with groff, nroff, or troff, you can
    set the string on the command line.

      nroff -dMF=B -mandoc man1/getent.1

3.  You can set this string in groff man(7)'s site-local configuration
    file.  Its location depends on groff's build-time parameters, but is
    documented in the groff_man(7) page.  On Debian-based systems, it's
    in /etc/groff/man.local.  Add the following line (with no leading
    spaces).

      .ds MF B\"

   (The trailing '\"' is a safety measure.[2])

[1] https://lore.kernel.org/linux-man/20230803175738.dqpxy3dirl3bpznv@illithid/T/#u
[2] https://www.gnu.org/software/groff/manual/groff.html.node/Strings.html

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

--etcxtyobkascpp5v--

--e2m7shhtcxsiqki6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmVKgogACgkQ0Z6cfXEm
bc73KBAApBkZUBFdJ7RMP0+V6LW41kMsGFXM52FErcgxZshb+KO/3C/A66j40NOl
CJmaHeVLVEcRiXmFRHKCo0SpTOq3eaJUXFb6oIctmCJLDYogvZ6bW/Mf5NeHNQz8
EstneiSOptlRAf+f6sg7YHr4Yi0KSWadrDQes2RrDfrAmZtBZhab64HldK8SZX/9
0wzBE1O8OYlI6B2Htk0t2CjykYUkQU5EHY5Nn2YR/w7GMV4p2swH7/wTs6DYG2W2
8uYdUYu5Ws9OnLKIkVTt/0uM3CyHRFN5ddcUYyyDwdgdKnQaM6jTZ+Cgf8RCEF6R
QT42A2KQIsr3HucEpWWXt7mwexFwvcJwcWR7bkhy7bbc34+ItyzBZcPcK81I6Bfn
dbE/H0QCkZZgvSRN86JJlBw4p+egqA7ISKSleha7jlaxsivdao2UBlo2GWeFXK3E
q6XtLL/Ogei3hKw1PleQHIuG+Kby9FMJ6kst5cZ0jRL1H2HLruGNl2h4Kjrs07Ng
JrmRzI7JwS1ktGOlDEu/ZSIOINR+W4LZ8vbitWVt46jprKHOgRboiLA8woT6n+oD
rOQdPLKRinfC+hl0d49tPAuaN8UgSjsJlNdrks92kXHf1ekmASZlpNRddnteRHmS
H9Tpf4pIYrLo7YnW7HVD0JYB4q/YsqMhAGy7rMmfICHm/gTeBfk=
=llq3
-----END PGP SIGNATURE-----

--e2m7shhtcxsiqki6--
