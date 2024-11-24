Return-Path: <linux-man+bounces-2059-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9629D7830
	for <lists+linux-man@lfdr.de>; Sun, 24 Nov 2024 22:10:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B1F4281CAC
	for <lists+linux-man@lfdr.de>; Sun, 24 Nov 2024 21:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FC5113D8B2;
	Sun, 24 Nov 2024 21:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2o0nkgo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3517F163
	for <linux-man@vger.kernel.org>; Sun, 24 Nov 2024 21:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732482623; cv=none; b=Tm3XazQ8exExqf7TTDEm6Ieox/A3X598AatAgh3vl8KjpVVLQJwZkII3NBOfXxVBSVwJVI6xC2g5Ufy3IUSUvMg2+mSyn1ZMoyjSGFH8XKH7wOSOkCFWN5Ymbs7x6p9ExaXwsfdLJAnAx2TUdntafJQRI3xzyozmRyw8JjU5zs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732482623; c=relaxed/simple;
	bh=4DsJqMTnfgGxm2b9anTezzVSHz7FKy/XbFBwxEPJtwQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=FUJXBWeCooCpGJF6UZGXs+/ab7MFa74f70xWeyHVuEtjKBB2Lv8rDreMcT2jpe+RWQHF/W1XD7rMEbIOdm1dy50dpraymKw3U3zpDtXE2ITywvP7NGZpItMumtpA8UKRpg8x4NVisppC3HFNZlM3DoxcVGi7YVTDitSpTPHiFBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2o0nkgo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97FB4C4CECC;
	Sun, 24 Nov 2024 21:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732482622;
	bh=4DsJqMTnfgGxm2b9anTezzVSHz7FKy/XbFBwxEPJtwQ=;
	h=Date:From:To:Cc:Subject:From;
	b=L2o0nkgoAhrNPSh0AzITcdvfjf/M1K0uovjcoVIQdAnF9u4hqdw+5LwA4i53/cFPl
	 zspV5aqUqx1hzFDvK2OBL2MuM37RzNfz8hmxguyLkI6H/FFLbCV53FV179RzbBTevz
	 YUE3UXdiM6EqlEiyLux6o1O9I7DN52E1QZBieDp6RY4ORjxODkJaW+KtIpRvpiwc+4
	 N3zP7tNy1wfdMn6E7ubQXUH6Kg+KvSvsmIREpqmRUhrnMEGWAN04aEslh3IcIddPlx
	 Kvow8fBmrtmccwAVFnS2lxNaRd3YpVPvY7uUKCnzjdOVBK+LucxYJvn+ufIkHfxdTl
	 8HkQDvYt3Eq+A==
Date: Sun, 24 Nov 2024 22:10:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Ingo Schwarze <schwarze@openbsd.org>,
	"Branden G. Robinson" <branden@debian.org>
Subject: [PATCH] man2/: SYNOPSIS: Use SY/YS
Message-ID: <78b8c8acc83d4d1a1ab964e2574ba8024859b705.1732482078.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Za15BEWGzeH5ZgHc"
Content-Disposition: inline
X-Mailer: git-send-email 2.39.5


--Za15BEWGzeH5ZgHc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 24 Nov 2024 22:10:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Ingo Schwarze <schwarze@openbsd.org>,
	"Branden G. Robinson" <branden@debian.org>
Subject: [PATCH] man2/: SYNOPSIS: Use SY/YS

This makes it easier to write the SYNOPSIS, which will reduce the
learning curve for contributors.

Another benefit is that the prototypes are wrapped correctly for the
terminal width that the reader is using, so it's not hardcoded at 80.
It also removes the need for carefully aligning the prototypes by the
author of a page.

It causes a small unwanted problem: a white space is added after the
opening parenthesis.  That's a minor trade-off for the benefits it
brings.  Once groff 1.24.0 is released, we'll be able to use an
extension that it provides, which allows us to remove that space, by
using the second argument to SY.

Suggested-by: "Branden G. Robinson" <branden@debian.org>
Cc: Ingo Schwarze <schwarze@openbsd.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi all!

I'm preparing an important change for the SYNOPSIS sections of the
manual pages for syscalls and libc functions.  This was originally
suggested by Branden, which has authored a man(7) extension in groff
that will make SY/YS suitable for this.

