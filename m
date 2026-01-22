Return-Path: <linux-man+bounces-4900-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KL0PFUGLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4900-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:28:17 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3A060E41
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:28:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 03C4950422F
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5ECD30F542;
	Thu, 22 Jan 2026 02:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="m9lwZ6g4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-106121.protonmail.ch (mail-106121.protonmail.ch [79.135.106.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF723128BD
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048679; cv=none; b=dDg8c7zcJtkL/b4Oh5tssx76UTYQGKqUtYrc4Qj/r1CWeO6LIG3DUNObhDBPn3++uwGnlzBlpE8t3IZJqrXNBtCdUK2yVJnlyGtbox2XTjxB4o5V0fRUZl9WNgn3Jjrc+UsJVEWm0kxB7o5+03VvBdEAk62S8uEwXciKpj1ZVdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048679; c=relaxed/simple;
	bh=g6Ve+M8pcBQyHZ0UTNaAcD4kLv/C7xJsR42t5D+apVM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=E4bELDCO/BDKKTszlGLCaUlpSGewBrDtmc+5XdGNwYmQxZtBVClY11Cm4Sl9xWWCUpoM7DUmVc95TbE/TwpEbXfvUbQpAZsv5chJuCCCjNLi/06SfTagR8OikUowD4ajMlB4V1OP5iW6tvUXVTBMojiKgNloBP/YPB6oSfdn6CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=m9lwZ6g4; arc=none smtp.client-ip=79.135.106.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048668; x=1769307868;
	bh=w27FB9nnahOpyYnLqRgzVfhaz1ZvarOZIaDw6e4FAuU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=m9lwZ6g48Ow4fbr86MbQwZn0ZCy+B2ycA2RCvrDvbsH79y0BTyvDHD9xW37Ixjn8y
	 GhLelyaVh6PVKJU9fCV5l49xU0XtaK5Kw4kE02SBy1p2+3Xgd5wgHAGqOoJAxiNzbG
	 qRuEGQRdXi5oJ9Xaegq14CDKfSkawdRl8HvjAfyFMfeSVQN7IseVdZg37aBBe5K1ZI
	 0uri+BU+z55E+hU6McMImIIJKI4SRQMgjWv7pKvLs732Sxo8xjcBdwGEY8R9+OMF0K
	 9jdN3oDaestx0VlNY4crcBQhD4AI9N08HD/qXy5kwI8nxZNuMCBj68WCFku2ZcpWuc
	 0h8PREt6LfBOQ==
