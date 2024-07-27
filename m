Return-Path: <linux-man+bounces-1545-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E525393E0E6
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 22:23:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5E29281FE8
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 20:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B01027448;
	Sat, 27 Jul 2024 20:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcxpsmE3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C6D2629D
	for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 20:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722111781; cv=none; b=nLvGB59Cj/Lo6T6JSyzvdp4A8URvXNGBsoCStmiUplvdIUH0qQYqFeMyAicQzIpFBmWdkqpfAgxt/ooCcgTUA6FvxJC/vNrMtlQotj9ld73oiHrABHqjiyHx0M1te3IXhqjPWf2IELop0YXaf31PaLfSxUCbD9NjEjeUpEWdgP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722111781; c=relaxed/simple;
	bh=WGUxkBSadc6aeW/UFJOF+GCt7xPyZsX5xaksKdHXMs4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QabtaAAOrWILr/dIMQOB9tkpKJRgqNunyICWkRobTfp9X4g/kPX7WXZXQ1r2DEaXVdbm7h0NZBtpbEr8Oz55Z741Z9EDbCABQcrCd3+u6HWDimS2BMsNhC6HGDKH/3QN0V0MZtPPf1k6NtZd/Amg9EZEarRC/fR/sweXmBx5elU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcxpsmE3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42EFAC32781;
	Sat, 27 Jul 2024 20:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722111780;
	bh=WGUxkBSadc6aeW/UFJOF+GCt7xPyZsX5xaksKdHXMs4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DcxpsmE3VXDo1ytjm6UENBdvIOBdJnwJVic3Yw9zejti9SNc/vIS+Wdjlwc3qk9aH
	 pcTMFyCOyTxGN9Kbktieuq80RgnVPXzn9xh2+29a+nbPge+e8am6b0sbDAL2PORUXK
	 ubjrNPqzRXaXsW6eU2fqHLCN2FpJgYjGBYKVBLWQWXYuAjjP18dGXcMSG1LySqPben
	 CMekmqr8AAFS8Au1UHOkIq43VonQbo7g+o173rpyc+bg1Dk7CkWVRWAIM/MWDdTIJ0
	 zhRayOwzSdubOZwhX4J5tJjAfyzJOew3YP2TqvGjQDISa2NKyY4h0hc2YoJODWPl/k
	 1vK1vCjQZb/kA==
Date: Sat, 27 Jul 2024 22:22:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/3] man/man2/syscalls.2: srcfix (0/3)
Message-ID: <eqrmlvpy7j2uxagyjz4nmmk655i3o23elkmbsjjzrkxajpyttj@lljbifg6subj>
References: <20240727193028.abn22pgfjtioyfbs@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mxqhyefl2fi56qil"
Content-Disposition: inline
In-Reply-To: <20240727193028.abn22pgfjtioyfbs@illithid>


--mxqhyefl2fi56qil
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/3] man/man2/syscalls.2: srcfix (0/3)
References: <20240727193028.abn22pgfjtioyfbs@illithid>
MIME-Version: 1.0
In-Reply-To: <20240727193028.abn22pgfjtioyfbs@illithid>

Hi Branden,

On Sat, Jul 27, 2024 at 02:30:28PM GMT, G. Branden Robinson wrote:
> This patch series prepares the Linux man-pages for migration from
> font-related macro calls like `BR` to typeset man page cross references
> to the `MR` macro used by groff 1.23.0 (and which originally appeared in
> Plan 9 from User Space troff's man(7) package).
>=20
> To read more about why `MR` exists, and its advantages over font-based
> macro calls for man page cross references see the groff 1.23.0 release
> notes.
>=20
> https://git.savannah.gnu.org/cgit/groff.git/tree/NEWS?h=3D1.23.0#n237
>=20
> In particular, this series converts man page cross references inside
> tbl(1) tables, which have a more complex textual context (in man(7)
> source) than most others.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

I've received this email twice, with two different Message-IDs.  Any
reason?

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--mxqhyefl2fi56qil
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmalVyEACgkQnowa+77/
2zKwyQ/9HfVT02V3j746HIWYYbvLSF6sRsPHps8PZh2e812EdbFbvTUDxzM8/sVr
GlopZS1r6pnE4NMFTzUQJcXpC9CY4PwyLRpyopdQmsKZYIQ7Khp+vinkJgk6J31B
ZFqW16Oy1tUi0+f/agtR+/cpQskzyT198ILbSJT9ihwwczn9TdBaALkUg7UQStN9
Ylfa4r6GAiy4ACjOBQE5Lw2jU5XpxSpkKR8Kg3+ittYQJRPB+SSmI3m6dM/7sKDc
BW2V3pOPpzVN/GTheGop1kSwX05G57h5qvBdGpFY5iluGKr7xD+pqiQ8Kw/Fc28x
mCeZyOws7IuEHHT1GdmN0K4GhyFWDwlsqMQL/KIBTe+XeaLNgkMhOJn8q8v2xbZz
sXcyP6Ycpp4K8c98oDbiM9siwXnl1QwzYpPIosuNX8HcPhyl6bGSUynZSKojIXTy
sx6l0bIlptccTOgRqLQz8wOGNoQs3oSHp5mclK/uC5hwuYnIl/3yyUK8inPdxuIG
ZSwnQvapERs5bH65BY0uw3S6w7uIJ+82U2c/GLSNXrJlPzGIlmKie3L/fLlTDgTT
S2l1zVLUP/pAycdefskAp+186Pr7aQQC+cPuU3We9IcWgN+MVnw8nozngvlaIfds
Gov1JpgUFeiC1LRwo68kJEpgNSKEbYL2PcaGyRO1is/OnMOyYME=
=Latx
-----END PGP SIGNATURE-----

--mxqhyefl2fi56qil--

