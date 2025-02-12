Return-Path: <linux-man+bounces-2411-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3CAA330C3
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 21:25:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB8A0168027
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 20:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A909F20103D;
	Wed, 12 Feb 2025 20:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/J/8WfN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F7A200B99
	for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 20:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739391946; cv=none; b=ZLGcCoD3gi0i6Tv9LbGTPCBRvm2zd5LJCUC5mRfBs21Rf8cvR38nQBSaHT1iXxxj6pYqXzkWzSKD1p15p0zXD6IgNJALjsoxfhz5wK58IHrf/ajt6oL5B4KwhjGG6kwEn5sXYZbte2YErefK4jje8LqQvvy8GXRSjE2yltJzoTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739391946; c=relaxed/simple;
	bh=3S8XhqO9cRItaKD2o4autuGSgIKenNB/zbz4SJMUbl8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mu/xRDDFJMxL8glnooQ1xDlxPqrWull5fL6aVKNZlACZgpB1WABxIxoB2SWIkCdDiBSEjS9HCUoFQf76IPROI4TVUtCVcVbuYh0+UZqsFjwGCXxNBKK0S6T/SVFHpTGWBfExQ61cwPtC3a9QFN7QHDiridJ91nwvJLX0i6/5kHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/J/8WfN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D0C5C4CEDF;
	Wed, 12 Feb 2025 20:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739391942;
	bh=3S8XhqO9cRItaKD2o4autuGSgIKenNB/zbz4SJMUbl8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d/J/8WfNCymw27tNS3vSVUlTIHAl25od3ki8dH9Wevb1JR9obCMPkI0Wa30tbolVi
	 JoREn3pqy/xt2gJhZzSFhWi/tVZ5hTv+LXEx/HE2jQUu4cpFRvVpKl4iguI+GSQb8A
	 Wzs6K7Zr2dpwJccZCZYgQ6v+xmg+T+CrryQXFED+BnDhpbFvPEMAI61sdjmVtWVB6X
	 tAlChpewz4V0oP0biejWxr4HIpj/27pQx/ImbDPkfsSFTDnKmwG7NF5UdkA8MBPoCH
	 4ZJSCWGD9cGY65k2AaAwgYq212St7uxT1hpQaE366xnGz51PEfnbiPpKEP7WB4KXx/
	 t3dL9wiomdfdg==
Date: Wed, 12 Feb 2025 21:26:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Amit Pinhas <amitpinhass@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] [PATCH v2] man/man2/kill.2: Add Amit Pinhas as a
 contributer
Message-ID: <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wt777dkgcs75s7s4"
Content-Disposition: inline
In-Reply-To: <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>


--wt777dkgcs75s7s4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amit Pinhas <amitpinhass@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] [PATCH v2] man/man2/kill.2: Add Amit Pinhas as a
 contributer
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
MIME-Version: 1.0
In-Reply-To: <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>

Hi Amit,

On Wed, Feb 12, 2025 at 09:39:29PM +0200, Amit Pinhas wrote:
> ---
>  man/man2/kill.2 | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/man/man2/kill.2 b/man/man2/kill.2
> index 8bb75545b..3022ae02a 100644
> --- a/man/man2/kill.2
> +++ b/man/man2/kill.2
> @@ -20,6 +20,7 @@
>  .\"     Added note on CAP_KILL
>  .\" Modified 2004-06-24 by aeb
>  .\" Modified, 2004-11-30, after idea from emmanuel.colbus@ensimag.imag.fr
> +.\" Modified 2025-02-12, after correction from <amitpinhass@gmail.com>

We don't update those anymore.  We now rely on the metadata in git(1).

Every now and then, I consider if I should just remove all of those
lines, to avoid confusing people.  If anyone is interested in the
history before git(1), one can certainly look at those lines in old
versions of the pages.  Anyone reading the mailing list opposes removing
those lines?  (I'll ask again before removing anything, with a proper
subject line.)


Have a lovely night!
Alex

>  .\"
>  .TH kill 2 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--wt777dkgcs75s7s4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmetA+UACgkQnowa+77/
2zLlrBAAmH1W8Y0O7DtXDNgPjKH9cam+kbl9PyRoJeyQsgNZ9u7Q+Y8jiu7ncEmY
OEyuaCCDn90gx/3AxMYbJZuahgzV304dcUjALYfDOglrr+qF7aMIqUsnBKhxtl2n
U1kiwXhGasHCp7q25O+GeokUJkzL9ZTgQ83Q7Q4JqhhyyiqEAlLOF5MeeuqVswYq
WNY6dV+Y/dqKCGgh/f0BnGexNnP6YmCIXzghWGO0yBugw2VtmynNz72zcYmS/w+D
OdPlvrh9GNP+rgosBuRsvyc6RY0Ewm20a03VYosx9QwOfc+r0+qCwrEY8XrglAvu
ldKP1h4ShgPX3QljDLM5IQiGdrXvXvNW3lPdeFvZEoW/Ao3ZZVPNvV1yTBAdrlsG
1t9Xpf9PzZVC6VSeMNksCPXrsh8YbZHu+2mb9oLOESV2jGnTTFGrGthaw02mjmnd
0mt9HsMwD7jIjk66C+LqJoLXPQJl0+VsCR6ejTayzyXt5Lq8J+RTnP+ks0HjgxHy
PlsSUsTRuGOWJDrgUyEG84Y7IwLU4FAe+1piMbW5y4bYkJ6h6fp+035qQsN4NPgg
EG4BDc16+Fn5ZtvSLsYkPdYB4qHykMOhXwyxnmfambnuclSyqJx3L8fk9PaYDjeE
gxdrDePzRu43/HsdmbB3iIQ0e6OyN8F6AdP2QReUgcQgKG0K/QU=
=ce07
-----END PGP SIGNATURE-----

--wt777dkgcs75s7s4--

