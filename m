Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D029A1A70D
	for <lists+linux-man@lfdr.de>; Sat, 11 May 2019 09:21:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727831AbfEKHVF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 May 2019 03:21:05 -0400
Received: from mail-pf1-f169.google.com ([209.85.210.169]:40753 "EHLO
        mail-pf1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726849AbfEKHVE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 May 2019 03:21:04 -0400
Received: by mail-pf1-f169.google.com with SMTP id u17so4405402pfn.7
        for <linux-man@vger.kernel.org>; Sat, 11 May 2019 00:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JnCOHSR66vdVPGLgu/N56uYJJgjRenJctcWL9x851PU=;
        b=mwENelGmt0ssD9c/bHJr+IjBH1ffeeQs19EpsWe+aZDLdxhkZZzDWxHRELNBZefE74
         oAqdY0Sx2Wntxwq+NNav3X6Eej5vr1IN7y+gaUUXLVtckO4cst3h+Uj4SWjbO/aFKi9N
         7rIE0wdY6Hh6ZpZYPPu89UCBqtywtUsnUfVcFE2DNnQAuBGBIjH25LLgusv0SUiPvN2g
         12ryoPrgixdxdWd1WC0xWvTeZLzSTui9ghWaer5zaFn3Nw/lU86luU1uV+w4hVRofV8s
         AgsF/Dy5A9Q+F4Rgn8mAjpSOgIUhyhGQcr91tspjmMkIC28LEB3mOphP+KcDt2P1XpQU
         QMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JnCOHSR66vdVPGLgu/N56uYJJgjRenJctcWL9x851PU=;
        b=OuL81XCxb3eaP3TDMmTjeFQdeXN07bjCHZAUPjA8lbC9Ys4Y1mUt0Dh/6ZHrGkLQ14
         QEiotwEJl5GJeq6lZD03R0b7vVKrHFOdV6ZbIsRa6MfsJ5ToDuvY/seF2yxJuwqf/w6K
         je1A2xJaO1EKlW+nuNHuV70NeE2GtsupkCTUT3evPRI9x23IYXQbtSQijUbxFzCfdjhk
         so/mse9O0zpZuaUgi2wrIrF1/3I9wzyQmbY3AUClG7dH+Z29JSWrenbMW3+Mx5WyshSO
         8vwmEVGK89PLXbQxpDURwEH2+0I7RWu3NwKW/v+AgObnUoTYNRKNroMbm9HwAQfiIbCl
         SprA==
X-Gm-Message-State: APjAAAWtp62Uv5v/uLzxhOCUg/UJidym/OeTOW259Chl9MdnLhhoY9OK
        TPvBMtF7j9YUrlRLmRLdois=
X-Google-Smtp-Source: APXvYqxMaM/EXHY0YqnMh3pHI6599s3UpaQUlNh3nASiz4JxmRK40RYjEuZkdA7W4Gevun1bQtTJBg==
X-Received: by 2002:a63:d347:: with SMTP id u7mr18962624pgi.254.1557559263743;
        Sat, 11 May 2019 00:21:03 -0700 (PDT)
Received: from localhost.localdomain ([1.144.144.86])
        by smtp.gmail.com with ESMTPSA id r9sm7618271pfc.173.2019.05.11.00.20.54
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 11 May 2019 00:21:02 -0700 (PDT)
Date:   Sat, 11 May 2019 17:20:52 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] pldd.1: Document glibc's unbreakage of tool.
Message-ID: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3jafyofmn22qvrgx"
Content-Disposition: inline
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--3jafyofmn22qvrgx
Content-Type: multipart/mixed; boundary="rmlfq7rrptpr7inz"
Content-Disposition: inline


--rmlfq7rrptpr7inz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

...plus a patch with some suggested wording fixes.

...plus a patch with some suggestions on improving the formatting and
markup.

Regards,
Branden

--rmlfq7rrptpr7inz
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-pldd.1-Document-glibc-s-unbreakage-of-tool.patch"
Content-Transfer-Encoding: quoted-printable

=46rom fddc56cb731f711143bad6202210d974ace7b7fe Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Sat, 11 May 2019 16:25:54 +1000
Subject: [PATCH 1/3] pldd.1: Document glibc's unbreakage of tool.

