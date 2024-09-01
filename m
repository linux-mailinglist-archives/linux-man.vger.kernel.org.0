Return-Path: <linux-man+bounces-1759-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A8C96746C
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 05:26:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9E9E1C20EAF
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 03:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B166E1DA23;
	Sun,  1 Sep 2024 03:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="myzEUPJ1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9ED33D8
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 03:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725161185; cv=none; b=rAf3NeyP/9YLU9HqzHqOQ+L+3r+ka4bJUBbN/GrIlk80CRIVSjbyen4syuuXQncEFp9w/fVAdcmR78X09/sQ0UEHPUgpvPqtCwP4RhnPqMRXBUiTfLrV55w07fhwz0apSapP0/3F5V3A6buq5bpJ9jYrjj9CxNuoKOtIKfNeXx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725161185; c=relaxed/simple;
	bh=VnrYcVDgwlSYQW/60NwO6QkiL7ntgPMS94y9KWYuKUQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CNOJcrXnzLtyZVSwpD1lqgK5+U9SYxNexHScgB1/cbNWgQUAuTwBa8sQXZ3mIhCUhBrSPLIUgFqnWICJwrtAUPCIihrOq7DYewItwauBCMOOXa6bW6z/eDzI2qRuHgWAEawrsYEEjl2QxzC9O2KMcVwZYvU/O6uVWsg0k8kHQTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=myzEUPJ1; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2702f91b6c1so1714203fac.0
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 20:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725161183; x=1725765983; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7YXOOcKFkr1MCrm/QKIyDHb0AqdWA/aX1L4Q4wS9iQE=;
        b=myzEUPJ1IxE2OvsCLUkHsxmPbgc7NvGn9mhPnXRngJ+pmujVMXZtJTZIpZ8LaAm/XN
         N5ZJKLcVPUMHUfh8siOBjrtdbwqd8bIOtKQbZCGeiDHGb0F5OObhBHX3F8ckGsBmagqQ
         315p8Myj9nRD0P2uxRxjkeAmqVYfn7frcNk3iHZfrk3Tiy3zHaOWifopVWBzXNY0h9mU
         809LG81g33sFNMKsAllluBz1hWe75aRG1APeEDv3isVB5pIAH6HYAQbJO4bbRhhIoiqv
         +YO9nI21GR0qoK1FEorubBIJdGssCO3KG2cgwIwbh0R7tD/j/LFFj/sYQnG/1c9BHNhm
         t2iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725161183; x=1725765983;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7YXOOcKFkr1MCrm/QKIyDHb0AqdWA/aX1L4Q4wS9iQE=;
        b=dL1IouUs5ZZmIGZ9nZoYTeQodfTo+ODRoaIDJaP0TUpQCcnDEkWDOldly+rRF7jGNd
         HfxRbwItAJlxPayz1MT/dYWcYuWG0plkZud8AImOeV2VIxKUrW1C8JhFWyq6gcuDm2WS
         o+AX2eq1MMd0FtLD291jtP8sQAPCFmG+qkJeBs3N6XM5Crxg3mj1PHlLSNh8lYiqLxhC
         y9h614FwZKJ+oFsrrD+M5IAlpXnlpgT6QZ5EtQdw4azsSoqsn0+COyufLj8Mk7nKblsw
         4LQAR7Rbjp4JZ+ajyvlrE5yIhiHkZb7VwngklrDfdURBRMM7L7lfMAFgPACbS/x4kllq
         n6ag==
X-Gm-Message-State: AOJu0YyhFGo/hndGynAc19dquCfkCPORV654QJw+I19zwiNXLdlsuLAL
	QSyekfCLMoUg9Ckd98O95qwp0QCHs4UhQ0+RAXOQ2is9moB4RpnmWhc/Tg==
X-Google-Smtp-Source: AGHT+IFik8jN1o7Pke713OICYpEel5h0jUjke6lDuoBTfF+YJ8f7woWJMjlchZhk9y/zbPShyqzTFA==
X-Received: by 2002:a05:6870:e254:b0:277:7633:f51b with SMTP id 586e51a60fabf-2779332c153mr4261746fac.14.1725161182485;
        Sat, 31 Aug 2024 20:26:22 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277abd14704sm1592407fac.37.2024.08.31.20.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 20:26:22 -0700 (PDT)
