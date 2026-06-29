Return-Path: <linux-man+bounces-5671-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Og2pFJt8QmqA8QkAu9opvQ
	(envelope-from <linux-man+bounces-5671-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 16:09:31 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 015E76DBC61
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 16:09:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=zytor.com header.s=2026062701 header.b="vcQ/YDQ3";
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5671-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="linux-man+bounces-5671-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=zytor.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A56F530347FF
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 14:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDF8F32B118;
	Mon, 29 Jun 2026 13:59:35 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F25833122D
	for <linux-man@vger.kernel.org>; Mon, 29 Jun 2026 13:59:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782741575; cv=none; b=QATpLPYZC/J5Js88NeAfzEbC5kk1WaPe6Gb+JE0ZK3xijqp7vbrvbGjbE6wbADBp/AkbFWXMcEExm3XbjLGI+CZ56vMkb+DTllMcmw1+9MsRHJ5kux9DGjQx998FKt1XHFiNR4pzVYDLE14bqxgJyroio8hDVo5F/Lv5WFHwXyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782741575; c=relaxed/simple;
	bh=hhfLp1kVLibgfUDvARwmOC1wVp5cm75M74+30oDrU9U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vb+a3zpB6S4e5YcUZAnGtv8Q5uiBz5PRj2wY/o4BypdoJr5WLZ/TponulygPwXb4KebYDSQOdCa+kATOkh9LVHkLmQnx8KNSXAYnMYwi1RygddhovmdolVxsWZwrrTffJURP/S4aKIiezaI5l2auJ/eCbe8LzSw5dSBCz/O67iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com; spf=pass smtp.mailfrom=zytor.com; dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b=vcQ/YDQ3; arc=none smtp.client-ip=198.137.202.136
Received: from mail.zytor.com ([IPv6:2601:646:8081:7da1:4462:691a:e05c:b745])
	(authenticated bits=0)
	by mail.zytor.com (8.18.1/8.17.1) with ESMTPSA id 65TDxPvi370711
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 29 Jun 2026 06:59:26 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 65TDxPvi370711
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
	s=2026062701; t=1782741567;
	bh=v5i9XrI/WAy5jCxNvl7B2a03VtlY5wm2Nc+pnEnsHlk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vcQ/YDQ3H6M3PDVRg8ZqSfvW64V30x5lDi80fQkbQzkKTsBRRIcIIfYW3qnNRVPXm
	 i8pxi/NX61yeCTPzlLJY9BSUe0UvKCr+xBHaFF/kEaSfHTrF3DEd0sQCd6Zbw1lt8d
	 Mef70g/t3KOYYoZGIS3RPvSNrKafd+qcV/+Cy1GiL2r40LHX2QgCgZ5Dfn1IOlL6W2
	 hp1TexsN6qbW2DQJTYyb+7HyegJPFxcpyTv+45kyBSVFZTa7ItYVf05LJargcNeVhm
	 /vrVsNuLxIQ67P9kGIW+Zxw2R+TmelcTVJvH0rW2LWv7CPk9e4gwkxRaXY/cV37Wj0
	 JKGkZLlqNVlxw==
From: "H. Peter Anvin" <hpa@zytor.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "H . Peter Anvin" <hpa@zytor.com>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 1/4] man/man3*: document the glibc 2.42+ baud_t termios interface
Date: Mon, 29 Jun 2026 06:59:05 -0700
Message-ID: <20260629135910.143781-2-hpa@zytor.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260629135910.143781-1-hpa@zytor.com>
References: <20260629135910.143781-1-hpa@zytor.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zytor.com,none];
	R_DKIM_ALLOW(-0.20)[zytor.com:s=2026062701];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5671-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:hpa@zytor.com,m:linux-man@vger.kernel.org,m:libc-alpha@sourceware.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[hpa@zytor.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hpa@zytor.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[zytor.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[zytor.com:dkim,zytor.com:email,zytor.com:mid,zytor.com:from_mime,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 015E76DBC61

glibc 2.42+ has a new set of interfaces to get and set arbitrary baud
rates. Add them to the man pages.

This removes from termios(3) some details about the baud rate
constants: they are now an open set in glibc, simply defined to be
equivalent to their numeric value (e.g. B300 == 300). Thus, stating
that certain architectures only support certain values is no longer
correct.

This also removes references from termios(3) about the interior of the
ioctl interfaces: the statement about TCSETS2, for example, was always
incorrect (TCSETS2 doesn't exist on all Linux architectures.) That
kind of information belongs in ioctl_tty(2), anyway, especially since
including <linux/termios.h> -> <asm/termbits.h> is not compatible with
including <termios.h>.

Signed-off-by: H. Peter Anvin (Intel) <hpa@zytor.com>
---
 man/man3/termios.3        | 318 ++++++++++++++++++--------------------
 man/man3type/baud_t.3type |   1 +
 man/man3type/cc_t.3type   |  42 ++++-
 3 files changed, 193 insertions(+), 168 deletions(-)
 create mode 100644 man/man3type/baud_t.3type

diff --git a/man/man3/termios.3 b/man/man3/termios.3
index 0942cca8084e..cd3f9ce4d7c0 100644
--- a/man/man3/termios.3
+++ b/man/man3/termios.3
@@ -7,7 +7,8 @@
 .TH termios 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
 termios, tcgetattr, tcsetattr, tcsendbreak, tcdrain, tcflush, tcflow,
-cfmakeraw, cfgetospeed, cfgetispeed, cfsetispeed, cfsetospeed, cfsetspeed \-
+cfmakeraw, cfgetispeed, cfgetospeed, cfsetispeed, cfsetospeed,
+cfsetspeed, cfgetobaud, cfgetibaud, cfsetibaud, cfsetobaud, cfsetbaud \-
 get and set terminal attributes, line control, get and set baud rate
 .SH LIBRARY
 Standard C library
@@ -34,6 +35,13 @@ Standard C library
 .BI "int cfsetispeed(struct termios *" termios_p ", speed_t " speed );
 .BI "int cfsetospeed(struct termios *" termios_p ", speed_t " speed );
 .BI "int cfsetspeed(struct termios *" termios_p ", speed_t " speed );
+.P
+.BI "baud_t cfgetibaud(const struct termios *" termios_p );
+.BI "baud_t cfgetobaud(const struct termios *" termios_p );
+.P
+.BI "int cfsetibaud(struct termios *" termios_p ", baud_t " baud );
+.BI "int cfsetobaud(struct termios *" termios_p ", baud_t " baud );
+.BI "int cfsetbaud(struct termios *" termios_p ", baud_t " baud );
 .fi
 .P
 .RS -4