glibc 2.30 isn't released yet, but a fix has been committed, and Debian
has even cherry-picked it for Debian GNU/Linux 10 ("buster").  pldd
works nicely now.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/pldd.1 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man1/pldd.1 b/man1/pldd.1
index 90e259989..dab6cb32c 100644
--- a/man1/pldd.1
+++ b/man1/pldd.1
@@ -97,11 +97,11 @@ $ \fBgdb \-ex "set confirm off" \-ex "set height 0" \-e=
x "info shared" \e\fP
 .EE
 .in
 .SH BUGS
-Since glibc 2.19,
+From glibc 2.19 to 2.29,
 .B pldd
-is broken: it just hangs when executed.
-.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=3D18035
-It is unclear if it will ever be fixed.
+was broken: it just hung when executed.
+.\" glibc commit 1a4c27355e146b6d8cc6487b998462c7fdd1048f
+This problem was fixed in glibc 2.30.
 .SH EXAMPLE
 .EX
 $ \fBecho $$\fP               # Display PID of shell
--=20
2.20.1


--rmlfq7rrptpr7inz
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0002-pldd.1-wfix.patch"
Content-Transfer-Encoding: quoted-printable

=46rom d1ee216ecb3400c2f14aed4a8689b34ec9d2d3da Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Sat, 11 May 2019 16:30:10 +1000
Subject: [PATCH 2/3] pldd.1: wfix

* Establish the abbreviations DSO and PID in the lead paragraph since
  they are used later.
* Parallelize descriptions of help, usage, and version options with the
  "and exit" language used in getent(1), iconv(1), locale(1),
  localedef(1), memusage(1), memusagestat(1), mtrace(1), pldd(1),
  sprof(1), time(1), iconvconfig(8), zdump(8), and zic(8).

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/pldd.1 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man1/pldd.1 b/man1/pldd.1
index dab6cb32c..035368e20 100644
--- a/man1/pldd.1
+++ b/man1/pldd.1
@@ -33,20 +33,20 @@ pldd \- display dynamic shared objects linked into a pr=
ocess
 .SH DESCRIPTION
 The
 .B pldd
-command displays a list of the dynamic shared objects that are
-linked into the process with the specified process ID.
+command displays a list of the dynamic shared objects (DSOs) that are
+linked into the process with the specified process ID (PID).
 The list includes the libraries that have been dynamically loaded using
 .BR dlopen (3).
 .SH OPTIONS
 .TP
 .BR \-? ", " \-\-help
-Display program help message.
+Display a help message and exit.
 .TP
 .B \-\-usage
-Display a short usage message.
+Display a short usage message and exit.
 .TP
 .BR \-V ", " \-\-version
-Display the program version.
+Display program version information and exit.
 .SH EXIT STATUS
 On success,
 .B pldd
--=20
2.20.1


--rmlfq7rrptpr7inz
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0003-pldd.1-srcfix-ffix-wfix-wsfix.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 9285fe1b80cfbb52cfeff33372338a8c4728d47b Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Sat, 11 May 2019 16:38:39 +1000
Subject: [PATCH 3/3] pldd.1: srcfix, ffix, wfix, wsfix

* [srcfix] Migrate Synopsis section from no-fill mode to no-adjust mode.
  This way you can break the pieces of a synopsis output line across
  multiple input lines, use the easy one-font macros, and worry less
  about quotation issues.  (My best recommendation would be to go ahead
  and use groff_man's .SY/.YS extensions--but not .OP--for synopsis
  sections, but I think this was considered and rejected a couple of
  years ago.)

* [wfix] Actually list the available options in the synopsis.  There
  aren't many for pldd and they won't even line-wrap on an 80-column
  terminal.  (not technically a ffix)

* [srcfix] Use .RS for indentation instead of low-level .in requests.
  It's my belief that .RS and .RE pairs require less bookkeeping.

* [srcfix] Use \c (the output line continuation escape) in examples to
  facilitate style (bold, italic) changes within a line.  The result is
  more attractive and intuitive, particularly enabling italicization of
  paramaters in examples.

* [srcfix] Use font macros instead of font escapes in examples.  This is
  more readable, and helped to expose the next problem.

* [ffix] Consistently escape all hyphens used as option dashes in gdb
  example.

* [wsfix] Eliminate hard tab from input file, replacing it (in an
  example) with an appropriate number of non-adjustable spaces.
  (Whether this is a srcfix or wsfix depends on the output device and
  user configuration, which is, I submit, why we don't want to use hard
  tabs in the first place.)

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/pldd.1 | 48 +++++++++++++++++++++++++++++++-----------------
 1 file changed, 31 insertions(+), 17 deletions(-)

