Return-Path: <linux-man+bounces-675-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D83A3880555
	for <lists+linux-man@lfdr.de>; Tue, 19 Mar 2024 20:24:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7709B1F2350B
	for <lists+linux-man@lfdr.de>; Tue, 19 Mar 2024 19:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96A4739FC1;
	Tue, 19 Mar 2024 19:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X99g75Li"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566B53A8C2
	for <linux-man@vger.kernel.org>; Tue, 19 Mar 2024 19:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710876258; cv=none; b=PGanT4vWWNpjT60ihYNATvKi3YNqJOjp6rQsEOVXpOVcr4F4suu5peD7nadMi1qRD3TxClSRxTnAbJe/onCL43Y3w9abk839urjHZTb7x2PlhaTlXijpOjt2SD8BfkHoqG5Av3/T7wIErcbsKJdk7FeXCkuhWa18cFEhKV5QFCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710876258; c=relaxed/simple;
	bh=VfMvhkEAC0Xs4/Twz4Xej0anx90jwfzihJ4cqSuUkL0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gIp2+x3toyQ/vFbNw+zA8I7pimrxMOUj3wPKspkcB/JsPVb1TGMnM92FPE9X7M89Iz0QI/wT0jD+n/UD94XiUMEijdGO1sc+09T3xqvuREWsmMFs9pMW/roXVLw51iTlOORL4PGYzWnfpR6gmziVtxHLtQ0cF6KCTcYJY7rusqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X99g75Li; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37E0CC433F1;
	Tue, 19 Mar 2024 19:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710876257;
	bh=VfMvhkEAC0Xs4/Twz4Xej0anx90jwfzihJ4cqSuUkL0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X99g75LiiecW2pmIc3rHEilJVPXP1SetJtWuN0L32wS2vKFqZT8pUoz4yXgoVXxHu
	 kq1wKW2R3iqMnj9UV8EIIJXHwWN/hkScXqDSwkb/m/R4nNnBFhCv1r+9np6xXJCs6a
	 4QCKg/5nluTsPcBXbPJ9EihqTq+8mcNSkxLapYkU5xsHpMoCYn1pvtWof+1egaBeAm
	 AQ0b0RL+ch368wRS9BRrvk8VVzlss9dLxAim9uw7Ll+h39qVW9hyE31/Jhep+6HsTH
	 hZGvhX1rW/tbjnYCpd94m2UBix5MerCYO8oLYWVWvFHcqcFeikNUVijmWm0WdHz5ze
	 wDj/mQRXNu/7A==
Date: Tue, 19 Mar 2024 20:24:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Petr Gajdos <pgajdos@suse.cz>
Subject: Re: man-pages-6.7 released
Message-ID: <ZfnmXwFIjWFiHOsC@debian>
References: <Zfna9TOEMqQdI88n@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LAbajOmk/bfyBHFg"
Content-Disposition: inline
In-Reply-To: <Zfna9TOEMqQdI88n@debian>


--LAbajOmk/bfyBHFg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 Mar 2024 20:24:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Petr Gajdos <pgajdos@suse.cz>
Subject: Re: man-pages-6.7 released

Cc =3D pgajdos

On Tue, Mar 19, 2024 at 07:35:33PM +0100, Alejandro Colomar wrote:
> Gidday!
>=20
> I'm proud to announce:
>=20
> 	tag man-pages-6.7
> 	Tagger: Alejandro Colomar <alx@kernel.org>
> 	Date:   Tue Mar 19 19:07:31 2024 +0100
>=20
> 	man-pages-6.7 - manual pages for GNU/Linux
>=20
>=20
> Thank you all for contributing!
>=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in m=
an-pages-6.7 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Released: 2024-03-19, Val=C3=A8ncia
>=20
>=20
> New and rewritten pages
> -----------------------
>=20
> man3/
>         TIMEVAL_TO_TIMESPEC.3
>=20
>=20
> Newly documented interfaces in existing pages
> ---------------------------------------------
>=20
> man2/
>         process_madvise.2
>                 process_madvise() glibc wrapper
>=20
>=20
> New and changed links
> ---------------------
>=20
> man3/
>         TIMESPEC_TO_TIMEVAL.3           (TIMEVAL_TO_TIMESPEC(3))
>=20
>=20
> Global changes
> --------------
>=20
> -  Build system
>    -  Reorganize build system
>    -  Clarify dependencies
>    -  Clarify configurable variables
>    -  Add 'distcheck' target
>    -  Ignore known warnings
>    -  Replace uses of man2html(1) by grohtml(1)
>=20
>=20
> Changes to individual pages
> ---------------------------
>=20
> The manual pages (and other files in the repository) have been improved
> beyond what this changelog covers.  To learn more about changes applied
> to individual pages, or the authors of changes, use git(1).
>=20
> --=20
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--LAbajOmk/bfyBHFg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX55l4ACgkQnowa+77/
2zKbEw/6A8yIF+RIuE43rHp7pY/35zJEWkKN+NpLNcHpgjqfDPhFTD5pnQAJ0Rm5
Cp9CdppUwxjocrxSaONIO2WgPw3v9ON2kWZr2M5RcUWbv2KfxHUE1ZJ7WadQEFGH
7Q//i20ow7d3dtSnUmP1FwkPEDZ1NVPIGrtrhyTrSlptyCNDPrGBVO+PtJv+FKD2
zuomZmX9i4OuPBInlTAbQu36q+6rqBEbuOWDvT7wwnFhdVOC7y6MHuJjM8hNWRdV
o2pNWXLNZwS7qeaIgXcN66yucqXH09sxOZI8LBXx5bLfBulLc+6QhWSfZudQGzJK
UQLkJiGF3jwpfb5JZAep2R9cfpozxHjos5rQaXh1bMRc9NxdcmRN3PDEIAfsi9/S
e6/o7Y1mUVNzGF8+uHeWFdUM5GBV6RghnN5Pli4MetZOwOyOsbKAM9ruw/eVhAwh
M3soMJEdLpNQEz6h8WSA+TaAEA9L9vC1f41ks4dQ9l1XxmLHraztxoUJpAgoDP0T
4fXFa82RztLhQMqXzQrs2e0GCZTFZ3AkYTDhyY3WwIYrMtn3/m9aqNdqNqTeLLWD
ESCe3sO2B3kmfdlrx6jS91Nk7LjdBSkVj3RceZpIlt7Qs1Hj1CO7ZOHNuvDg/3UV
ylEyEo1b83WAnBRfafBUzjrvC8+HNrAoTA+mS6pqC1ufKXRx92M=
=KZo4
-----END PGP SIGNATURE-----

--LAbajOmk/bfyBHFg--

