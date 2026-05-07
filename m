Return-Path: <linux-man+bounces-5471-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFWbAG0E/WmIWgAAu9opvQ
	(envelope-from <linux-man+bounces-5471-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 23:30:21 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E294EF48D
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 23:30:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 987213001FBC
	for <lists+linux-man@lfdr.de>; Thu,  7 May 2026 21:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A935D345CBC;
	Thu,  7 May 2026 21:30:14 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from hergotha.csail.mit.edu (hergotha.csail.mit.edu [207.180.169.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA9034678E
	for <linux-man@vger.kernel.org>; Thu,  7 May 2026 21:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.180.169.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778189414; cv=none; b=PiYF/4c/cIqH7y2IhBNyxLHvXCmbSXNagt49PVuVhVRBMCgzBzyH3S5kus4CCd6TIQ7lqFUfiJnoO+oYDwfY7KTZJwAXeQzk8a/qSYAmo5sGZ82LLNdyxxOsXZEE4MF3XriFXzOf8IrcKfi46rbXQxRp5DpIexiPssj4vmT62xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778189414; c=relaxed/simple;
	bh=Dq+7BxvmqB7OtWBzCwNzPu1YUA/iBT3dc9D/URhvKLQ=;
	h=MIME-Version:Content-Type:Message-ID:Date:From:To:Cc:Subject:
	 In-Reply-To:References; b=Xryu5Dv7hAy+d7um3s8L+4uE4my88zNgIIlWLwVWzTQdGCnxnPziIDyLREJChnLKttvoWuIhReb7EFGyIh/mzya1VVivxKRA+bjA+qMHAW9BWchWvWp6NsxLYT3MeRArY30nkoGphy2adNgAxZ7xWhSZoBLaiuWl2KFklUXJYzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=bimajority.org; spf=pass smtp.mailfrom=hergotha.csail.mit.edu; arc=none smtp.client-ip=207.180.169.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=bimajority.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hergotha.csail.mit.edu
Received: from hergotha.csail.mit.edu (localhost [127.0.0.1])
	by hergotha.csail.mit.edu (8.18.1/8.18.1) with ESMTPS id 647LJl4S082811
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Thu, 7 May 2026 17:19:47 -0400 (EDT)
	(envelope-from wollman@hergotha.csail.mit.edu)
Received: (from wollman@localhost)
	by hergotha.csail.mit.edu (8.18.1/8.18.1/Submit) id 647LJkV9082810;
	Thu, 7 May 2026 17:19:46 -0400 (EDT)
	(envelope-from wollman)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <27133.498.654796.822374@hergotha.csail.mit.edu>
Date: Thu, 7 May 2026 17:19:46 -0400
From: Garrett Wollman <wollman@bimajority.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        linux-man <linux-man@vger.kernel.org>, kleink <kleink@netbsd.org>
Subject: Re: mkstemp(3)
In-Reply-To: <afzrREof611q7MIX@devuan>
References: <CAKH6PiUk2L35i4i4TYkEP5VWH8DWodgRDLqUTSRQ27MB20HRhA@mail.gmail.com>
	<afzrREof611q7MIX@devuan>
X-Mailer: VM 8.3.2 under 30.2 (amd64-portbld-freebsd14.4)
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.4 (hergotha.csail.mit.edu [0.0.0.0]); Thu, 07 May 2026 17:19:47 -0400 (EDT)
X-Rspamd-Queue-Id: 04E294EF48D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[bimajority.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wollman@bimajority.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5471-lists,linux-man=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

<<On Thu, 7 May 2026 22:23:01 +0200, Alejandro Colomar <alx@kernel.org> said:

> Later, in POSIX.1-2001, it already appears in <stdlib.h>.  So, at some
> point, people decided to move it there.  POSIX doesn't say anything
> about the move, though.

Note that 1003.1-2001 (XSH page 761) shades the synopsis as "XSI" --
this is code for "mistakes inherited from XPG4 and included as a part
of the unification of POSIX with the Single UNIX Specification".  As
the definition of <stdlib.h> (XBD page 325) notes:

	Some of the functionality described on this reference page
	extends the ISO C standard.  Applications shall define the
	appropriate feature test macro (see the System Interfaces
	volume of IEEE Std 1003.1-2001, Section 2.2, The Compilation
	Environment) to enable the visibility of these symbols
	in this header.

This is shaded "CX", meaning "extension to ISO C", but all of the
noted extensions are shaded "XSI" except for posix_memalign ("ADV"),
rand_r ("TSF"), setenv and unsetenv (both "CX").

> So, the point where it was moved seems to have been XPG4v2 (which was
> later repackaged as SUSv1).  I don't know why XPG4v2 decided to move the
> prototype from <unistd.h> to <stdlib.h>.  I've CCed kleink, in case it
> knows (and remembers).

The "XSI" declarations in 1003.1-2001 for <stdlib.h> are:

	All symbols from <stddef.h>, <limits.h>, <math.h>, and
	<sys/wait.h> (at the implementation's option).

	The W* constants from <sys/wait.h> for use with wait3().

	The functions a64l(), drand48(), ecvt(), erand48(), fcvt(),
	gcvt(), getsubopt(), grantpt(), initstate(), jrand48(),
	l64a(), lcong48(), lrand48(), mktemp() [marked "LEGACY"],
	mkstemp(), mrand48(), nrand48(), posix_openpt(), ptsname(),
	putenv(), random(), realpath(), seed48(), setkey(),
	setstate(), srand48(), srandom(), and unlockpt().

This is really quite a motley list: PRNGs, ASCII-numeric conversion
routines, temporary files, environment variables, pseudo-TTYs, and the
constants for wait3() but not the wait3() functon itself.

The "XSI" option is unusual in POSIX in that its interfaces need not
be declared unless the application has defined the appropriate
_XOPEN_SOURCE macro.  (In real-world implementations, these interfaces
are normally declared by default unless the application has requested
a stricter namespace with _POSIX_C_SOURCE or similar.)

POSIX also has a very weird attitude toward compatibility with
previous (or future) revisions of itself; the standard says nothing
about how an application written for C99 can be compiled on an
1003.1:2024 system -- as far as the current standard is concerned, the
only compiler is C17.[1]  Many implementations, however (including the
work I did for FreeBSD back in the early 2000s) attempt to support
source and binary compatibility with multiple standards and with
traditional (pre-standard) applications, to the extent feasible with
preprocessor macros and the development tools available.

-GAWollman

[1] Why is 1003.1:2024 not aligned with C23?  Because the work on the
2024 standard started in 2018, and POSIX as currently specified both
subsumes and defers to a specific ISO C standard; the Austin Group
couldn't align to C23 until we knew officially what was going to be in
it and that it was going to be fully approved and published *before*
POSIX went into balloting with IEEE and ISO.  The next POSIX will be
aligned with C23.

