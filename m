Return-Path: <linux-man+bounces-4936-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ArAK1dfd2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4936-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:34:31 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAF38851F
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4AC5D304F34C
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F08C33556B;
	Mon, 26 Jan 2026 12:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="embzA5Bg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24418.protonmail.ch (mail-24418.protonmail.ch [109.224.244.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D14328616
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430504; cv=none; b=GMBbE7nBq5uXrJO4cRhfHWDSEVfXBr7j5oSNhIWrgclZqwMxud0gxwB2CVjahO7AC8IH2WbfmQgnjuL1Bp+4hQrC0nMvXql6INcO5By9ajLcvvpYvzVTAhfCpQSQzJtPmjO3Mn4SRRJEokEHdihNQmLQc6uLwXgAchIY2XXMRx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430504; c=relaxed/simple;
	bh=YgK3bh/AxDoOi2dAaCZ25I5S+vYkaPrn2/ASsDFq97Y=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=bMEAtlPD12itQI3Ul7lZMlpM7Uk1BpTrrlwDzzmcDm0ilCiGp617uFMCDjIW3cIm67gkuvqEYz4AgosaomV7yKTkCC1RV8hdsJeTkSEq2R/PRBJfdIXkhEtu6EclTmRn3rSbwjQStuz9qlqBwoyf5ujhGaoL+h5g5tjZ1ucGKKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=embzA5Bg; arc=none smtp.client-ip=109.224.244.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430494; x=1769689694;
	bh=pE1M/3tiQCUhv1aRxSTHMG1WOhIHaSH9mEznvj/r5T4=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=embzA5BgkkFiusLPuvYOQZiuyFZMRh/nlM6lowaWpwQmTGTm1s3bW7SRu3oNjRIz4
	 xA11UsimeqBJLzneNgxV/+8XbW0U/krDTGULvW35o04rKDhwWLxqm7ZY8Uq8gUBKlm
	 M7wStGBMAlNd9BJYR9tnFdEeO+hAXehITzYdciiX1V9GbmXWnRQ7SIbde59hOFrL6J
	 I6jq/egTyKzSeI8m6jnR7Zq5iXzPXAuVMAtdBveLrBY5+uspOzukOqGnCte3SIoV+j
	 CR36Mp0HtFn/d9WrfkILtQSH5K/eTf8OJF5LPq4igHUTc1pRS1vq92jMTpVxUpVBut
	 y9bwXNwelmtOw==
