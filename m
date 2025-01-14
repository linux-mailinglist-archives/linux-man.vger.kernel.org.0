Return-Path: <linux-man+bounces-2232-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC5CA114FC
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 00:07:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 15AAA161A87
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 23:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C95F3222584;
	Tue, 14 Jan 2025 23:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7Fi5UMM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8962D219E82
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 23:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736895962; cv=none; b=uOP6WjQHlqqT34uYNss8iDcqEoMDu/DWeLFqXO7tqGWXhTwFFbKeg8LZjbXpUncLarHrqmxKIXKijijBrwpUigY7zGL7LnPuBLqv5XQKUahlf0/5QJ0vmJsmXCKhg9XMYd07ciWRpPH1RiWRfJ1wYHP7iFcsID0Nj0EpoaGUUD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736895962; c=relaxed/simple;
	bh=83GAXUbEDgGpvJBoC2u6ECKvlEdIItBgJjhfLFNkFho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RAaevVcel0qwkOntj5EeZlXeJh4LHq0cv/QN8gNH2duoAuV2CBVDYna8bTxPkjQ1LmQJfZxWEaYVWEGmQsV78flNg3i5lZbdtD80am3pbjqI5ODiIYNouEIO2nCYd+Fb3xJsUgX6TksD7ixBdUbTHU8WWcz9UBpueqjWVprrEyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7Fi5UMM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42616C4CEE3;
	Tue, 14 Jan 2025 23:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736895962;
	bh=83GAXUbEDgGpvJBoC2u6ECKvlEdIItBgJjhfLFNkFho=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h7Fi5UMM3PGru07hObpECg7e0H55Q1fZvyPd3wPRG7KVPl81u+hvuZaIJ6y6bo7/v
	 HQ3gbjMz7V1s59YP5ldc1whPkn8zYgn5DjJtkBLDmdQv55EuQBZbZGL4v1M+PgT/rY
	 5K5A9eBYYPLwRH/iG8W/krjRMuExvNFRc2cbKDjrG2WJDpaYCKdwILoZYgbXYHWsdv
	 hpiWraAnER7j04On9G91bcdu6h1CwmICaT/wgwxUz4dSjeiFcEB5+C2ofo2JcQJles
	 N5nKXk6rVBPRiH8b2/EmqPF//ZlOGOd5MZepEx6ROTr7TkO69QSUZoOiK4M3kgP/dA
	 tf68F+c97X+AA==
Date: Wed, 15 Jan 2025 00:06:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v2] man/man7/path-format.7: Add file documenting format
 of pathnames
Message-ID: <lkualciyuk7hv7dcpcvp5xprtq3gmiscogr5lcjhvh56cia2my@bm5opv5k3adj>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250114125453.27520-1-jason@jasonyundt.email>
 <4hr3zjbop6w5bsvcm4op32akjibwt4vkz52itcdjsdjpsvp7cs@nfahhxnwzlsk>
 <r6bjj4gemyri65nlgq5pm4sro5cdkuml4d5f5nelyuebinb2u7@yuf4ducafb2v>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ogxuzdgdtdiq3wtt"
Content-Disposition: inline
In-Reply-To: <r6bjj4gemyri65nlgq5pm4sro5cdkuml4d5f5nelyuebinb2u7@yuf4ducafb2v>


--ogxuzdgdtdiq3wtt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v2] man/man7/path-format.7: Add file documenting format
 of pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250114125453.27520-1-jason@jasonyundt.email>
 <4hr3zjbop6w5bsvcm4op32akjibwt4vkz52itcdjsdjpsvp7cs@nfahhxnwzlsk>
 <r6bjj4gemyri65nlgq5pm4sro5cdkuml4d5f5nelyuebinb2u7@yuf4ducafb2v>
MIME-Version: 1.0
In-Reply-To: <r6bjj4gemyri65nlgq5pm4sro5cdkuml4d5f5nelyuebinb2u7@yuf4ducafb2v>

Hi Jason,

On Tue, Jan 14, 2025 at 04:00:46PM -0500, Jason Yundt wrote:
> On Tue, Jan 14, 2025 at 02:14:42PM +0100, Alejandro Colomar wrote:
> > Maybe we should call the page pathname(7)?
>=20
> I don=E2=80=99t really have an opinion one way or the other.  If you want=
, I can
> submit a new version of this patch that changes it to pathname(7).

Hmmm, yep, let's make it pathname(7).

> > There's a specific term for this: string.
> >=20
> > Which means you don't need to explain so much about the null byte.
> > It is understood that a string cannot contain null bytes (except for the
> > terminator itself).
>=20
> I purposefully avoided using the term string because I thought that
> using the term string would make the manual harder to understand.  The
> term string is associated with several different concepts, and those
> concepts would hinder someone=E2=80=99s understanding of paths:
>=20
> =E2=80=A2 The term string is often used to refer to counted strings, and =
counted
>   strings can contain null bytes.  I=E2=80=99m more used to counted strin=
gs than
>   null-terminated strings personally because I have more experience with
>   Java, Python and Rust than I do with languages that default to using
>   null-terminated strings.  I know that the Linux man-pages mainly focus
>   on the C programming language, but paths in particular are something
>   that applies to all programming languages.
>=20
> =E2=80=A2 Even in the context of the C programming language, the term str=
ing can
>   still refer to counted strings.  The Windows kernel has three
>   different structures: ANSI_STRING [1], OEM_STRING [2] and
>   UNICODE_STRING [3].  All three of them are counted and can contain
>   null bytes.  As a result, it=E2=80=99s possible to create valid paths on
>   Windows that contain NUL characters [4].  When I wrote this manual
>   page, I wanted to make it clear that this was one of the ways that the
>   Linux kernel differs from the Windows kernel.