This patch will be applied after Debian Trixie is released, and after
groff-1.24.0 is released (ideally groff-1.24.0 would be in Trixie, but
I don't know how likely that is).  I'm only foreshadowing for now.

This patch will be immediately followed by another one which will be a
scripted change: '/^\.SY.*($/s/($/ (/'
The idea is that distros using old versions of groff(1) (or other
formatters) that don't support the GNU extension would revert the second
patch, and get backwards-compatible source, at the expense of having an
unwanted whitespace.  Distros using a recent-enough formatter will be
able to get all the juice with no downside.

I'll slowly prepare this patch by transforming a few functions per day,
until the time comes.

Have a lovely night!
Alex

 man/man2/landlock_create_ruleset.2 | 11 +++++++----
 man/man2/posix_fadvise.2           | 10 +++++++---
 man/man2/wait4.2                   | 19 ++++++++++++++-----
 man/man2/write.2                   |  8 ++++++--
 4 files changed, 34 insertions(+), 14 deletions(-)

diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_=
ruleset.2
index cfeab62c9..5bc4ee529 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -15,11 +15,14 @@ .SH SYNOPSIS
 .BR "#include <linux/landlock.h>" "  /* Definition of " LANDLOCK_* " const=
ants */"
 .BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants =
*/"
 .B #include <unistd.h>
-.P
-.B int syscall(SYS_landlock_create_ruleset,
-.BI "            const struct landlock_ruleset_attr *" attr ,
-.BI "            size_t " size " , uint32_t " flags );
 .fi
+.P
+.SY int\~syscall(
+.B SYS_landlock_create_ruleset,
+.BI const\~struct\~landlock_ruleset_attr\~* attr ,
+.BI size_t\~ size ,
+.BI uint32_t\~ flags );
+.YS
 .SH DESCRIPTION
 A Landlock ruleset identifies a set of rules (i.e., actions on objects).
 This
diff --git a/man/man2/posix_fadvise.2 b/man/man2/posix_fadvise.2
index c7a42baa9..47fc5b789 100644
--- a/man/man2/posix_fadvise.2
+++ b/man/man2/posix_fadvise.2
@@ -15,11 +15,15 @@ .SH LIBRARY
 .SH SYNOPSIS
 .nf
 .B #include <fcntl.h>
-.P
-.BI "int posix_fadvise(int " fd ", off_t " offset ", off_t " size \
-", int " advice ");"
 .fi
 .P
+.SY int\~posix_fadvise(
+.BI int\~ fd ,
+.BI off_t\~ offset ,
+.BI off_t\~ size ,
+.BI int\~ advice );
+.YS
+.P
 .ad l
 .RS -4
 Feature Test Macro Requirements for glibc (see
diff --git a/man/man2/wait4.2 b/man/man2/wait4.2
index f419ce834..a55e21622 100644
--- a/man/man2/wait4.2
+++ b/man/man2/wait4.2
@@ -19,13 +19,22 @@ .SH LIBRARY
 .SH SYNOPSIS
 .nf
 .B #include <sys/wait.h>
-.P
-.BI "pid_t wait3(int *_Nullable " "wstatus" ", int " options ,
-.BI "            struct rusage *_Nullable " rusage );
-.BI "pid_t wait4(pid_t " pid ", int *_Nullable " wstatus ", int " options ,
-.BI "            struct rusage *_Nullable " rusage );
 .fi
 .P
+.SY pid_t\~wait3(
+.BI int\~*_Nullable\~ wstatus ,
+.BI int\~ options ,
+.br
+.BI struct\~rusage\~*_Nullable\~ rusage );
+.YS
+.SY pid_t\~wait4(
+.BI pid_t\~ pid ,
+.BI int\~*_Nullable\~ wstatus ,
+.BI int\~ options ,
+.br
+.BI struct\~rusage\~*_Nullable\~ rusage );
+.YS
+.P
 .RS -4
 Feature Test Macro Requirements for glibc (see
 .BR feature_test_macros (7)):
diff --git a/man/man2/write.2 b/man/man2/write.2
index cd0677cc9..cfbe706f6 100644
--- a/man/man2/write.2
+++ b/man/man2/write.2
@@ -25,9 +25,13 @@ .SH LIBRARY
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-.P
-.BI "ssize_t write(int " fd ", const void " buf [. count "], size_t " coun=
t );
 .fi
+.P
+.SY ssize_t\~write(
+.BI int\~ fd ,
+.BI const\~void\~ buf [. count ],
+.BI size_t\~ count );
+.YS
 .SH DESCRIPTION
 .BR write ()
 writes up to
--=20
2.39.5


--Za15BEWGzeH5ZgHc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdDljsACgkQnowa+77/
2zLugxAAmBUUXTlew/LTdYC1nraphA/mlpgUIZ7fBONTLBI/D1sQDD5/wZe4myok
Fq1C6cQuEI3D/utcOg8NHy3H2ZWx3jhXi8CWHSRLi+vT2RXHj7qyvX3MU6lKCk2c
bMJteQLrfH7eQ2F5nDCu8eg6kVam/x6okJM7YHHbyOlaiOuYVArHgf9hS5id3YRw
X2QC8EWRC2+TC0D4L7oI8LKQaukDy50HmQz0AdzzPV7KViw1BbX+HLn8oNorYScy
sGspxSn0v6SOlFUIh3qZk4Ip4C4DaOJOf91vImFDqIx6zCzV3noH3XPzORyV2N5Z
RtrPR5ctLdrUMPJlRhYf72lF0veotXst0T/fpMrCNlI1llsgfVXCULc404dk5es4
MjR6o+Ghd4aZoAuKxAp/E4ytue660+NgvSRmUZg3xAtdT+0mmmQgUEUHLhfGpLgE
0csfcHr9Kdl4TcxSPfttQB7zmRBHYn7A1diBrR+Obr1JAYlGZNHAa4o1VvI4mOta
8ZJw9/qsGDGofO6GJ9CCyoMYyh0UC6N6Q3IiApNrDdXxg4PiJuRfTxh+7LZkkIbN
gaxqx29CK/JODbmvjCyaOLdLzKWf7Eyz+FkC2dncaVt6g2C4NQIyqK85iRMgaXse
Plt551HpWDILDMpkP4pDY48uUmEfON90UHTOsF7bs5hCWIHbFc8=
=yM32
-----END PGP SIGNATURE-----

--Za15BEWGzeH5ZgHc--

