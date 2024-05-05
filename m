Return-Path: <linux-man+bounces-874-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E238BC17B
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2024 16:46:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C874A281713
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2024 14:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D91A328DD1;
	Sun,  5 May 2024 14:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jt1n5mlB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3411E48A
	for <linux-man@vger.kernel.org>; Sun,  5 May 2024 14:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714920358; cv=none; b=oFOTJO7GDS5Rkx/1YLgwKDjdP8zuTgKTWnSD0TUuQXgn6hx0WYtSPoW0FZ2Ci8DGYH0vAjpEnn7hXPPKOKkJRnXlT/tx5WzsUlPZKitXPM8zH7uTkFoV5vAc1jbsf7Cg9zWbUBCE9Yj+AroaE2Bbdx7qjRJ+YIV2fCwgRHU9Yak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714920358; c=relaxed/simple;
	bh=03u/80dnCftdSSgrXuMNkdyEak6ggox6BPM9z7f+CBA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=diTszgKSHErYKVxRVEtxHh2kGWi4J2m/wUbkp8dj/uNw2FFsYiIJYx0FjDoECkXAQNmjWKGXg0MBL+XnICTmPzE0g+f3ahpSlfl7wgOqYigwRyytEYUQp0xux6x8HTQ46CQ+eqm633YDnDDwYfvWfBi4oeGGVBSXXaLXqYn86b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jt1n5mlB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65271C113CC;
	Sun,  5 May 2024 14:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714920358;
	bh=03u/80dnCftdSSgrXuMNkdyEak6ggox6BPM9z7f+CBA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jt1n5mlBcWPXPtpaRG6j3yrfoVotakCW76brLbSGctu7Gpvi8n7AhMWD7RtZ6JKRO
	 fSmKSkuVxWg3Juw16CMCWqYqABoSQkVuy3x5S70zjB7KYLA19ziTaENBlLIDpWMfcA
	 bzy96MmfbN+gdoI8NkLjMdVGNdN701aM3b+dJMa37xt+aUwU0bIcHOlNKIMFQFChj9
	 AJq8RQ4py8Zah8HMobICtdWrqFDHqKkruuYdQaaleVDMYRHrlFCJbG1UurVY21knFd
	 mwty/y/vm35hn2upRXVYi5EqBwikNxYa5YkjxsI7ZzShMGlrslSGb5Abtjj/uRiJlN
	 GO6UyF98YecXQ==
Date: Sun, 5 May 2024 16:45:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Proposed v2: revised man(7) synopsis macros
Message-ID: <Zjebo2GAgG2TK2UQ@debian>
References: <Zjd-jgQ_VFTidbnT@debian>
 <Zjd_IEmita152Zdj@debian>
 <20240505135453.4rxsqe3so7347mli@illithid>
 <ZjeTilIR86sBYrtI@debian>
 <ZjeXh4IjG0ct_Z3a@debian>
 <20240505143230.a7su5ika5gxccv5p@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="87Hn8KrcOiph77FV"
Content-Disposition: inline
In-Reply-To: <20240505143230.a7su5ika5gxccv5p@illithid>


--87Hn8KrcOiph77FV
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 5 May 2024 16:45:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Proposed v2: revised man(7) synopsis macros

[removed a few lists; they probably don't care]

Hi Branden,

On Sun, May 05, 2024 at 09:32:30AM -0500, G. Branden Robinson wrote:
> At 2024-05-05T16:28:23+0200, Alejandro Colomar wrote:
> > You did s/vger/lore/ and now the mail is bouncing.  :-)
>=20
> Whoops.  The version of neomutt I'm using has an annoying problem; it
> won't let me group reply to tagged messages.  I haven't looked into why.
> neomutt has other annoying bugs, like cancelling MIME-related prompts if
> you backspace to the beginning of them.  There's an old saying about all
> MUAs sucking.

Heh, they do.  That's why I'm patching neomutt(1) to suck less.  :-)

Now you mention neomutt(1): I notice you don't use
$crypt_protected_headers_write.

Do you have any opinions on
<https://github.com/neomutt/neomutt/pull/4256> and
<https://github.com/neomutt/neomutt/discussions/4251>?

>=20
> Possibly everyone but you on linux-man has me killfiled anyway.[1]  ;-)
>=20
> Regards,
> Branden
>=20
> [1] You must be >this< geriatric to get this reference.

Certainly, I'm not that geriatric.  I had to google it, but was easy.  ;)

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--87Hn8KrcOiph77FV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmY3m6IACgkQnowa+77/
2zLBwQ//dg6puGvHhne+h1uBDyicrmT9SZNYQNcTRDI6OEyL0L/QuLCj3JTw10sr
PEF5A5xrGD5BE/65PURyiNxHVZ+qZgfJi/dflr3MPqnuhnXnkAkVOgJ8Jem/qQnw
pVctn4V1RngzPgqkXZ0SNrp7PhtipHXbojhZRUSBd8fTBQ+UG6neIn/THQlqPeol
KsoeEmF2O58VtTjmjkmxNw+N16bk6aJbtsg4poABf/qmRSMzRQCcDnMvMTZO2R2e
rYmuFCbUein98l3gqe3jmzgENx0y6NHgDNNpm1cUNLy/ddh+OCDdS96cUgBWB78Q
zKgwdQTldBM05ldYC+OVkrQTDz/GwF3rEQNaunjxYCNszViu93DFxGZxnrjSq49u
5Mw1aYJMnMgdICFf+vXQBYcieIJAbOmuNAMyUCeaC1IRvdRR3wh0GM2Hpm34Z2fM
BAPQlGN4JCKjJg0pOjGfDUE9tYDJHBfgEw9IWco7KQZgxmGdmcA8wXHZUA8/6VDA
ZFnPDl+klOIw6Lwc+UC9pW5R+Y0QcZobWOXo9l0DwXEcHXrVtmyRP8yJlkyZ44O1
oH5p6zJQOloIeYlxAf3i8LOZOVxvPFG4FDLmhuCPLdUQ0FPm6dpreVfk73I5gwN7
qX3ly9q6FWmw7E6R9BgjoxffOSN7neIeTHr5hGWIuhVHAqIc/9I=
=93tY
-----END PGP SIGNATURE-----

--87Hn8KrcOiph77FV--

