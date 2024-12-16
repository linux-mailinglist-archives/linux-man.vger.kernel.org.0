Return-Path: <linux-man+bounces-2151-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 508619F2D8E
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 10:58:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9CBE918877F9
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 09:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48A09202F95;
	Mon, 16 Dec 2024 09:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLiXpFuV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08910202F71
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 09:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734343060; cv=none; b=ko0WeaKasLGOvgtjRRJ1EYIpmQvd0iVfWtQN+X4CGGuMLSzjaSnr61CU3lMt20eWCQneFFyjwPZaeT2OOIQntOgNjUuj30glV74ybGnCAB/A5r+tbTf4bZ1TIZxiZZA8Q54WeOHqn2KpFj3hFT2Etp+hbZbkgDSsOu6Tby+kQQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734343060; c=relaxed/simple;
	bh=CxfqNj70HSu9wNMRnZJDVe+w6Ebw4DXeQQSOHTcJ98k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fi5ucdVQQrr8IHyRPIokva+qDNLPgotRPk1auy0S+E6zFEG3yJ4wn1PLixbITP3XNJjFxl1RPYm0TCJUra0IKzcTZWjEPiICSvBT+eHR8LBwIS56oloN+QmEzU50jo4lbWVakPyHr+TfanSQbpv9OwLXov2i3fZlsTaga4A/IDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLiXpFuV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E590FC4CED0;
	Mon, 16 Dec 2024 09:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734343059;
	bh=CxfqNj70HSu9wNMRnZJDVe+w6Ebw4DXeQQSOHTcJ98k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OLiXpFuVQ9305KqYPG/6QYLuCZcVT84AISrH+pmpHc7H70v/oB5jwLndKyajbg9fR
	 KimP3ONNmTRp11jrgqU5QI90Bj0lS5SAdJlTunzow91Ajp7+Rf1B/T/2OKyatkARkb
	 4FJA9opFweI0ZUbn+brcrYU+mYQNbeQJgM3TVH1llmeHQ9qFjcND/z6f/AFl5Ec6XX
	 JGletHNxyuMGkf/Bv/DwkEmjUj5lKCrg+lXxcM2E4HdaO2SnEGYvHkLteZy8xtFyul
	 bqcCaIcyq3qL+bTKzYMZUTgBX253vaeIqcm9U98co9guiM/WuLDMM+C+zxhjz22Et/
	 CsTknug28/PnA==
Date: Mon, 16 Dec 2024 10:57:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] strverscmp.3: this is NOT the ordering used by ls -v
Message-ID: <20241216095736.yzkofmgtgzidlp2j@devuan>
References: <pvaw3u77afqspd5vjqcke7qdmz4on7qsqbkjltis6hbpxqwwvw@tarta.nabijaczleweli.xyz>
 <20241215204358.toi5nb37sksfdwle@devuan>
 <wrudkskbkovv2hll3j4mfvd3hm5e5onagijixk6ymov5maolsk@tarta.nabijaczleweli.xyz>
 <20241215214426.bykmhqabmmy7xyi7@devuan>
 <myuppkwnltqtxduoop7g7wfuyou5cdo6sotocrvyztmqnazvph@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kkrhs73hoxa42upc"
Content-Disposition: inline
In-Reply-To: <myuppkwnltqtxduoop7g7wfuyou5cdo6sotocrvyztmqnazvph@tarta.nabijaczleweli.xyz>


--kkrhs73hoxa42upc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3] strverscmp.3: this is NOT the ordering used by ls -v
MIME-Version: 1.0

Hi nab,

On Mon, Dec 16, 2024 at 02:00:45AM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Sun, Dec 15, 2024 at 10:44:26PM +0100, Alejandro Colomar wrote:
> > On Sun, Dec 15, 2024 at 10:02:42PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > > Should we file a bug against glibc strverscmp(3)?  We probably shou=
ld.
> > > >=20
> > > > And the reference to sort(1), I'd put it in BUGS, saying that this =
API
> > > > is broken, and does not sort properly.  Sounds good?
> > > No, this API works as-documented, and the implementation is useful.
> > What does useful mean?
> There are applications where a lexicographical-except-numeric comparison
> like this is what you want (it's most of them). Calling it a "version
> sort is silly + goofy but, whatever.

Hmmm, yeah, we can live with that for historical raisins.

> > > It's just not what ls -v does.
> > While version sort isn't something standard, I think GNU should be
> > self-consistent.
> It is, ls -v and sort -V are consistent.
> Having just implemented the /actual/ algorithm they use for voreutils,
> that is by far /not/ universally applicable, much hairier, and hard-tuned=
 for
> "versions that are kinda like debian describes and sorts them (but not ac=
tually)
>  AND ALSO we put them in filenames where we can assume the format a littl=
e bit
>  AND ALSO {4 special cases to make ls -v work}".
> Replacing this well-defined lexicographical-except-numeric sorter with...=
 that,
> isn't really applicable.

Sounds reasonable.

