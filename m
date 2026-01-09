Return-Path: <linux-man+bounces-4772-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 369E6D0862B
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 11:01:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A7AC8300D32A
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 10:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4AFB332ECD;
	Fri,  9 Jan 2026 10:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvdRWZhE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D49C23C8A0
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 10:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767952854; cv=none; b=TmCidgy0lNsOepl1oq6+8CY0FeI48rg1mI3tiIqZ28adn7x2NvIoXJLuJaYBXzjQTdh0NiftdbQroTJcq+fe/2X9R/1EmL5sQ7k7XxoHM/Y/oHeRV/kaCc4hgtNVoeaO3IZGb5zoHF7h9Il1k0AdgB1IMyqpaMzl/HiKUizuhuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767952854; c=relaxed/simple;
	bh=UKQqYEL+r22JNm6U8BTTskPDVb9JgBZOOJzo0TKOZEw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R2cLByGPBz3g/BShIBgytWd+cKoH/NDm6TTFkyTlM2nuPgkLinpMcehZa3KRq39uGlVBmopQw85MiDJT9w2ncPTFMbJttDRQqQzTaGRoHGwz28TdoUe95QgssGBO8ISUrs0g/DHyEH2cVj6J9Xtic9xf+4XKjZvJWaqhyrE/oYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvdRWZhE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81899C19423;
	Fri,  9 Jan 2026 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767952854;
	bh=UKQqYEL+r22JNm6U8BTTskPDVb9JgBZOOJzo0TKOZEw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hvdRWZhE4Eepdk6oucFFeEx0V9FaEjkclGdxXD+5ihUZKMVI6J0ujmdQ0vpA/mDK4
	 qKGMmms6EKPiwihiHz18tN6YSBXbk2Fvgb0AYoYdkKyE0vq/Q1h7VpVBa1Q3f+1ksQ
	 RX7xS0UHeyJQK9Nk5Zu4li6GrpTjfLJrF0w6bYgwq6GkzXvedKiwmnjoOwFI8DIXXm
	 /zDMI0cu5GfJbjuyOL9BVNVr7eqyO5+SMNR/SxEYRy2HHxmhzegxGHNEllzpg5B4wt
	 UQz8FlXYZZEwFtpJyxKpPHywI0/BB9DQK0u6qR0QgtXjhgbIyMZ1UC8usmLaxN+BMY
	 abv1+Bseo8yig==
Date: Fri, 9 Jan 2026 11:00:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 08/11] man/man3type/stat.3type: HISTORY: Specify first
 POSIX appearance of st_{rdev,blksize,blocks}
Message-ID: <aWDO3nEcZWMcqvXx@devuan>
References: <cover.1767840410.git.sethmcmail@pm.me>
 <9d3a705508aaaec7b2ee5c79bb284fd508008fce.1767840410.git.sethmcmail@pm.me>
 <aV-ZG_8At_-R7G2v@devuan>
 <AzV_uq5wDJK6TGmy0mhak2A1ooip-Z-E6YOBGNRtQXcSgNNe0SlkUc0uHPvPaAVxQZMRSpw_nrvCwq3u3MnibR-mB-ymp3ycoAH9fIhWu6k=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ufqrtma7e4hm6evp"
Content-Disposition: inline
In-Reply-To: <AzV_uq5wDJK6TGmy0mhak2A1ooip-Z-E6YOBGNRtQXcSgNNe0SlkUc0uHPvPaAVxQZMRSpw_nrvCwq3u3MnibR-mB-ymp3ycoAH9fIhWu6k=@pm.me>


--ufqrtma7e4hm6evp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 08/11] man/man3type/stat.3type: HISTORY: Specify first
 POSIX appearance of st_{rdev,blksize,blocks}
Message-ID: <aWDO3nEcZWMcqvXx@devuan>
References: <cover.1767840410.git.sethmcmail@pm.me>
 <9d3a705508aaaec7b2ee5c79bb284fd508008fce.1767840410.git.sethmcmail@pm.me>
 <aV-ZG_8At_-R7G2v@devuan>
 <AzV_uq5wDJK6TGmy0mhak2A1ooip-Z-E6YOBGNRtQXcSgNNe0SlkUc0uHPvPaAVxQZMRSpw_nrvCwq3u3MnibR-mB-ymp3ycoAH9fIhWu6k=@pm.me>
MIME-Version: 1.0
In-Reply-To: <AzV_uq5wDJK6TGmy0mhak2A1ooip-Z-E6YOBGNRtQXcSgNNe0SlkUc0uHPvPaAVxQZMRSpw_nrvCwq3u3MnibR-mB-ymp3ycoAH9fIhWu6k=@pm.me>

Hi Seth,

On Fri, Jan 09, 2026 at 03:31:46AM +0000, Seth McDonald wrote:
> On Thursday, 8 January 2026 at 21:48, Alejandro Colomar <alx@kernel.org> =
wrote:
> > On Thu, Jan 08, 2026 at 01:03:14PM +1000, Seth McDonald wrote:
> > I think this would be simpler like this:
> >
> > 	@@ -135,7 +135,14 @@ .SH DESCRIPTION
> > 	.SH STANDARDS
> > 	POSIX.1-2024.
> > 	.SH HISTORY
> > 	+.TP
> > 	+.I stat
> > 	POSIX.1-1988.
> > 	+.TP
> > 	+.I .st_rdev
> > 	+.I .st_blksize
> > 	+.I .st_blocks
> > 	+SUSv1, POSIX.1-2001 XSI.

