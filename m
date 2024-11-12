Return-Path: <linux-man+bounces-1900-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D29789C654C
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 00:38:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9204F28489E
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2024 23:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAFD521B42A;
	Tue, 12 Nov 2024 23:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foEY8jE/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9483420ADC6;
	Tue, 12 Nov 2024 23:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731454726; cv=none; b=r5EPUow0IPRwVMlN6KMB43B+WP/HdJDpL+3iEsLgeR9tbfWGWd5U01JJ3mSWnLBU/hoQqsu5L9GOaOko4G5PO3+sMb/1TSFhoPsExKlrOIiERXreX6TGH6gsYekznyLoHlmvXnN1BE2BFH5FRly557/Mdw/G2qGmvLiOdxKceVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731454726; c=relaxed/simple;
	bh=4jhBImA9fphWU/iPklkgltmJav0ylKqo+Ae/jTfczDo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fETnFxJS4EHAMExtibetJj0PA1zrQn8GR8eMCd35tXUavCZTSb8DqG0/7CjQ9eBZ9LPRfnkf0jx9yZsmWAqRRkVYqjQe02XOjmHQ0uHMJjcT70BnmQLOQeFqTUodkNDsNt64+Gs+c6xDGXbVLQkOPYBhAal8nBdsyccdtiCHoMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foEY8jE/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4C9DC4CECD;
	Tue, 12 Nov 2024 23:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731454726;
	bh=4jhBImA9fphWU/iPklkgltmJav0ylKqo+Ae/jTfczDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=foEY8jE/MaZ1a2YPpL0RG4WjZrUhXg4E9Dxu436Kx/EWTXwFIIrx+zRx98Ww/C829
	 FMrDNlN7olIKiG+1D2Xt9BXYvDDlSohLMixPSznHLo4dtXnuj3C2aDzi6VILw7bzc9
	 78d5393lHqCzcPF45zHu3Px/3HCNTwZ6jT0TShSHe71Yy2OL3CtmtaeYaSs+OQY4D+
	 nhO3SE4b5cDIarqTOy+3UtPci0bJ5kTt0tliF76LT7uiR6r6Pe+EozOQxu/ffFeJFJ
	 KoyJDq0tjoEjV+IrehMbjmQVDj5B8XwZn6txxBDGZXJ++L84Ugm9mM/+tE30t+Qfk2
	 dPotO3BFVzE3g==
Date: Wed, 13 Nov 2024 00:38:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Cc: alexhenrie24@gmail.com, branden@debian.org, linux-man@vger.kernel.org, 
	mtk.manpages@gmail.com, netdev@vger.kernel.org
Subject: Re: [PATCH man-pages v2] rtnetlink.7: Document struct ifa_cacheinfo
Message-ID: <fvfuejrz36cejk344h646cm2chfnfangqjyq4pzpjeuhaxacq2@6kzmclbqsqg6>
References: <udctaxcv6yqjvffgrtzgqo24ee3kr4h4ku66ubohc7l4hqwg3w@6ujhaoyg4kla>
 <20241112233329.20660-1-kuniyu@amazon.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uvruoyo774in7xnr"
Content-Disposition: inline
In-Reply-To: <20241112233329.20660-1-kuniyu@amazon.com>


--uvruoyo774in7xnr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Cc: alexhenrie24@gmail.com, branden@debian.org, linux-man@vger.kernel.org, 
	mtk.manpages@gmail.com, netdev@vger.kernel.org
Subject: Re: [PATCH man-pages v2] rtnetlink.7: Document struct ifa_cacheinfo
References: <udctaxcv6yqjvffgrtzgqo24ee3kr4h4ku66ubohc7l4hqwg3w@6ujhaoyg4kla>
 <20241112233329.20660-1-kuniyu@amazon.com>
MIME-Version: 1.0
In-Reply-To: <20241112233329.20660-1-kuniyu@amazon.com>

Hi Kuniyuki,

On Tue, Nov 12, 2024 at 03:33:29PM GMT, Kuniyuki Iwashima wrote:
> From: Alejandro Colomar <alx@kernel.org>
> Date: Wed, 13 Nov 2024 00:26:15 +0100
> > > diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> > > index 86ed459bb..ed08834b0 100644
> > > --- a/man/man7/rtnetlink.7
> > > +++ b/man/man7/rtnetlink.7
> > > @@ -176,7 +176,24 @@ IFA_BROADCAST:raw protocol address:broadcast add=
ress
> > >  IFA_ANYCAST:raw protocol address:anycast address
> > >  IFA_CACHEINFO:struct ifa_cacheinfo:Address information
> > >  .TE
> > > -.\" FIXME Document struct ifa_cacheinfo
> > > +.IP
> > > +.EX
> >=20
> > I expect users that need to use this struct to also need to include the
> > header that defines it, right?
>=20
> rtnetlink.7 tells #include <linux/rtnetlink.h> is needed in SYNOPSIS
> and the header internally includes <linux/if_addr.h>, so users need
> not include it explicitly for struct ifa_cacheinfo.
>=20

Ahh, okay.  Then it's fine.

Thanks!
Alex

>=20
> > We should probably specify it by using
> > an #include.  What do you think?
>=20
> So I think we need not mention linux/if_addr.h here.

--=20
<https://www.alejandro-colomar.es/>

--uvruoyo774in7xnr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcz5wIACgkQnowa+77/
2zKz0g/9EGXL6rBiHLOffPE8b9l1Yny6ZHBw0qNjCMKDSeyi1qpTNWxNOhoHOJyu
NXhbmjrKsBo1TDpM8FdncDhg7pDwZLcqyH9w6CkNjJRUYGkdiPlkDF3J3F3zXYHY
T+JnQ0l4QtI/Mgzdeo8GwaCDoZ25VJigIgUPYg9z+nbsqpn2IsyVN3HFYD80uGoY
xDIe3Qva4RKfJC8jisMCN49+U4THqgmyA6RQthuQ8mA8kyKM4xm1qEMEYPE0DFds
/EJlewUqLyHm2gFlH7iPtZmbQwbruON/3EVxwQBmZ/UXD+q8hNG7tJUGKi1Q6fSQ
cdTmnjhfTovhc157WYTR5uzqscrtL1qfjCZdAitDXw74l7tDyex4TEieUYDqT9Dc
+64nQlu0YVrhg5wX17kwkVTBnY3X0i2/SUDYGjVLn0UXZO9pqDeivj6TkCJRMNcK
mN/8mjVvHgJT+lTmCVCAaY+tSVUYvDrBBIk+xdRhRe6jW/gQ5INS5xnj3nJh/16o
I8Y3dHA+lgy0p7tjguzu2bzqLoSfgajpPn/GVTFe01zBLS3m+MlYr5Uw+skwh8+3
OPYewBWA7WlPvb0LwgRPR8+iNWKPfckzIRJczdOQ56MWh+eEne78q+bmFZFYoVVj
AtrhevXdP0NjFzSsLxUZO53n0VccnTiUrbaw2UKQ8ri2RSXFEP0=
=9Q3+
-----END PGP SIGNATURE-----

--uvruoyo774in7xnr--