Date: Mon, 26 Jan 2026 12:28:10 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 00/21] man/man2/*: Update history of syscalls H-M
Message-ID: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 0a602df0947ce48ddfba9e19d0677430d46466bd
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------9462aeed5e2451533a84e4cae11e227e2093300ecaa7cef2cf12a71352d89482"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4936-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:mid,pm.me:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2AAF38851F
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------9462aeed5e2451533a84e4cae11e227e2093300ecaa7cef2cf12a71352d89482
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 00/21] man/man2/*: Update history of syscalls H-M
Date: Mon, 26 Jan 2026 22:27:41 +1000
Message-ID: <cover.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0

Hi all,

This set updates the history of system calls H to M.

While I have been thorough with my research, I would encourage those
interested to double-check that my edits make sense given the listed
sources.  Particularly for linkat(2), SEEK_DATA/SEEK_HOLE, mkdirat(2),
and mincore(2), since they took significantly more time and research
than other functions.

Seth McDonald (21):
  man/man2/ioctl_eventpoll.2: HISTORY: ffix
  man/man2/kill.2: HISTORY: Update POSIX appearances of kill(2)
  man/man2/link.2: HISTORY: Change order of linkat(2)
  man/man2/link.2: HISTORY: Update POSIX appearances of link(2)
  man/man2/listen.2: HISTORY: Change order
  man/man2/lseek.2: HISTORY: Update appearances of SEEK_{DATA,HOLE}
  man/man2/lseek.2: HISTORY: Update POSIX appearances of lseek(2)
  man/man2/mincore.2: HISTORY: Update appearances of mincore(2)
  man/man2/mkdir.2: HISTORY: Change order of mkdirat(2)
  man/man2/mkdir.2: HISTORY: Update BSD and POSIX appearances of
    mkdir(2)
  man/man2/mknod.2: HISTORY: Change order of mknodat(2)
  man/man2/mknod.2: HISTORY: Update POSIX appearances of mknod(2)
  man/man2/mknod.2: STANDARDS: Update
  man/man2/mlock.2: HISTORY: Update POSIX appearances of
    m(un)lock(all)(2)
  man/man2/mmap.2: HISTORY: Update POSIX appearances of m(un)map(2)
  man/man2/{mount_setattr,move_mount}.2: HISTORY: ffix
  man/man2/mprotect.2: HISTORY: Update POSIX appearances of mprotect(2)
  man/man2/msgctl.2: STANDARDS, HISTORY: Update POSIX appearances of
    msgctl(2)
  man/man2/msgget.2: STANDARDS, HISTORY: Update POSIX appearances of
    msgget(2)
  man/man2/msgop.2: STANDARDS, HISTORY: Update POSIX appearances of
    msg{rcv,snd}(2)
  man/man2/msync.2: HISTORY: Update POSIX appearances of msync(2)

 man/man2/ioctl_eventpoll.2 |  2 +-
 man/man2/kill.2            |  4 +++-
 man/man2/link.2            | 10 ++++++----
 man/man2/listen.2          |  4 ++--
 man/man2/lseek.2           | 10 +++++++---
 man/man2/mincore.2         | 13 ++++++++-----
 man/man2/mkdir.2           |  8 +++++---
 man/man2/mknod.2           | 11 +++++++----
 man/man2/mlock.2           |  3 ++-
 man/man2/mmap.2            |  5 ++++-
 man/man2/mount_setattr.2   |  2 +-
 man/man2/move_mount.2      |  2 +-
 man/man2/mprotect.2        |  4 +++-
 man/man2/msgctl.2          |  6 ++++--
 man/man2/msgget.2          |  6 ++++--
 man/man2/msgop.2           |  6 ++++--
 man/man2/msync.2           |  3 ++-
 17 files changed, 64 insertions(+), 35 deletions(-)

Range-diff against v0:
 -:  ------------ >  1:  d109f3dc06e2 man/man2/ioctl_eventpoll.2: HISTORY: =
ffix
 -:  ------------ >  2:  55de16b213bf man/man2/kill.2: HISTORY: Update POSI=
X appearances of kill(2)
 -:  ------------ >  3:  17eacf0f2d3e man/man2/link.2: HISTORY: Change orde=
r of linkat(2)
 -:  ------------ >  4:  bec317b8ee88 man/man2/link.2: HISTORY: Update POSI=
X appearances of link(2)
 -:  ------------ >  5:  2024c82a058d man/man2/listen.2: HISTORY: Change or=
der
 -:  ------------ >  6:  bcf9f5113f3c man/man2/lseek.2: HISTORY: Update app=
earances of SEEK_{DATA,HOLE}
 -:  ------------ >  7:  2dd12d136bf0 man/man2/lseek.2: HISTORY: Update POS=
IX appearances of lseek(2)
 -:  ------------ >  8:  817af323707e man/man2/mincore.2: HISTORY: Update a=
ppearances of mincore(2)
 -:  ------------ >  9:  8b25a256e60f man/man2/mkdir.2: HISTORY: Change ord=
er of mkdirat(2)
 -:  ------------ > 10:  347e36c11666 man/man2/mkdir.2: HISTORY: Update BSD=
 and POSIX appearances of mkdir(2)
 -:  ------------ > 11:  d3da8260e1bc man/man2/mknod.2: HISTORY: Change ord=
er of mknodat(2)
 -:  ------------ > 12:  b0feda20f21d man/man2/mknod.2: HISTORY: Update POS=
IX appearances of mknod(2)
 -:  ------------ > 13:  32bd25fd3630 man/man2/mknod.2: STANDARDS: Update
 -:  ------------ > 14:  67bf0c1aa133 man/man2/mlock.2: HISTORY: Update POS=
IX appearances of m(un)lock(all)(2)
 -:  ------------ > 15:  57292b4f60c4 man/man2/mmap.2: HISTORY: Update POSI=
X appearances of m(un)map(2)
 -:  ------------ > 16:  b8f4e6fa54e7 man/man2/{mount_setattr,move_mount}.2=
: HISTORY: ffix
 -:  ------------ > 17:  4e1acc0f5e00 man/man2/mprotect.2: HISTORY: Update =
POSIX appearances of mprotect(2)
 -:  ------------ > 18:  024ce32c9da5 man/man2/msgctl.2: STANDARDS, HISTORY=
: Update POSIX appearances of msgctl(2)
 -:  ------------ > 19:  975e61bea29f man/man2/msgget.2: STANDARDS, HISTORY=
: Update POSIX appearances of msgget(2)
 -:  ------------ > 20:  86e7c24b1428 man/man2/msgop.2: STANDARDS, HISTORY:=
 Update POSIX appearances of msg{rcv,snd}(2)
 -:  ------------ > 21:  d106bca86ec1 man/man2/msync.2: HISTORY: Update POS=
IX appearances of msync(2)

base-commit: 6754bd1a126ed1e9b7d9c2bc1d221681f5182bb3
--=20
2.47.3


--------9462aeed5e2451533a84e4cae11e227e2093300ecaa7cef2cf12a71352d89482
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XdgJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcme73n3KCeJAOwZc9jU1aChWFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAIV3AP44cjRE7el/imlYfKzJZlWUn8YE2g4zPF1W/34n
3b66hAEAxwU2BpNl0vPSRsh7QdDnwIl4YV4L2O7gMk1vdIQSCgw=
=8w0h
-----END PGP SIGNATURE-----


--------9462aeed5e2451533a84e4cae11e227e2093300ecaa7cef2cf12a71352d89482--