Date: Thu, 22 Jan 2026 02:24:23 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 00/23] man/man2/*: Update history of syscalls CI-G
Message-ID: <cover.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 06cf767c8b9624debf89127990a03d485dd1ef6b
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------1f2adfd90ff4dfc22e07094cd94012b703694d66bdd5e76190994231b5662cf1"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.06 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bounces-4900-lists,linux-man=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[pm.me,quarantine];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pm.me:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: BA3A060E41
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------1f2adfd90ff4dfc22e07094cd94012b703694d66bdd5e76190994231b5662cf1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 00/23] man/man2/*: Update history of syscalls CI-G
Date: Thu, 22 Jan 2026 12:23:52 +1000
Message-ID: <cover.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

Hi again,

v2 now treats listings of both 4.2BSD and 4.4BSD as equivalent to just
4.2BSD, and thus removes the redundant mention of 4.4BSD in such cases.

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
 man/man2/fsync.2         |  9 ++++++++-
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
 22 files changed, 79 insertions(+), 30 deletions(-)

Range-diff against v1:
 1:  1a421b5ee130 =3D  1:  1a421b5ee130 man/man2/clock_getres.2: HISTORY: U=
pdate first POSIX appearance of clock_* syscalls
 2:  5327747ac3c3 =3D  2:  5327747ac3c3 man/man2/close.2: HISTORY: Update f=
irst POSIX appearance of close(2)
 3:  11e4b9d2ac05 =3D  3:  11e4b9d2ac05 man/man2/dup.2: HISTORY: Update fir=
st POSIX appearance of dup[2](2)
 4:  5d691ee5e6a3 =3D  4:  5d691ee5e6a3 man/man2/execve.2: HISTORY: Update =
first POSIX appearance of execve(2)
 5:  eb5b310ab4dd =3D  5:  eb5b310ab4dd man/man2/_exit.2: HISTORY: Update f=
irst POSIX appearance of _exit(2)
 6:  1f924f4f5c3c =3D  6:  1f924f4f5c3c man/man2/fcntl.2: HISTORY: Update f=
irst POSIX appearance of fcntl(2)
 7:  a44c49650063 =3D  7:  a44c49650063 man/man2/fcntl_locking.2: HISTORY: =
Update first POSIX appearance of locking constants
 8:  7404e99ec690 =3D  8:  7404e99ec690 man/man2/fork.2: HISTORY: Update fi=
rst POSIX appearance of fork(2)
 9:  163be42a70ea !  9:  7b237415d7b9 man/man2/fsync.2: HISTORY: Split fsyn=
c(2) and fdatasync(2)
    @@ man/man2/fsync.2: .SH VERSIONS
     +POSIX.1-2001.
     +.TP
     +.BR fdatasync ()
    -+4.2BSD,
     +POSIX.1-2001.
      .P
      In Linux 2.2 and earlier,
10:  0dfa064b051b ! 10:  ab31e843c470 man/man2/fsync.2: HISTORY: Update fir=
st POSIX appearance of fsync(2)
    @@ man/man2/fsync.2: .SH HISTORY
     +POSIX.1-1996.
      .TP
      .BR fdatasync ()
    - 4.2BSD,
    + POSIX.1-2001.
11:  a968c006c218 ! 11:  0d67e7c63fd3 man/man2/fsync.2: HISTORY: Update fir=
st POSIX appearance of fdatasync(2)
    @@ Commit message
    =20
      ## man/man2/fsync.2 ##
     @@ man/man2/fsync.2: .SH HISTORY
    + POSIX.1-1996.
      .TP
      .BR fdatasync ()
    - 4.2BSD,
     -POSIX.1-2001.
     +POSIX.1-1996.
      .P
12:  566fd21d97b0 =3D 12:  6b987649c5cc man/man2/get[gu]id.2: HISTORY: Upda=
te first POSIX appearance of get[e][gu]id(2)
13:  a54a94c8b118 =3D 13:  4ad7acf2ef8c man/man2/getgroups.2: HISTORY: Upda=
te first POSIX appearance of getgroups(2)
14:  0097b249c950 ! 14:  94b81d0f1c2b man/man2/gethostname.2: HISTORY: Spli=
t gethostname(2) and sethostname(2)
    @@ man/man2/gethostname.2: .SH STANDARDS
      .BR gethostname ()
     -but not
     -.BR sethostname ().
    ++4.2BSD,
     +SVr4,
    -+4.4BSD (first appeared in 4.2BSD),
     +POSIX.1-2001.
     +.TP
     +.BR sethostname ()
    -+SVr4,
    -+4.4BSD (first appeared in 4.2BSD).
    ++4.2BSD,
    ++SVr4.
      .P
      Versions of glibc before glibc 2.2
      .\" At least glibc 2.0 and glibc 2.1, older versions not checked
15:  824605c82a14 ! 15:  9c780e0e0176 man/man2/getitimer.2: HISTORY: Update=
 first SUS appearance of [gs]etitimer(2)
    @@ man/man2/getitimer.2: .SH VERSIONS
      None.
      .SH HISTORY
     -POSIX.1-2001, SVr4, 4.4BSD (this call first appeared in 4.2BSD).
    ++4.2BSD,
     +SVr4,
    -+4.4BSD (first appeared in 4.2BSD),
     +SUSv1,
     +POSIX.1-2001.
      POSIX.1-2008 marked
16:  f776e452e427 ! 16:  825144f95298 man/man2/getpagesize.2: HISTORY: Upda=
te first SUS appearance of getpagesize(2)
    @@ man/man2/getpagesize.2: .SH VERSIONS
      .SH HISTORY
     -This call first appeared in 4.2BSD.
     -SVr4, 4.4BSD, SUSv2.
    ++4.2BSD,
     +SVr4,
    -+4.4BSD (first appeared in 4.2BSD),
     +SUSv1.
      In SUSv2 the
      .BR getpagesize ()
17:  c2b9d37b6208 =3D 17:  db0485168785 man/man2/getpid.2: HISTORY: Update =
first POSIX appearance of get[p]pid(2)
18:  d5e7adf0a804 ! 18:  6bcf34a705e3 man/man2/getpriority.2: HISTORY: Upda=
te first POSIX appearance of [gs]etpriority(2)
    @@ man/man2/getpriority.2: .SH ERRORS
      .SH HISTORY
     -POSIX.1-2001,
     -SVr4, 4.4BSD (these interfaces first appeared in 4.2BSD).
    ++4.2BSD,
     +SVr4,
    -+4.4BSD (first appeared in 4.2BSD),
     +SUSv1,
     +POSIX.1-2001 XSI.
      .P
19:  b5a7de01af52 =3D 19:  0afcc4b4083b man/man2/getresuid.2: HISTORY: Upda=
te first POSIX appearance of getres[gu]id(2)
20:  5e54217b8cec =3D 20:  ffb23d585617 man/man2/getrlimit.2: HISTORY: Upda=
te first POSIX appearance of [gs]etrlimit(2)
21:  1bc25963021c =3D 21:  8ec811d4690a man/man2/getsid.2: HISTORY: Update =
first POSIX appearance of getsid(2)
22:  b93c17918b36 =3D 22:  3efc2800fc16 man/man2/getrusage.2: HISTORY: Upda=
te first POSIX appearance of getrusage(2)
23:  00b72e770428 =3D 23:  37278a0497bd man/man2/gettimeofday.2: HISTORY: U=
pdate first POSIX appearance of gettimeofday(2)

base-commit: 760458adc15668e910cefbbc4f9e11ccfd454411
--=20
2.47.3


--------1f2adfd90ff4dfc22e07094cd94012b703694d66bdd5e76190994231b5662cf1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxilcJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmc/jDf+g55LFJ1ZFEwrqemtFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAOxwAP9MYd0UNII8YHvRdrvFUes29Ta2Z4V83RsBkRhU
8B0u4AEA0MQd4AYgnJMR2JAdnK8LPOovJ2lNowDiKlJFUijstAA=
=NDHz
-----END PGP SIGNATURE-----


--------1f2adfd90ff4dfc22e07094cd94012b703694d66bdd5e76190994231b5662cf1--