diff --git a/man1/pldd.1 b/man1/pldd.1
index 035368e20..33245d0d5 100644
--- a/man1/pldd.1
+++ b/man1/pldd.1
@@ -26,10 +26,15 @@
 .SH NAME
 pldd \- display dynamic shared objects linked into a process
 .SH SYNOPSIS
-.nf
-.BI "pldd " "pid"
-.BI pldd " option"
-.fi
+.na
+.B pldd
+.I pid
+.PP
+.B pldd
+.RB [ \-? | \-\-help ]
+.RB [ \-\-usage ]
+.RB [ \-V | \-\-version ]
+.ad
 .SH DESCRIPTION
 The
 .B pldd
@@ -71,14 +76,17 @@ have a similar command.
 .SH NOTES
 The command
 .PP
-.in +4n
+.RS 4n
 .EX
-lsof \-p PID
+$ \c
+.B lsof \-p \c
+.I pid
 .EE
-.in
+.RE
 .PP
 also shows output that includes the dynamic shared objects
-that are linked into a process.
+that are linked into the process
+.IR pid .
 .PP
 The
 .BR gdb (1)
@@ -87,15 +95,19 @@ command also shows the shared libraries being used by a=
 process,
 so that one can obtain similar output to
 .B pldd
 using a command such as the following
-(to monitor the process with the specified
-.IR pid ):
+(to monitor the process with the specified PID):
 .PP
-.in +4n
+.RS 4n
 .EX
-$ \fBgdb \-ex "set confirm off" \-ex "set height 0" \-ex "info shared" \e\=
fP
-        \fB-ex "quit" \-p $pid | grep '^0x.*0x'\fP
+$ \c
+.B gdb \-ex "set confirm off" \-ex "set height 0" \-ex "info shared" \e
+.RS 8n
+.B \-ex quit \-p \c
+.I pid \c
+.B | grep \(aq\(ti0x.*0x\(aq
+.RE
 .EE
-.in
+.RE
 .SH BUGS
 From glibc 2.19 to 2.29,
 .B pldd
@@ -104,10 +116,12 @@ was broken: it just hung when executed.
 This problem was fixed in glibc 2.30.
 .SH EXAMPLE
 .EX
-$ \fBecho $$\fP               # Display PID of shell
+$ \c
+.BR "echo $$" "              # Display PID of the running shell."
 1143
-$ \fBpldd $$\fP               # Display DSOs linked into the shell
-1143:	/usr/bin/bash
+$ \c
+.BR "pldd $$" "              # Display DSOs linked into the shell."
+1143:\ \ \ /usr/bin/bash
 linux\-vdso.so.1
 /lib64/libtinfo.so.5
 /lib64/libdl.so.2
--=20
2.20.1


--rmlfq7rrptpr7inz--

--3jafyofmn22qvrgx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAlzWd8kACgkQ0Z6cfXEm
bc75AA/+OV9U+B32lDCU69GeizOYwzVYCQkYzIXX4zlquNfAE6H6xOJqWjp7IWCX
lOrRmrmCgupNP0G/vooZAOyj+hdcIC0RNN/gRopS6qJQHHm7EXRU84urP1Vk04I2
OrE2fIj4yJgzZhUVx8zU6nDjp9OxAeSB75JAcPi8K1wg9E8+mjEIYROTzLE5M7EL
v/wzagFuJjdLbL/snHlBFPFzNuJZVqW1jJZQjmpiALeJE9nAuFz+TuFg1VxyjfS+
sV6Sf7Dzzrb0LykbjtrkdHc/2TW9yJA+4ny8ouwO1+jSJC8UPL3Uz3WxwBeDr53r
+SPkplVzZ7MHp9aEni7AJeAMlib5dREsWv0MNCe2Qj+xvUwGOV4fjw5Fz+bVAtU4
SDVuFTrOcByHP6mGeoFmlHPufuSCn8V7dPRwbrh0HfRJkcLcBb7Vra6bcNJn3DDY
ZJ199RiFha45YuhoFPF4a4eytjfdjroBTk5dmvRIAHufabAaoCh8+1gWLe81bWRu
D1JwjttJoZmZW9hy2qn+GRAIpXXvLw8lSq7np/RKDG5yfZ4+nt3beEIB8evBe8Is
M+OE977U9y2IaN1FhXNsXlOSwmhNJZFpwXXNcpZXJLMn6tqY4KmcQRR160FEITRG
+EQ4JBpa+TGL9hh2saTTYMvvHZ123tMKqpt9XHCSzyWQX861l3g=
=8SuR
-----END PGP SIGNATURE-----

--3jafyofmn22qvrgx--