Date: Sat, 31 Aug 2024 22:26:20 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 10/10] man/: srcfix (2/2)
Message-ID: <20240901032620.xuoqsae4lnijs2fc@illithid>
References: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3feuacanfbcliuas"
Content-Disposition: inline
In-Reply-To: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>


--3feuacanfbcliuas
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 10/10] man/: srcfix (2/2)
MIME-Version: 1.0

Prepare for `MR` macro migration.

Rewrite man page cross references in normally filled, adjusted text
outside of tbl(1) tables to use man(7) macros instead of troff(1) font
selection escape sequences.

$ cat fix-man-page-refs-not-in-tbl-tables.sed
	# Rewrite man page cross references in normally filled, adjusted text
	# outside of tbl(1) tables to use man(7) macros instead of troff(1) font
	# selection escape sequences.
	/^\.\\"/b
	# Case:
	# \fBgetgid\fP(2) and \fBgetegid\fP(2).
	s/^\\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\) \(.*\)/.BR \1 \2\
	\3/
	# Case:
	# Old versions of \fBxterm\fP(1), for example, from X11R5,
	s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\([^ ]\+\) \(.*\)$/\
	.BR \1 \2\3\
	\4/
	# Case:
	# and \fBgetegid\fP(2).
	s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\([^ ]\+\)$/\
	.BR \1 \2\3/
	# Case:
	# is a variant of \fBadjtimex\fP(2) that uses \fIstruct timeval32\fP,
	s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\) /\
	.BR \1 \2\
	/
	# Case:
	# use \fBpthread_mutexattr_settype\fP(3)
	s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)$/\
	.BR \1 \2/
	# Case:
	# \fBpthread_condattr_init\fP(3),
	s/\\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\([^ ]\+\)/.BR \1 \2\3/

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man2/syscalls.2                     | 16 ++++++--
 man/man3/pthread_cond_init.3            | 15 ++++---
 man/man3/pthread_condattr_init.3        |  5 ++-
 man/man3/pthread_mutex_init.3           | 10 +++--
 man/man3/pthread_mutexattr_setkind_np.3 | 10 +++--
 man/man3/uselocale.3                    |  5 ++-
 man/man4/console_codes.4                | 54 ++++++++++++++++++-------
 man/man5/core.5                         |  3 +-
 8 files changed, 81 insertions(+), 37 deletions(-)

diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
index 76c3e1ae3..64699c1c7 100644
--- a/man/man2/syscalls.2
+++ b/man/man2/syscalls.2
@@ -2116,21 +2116,29 @@ .SS "Architecture-specific details: Alpha"
 returns a pair of GID and effective GID via registers
 \fBr0\fP and \fBr20\fP; it is provided
 instead of
-\fBgetgid\fP(2) and \fBgetegid\fP(2).
+.BR getgid (2)
+and
+.BR getegid (2).
 .TP
 .BR getxpid (2)
 returns a pair of PID and parent PID via registers
 \fBr0\fP and \fBr20\fP; it is provided instead of
-\fBgetpid\fP(2) and \fBgetppid\fP(2).
+.BR getpid (2)
+and
+.BR getppid (2).
 .TP
 .BR old_adjtimex (2)
-is a variant of \fBadjtimex\fP(2) that uses \fIstruct timeval32\fP,
+is a variant of
+.BR adjtimex (2)
+that uses \fIstruct timeval32\fP,
 for compatibility with OSF/1.
 .TP
 .BR getxuid (2)
 returns a pair of GID and effective GID via registers
 \fBr0\fP and \fBr20\fP; it is provided instead of
-\fBgetuid\fP(2) and \fBgeteuid\fP(2).
+.BR getuid (2)
+and
+.BR geteuid (2).
 .TP
 .BR sethae (2)
 is used for configuring the Host Address Extension register on
diff --git a/man/man3/pthread_cond_init.3 b/man/man3/pthread_cond_init.3
index 42e7eacd1..4e35bc6a5 100644
--- a/man/man3/pthread_cond_init.3
+++ b/man/man3/pthread_cond_init.3
@@ -98,7 +98,10 @@ .SH DESCRIPTION
 the mutex \fImutex\fP is re-acquired
 and \fBpthread_cond_timedwait\fP returns the error \fBETIMEDOUT\fP.
 The \fIabstime\fP parameter specifies an absolute time,