@@ -49,6 +57,16 @@ Feature Test Macro Requirements for glibc (see
     glibc 2.19 and earlier:
         _BSD_SOURCE
 .fi
+.P
+.BR cfgetibaud (),
+.BR cfgetobaud (),
+.BR cfsetibaud (),
+.BR cfsetobaud (),
+.BR cfsetbaud ():
+.nf
+    Since glibc 2.42:
+        _GNU_SOURCE
+.fi
 .SH DESCRIPTION
 The termios functions describe a general terminal interface that is
 provided to control asynchronous communications ports.
@@ -305,30 +323,33 @@ flag constants:
 .B _BSD_SOURCE
 or
 .BR _SVID_SOURCE ]
-.TP
-.B CBAUDEX
-(not in POSIX) Extra baud speed mask (1 bit), included in
-.BR CBAUD .
-[requires
-.B _BSD_SOURCE
-or
-.BR _SVID_SOURCE ]
 .IP
-(POSIX says that the baud speed is stored in the
-.I termios
-structure without specifying where precisely, and provides
-.BR cfgetispeed ()
+This bitmask should only be used when invoking the kernel
+.BR ioctl ()
+interface directly.
+.P
+Instead, the
+.BR cfgetospeed (),
+.BR cfgetobaud (),
+.BR cfsetospeed ()
 and
-.BR cfsetispeed ()
-for getting at it.
+.BR cfsetobaud ()
+functions should be used in application code.
+.P
 Some systems use bits selected by
 .B CBAUD
 in
 .IR c_cflag ,
-other systems use separate fields, for example,
-.I sg_ispeed
-and
-.IR sg_ospeed .)
+other systems use separate fields, Linux uses
+.IR both .
+.TP
+.B CBAUDEX
+(not in POSIX) Extra baud speed mask (1 bit), included in
+.BR CBAUD .
+[requires
+.B _BSD_SOURCE
+or
+.BR _SVID_SOURCE ]
 .TP
 .B CSIZE
 Character size mask.
@@ -379,13 +400,17 @@ bits.
 .B _BSD_SOURCE
 or
 .BR _SVID_SOURCE ]
-(Not implemented in glibc, supported on Linux via
-.BR TCGET *
+This bitmask should only be used when invoking the kernel
+.BR ioctl ()
+interface directly (see
+.BR ioctl_tty (2)).
+Instead, the
+.BR cfgetispeed (),
+.BR cfgetibaud (),
+.BR cfsetispeed ()
 and
-.BR TCSET *
-ioctls;
-see
-.BR ioctl_tty (2))
+.BR cfsetibaud ()
+functions should be used in application code.
 .TP
 .B CMSPAR
 (not in POSIX)
@@ -1068,114 +1093,22 @@ until
 .BR tcsetattr ()
 is successfully called.
 .P
-Setting the speed to
-.B B0
+Setting the output speed to zero
 instructs the modem to "hang up".
