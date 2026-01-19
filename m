Return-Path: <linux-man+bounces-4834-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0D7D3A791
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:59:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2FBB30A750B
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626E831A06F;
	Mon, 19 Jan 2026 11:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="n73XJ6Li"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10630.protonmail.ch (mail-10630.protonmail.ch [79.135.106.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676F5239E9A
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.30
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823686; cv=none; b=JOzsSJT9qx8FRkGfYaIfxe/BtB2SR6fymNo8NaayX7IUQ+pltZAKLOSj6BtJOdRDEeMsDo2g/N/la4rf+nTCzUiqXjDi30IktzUoXZrcCrC+h+oSXePTZ4niHdmrLXyW9ADd1pMWkBTcQz8SRAb3DLoD6aKuo12jUutJrMdpQ6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823686; c=relaxed/simple;
	bh=Wd0QqYwsOYj8syMvbBJxs8LaCDF3pkxw0ymNZbZDGt4=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=CVeJV1QhcdQFYMRi6u/HxgFgFZLgRXnVDIhlfWrYJItQqKI2zyHWdVcBUOU4e1p2+iCb2EntX8oIFsdONDhFm0L0APfCF8hQDieGiLSDBJDi9qMFXgg2ZAC6CBJkk8Qdl5chcopk/lKTya/MVoNkvyzwPGKfrGqDyXyJupOzLjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=n73XJ6Li; arc=none smtp.client-ip=79.135.106.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823674; x=1769082874;
	bh=7+gpiiTvgSuNwanmmw8VhvyfK8drv7C8W5s3mK1DE+M=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=n73XJ6LiBQH29Z16jYKU2lK6LnMSBNPR9uyOfsaLHNNS2hUXF0+syOLEH+uCZ9TGp
	 uSanTHRK9np5x7tzeLe626s9DzV6sRQaM6/hNIcg6oVXHX0NjcbN39AqJvIaIw7PY0
	 zs6El6zPjnw+K9HbmMkXYpv+AWhohhjfulFjQx/NY7FSMRrbAJqNC1iB9s9ojop4r0
	 5gh7z2TI+C1UoPopZlsmyqSBGAqYIK+IMDAua64X7QXzS936l1PY4GLan44k+jKk6a
	 dnnu/Pemg9jRIFRXQ8ntptUZzBucdZGz8DuHFIOA26qQwexEwtUSN4+vMXE0NkQ3h7
	 bKpAdQxkjXyxw==
Date: Mon, 19 Jan 2026 11:54:29 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 00/19] man/man2/*: Update history of syscalls A-CH
Message-ID: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: be512280bffd6126232586c38168ad7890c5ade6
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------28d91fe7af68b9c6c4cb64ad41e87bd32f467e4f1fd9d09e0ab76f0efe6e1992"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------28d91fe7af68b9c6c4cb64ad41e87bd32f467e4f1fd9d09e0ab76f0efe6e1992
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 00/19] man/man2/*: Update history of syscalls A-CH
Date: Mon, 19 Jan 2026 21:51:44 +1000
Message-ID: <cover.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0

Heya all,

Continuing the updating of HISTORY sections, this patch set regards
system calls whose identifiers start with A through CH.  This time, more
care was taken to ensure any modified lists are given in a somewhat
chronological order.

As hinted at previously on this list, searching for a *truely*
chronological ordering is likely a futile effort given the seemingly
circular influences between many early systems.  But an approximation of
this ordering based on our limited information can still be useful.
Which is the attitude with which these patches were made.

And on another note, I think I've found a way to stop Proton Mail from
corrupting patches.  So my patches should henceforth all be PGP-signed,
assuming my workaround is sufficient.

Seth McDonald (19):
  man/man2/access.2: HISTORY: Update first POSIX appearance of access(2)
  man/man2/access.2: HISTORY: Specify different access(2) prototypes
  man/man2/access.2: HISTORY: Update first POSIX appearance of
    faccessat(2)
  man/man2/alarm.2: HISTORY: Update first POSIX appearance of alarm(2)
  man/man2/chdir.2: HISTORY: Split chdir(2) and fchdir(2)
  man/man2/chdir.2: HISTORY: Update first POSIX appearance of chdir(2)
  man/man2/chdir.2: HISTORY: Specify different chdir(2) prototypes
  man/man2/chdir.2: HISTORY: Update first POSIX appearance of fchdir(2)
  man/man2/chmod.2: HISTORY: Split chmod(2) and fchmod(2)
  man/man2/chmod.2: HISTORY: Update first POSIX appearance of chmod(2)
  man/man2/chmod.2: HISTORY: Specify different chmod(2) prototypes
  man/man2/chmod.2: HISTORY: Update first POSIX appearance of fchmod(2)
  man/man2/chmod.2: HISTORY: Update first POSIX appearance of
    AT_SYMLINK_NOFOLLOW
  man/man2/chown.2: HISTORY: Split chown(2), fchown(2), and lchown(2)
  man/man2/chown.2: HISTORY: Update first POSIX appearance of chown(2)
  man/man2/chown.2: HISTORY: Specify different chown(2) prototypes
  man/man2/chown.2: HISTORY: Update first SUS appearance of fchown(2)
  man/man2/chown.2: HISTORY: Update first POSIX appearance of lchown(2)
  man/man2/chroot.2: HISTORY: Update first SUS appearance of chroot(2)

 man/man2/access.2 | 14 ++++++++++++--
 man/man2/alarm.2  |  4 +++-
 man/man2/chdir.2  | 20 +++++++++++++++++++-
 man/man2/chmod.2  | 18 ++++++++++++++++--
 man/man2/chown.2  | 24 +++++++++++++++++++++---
 man/man2/chroot.2 |  5 ++++-
 6 files changed, 75 insertions(+), 10 deletions(-)

Range-diff against v0:
 -:  ------------ >  1:  58a0a70c6308 man/man2/access.2: HISTORY: Update fi=
rst POSIX appearance of access(2)
 -:  ------------ >  2:  d87c7800e0f5 man/man2/access.2: HISTORY: Specify d=
ifferent access(2) prototypes
 -:  ------------ >  3:  7e6b054be57e man/man2/access.2: HISTORY: Update fi=
rst POSIX appearance of faccessat(2)
 -:  ------------ >  4:  51224c3d2e6c man/man2/alarm.2: HISTORY: Update fir=
st POSIX appearance of alarm(2)
 -:  ------------ >  5:  c6961e073ad1 man/man2/chdir.2: HISTORY: Split chdi=
r(2) and fchdir(2)
 -:  ------------ >  6:  61d257dc5032 man/man2/chdir.2: HISTORY: Update fir=
st POSIX appearance of chdir(2)
 -:  ------------ >  7:  b367400491b2 man/man2/chdir.2: HISTORY: Specify di=
fferent chdir(2) prototypes
 -:  ------------ >  8:  d6316545d253 man/man2/chdir.2: HISTORY: Update fir=
st POSIX appearance of fchdir(2)
 -:  ------------ >  9:  ce5b927c6695 man/man2/chmod.2: HISTORY: Split chmo=
d(2) and fchmod(2)
 -:  ------------ > 10:  de87aa2b3e28 man/man2/chmod.2: HISTORY: Update fir=
st POSIX appearance of chmod(2)
 -:  ------------ > 11:  02eef8835d60 man/man2/chmod.2: HISTORY: Specify di=
fferent chmod(2) prototypes
 -:  ------------ > 12:  691b1ee71099 man/man2/chmod.2: HISTORY: Update fir=
st POSIX appearance of fchmod(2)
 -:  ------------ > 13:  bc1d06a06e9e man/man2/chmod.2: HISTORY: Update fir=
st POSIX appearance of AT_SYMLINK_NOFOLLOW
 -:  ------------ > 14:  2981d5702b65 man/man2/chown.2: HISTORY: Split chow=
n(2), fchown(2), and lchown(2)
 -:  ------------ > 15:  fccd134bc9d7 man/man2/chown.2: HISTORY: Update fir=
st POSIX appearance of chown(2)
 -:  ------------ > 16:  ece23c04dc89 man/man2/chown.2: HISTORY: Specify di=
fferent chown(2) prototypes
 -:  ------------ > 17:  bf9099a04c4f man/man2/chown.2: HISTORY: Update fir=
st SUS appearance of fchown(2)
 -:  ------------ > 18:  5abf94a520b5 man/man2/chown.2: HISTORY: Update fir=
st POSIX appearance of lchown(2)
 -:  ------------ > 19:  fd08b4cf0a52 man/man2/chroot.2: HISTORY: Update fi=
rst SUS appearance of chroot(2)

base-commit: 91fa6d909b1171bc2361b5b2192c11c8be06a7d1
--=20
2.47.3


--------28d91fe7af68b9c6c4cb64ad41e87bd32f467e4f1fd9d09e0ab76f0efe6e1992
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluG3EJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdXFYbVzMw5URcPAKocD689FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAGSkAQC3T+IbYsC9jD6IWHd1dSmC300inJaYYp48JGBm
AyZu0gD/ZKTAKSb2HvewqILwvcJXuGoOtXx0Yo/r+uJlAj9YSgc=
=4duc
-----END PGP SIGNATURE-----


--------28d91fe7af68b9c6c4cb64ad41e87bd32f467e4f1fd9d09e0ab76f0efe6e1992--