Makes sense.  How about a null-terminated string?

> =E2=80=A2 People often think of strings as sequences of characters.  In
>   programming languages like Python, this is literally true (you have to
>   convert a str object into a bytes object if you want to work with
>   bytes instead of characters).  To have the best possible understanding
>   of how the kernel handles paths, you should think of them as sequences
>   of bytes, not as sequences of characters, and the term string makes
>   people think of sequences of characters.
>=20
> =E2=80=A2 When I=E2=80=99m writing code in C or C++ and I see a char *, I=
 assume that
>   it=E2=80=99s supposed to contains characters that are encoded in the ex=
ecution
>   character set.  That is not a good assumption for paths.
>=20
> When I first tried to figure out character encoding of paths on Linux, I
> found stuff like this post [5].  That post (among others) really helped
> me understand paths better because it specifically describes paths as
> sequences of bytes rather than strings
>=20
> [1]: <https://learn.microsoft.com/en-us/windows/win32/api/ntdef/ns-ntdef-=
string>
> [2]: <https://learn.microsoft.com/en-us/previous-versions/windows/hardwar=
e/kernel/ff558741(v=3Dvs.85)>
> [3]: <https://learn.microsoft.com/en-us/windows/win32/api/ntdef/ns-ntdef-=
_unicode_string>
> [4]: <https://googleprojectzero.blogspot.com/2016/02/the-definitive-guide=
-on-win32-to-nt.html>
> [5]: <https://unix.stackexchange.com/a/39179/316181>
>=20
> > I think I would skip this.  It is implicit by the fact that the only
> > forbidden character in a filename is '/'.
>=20
> OK, I=E2=80=99ll submit a v3 that removes that part.
>=20
> > It might be good to mention that some filesystems restrict the valid
> > characters in a filename.
>=20
> OK, I=E2=80=99ll submit a v3 that adds an example of a filesystem that pu=
ts
> restrictions on the bytes that can be in filenames.
>=20
> > Do we want to recommend that?  IMHO, for maximum portability, programs
> > should assume the Portable Filename Character Set (or at most some
> > subset of ASCII), and fail hard outside of that, which will itself favor
> > that users self-restrict to portable file names.
>=20
> I have a concern about programs failing hard when paths contain
> non-ASCII characters.  I have a lot of songs and medleys saved on my
> computer.  The paths for over 10,000 of them contain non-ASCII
> characters.  Most of those non-ASCII characters come from Chinese,
> Japanese or Korean characters that are in the titles of songs or
> medleys.  If programs failed hard on paths that contain non-ASCII
> characters, what impact would that have on my music collection?

The core utils (e.g., rm(1) et al.) are nice and work well for arbitrary
characters, to allow you to fix them.  But yeah, most high level
programs and (especially) scripts aren't so nice.  Think for example of
makefiles, where handling files with spaces correctly is almost
impossible.


Have a lovely night!
Alex

> Even if we were to only use a subset of ASCII characters, I would still
> be concerned about programs failing hard when paths contain characters
> outside of the POSIX Portable Filename Character Set.  I dual boot Linux
> and Windows.  When I installed Windows, it automatically created
> partitions named =E2=80=9CMicrosoft reserved partition=E2=80=9D and =E2=
=80=9CBasic data
> partition=E2=80=9D.  At the moment, I can access those partitions using t=
he
> paths /dev/disk/by-partlabel/Microsoft\x20reserved\x20partition and
> /dev/disk/by-partlabel/Basic\x20data\x20partition.  If programs failed
> hard on paths that contain characters outside of the POSIX Portable
> Filename Character Set, would I have to fall back to using /dev/sda1 and
> /dev/sda2?

--=20
<https://www.alejandro-colomar.es/>

--ogxuzdgdtdiq3wtt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeG7dwACgkQnowa+77/
2zKb3hAAjStJFtkVJzkIERYi3yQNWkf9xE7oa6YOy1iYh66TknvO16hJ/LqLNOTm
YubdGEeQjRqFyEuB7+EU3sVJf3DDDifoPCeGMHDb6+2N/qm08xA+Gk9oWjfDULkm
BN6qbDVJIjsTVzmad5JVj2smW445xkGq80x88nUmMPd3Q+gXYUPZm9yL/w1D6Mlc
9bqDf6Tw9Z4XfYTqEafnw6OpPvlnld/Bnw3sFzNqJ40PuISzJJdJ318RHhlMq9dD
xUq1Y5BKUE+x+VA5xV9BfNkfZfivXQNVougsIOEmK2U5TfgbvDvyF/3n54OUe18z
297CiZ8PcpUJ4HJsbXR9XceJPhuXSjqEWyDAXhMJ0tKU/ipPZeKCLOZgQ09d3uX7
TrzH2ttooGrTB9IPEA66FtwP6OYlrPCEXKE05vzr2AqyxxKH6nsDVRG5BHKs2w5N
oQcmrJNZKHNh77GgfSnQ7irdmKt0DkGB5zYhkSLZj37UbHHmgPF9x+xyAeUr1IIM
DjzwNfUOUymkdaG/HjH+W9kfigAEz9/EfCtfhBd+v8/fTqdxjIfb338SMmJa7AaJ
rnkt5TIxpwlziG48lkqp7HOeWxVYgOAAJanKNEIMfoneEkI0b9RVp1AzX0DnBLpN
s5v2S/1Wp7gyUzehNXkCHjlNBK4gnpEl1qaUVj7/SJj0IlvD4M8=
=ZHOo
-----END PGP SIGNATURE-----

--ogxuzdgdtdiq3wtt--