>=20
> Best,
> -- >8 --
> From: =3D?UTF-8?q?Ahelenia=3D20Ziemia=3DC5=3D84ska?=3D
>  <nabijaczleweli@nabijaczleweli.xyz>
> Subject: [PATCH v3] strverscmp.3: this is NOT the ordering used by ls -v
>=20
> Compare, given:
> 	#include <stdlib.h>
> 	#include <stdio.h>
> 	#include <string.h>
> 	int compar(const char **l, const char **r) {
> 		return strverscmp(*l, *r);
> 	}
> 	int main(int argc, char ** argv) {
> 		qsort(argv + 1, argc - 1, sizeof(*argv), compar);
> 		for(int i =3D 1; i <  argc; ++i)
> 			puts(argv[i]);
> 	}
> yields:
> 	$ /bin/ls -v1 a*  # coreutils ls
> 	a-1.0a
> 	a-1.0.1a
> 	$ ../vers a*      # as above
> 	a-1.0.1a
> 	a-1.0a
> 	$ ls -v1 a*       # voreutils ls @ 5781698 with strverscmp()-equivalent =
sorting
> 	a-1.0.1a
> 	a-1.0a
> compare also the results for real data like
> 	netstat-nat-1.{0,1{,.1},2,3.1,4{,.{1,2,3,4,5,6,7,8,9,10}}}.tar.gz
>=20
> Thus, coreutils ls -v does NOT use strverscmp(3);
> it uses a modified Debian version comparison algorithm with additional
> suffix processing and ls -v-specific exceptions.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Patch applied.  Thanks!

Have a lovely day!
Alex

> ---
>  man/man3/strverscmp.3 | 23 ++++++++---------------
>  1 file changed, 8 insertions(+), 15 deletions(-)
>=20
> diff --git a/man/man3/strverscmp.3 b/man/man3/strverscmp.3
> index 41bc1ddbd..e028d6788 100644
> --- a/man/man3/strverscmp.3
> +++ b/man/man3/strverscmp.3
> @@ -18,25 +18,14 @@ .SH SYNOPSIS
>  .BI "int strverscmp(const char *" s1 ", const char *" s2 );
>  .fi
>  .SH DESCRIPTION
> -Often one has files
> +For a dataset like
>  .IR jan1 ", " jan2 ", ..., " jan9 ", " jan10 ", ..."
> -and it feels wrong when
> -.BR ls (1)
> -orders them
> +sorting it lexicographically yields
>  .IR jan1 ", " jan10 ", ..., " jan2 ", ..., " jan9 .
>  .\" classical solution: "rename jan jan0 jan?"
> -In order to rectify this, GNU introduced the
> -.I \-v
> -option to
> -.BR ls (1),
> -which is implemented using
> -.BR versionsort (3),
> -which again uses
> -.BR strverscmp ().
> -.P
> -Thus, the task of
> +The task of
>  .BR strverscmp ()
> -is to compare two strings and find the "right" order, while
> +is to compare two strings yielding the former order, while
>  .BR strcmp (3)
>  finds only the lexicographic order.
>  This function does not use
> @@ -44,6 +33,10 @@ .SH DESCRIPTION
>  .BR LC_COLLATE ,
>  so is meant mostly for situations
>  where the strings are expected to be in ASCII.
> +This is different from the ordering produced by
> +.BR sort (1)
> +.BR -V .
> +.\" sort -V sorts a-1.0a < a-1.0.1a; strverscmp() does not
>  .P
>  What this function does is the following.
>  If both strings are equal, return 0.
> --=20
> 2.39.5
>=20



--=20
<https://www.alejandro-colomar.es/>

--kkrhs73hoxa42upc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdf+ZAACgkQnowa+77/
2zKKYA//dg0W1PkTaynSspRlujp4rHVwtRxeiQxCjGef+6RykjbHK5mDw54gitHz
ZRsZYCguYHYwqEh423zuO6FIFxxULWYvHcvhfzURbpA53hNgIjZzlkwQVUqYPyFC
e4r6hXiRx7+abbzencWC7rkO52nS9s79aUtt2Tx6NBZDm/iVlyGNUvBHQOw3KG4/
FHAG0bxxGoD4nPjiZOpTElUAXB0Ii1esHHDnmW5scEao46G1P1CMbd2NXyfh6VUw
bCeLche0mljMWIOzXpKzTC76AGCOXpe0IimDpN3uGvisJcjZUuWjMBsVn8wNCKoJ
ASK6fSIx28pr3KKaJPHaOb1fGNkiEsE/7H2+aekfmXQ5hnYRwBzygh3ib49bekjk
k8fIswcrUKBmFfWOzXXbzP0pCrrPA0PTTxV6LVjzCQYmbKVmLXji++tgeR/cq5fK
V3T1a2en8xfjM22UQhNBPX/wM//sonSn2CkQzbIj9gBdbNBfGiKKrUDnEa2RnTad
zVKnw3laaA+jWN7WBH57J0bd0cwf4T5YtmWWMDQ1Xcx/hHg+EwbxCE5d0Z/+cCiz
AQqzYUhYYDkKYCzMVyFNtTcsCkvKO9ErBcsAxN+UaPf0Vj8aTSrGujcGkX9p1goP
HdT4XoLHcjrohrwwWKnCI9n8FDQG8KsE72WO9tsSqjJ7P3m8LdU=
=CeXw
-----END PGP SIGNATURE-----

--kkrhs73hoxa42upc--