-The actual bit rate corresponding to
-.B B38400
-may be altered with
-.BR setserial (8).
 .P
-The input and output baud rates are stored in the
-.I termios
-structure.
-.P
-.BR cfgetospeed ()
-returns the output baud rate stored in the
-.I termios
-structure
-pointed to by
-.IR termios_p .
-.P
-.BR cfsetospeed ()
-sets the output baud rate stored in the
-.I termios
-structure
-pointed to by
-.I termios_p
-to
-.IR speed ,
-which must be one of these constants:
-.RS
-.TP
-.B B0
-.TQ
-.B B50
-.TQ
-.B B75
-.TQ
-.B B110
-.TQ
-.B B134
-.TQ
-.B B150
-.TQ
-.B B200
-.TQ
-.B B300
-.TQ
-.B B600
-.TQ
-.B B1200
-.TQ
-.B B1800
-.TQ
-.B B2400
-.TQ
-.B B4800
-.TQ
-.B B9600
-.TQ
-.B B19200
-.TQ
-.B B38400
-.TQ
-.B B57600
-.TQ
-.B B115200
-.TQ
-.B B230400
-.TQ
-.B B460800
-.TQ
-.B B500000
-.TQ
-.B B576000
-.TQ
-.B B921600
-.TQ
-.B B1000000
-.TQ
-.B B1152000
-.TQ
-.B B1500000
-.TQ
-.B B2000000
-.RE
-.P
-These constants are additionally supported on the SPARC architecture:
-.RS
-.TP
-.B B76800
-.TQ
-.B B153600
-.TQ
-.B B307200
-.TQ
-.B B614400
-.RE
-.P
-These constants are additionally supported on non-SPARC architectures:
-.RS
-.TP
-.B B2500000
-.TQ
-.B B3000000
-.TQ
-.B B3500000
-.TQ
-.B B4000000
-.RE
+When using the
+.I baud_t
+.IR * baud()
+functions, the baud rate is specified directly as a numeric value.
+.P
+When using the
+.I speed_t
+.IR * speed()
+functions, the line rate needs to be specified as one of a set of an
+enumerated macros defined in
+.I <termios.h>
+of the form
+.BI B nnn.
 .P
 Due to differences between architectures,
 portable applications should check
@@ -1183,67 +1116,94 @@ if a particular
 .BI B nnn
 constant is defined prior to using it.
 .P
+The actual bit rate corresponding to
+.B B38400
+may be altered with
+.BR setserial (8).
+.P
+The input and output baud rates are stored in the
+.I termios
+structure.
+.P
+.BR cfgetospeed ()
+and
+.BR cfgetobaud ()
+return the output baud rate stored in the
+.I termios
+structure
+pointed to by
+.IR termios_p .
+.P
+.BR cfsetospeed ()
+and
+.BR cfsetobaud ()
+set the output baud rate stored in the
+.I termios
+structure pointed to by
+.IR termios_p .
+.P
 The zero baud rate,
-.BR B0 ,
+.B B0
+for
+.BR cfsetospeed (),
 is used to terminate the connection.
-If
-.B B0
-is specified,
+.P
+If a baud rate of zero is specified,
 the modem control lines shall no longer be asserted.
 Normally,
 this will disconnect the line.
-.B CBAUDEX
-is a mask
-for the speeds beyond those defined in POSIX.1
-(57600 and above).
-Thus,
-.BR B57600 " & " CBAUDEX
-is nonzero.
-.P
-Setting the baud rate to a value other than those defined by
-.BI B nnn
-constants is possible via the
-.B TCSETS2
-ioctl;
-see
-.BR ioctl_tty (2).
 .P
 .BR cfgetispeed ()
-returns the input baud rate stored in the
+and
+.BR cfgetobaud ()
+return the input baud rate stored in the
 .I termios
 structure.
 .P
 .BR cfsetispeed ()
+and
+.BR cfsetibaud ()
 sets the input baud rate stored in the
 .I termios
-structure to
-.IR speed ,
-which must be specified as one of the
-.BI B nnn
-constants listed above for
-.BR cfsetospeed ().
+structure.
+.P
 If the input baud rate is set to the literal constant
 .B 0
 (not the symbolic constant
-.BR B0 ),
-the input baud rate will be
-equal to the output baud rate.
+.B B0
+even when using
+.BR cfsetispeed ())
+the input baud rate
+will be equal to the output baud rate.
 .P
 .BR cfsetspeed ()
 is a 4.4BSD extension.
 It takes the same arguments as
 .BR cfsetispeed (),
 and sets both input and output speed.
+.P
+.BR cfsetbaud ()
+is the equivalent function using the explicitly numeric
+.I baud_t
+interface.
 .SH RETURN VALUE
 .BR cfgetispeed ()
