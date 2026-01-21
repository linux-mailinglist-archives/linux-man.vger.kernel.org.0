Return-Path: <linux-man+bounces-4867-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOoaFyHDcGkNZwAAu9opvQ
	(envelope-from <linux-man+bounces-4867-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:14:25 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BD46656983
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:14:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 612A79A8CEA
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5698235772B;
	Wed, 21 Jan 2026 12:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="blfyUkBB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10628.protonmail.ch (mail-10628.protonmail.ch [79.135.106.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F32232E698
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.28
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997219; cv=none; b=JOxnVQYZXxM4TetNfIjwM3Ds0llpBtxplQXTWylXXQbAxC6Q7GiOX8+Adaz1zBkoX/md91oHXYD7XRbIIb1JXtJGFv8hrgy9/cnNn/D0B4fpOWQhZe7DF70OT4eKCE10W1oli4KvgynfRgVdW8NXgSsGpHJMR6XIH4K3xteWlYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997219; c=relaxed/simple;
	bh=xcK2xi8R2Kw44a1dWSKZ0nQthPvyddZCOTL7fxd6Irw=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=UAVScNn5JhqsnVFvlj1qJgCRIY/fb/tGgxYSS1cxjapooBu7+PtBowk8bydgoZZj4SEVsxSPFfbNHV7du/T4LbE26XKonq94CF/F0sA8wXJHEZSHinv+8orbKIx+c0JSKjF+VVX7s92V4fYPcL/uzcpkpuydzupSgZGQjP9mXgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=blfyUkBB; arc=none smtp.client-ip=79.135.106.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997215; x=1769256415;
	bh=7T74y/fghrmRAyJbx4ctMea6g7uI2mUsaww1eh1ExaY=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=blfyUkBBgVmCRXVr8RQ6nO/PTs4b+dPY+mhLp9pgCzX3MLv+2Gh1R7ZtyPxzlobCy
	 xNspoIMcTgczBmHcvKf4EVV92fqDoRGqbzwRMxLUrBS6CduXeMl37xfcOAZh8KGn3Y
	 q9lNs33ovAZm4BQuZ5laevjNfYQMhDtI59kfd5Q9sDWQ5WHwICHB/QItOyziiI37pH
	 kALS/G71XkUXKygwucIVk8+qaR0P18uo83Ixix26VwpjxcUqhF3W+SylAVblYARVIJ
	 0rNNg6NM5j8Uay54sHLEXx/2cTBGquqyTTldNOHfjIu6BQuUrDJY+de2TgyGd9p0vz
	 OcwZ9+p1fu8HA==
Date: Wed, 21 Jan 2026 12:06:52 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 00/23] man/man2/*: Update history of syscalls CI-G
Message-ID: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 2956a6a5a610385f85667cb9aecbc008611c90f3
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------f8f7330c7774307ea4df8fc1be0a593044b5222d517e25183a708bf8ac32572a"; charset=utf-8
X-Spamd-Result: default: False [-3.06 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4867-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[pm.me,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,pm.me:mid,pm.me:dkim]
X-Rspamd-Queue-Id: BD46656983
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------f8f7330c7774307ea4df8fc1be0a593044b5222d517e25183a708bf8ac32572a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 00/23] man/man2/*: Update history of syscalls CI-G
Date: Wed, 21 Jan 2026 22:05:35 +1000
Message-ID: <cover.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0

Hello,

This patch set updates the POSIX/SUS history of system calls with
identifiers starting with CI through G.  It also attempts to provide
chronological order where possible, similar to the last patch set.

Although this set does begin to touch on man pages with a peculiar
listing in their HISTORY sections.  Namely, "4.4BSD (first appeared in
4.2BSD)".  I ordered these as if they were just "4.4BSD", since that's
not inside the brackets and so should be more important (otherwise I'd
assume it'd just say "4.2BSD" instead).  Although I'm not confident in
this choice, so any thoughts regarding this would be appreciated.

Seth McDonald (23):
  man/man2/clock_getres.2: HISTORY: Update first POSIX appearance of
    clock_* syscalls
  man/man2/close.2: HISTORY: Update first POSIX appearance of close(2)
  man/man2/dup.2: HISTORY: Update first POSIX appearance of dup[2](2)
  man/man2/execve.2: HISTORY: Update first POSIX appearance of execve(2)
  man/man2/_exit.2: HISTORY: Update first POSIX appearance of _exit(2)
  man/man2/fcntl.2: HISTORY: Update first POSIX appearance of fcntl(2)
  man/man2/fcntl_locking.2: HISTORY: Update first POSIX appearance of
    locking constants
  man/man2/fork.2: HISTORY: Update first POSIX appearance of fork(2)
  man/man2/fsync.2: HISTORY: Split fsync(2) and fdatasync(2)
  man/man2/fsync.2: HISTORY: Update first POSIX appearance of fsync(2)
  man/man2/fsync.2: HISTORY: Update first POSIX appearance of
    fdatasync(2)
  man/man2/get[gu]id.2: HISTORY: Update first POSIX appearance of
    get[e][gu]id(2)
  man/man2/getgroups.2: HISTORY: Update first POSIX appearance of
    getgroups(2)
  man/man2/gethostname.2: HISTORY: Split gethostname(2) and
    sethostname(2)
  man/man2/getitimer.2: HISTORY: Update first SUS appearance of
    [gs]etitimer(2)
  man/man2/getpagesize.2: HISTORY: Update first SUS appearance of
    getpagesize(2)
  man/man2/getpid.2: HISTORY: Update first POSIX appearance of
    get[p]pid(2)
  man/man2/getpriority.2: HISTORY: Update first POSIX appearance of
    [gs]etpriority(2)
  man/man2/getresuid.2: HISTORY: Update first POSIX appearance of
    getres[gu]id(2)
  man/man2/getrlimit.2: HISTORY: Update first POSIX appearance of
    [gs]etrlimit(2)
  man/man2/getsid.2: HISTORY: Update first POSIX appearance of getsid(2)
  man/man2/getrusage.2: HISTORY: Update first POSIX appearance of
    getrusage(2)
  man/man2/gettimeofday.2: HISTORY: Update first POSIX appearance of
    gettimeofday(2)

 man/man2/_exit.2         |  4 +++-
 man/man2/clock_getres.2  |  2 +-
 man/man2/close.2         |  4 +++-
 man/man2/dup.2           |  4 +++-
 man/man2/execve.2        |  4 +++-
 man/man2/fcntl.2         |  4 +++-
 man/man2/fcntl_locking.2 |  4 +++-
 man/man2/fork.2          |  4 +++-
 man/man2/fsync.2         | 10 +++++++++-
 man/man2/getgid.2        |  3 ++-
 man/man2/getgroups.2     |  4 +++-
 man/man2/gethostname.2   | 12 ++++++++----
 man/man2/getitimer.2     |  5 ++++-
 man/man2/getpagesize.2   |  5 +++--
 man/man2/getpid.2        |  4 +++-
 man/man2/getpriority.2   |  6 ++++--
 man/man2/getresuid.2     |  3 ++-
 man/man2/getrlimit.2     |  6 +++++-
 man/man2/getrusage.2     |  5 ++++-
 man/man2/getsid.2        |  7 +++++--
 man/man2/gettimeofday.2  |  7 ++++---
 man/man2/getuid.2        |  3 ++-
 22 files changed, 80 insertions(+), 30 deletions(-)

Range-diff against v0:
 -:  ------------ >  1:  1a421b5ee130 man/man2/clock_getres.2: HISTORY: Upd=
ate first POSIX appearance of clock_* syscalls
 -:  ------------ >  2:  5327747ac3c3 man/man2/close.2: HISTORY: Update fir=
st POSIX appearance of close(2)
 -:  ------------ >  3:  11e4b9d2ac05 man/man2/dup.2: HISTORY: Update first=
 POSIX appearance of dup[2](2)
 -:  ------------ >  4:  5d691ee5e6a3 man/man2/execve.2: HISTORY: Update fi=
rst POSIX appearance of execve(2)
 -:  ------------ >  5:  eb5b310ab4dd man/man2/_exit.2: HISTORY: Update fir=
st POSIX appearance of _exit(2)
 -:  ------------ >  6:  1f924f4f5c3c man/man2/fcntl.2: HISTORY: Update fir=
st POSIX appearance of fcntl(2)
 -:  ------------ >  7:  a44c49650063 man/man2/fcntl_locking.2: HISTORY: Up=
date first POSIX appearance of locking constants
 -:  ------------ >  8:  7404e99ec690 man/man2/fork.2: HISTORY: Update firs=
t POSIX appearance of fork(2)
 -:  ------------ >  9:  163be42a70ea man/man2/fsync.2: HISTORY: Split fsyn=
c(2) and fdatasync(2)
 -:  ------------ > 10:  0dfa064b051b man/man2/fsync.2: HISTORY: Update fir=
st POSIX appearance of fsync(2)
 -:  ------------ > 11:  a968c006c218 man/man2/fsync.2: HISTORY: Update fir=
st POSIX appearance of fdatasync(2)
 -:  ------------ > 12:  566fd21d97b0 man/man2/get[gu]id.2: HISTORY: Update=
 first POSIX appearance of get[e][gu]id(2)
 -:  ------------ > 13:  a54a94c8b118 man/man2/getgroups.2: HISTORY: Update=
 first POSIX appearance of getgroups(2)
 -:  ------------ > 14:  0097b249c950 man/man2/gethostname.2: HISTORY: Spli=
t gethostname(2) and sethostname(2)
 -:  ------------ > 15:  824605c82a14 man/man2/getitimer.2: HISTORY: Update=
 first SUS appearance of [gs]etitimer(2)
 -:  ------------ > 16:  f776e452e427 man/man2/getpagesize.2: HISTORY: Upda=
te first SUS appearance of getpagesize(2)
 -:  ------------ > 17:  c2b9d37b6208 man/man2/getpid.2: HISTORY: Update fi=
rst POSIX appearance of get[p]pid(2)
 -:  ------------ > 18:  d5e7adf0a804 man/man2/getpriority.2: HISTORY: Upda=
te first POSIX appearance of [gs]etpriority(2)
 -:  ------------ > 19:  b5a7de01af52 man/man2/getresuid.2: HISTORY: Update=
 first POSIX appearance of getres[gu]id(2)
 -:  ------------ > 20:  5e54217b8cec man/man2/getrlimit.2: HISTORY: Update=
 first POSIX appearance of [gs]etrlimit(2)
 -:  ------------ > 21:  1bc25963021c man/man2/getsid.2: HISTORY: Update fi=
rst POSIX appearance of getsid(2)
 -:  ------------ > 22:  b93c17918b36 man/man2/getrusage.2: HISTORY: Update=
 first POSIX appearance of getrusage(2)
 -:  ------------ > 23:  00b72e770428 man/man2/gettimeofday.2: HISTORY: Upd=
ate first POSIX appearance of gettimeofday(2)

base-commit: 760458adc15668e910cefbbc4f9e11ccfd454411
--=20
2.47.3


--------f8f7330c7774307ea4df8fc1be0a593044b5222d517e25183a708bf8ac32572a
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwVsJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdW+io4hxfZ9lUpJSDOtfa3FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAALWoAQCXVYMq7zHjB+RnUArvPM2bH5/EjtzLAFBl1U80
lkV/GwD/cOgW7Z8S0UdqjkFBINJvxVWDhr6HMKH3nHvOTzFHEwQ=
=3Zmd
-----END PGP SIGNATURE-----


--------f8f7330c7774307ea4df8fc1be0a593044b5222d517e25183a708bf8ac32572a--


