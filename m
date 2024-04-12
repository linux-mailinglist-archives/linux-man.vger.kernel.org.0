Return-Path: <linux-man+bounces-737-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E970B8A351A
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 19:47:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F21F287F73
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 17:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C4E514C596;
	Fri, 12 Apr 2024 17:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCsFjeOh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F9614D43D
	for <linux-man@vger.kernel.org>; Fri, 12 Apr 2024 17:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712944030; cv=none; b=YQ3cp3WCz7u6kUPXWV+lJGsF8257m5nj5xFCd+GagGddVAiQPZNxRDt84n6Zi60kJenkw1rk6LPMpuyoUxPyPvgJCozB/Xs79phxyXaln4kphd2uZnlnT9X72aIkc85FC4LRD84iAk8aP050kla6oKLCTAGH/jEi9QiZd6Q+TJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712944030; c=relaxed/simple;
	bh=14RCdI5YxVjjAsia8NFzyMM+136DAZjU2v2+5KV/ckM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=klJQkoSjeeN6iCJwWzipLgmlVl50f6z/WSSE0cV9427eQuDphcjJogmY5IP8wl489xqB4eL7vfAlnVU2fm1779cvArZOwBHet6yD0gw2mOCgppApFqGlqGcgdLDSWGdRS1d40qcGdykdUtF91d26sZLso1zfunPc18lUiIWMCFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCsFjeOh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12B82C3277B;
	Fri, 12 Apr 2024 17:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712944030;
	bh=14RCdI5YxVjjAsia8NFzyMM+136DAZjU2v2+5KV/ckM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mCsFjeOhNNfD0phPElBhX2Ikb+tMqZEadrl9Ct/n8UgeSMwO/qyY2UJzM6WkSs8Ov
	 f1f+M8FG60KYm+chXMWL4W3WNGD2OG6b8MvBSJBwyFqq4owS086PqiG1CbmQVY8nlm
	 gaS6/9fCys8qpEIU23uCWtm0z5kUzBZNuBxhWE/l9OUnCa5YzqQt9iRn0nA7G++L64
	 okiNXIt2nSRRhtNodartZJ3LAAty+Orwzno8/EE3jCnFuK0Rku5VabPBO9eJV7HtBP
	 1eFnsUA9C5t9xaeD4grdK6UTyP4d1CQo84ClFYOqtafQD7BCmdMDgvSTVU/BmYNNsB
	 FUnVgTYjw5Lvw==
Date: Fri, 12 Apr 2024 19:47:07 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Salvatore Bonaccorso <carnil@debian.org>
Cc: linux-man@vger.kernel.org
Subject: Re: proc.5: Still refers to "described in more detail below" for
 splitted out manpages
Message-ID: <ZhlzmymKd3XBq9Yh@debian>
References: <Zhlth9wCHbxoNkMi@eldamar.lan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QMVs5v8lX6OcCjM5"
Content-Disposition: inline
In-Reply-To: <Zhlth9wCHbxoNkMi@eldamar.lan>


--QMVs5v8lX6OcCjM5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Apr 2024 19:47:07 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Salvatore Bonaccorso <carnil@debian.org>
Cc: linux-man@vger.kernel.org
Subject: Re: proc.5: Still refers to "described in more detail below" for
 splitted out manpages

Hi Salvatore,

On Fri, Apr 12, 2024 at 07:21:11PM +0200, Salvatore Bonaccorso wrote:
> Hi Alejandro
>=20
> Back in August 2023, various parts were split out of proc(5) into
> separate manpage. What seems to have remained from the split is the
> mentioning:
>=20
> [...]
> 178 .P
> 179 All of the above are described in more detail below.
> [...]
>=20
> I'm not sure what you would like to prefer, so I have no explict patch
> here. But maybe this can be reworded to "All of the above are desribed
> in sepate manpages prefixes with proc_"?

Thanks for catching this.  Yeah, something like that makes sense.

You could add to the commit message:

Fixes: 92cdcec79df0 ("proc.5: Clean up after making sashimi of this page")

Have a lovely day!
Alex

>=20
> Regards,
> Salvatore
>=20

--=20
<https://www.alejandro-colomar.es/>

--QMVs5v8lX6OcCjM5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYZc5sACgkQnowa+77/
2zJtjA//fYuSSjk/AUFeAhL3cunBikdibULGPMSuHTcC+rDT0LCWuMNWLHb/Fmq5
c+5ewmUHIPvar92Q5bdXC+HeZD3IwjMrqHPXW6QpVSGBORp0ZiNDOIgoOkks5T69
l0X4TcY9ayO6bnDWhDrtKhJWKrmAfDh0rcIY0oOmPb/0Gi8cKmmXS62271ogmxTj
A/DS+A3ORmnbPd+raGRPhWx7eKiPYWh++94S5ES9Q0U+dJhmAwqU0vfLzut0t0Vk
B8lAtalhrGHI5zQ8hLl6T8rmtjZocjnI7h8K8bVEJyyaAR5LeRr/MCvNILGw4iTO
3oqKd1wXjIHPv5PIhcJEJjgBwMPPFLmrRX0NbH9btOVhLUwqEcbXwhaKgg6lgMcB
WaxrCeM00fyCFRO4BY/I5zrVbUwsbx0Ek0g1YuSmdXhetB1GK3o0OpBHNpEf8Iso
k2+ryeUjPnbPd4BoA431wsCTreqN0HxwVrfq4wAa5tGecyysxJIoONYTHMaQ4PuQ
CCUo9Nasle0l/mOh6oZOh2BXZ0nNUuSsFyri7LkSxrW01e9pJeOTGJVuMJxQXwMG
w9mY+R/BMWs0YPE0YYG0chBdRZcw4lj5A8c0X7OXiY0PxO850svQg+KKwHxGbm3Y
lowlY3OsdkCQewmV6ErvZgBYux9z0hRn0DqXQz+rNLeOEv4H3U8=
=U+Kh
-----END PGP SIGNATURE-----

--QMVs5v8lX6OcCjM5--