-returns the input baud rate stored in the
+and
+.BR cfgetobaud ()
+return the input baud rate stored in the
 .I termios
-structure.
+structure as a
+.I speed_t
+enumeration value or a numeric value, respectively.
 .P
 .BR cfgetospeed ()
-returns the output baud rate stored in the
+and
+.BR cfgetobaud ()
+return the output baud rate stored in the
 .I termios
-structure.
+structure as a
+.I speed_t
+enumeration value or a numeric value, respectively.
 .P
 All other functions return:
 .TP
@@ -1289,7 +1249,12 @@ T{
 .BR cfgetospeed (),
 .BR cfsetispeed (),
 .BR cfsetospeed (),
-.BR cfsetspeed ()
+.BR cfsetspeed (),
+.BR cfgetibaud (),
+.BR cfgetobaud (),
+.BR cfsetibaud (),
+.BR cfsetobaud (),
+.BR cfsetbaud ()
 T}	Thread safety	MT-Safe
 .TE
 .\" FIXME: The markings are different from that in the glibc manual.
@@ -1328,6 +1293,17 @@ POSIX.1-2008.
 .TQ
 .BR cfsetspeed ()
 BSD.
+.TP
+.BR cfgetibaud ()
+.TQ
+.BR cfgetobaud ()
+.TQ
+.BR cfsetibaud ()
+.TQ
+.BR cfsetobaud ()
+.TQ
+.BR cfsetbaud ()
+GNU.
 .SH HISTORY
 .TP
 .BR tcgetattr ()
@@ -1355,6 +1331,17 @@ POSIX.1-2001.
 .TQ
 .BR cfsetspeed ()
 BSD.
+.TP
+.BR cfgetibaud ()
+.TQ
+.BR cfgetobaud ()
+.TQ
+.BR cfsetibaud ()
+.TQ
+.BR cfsetobaud ()
+.TQ
+.BR cfsetbaud ()
+glibc 2.42.
 .SH NOTES
 UNIX\ V7 and several later systems have a list of baud rates
 where after the values
@@ -1414,6 +1401,7 @@ mask).
 .BR tty (1),
 .BR ioctl_console (2),
 .BR ioctl_tty (2),
+.BR baud_t (3type),
 .BR cc_t (3type),
 .BR speed_t (3type),
 .BR tcflag_t (3type),
diff --git a/man/man3type/baud_t.3type b/man/man3type/baud_t.3type
new file mode 100644
index 000000000000..26cfd017180e
--- /dev/null
+++ b/man/man3type/baud_t.3type
@@ -0,0 +1 @@
+.so man3type/cc_t.3type
diff --git a/man/man3type/cc_t.3type b/man/man3type/cc_t.3type
index 31c2dbcf8dbe..fa16e4cc3915 100644
--- a/man/man3type/cc_t.3type
+++ b/man/man3type/cc_t.3type
@@ -5,7 +5,8 @@
 .\"
 .TH cc_t 3type (date) "Linux man-pages (unreleased)"
 .SH NAME
-cc_t, speed_t, tcflag_t \- terminal special characters, baud rates, modes
+cc_t, baud_t, speed_t, tcflag_t \- terminal special characters, baud
+rates, modes
 .SH LIBRARY
 Standard C library
 .RI ( libc )
@@ -13,6 +14,7 @@ Standard C library
 .nf
 .B #include <termios.h>
 .P
+.BR typedef " /* ... */ " baud_t;
 .BR typedef " /* ... */ " cc_t;
 .BR typedef " /* ... */ " speed_t;
 .BR typedef " /* ... */ " tcflag_t;
@@ -21,14 +23,48 @@ Standard C library
 .I cc_t
 is used for terminal special characters,
 .I speed_t
-for baud rates, and
+for baud rates using
+.BI B nnn
+enumerated constants defined in
+.IR <termios.h> ,
+.I baud_t
+for baud rates explicitly defined as numbers, and
 .I tcflag_t
 for modes.
 .P
-All are unsigned integer types.
+.IR cc_t ,
+.IR speed_t ,
+and
+.I tcflag_t
+are all unsigned integer types.
+.P
+.I baud_t
+is a numeric type.
+.P
+It is currently the same as
+.IR speed_t ,
+but it is not guaranteed to remain so in the future.
 .SH STANDARDS
+.TP
+.I cc_t
+.TQ
+.I speed_t
+.TQ
+.I tcflag_t
 POSIX.1-2024.
+.TP
+.I baud_t
+GNU.
 .SH HISTORY
+.TP
+.I cc_t
+.TQ
+.I speed_t
+.TQ
+.I tcflag_t
 POSIX.1-1988.
+.TP
+.I baud_t
+glibc 2.42.
 .SH SEE ALSO
 .BR termios (3)
-- 
2.54.0