-with the same origin as \fBtime\fP(2) and \fBgettimeofday\fP(2):
+with the same origin as
+.BR time (2)
+and
+.BR gettimeofday (2):
 an \fIabstime\fP of 0
 corresponds to 00:00:00 GMT, January 1, 1970.
 .P
@@ -168,11 +171,11 @@ .SH ERRORS
 .
 .
 .SH "SEE ALSO"
-\fBpthread_condattr_init\fP(3),
-\fBpthread_mutex_lock\fP(3),
-\fBpthread_mutex_unlock\fP(3),
-\fBgettimeofday\fP(2),
-\fBnanosleep\fP(2).
+.BR pthread_condattr_init (3),
+.BR pthread_mutex_lock (3),
+.BR pthread_mutex_unlock (3),
+.BR gettimeofday (2),
+.BR nanosleep (2).
 .
 .
 .SH EXAMPLE
diff --git a/man/man3/pthread_condattr_init.3 b/man/man3/pthread_condattr_i=
nit.3
index 0f7c60d4d..df266efe1 100644
--- a/man/man3/pthread_condattr_init.3
+++ b/man/man3/pthread_condattr_init.3
@@ -23,7 +23,8 @@ .SH SYNOPSIS
 .SH DESCRIPTION
 Condition attributes can be specified at condition creation time,
 by passing a condition attribute object
-as second argument to \fBpthread_cond_init\fP(3).
+as second argument to
+.BR pthread_cond_init (3).
 Passing \fBNULL\fP is equivalent to
 passing a condition attribute object
 with all attributes set to their default values.
@@ -45,4 +46,4 @@ .SH "RETURN VALUE"
 .
 .
 .SH "SEE ALSO"
-\fBpthread_cond_init\fP(3).
+.BR pthread_cond_init (3).
diff --git a/man/man3/pthread_mutex_init.3 b/man/man3/pthread_mutex_init.3
index 1c743ce97..224a990a5 100644
--- a/man/man3/pthread_mutex_init.3
+++ b/man/man3/pthread_mutex_init.3
@@ -60,7 +60,9 @@ .SH DESCRIPTION
 The kind of a mutex determines
 whether it can be locked again by a thread that already owns it.
 The default kind is ``fast''.
-See \fBpthread_mutexattr_init\fP(3) for more information on mutex attribut=
es.
+See
+.BR pthread_mutexattr_init (3)
+for more information on mutex attributes.
 .P
 Variables of type \fBpthread_mutex_t\fP can also be initialized statically,
 using the constants
@@ -207,9 +209,9 @@ .SH ERRORS
 .
 .
 .SH "SEE ALSO"
-\fBpthread_mutexattr_init\fP(3),
-\fBpthread_mutexattr_setkind_np\fP(3),
-\fBpthread_cancel\fP(3).
+.BR pthread_mutexattr_init (3),
+.BR pthread_mutexattr_setkind_np (3),
+.BR pthread_cancel (3).
 .
 .
 .SH EXAMPLE
diff --git a/man/man3/pthread_mutexattr_setkind_np.3 b/man/man3/pthread_mut=
exattr_setkind_np.3
index 11a24e83f..9b5399da0 100644
--- a/man/man3/pthread_mutexattr_setkind_np.3
+++ b/man/man3/pthread_mutexattr_setkind_np.3
@@ -25,8 +25,10 @@ .SH SYNOPSIS
 .
 .SH DESCRIPTION
 These functions are deprecated,
-use \fBpthread_mutexattr_settype\fP(3)
-and \fBpthread_mutexattr_gettype\fP(3)
+use
+.BR pthread_mutexattr_settype (3)
+and
+.BR pthread_mutexattr_gettype (3)
 instead.
 .
 .
@@ -51,5 +53,5 @@ .SH ERRORS
 .
 .
 .SH "SEE ALSO"
