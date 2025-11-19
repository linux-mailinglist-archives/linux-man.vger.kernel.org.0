Return-Path: <linux-man+bounces-4300-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FECC71308
	for <lists+linux-man@lfdr.de>; Wed, 19 Nov 2025 22:50:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sto.lore.kernel.org (Postfix) with ESMTPS id 95FF829574
	for <lists+linux-man@lfdr.de>; Wed, 19 Nov 2025 21:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6415301465;
	Wed, 19 Nov 2025 21:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFa6lsOF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660B42D063E
	for <linux-man@vger.kernel.org>; Wed, 19 Nov 2025 21:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763589014; cv=none; b=Mf0LDlpbWidDgPZlaFKqqh8ZhAdqc1mKfWImaxtmYLngz6J3TtI9g25obSgM9LguGN9RtIBCQOVl65/h2ZmoN8MMVRvcd4qJw7x5NpW4MaW2lbKBLi01xgLxKlyGIsJui58astakqBEs8oGH22IWA0VpojW38DRjSGBMPqwbzWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763589014; c=relaxed/simple;
	bh=I5CSSvjm5jadJXGJYPWBejSJnvkYaACB8xiqwXd6NYs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p9kdnYVKepVk5YzlnnFjjAqXJraVAu+KaBto/4bqk3i3xfxKL2Ew7o73VhS5ReKtORM/ND2KYiIwHJEni5tXF83kds3gYjW83EmBgxyWZvilCAr5fTwD7t2V33MTlD9Z8foIk9pT1Xx0A7WUTf1Ty7owKFCd17orvKfVqH0RbaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFa6lsOF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9DCDC116D0;
	Wed, 19 Nov 2025 21:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763589013;
	bh=I5CSSvjm5jadJXGJYPWBejSJnvkYaACB8xiqwXd6NYs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mFa6lsOFCULQMo5F9x0I+Yrtm2CqSIUg3WQAg7QZcfzNwZ5JNt3mSwFrfxej7ccZK
	 ya4fKIbhGFQynPYVk6FhaL3Y59C7EQ27OlpjxVQgnBeGrlaG5rfTu/qP4Ub7lCytwV
	 Rf5yytpY+KOL7TBgO+w3SG9+ctvB/e2iFlj9VV0OjLlYBHnMDdGccWgCm1njuYqCF5
	 pIg2BU+FVLFHV43w6SjvrC834Kz08xYAJJrp0UiST5V58QJ/QOCQLQj5Uhvwysk//X
	 Ruvrs/224rnY4oEv6Ki3E5SFUfpaEY2x4H+l8Zv1h4f48CXNkuoDWcR91d4d12HVxK
	 Lx8GPAaJ8MmEw==
Date: Wed, 19 Nov 2025 22:50:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Andries E. Brouwer" <aeb@cwi.nl>, Vincent Lefevre <vincent@vinc17.net>
Subject: Re: Status of restoration of copyright statements to the man-pages
 source files?
Message-ID: <b6prio6ck56jekesw5v5gmmzrkfqdtjqwaq5jzgugkhy7tznc6@jhag73ju3qq3>
References: <4d829996-690c-4411-bb75-207ef1239b49@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7whfvfhabcyhn4ba"
Content-Disposition: inline
In-Reply-To: <4d829996-690c-4411-bb75-207ef1239b49@redhat.com>


--7whfvfhabcyhn4ba
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Andries E. Brouwer" <aeb@cwi.nl>, Vincent Lefevre <vincent@vinc17.net>
Subject: Re: Status of restoration of copyright statements to the man-pages
 source files?
Message-ID: <b6prio6ck56jekesw5v5gmmzrkfqdtjqwaq5jzgugkhy7tznc6@jhag73ju3qq3>
References: <4d829996-690c-4411-bb75-207ef1239b49@redhat.com>
MIME-Version: 1.0
In-Reply-To: <4d829996-690c-4411-bb75-207ef1239b49@redhat.com>

Hi Carlos,

On Wed, Nov 19, 2025 at 04:14:10PM -0500, Carlos O'Donell wrote:
> Alejdandro,
>=20
> What is the status of restoring the removed copyright notices?

I'm going to do it soon.  I was prioritizing some GCC patches these days
because of the Stage 3 deadline.  Copyright is the next large thing I'll
do.  I expect it to be done before the end of year, and certainly before
the next release.

> At the end of June we concluded with the following:
> https://lore.kernel.org/linux-man/u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lix=
eidezdw34dg@nvn64na3cptt/

Yup.

I met with Michael Kerrisk in Paris, and we discussed this.  He didn't
like the change and asked me to revert, so I'll revert it for those that
haven't given express consent.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--7whfvfhabcyhn4ba
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkeO5IACgkQ64mZXMKQ
wql4vBAAikHdQ9uZHVHpypy1XepnVI+pOl01S6gtIboUVZI53TxXvJAFvf3xFAIe
YeLnRoM4fPdo02ancYh7brTHvcCGZn93DeNBcr9/pz5AoYMKogJ4HxPR9QR4+adC
BZGdoQGkq8sWmpQAFyjlOlSUYXmiNjF2jY1jHK8zBicHvMwf9tjImyEEosfFZFDQ
I0mY0DWOZayVXbBlxiEME7bZn48ESZAUOpKTVImmM+JSEqcDr1mWwmwBUhTyuhhv
yKJ60TaMG97aPsv8M6TmX32Y4EabrovzLGNGSc/cJ6f4xvYZu7d+O9UbX1zRV0Uj
hryMYvMOq5hCxi+ylSsyXxJ3A/yoFrULlqBfQvckA3IlexCB7hdVmeUDqukPZK1B
6NNsZLLYGsvJ9V/jNTFrbZvCjApPFJCKKFbTlBF14WwELy3ebF6iGISuubTNsthS
vlvICTndtVk1cXeVQUTdTW3odkiRQP1x1PSRNwywijZdaciQJAVFZtMqr94xKz0M
lvQKuCp5sZg9BZEBuu7sTNA67PxTFIYRfyF13DOe5dHlSrgy3U4d3K09rC+vkEeU
G35l78hiKIHJT6fRz00plNmlQ8pCS3kDmzJn0qMzHvIpTt8jvWQY5QPgYdOOthJB
q0YSknO73EGcYNQRVfKH/ZQm4ZazLZw7guTLAsiL+lbbnlkcOdI=
=jPG7
-----END PGP SIGNATURE-----

--7whfvfhabcyhn4ba--

