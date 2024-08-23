Return-Path: <linux-man+bounces-1688-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1309595D7F0
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 22:43:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C57C428455B
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 20:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D47C1193430;
	Fri, 23 Aug 2024 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTHOFTLU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F9461925B9
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724445833; cv=none; b=DX6FZpb+fqMsmo38qw/tZtdSRdl/dQlibjJtZkg+LFN+xegs1yY1RKey+RZMLhNXTpmC5hlg9uh5TN90pJtCrlL4Fk7c5weRQe8xajbTSpe50YxYlDdlDbx3Bsvg8pwanU/yV8QULGRUyISzegzXg11NvpC6H2rSM5L6QymJpbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724445833; c=relaxed/simple;
	bh=MVUbPODxdJ8VsKZjsQ8+xvB/b5Q4EDxQLamM5E5mETI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G8TV/uorXPRrQG8n7Z94Q8+NZ4J9WFQU2XAGTSPK3WyeXH9TBNYGX98Urp/gX/n9oOnSTsZPhRrLYbIuPx1VX4CVG6V050oPio+MkB6driCjZGwizbjLgF+CBMxFvwIH2b6df+b5qf0fOftNI5Rk4FS6pA8Xxyj/oOhlutcE5U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTHOFTLU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30EC0C32786;
	Fri, 23 Aug 2024 20:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724445833;
	bh=MVUbPODxdJ8VsKZjsQ8+xvB/b5Q4EDxQLamM5E5mETI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tTHOFTLUBPPPxQ9s90tFVQ9wrwDQ0RZ4fk10yHEWBr90rLCE3zkDeXKSvoh+alwwD
	 BkF46awDdcqoQ0OMxw250AxNGri9/5mt2/mZpqgb0JWzkW0Sb7SM5NZkdSb0fPMwKs
	 x3Peouxn1w9cCnKVYWd4qKifcPFMYbnwxG7IK1Rha9JLsEvld89g1vurmCEzep4Idv
	 Gm7dYKJ0zxY+NspypxqPmNWXZQJ5aklMLYqV8/GA5JP13epiTFezq2gsTg2M2rtxTl
	 wrx49dRvOblaJizxNTbthesvgNgpfs057xwmNxEk44PT4ZVweZYPdo9SBUQxlcfPlk
	 /IviHG7TWFIGA==
Date: Fri, 23 Aug 2024 22:43:50 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2] ctime.3: Document how to check errors from mktime(3)
Message-ID: <6ph33wz4jbsjwejgra33yjs57535ksqbxp6fviyav2p3bhbjww@efh4fciaoycr>
References: <664cd54a8ee998fd3a07ffc6c9e6fe9d6117620f.1724423646.git.alx@kernel.org>
 <3c04eb41-14aa-480f-bf61-b91e5a673bec@cs.ucla.edu>
 <el23ihpmltucruo3s2lbxplhkg4batoca4yumyxpz4ursbpxk2@gbfgwtcypywo>
 <e5d4aa14-415c-4214-8900-c9ab43ed1297@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b3pq3jo2ia3u7yos"
Content-Disposition: inline
In-Reply-To: <e5d4aa14-415c-4214-8900-c9ab43ed1297@cs.ucla.edu>


--b3pq3jo2ia3u7yos
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2] ctime.3: Document how to check errors from mktime(3)
References: <664cd54a8ee998fd3a07ffc6c9e6fe9d6117620f.1724423646.git.alx@kernel.org>
 <3c04eb41-14aa-480f-bf61-b91e5a673bec@cs.ucla.edu>
 <el23ihpmltucruo3s2lbxplhkg4batoca4yumyxpz4ursbpxk2@gbfgwtcypywo>
 <e5d4aa14-415c-4214-8900-c9ab43ed1297@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <e5d4aa14-415c-4214-8900-c9ab43ed1297@cs.ucla.edu>

Hi Paul,

On Fri, Aug 23, 2024 at 12:14:40PM GMT, Paul Eggert wrote:
> On 2024-08-23 11:17, Alejandro Colomar wrote:
>=20
> > in systems where time_t is unsigned, does a mktime(3)
> > call with a time representing a time before Epoch result in an error,
>=20
> Yes, just like any out-of-range mktime would.

Thanks!  (I thought it might wrap around for things that fit the signed
counterpart.)

> > Does any existing system (or historic one) use an unsigned time_t
>=20
> Yes.

Hmmm, I guess we can do

	if (is_signed(time_t))
		printf("%jd\n", (intmax_t) t);
	else
		printf("%ju\n", (uintmax_t) t);

strftime("%s") would be interesting, but it accepts a struct tm, not a
time_t, so I can't pass that value directly from mktime(3) to
strftime(3).

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--b3pq3jo2ia3u7yos
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbI9IUACgkQnowa+77/
2zLCCA//VcVo5H1BudBLN4q+a6miHjZYZvgBsaVEE3KvzGAoMIji+jODaBZ9ChDg
1ZgxozMteVCLTYzp7IysQSN7XeVYexUfX5oW25zwp46e5xHvVb+ORdDGDWqbTxSv
MPR5wsezLUDNf5QX8E/aFb85WE/NTG+DRWraf3nsgAsPH5N0F0ptzKUscO9aGWks
BYYSmRhtyCX5XIY6kBvwdV87EXtyxP540HNz3ySNTTMZ6Bpc0T2ivZjenNftI3qq
J8T5JJqtL1CCTtJMFAUKqYYCvn695MHT6HWkXMarg3KX8flaYuPgMbBSjFdKJzXN
9hUJN21XF8XyNzxwJz/je+RVw13nbB2lAIDRvnc0onXlbOmPGzoSjLaO7XeaIL22
VyXPWfoWQyJKfEE+D5zJ/YRO5/UPe9XZb4f2rQ9/4bvA7V41iLETB4p5CHDegzcp
9qukkcA6NoZKrhXYHA1OC00bfS2i7DOkxhQw/pOD5esxt63rPCR9AH3IFSKPQmpE
8+f+ihl6Ndys2vuw/Ln31vHYr4UcWreB3tWgewAhnOMVjRwT1q8QX8jQ73IYeUf3
Dk5mVJTVlCvZ5zZVM0qJmx2ka3DofmIsB7BHvj2IiKU6IMO5Nh84WJwSEUskRMpK
yBoBA0FbO9lKGZzRaHHibQdM3AL7Y913uKGJ0jvdFsSWFwWx2p8=
=8A2i
-----END PGP SIGNATURE-----

--b3pq3jo2ia3u7yos--