-\fBpthread_mutexattr_settype\fP(3),
-\fBpthread_mutexattr_gettype\fP(3).
+.BR pthread_mutexattr_settype (3),
+.BR pthread_mutexattr_gettype (3).
diff --git a/man/man3/uselocale.3 b/man/man3/uselocale.3
index 7ef33ca25..315d9d255 100644
--- a/man/man3/uselocale.3
+++ b/man/man3/uselocale.3
@@ -42,7 +42,10 @@ .SH DESCRIPTION
 .I newloc
 argument can have one of the following values:
 .TP
-A handle returned by a call to \fBnewlocale\fP(3) or \fBduplocale\fP(3)
+A handle returned by a call to
+.BR newlocale (3)
+or
+.BR duplocale (3)
 The calling thread's current locale is set to the specified locale.
 .TP
 The special locale object handle \fBLC_GLOBAL_LOCALE\fP
diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index a12d21660..3d86df444 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -580,7 +580,8 @@ .SS Mouse tracking
 daemon.
 .P
 The mouse tracking escape sequences generated by
-\fBxterm\fP(1) encode numeric parameters in a single character as
+.BR xterm (1)
+encode numeric parameters in a single character as
 \fIvalue\fP+040.
 For example, \[aq]!\[aq] is 1.
 The screen coordinate system is 1-based.