Apart from the TQs, I forgot to use one line for each.

> > 	.P
> > 	Old kernels and old standards did not support nanosecond timestamp fie=
lds.
> > 	Instead, there were three timestamp fields
> >
> > What do you think?
>=20
> That would certainly work.  I initially thought about doing that, but
> decided against it since I hadn't at the time seen any other pages that
> list individual structure members in their history section.  But if
> you're on board with it, then I'll send in a v2 with this fixup.

You're right that I can't find any existing pages documenting individual
field members in STANDARDS or HISTORY, but I think it's fine and
desirable.

> Btw, I'll want to add in some '.TQ's between the listed members, as
> without it the formatting looks a little funny.

Sure; I forgot about them.  :-)

> 	$ MANWIDTH=3D64 man ./man3type/stat.3type | sed -n '/^HISTORY$/,+5p'
> 	HISTORY
> 	       stat   POSIX.1-1988.
>=20
> 	       .st_rdev
> 	              .st_blksize .st_blocks SUSv1, POSIX.1-2001 XSI.

You may be interested in diffman-git(1).  I think it would help
reviewing your diffs.  Here's some example of how it works:

Considering the following diff:

	$ git diff
	diff --git i/man/man3type/stat.3type w/man/man3type/stat.3type
	index 44d45b4a5..1a99d1d0a 100644
	--- i/man/man3type/stat.3type
	+++ w/man/man3type/stat.3type
	@@ -135,7 +135,15 @@ .SH DESCRIPTION
	 .SH STANDARDS
	 POSIX.1-2024.
	 .SH HISTORY
	+.TP
	+.I stat
	 POSIX.1-1988.
	+.TP
	+.I .st_rdev
	+.I .st_blksize
	+.I .st_blocks
	+SUSv1,
	+POSIX.1-2001 XSI.
	 .P
	 Old kernels and old standards did not support nanosecond timestamp fields.
	 Instead, there were three timestamp fields

You can check the exact changes to the manual page:

	$ diffman-git=20
	--- HEAD:man/man3type/stat.3type
	+++ ./man/man3type/stat.3type
	@@ -105,7 +105,10 @@ STANDARDS
	      POSIX.1=E2=80=902024.
	=20
	 HISTORY
	-     POSIX.1=E2=80=901988.
	+     stat   POSIX.1=E2=80=901988.
	+
	+     .st_rdev
	+            .st_blksize .st_blocks SUSv1, POSIX.1=E2=80=902001 XSI.
	=20
	      Old kernels and old standards did not support nanosecond timestamp f=
ields.  In=E2=80=90
	      stead, there were three timestamp fields =E2=80=94=E2=80=94.st_atime=
, .st_mtime, and .st_ctime=E2=80=94=E2=80=94

For more documentation, see diffman-git(1), of course.  :)
It's provided in the repository, in case your distro doesn't provide it
yet.  You can install it with the usual

	$ make -R -j4 && sudo make -R -j4 install;

Or just run it from the repo, since it's a bash(1) script.  It's here:

	$ find * | grep diffman-git
	man/man1/diffman-git.1
	src/bin/diffman-git


> I'll also send in the next set of man3type patches with chronological
> ordering, at least as far as I can tell. :)

Thanks!

>=20
> ----
> Seth McDonald.
> sethmcmail at pm dot me (mailing lists)
> 2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369

I have a question: do you use mutt(1) or neomutt(1) by chance?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--ufqrtma7e4hm6evp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlg0cwACgkQ64mZXMKQ
wqlbwg/+O9GpilQEOQ3yM0CVUhrzQY6vqZdZyrGPhXv9cX11Y7SlpzghQuoJZ6Ym
8QVXaccz07j9oV8V4IFRmM+Lk0hCvFJhovYJesEcG+TzEkP3Gn1RK+5a2MGFokB8
E13K+iTSHRNY7dZvOvsnR/E0k0k+k/2qm9dPf1p8DPS6ouI8HLcIQZ6ID5X60CW6
ahXiGIsXbBCKfUmxoGBNMIjD9X8PW5ijiJgk2/hiaVoKk2lqRb3gFxYgpZuuh9Mp
ab3vne6Wm0IpHIEbxsZkA0G6i59VEKg5bzlZ6aW7jZwKB/QNkgFNTR+Cw5nUwLta
Fd1PJxyrTGl3pc30wXCF1uRm36kYW+fTRtY+sXo9KfVdv04+CC5TjBhEG40DoxBR
uQd1g7hgOB87+kIe8W/kOzOE63wTgcFa+otLXxOS2BJGuTQ1wHt7XCes3SUZ9xB1
oGFHMW35W3acqfvEEWb+bRMr4vOwTnhVQQM/IxXCukDt3x6aiY7MvECzhyC/HrwP
YN59VOmTnwjoLw4i4dhI3Fvl3bMEVdLoNw41ciDzWLZXsx/0Q9tnWrdShQq27xaF
UgHAsav6aAFk0bYD/nSuQOwSdNaiQkIuAQ4ccTMhl+ow9wpXLl/A0mOtTXJIV+VR
ptKJ+5PS2vrX2q/tM6ZY7bSKOfc/rIZAJEPvV6SJwtwpEYOmfwA=
=X22L
-----END PGP SIGNATURE-----

--ufqrtma7e4hm6evp--