@@ -588,7 +589,9 @@ .SS Mouse tracking
 The X10 compatibility mode sends an escape sequence on button press
 encoding the location and the mouse button pressed.
 It is enabled by sending ESC [ ? 9 h and disabled with ESC [ ? 9 l.
-On button press, \fBxterm\fP(1) sends
+On button press,
+.BR xterm (1)
+sends
 ESC [ M \fIbxy\fP (6 characters).
 Here \fIb\fP is button\-1,
 and \fIx\fP and \fIy\fP are the x and y coordinates of the mouse
@@ -600,7 +603,9 @@ .SS Mouse tracking
 Modifier information is also sent.
 It is enabled by sending ESC [ ? 1000 h and disabled with
 ESC [ ? 1000 l.
-On button press or release, \fBxterm\fP(1) sends ESC [ M
+On button press or release,
+.BR xterm (1)
+sends ESC [ M
 \fIbxy\fP.
 The low two bits of \fIb\fP encode button information:
 0=3DMB1 pressed, 1=3DMB2 pressed, 2=3DMB3 pressed, 3=3Drelease.
@@ -674,14 +679,18 @@ .SS Comparisons with other terminals
 the DEC special character and line drawing set, UK, and US-ASCII,
 respectively.
 .P
-The user can configure \fBxterm\fP(1) to respond to VT220-specific
+The user can configure
+.BR xterm (1)
+to respond to VT220-specific
 control sequences, and it will identify itself as a VT52, VT100, and
 up depending on the way it is configured and initialized.
 .P
 It accepts ESC ] (OSC) for the setting of certain resources.
 In addition to the ECMA-48 string terminator (ST),
-\fBxterm\fP(1) accepts a BEL to terminate an OSC string.
-These are a few of the OSC control sequences recognized by \fBxterm\fP(1):
+.BR xterm (1)
+accepts a BEL to terminate an OSC string.
+These are a few of the OSC control sequences recognized by
+.BR xterm (1):
 .TS
 l l.
 ESC ] 0 ; \fItxt\fP ST	T{
@@ -730,7 +739,9 @@ .SS Comparisons with other terminals
 .P
 .B CSI Sequences
 .P
-Old versions of \fBxterm\fP(1), for example, from X11R5,
+Old versions of
+.BR xterm (1),
+for example, from X11R5,
 interpret the blink SGR as a bold SGR.
 Later versions which implemented ANSI colors, for example,
 XFree86 3.1.2A in 1995, improved this by allowing
@@ -741,13 +752,17 @@ .SS Comparisons with other terminals
 the X11R6.8 release, which incorporated XFree86 xterm.
 All ECMA-48 CSI sequences recognized by Linux are also recognized by
 .IR xterm ,
-however \fBxterm\fP(1) implements several ECMA-48 and DEC control sequences
+however
+.BR xterm (1)
+implements several ECMA-48 and DEC control sequences
 not recognized by Linux.
 .P
-The \fBxterm\fP(1)
+The
+.BR xterm (1)
 program recognizes all of the DEC Private Mode sequences listed
 above, but none of the Linux private-mode sequences.
-For discussion of \fBxterm\fP(1)'s
+For discussion of
+.BR xterm (1)'s
 own private-mode sequences, refer to the
 \fIXterm Control Sequences\fP
 document by
@@ -773,7 +788,9 @@ .SS Comparisons with other terminals
 .RE
 .P
 demonstrates many of these control sequences.
-The \fBxterm\fP(1) source distribution also contains sample
+The
+.BR xterm (1)
+source distribution also contains sample
 scripts which exercise other features.
 .SH NOTES
 ESC 8 (DECRC) is not able to restore the character set changed with
@@ -796,15 +813,22 @@ .SH BUGS
 In particular, those ending with ] do not use a standard terminating
 character.
 The OSC (set palette) sequence is a greater problem,
-since \fBxterm\fP(1) may interpret this as a control sequence
+since
+.BR xterm (1)
+may interpret this as a control sequence
 which requires a string terminator (ST).
-Unlike the \fBsetterm\fP(1) sequences which will be ignored (since
+Unlike the
+.BR setterm (1)
+sequences which will be ignored (since
 they are invalid control sequences), the palette sequence will make
-\fBxterm\fP(1) appear to hang (though pressing the return-key
+.BR xterm (1)
+appear to hang (though pressing the return-key
 will fix that).
 To accommodate applications which have been hardcoded to use Linux
 control sequences,
-set the \fBxterm\fP(1) resource \fBbrokenLinuxOSC\fP to true.
+set the
+.BR xterm (1)
+resource \fBbrokenLinuxOSC\fP to true.
 .P
 An older version of this document implied that Linux recognizes the
 ECMA-48 control sequence for invisible text.
diff --git a/man/man5/core.5 b/man/man5/core.5
index 7f074ea14..011e94e47 100644
--- a/man/man5/core.5
+++ b/man/man5/core.5
@@ -178,7 +178,8 @@ .SS Naming of core dump files
 Numeric real GID of dumped process.
 .TP
 %h
-Hostname (same as \fInodename\fP returned by \fBuname\fP(2)).
+Hostname (same as \fInodename\fP returned by
+.BR uname (2)).
 .TP
 %i
 TID of thread that triggered core dump,
--=20
2.30.2

--3feuacanfbcliuas
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbT3twACgkQ0Z6cfXEm
bc7FLw//YlqXmgtawedbEYWSQGBheR0ldkNL16/41qGqCzCY4GiqrdIMeHhPWJcQ
qRSwGiaAxLo8fnkNOwI25nrcAdfkHGfGTZBaNT438JTlw8Pj6ACEapi7n5evoY41
lNKYKAtv6rEmUMo47M2LTdjOMjHlgbWMvlDyUpHFf5F5hY7Q7Vqk0ysEGZDX0IHu
5FUeB4UKuwV2tupa4ZOaTBIBWMJrn2jTKenI9mxy//aUyPwmOAT85Tu89c17X7YN
5njXOPUKJNCRRZVtMc2i5RHmVoT7FsJvuCIEnrOFtItZzhKdJ1E7jN9H89d+S2Um
saDMcA9TMFZS5MbnjdFdy7qhU6CM6D6sC8P3KuHH5OesMC/dlWFANhnY9X7ojz5B
wzfH3ArBRIyD5Q9n8Ing1y4pe5DT0nNkywfE4zvQ5ZfYXoX7XVNYtWY/Luw2HJm8
GeZ6OKpQL6hKwKh64F+NegnqGHRot0mLJRfakFk0WvewthgcAxY1V6WsW3DOaRJl
dMxaB95LuAkAk4QXBJs2BQfvJnWjQ5meG3y2YTLrK3spBNuIn6WZFfT3K7U1vB+y
ON2cpGX5ogeISm6FW17Y0gvXilAqx5Sr0iPWOmp5I1iG4Qc4MiJrvYyrFqSnNKxS
Q7+TDiDPhwUY3NTG4dcquKxmzWsQq/c/6W69lec+vLTKMHqQAF0=
=kgfx
-----END PGP SIGNATURE-----

--3feuacanfbcliuas--

