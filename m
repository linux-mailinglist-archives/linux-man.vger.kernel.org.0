Return-Path: <linux-man+bounces-2464-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1167EA37EDC
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 10:42:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1F3C18833F7
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 09:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 195F1215F41;
	Mon, 17 Feb 2025 09:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILfaRN16"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE79A1A2645
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 09:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739785287; cv=none; b=t9+siQVMuq4DhljxWdMo+NEfHYlWTFmZutSVCMEuVzox4/UaqiQZILIP4jNNh4gx924cPM6075y6fdtYqMuJEge86C5iUi9HjRTpvtrXc9T3NdRKUIsNQDFTMeyR10BrtL5wOa+FqN9bZH1qVT8Ff5dnlwJ6YfmMIgmD2rnioeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739785287; c=relaxed/simple;
	bh=pTOSHeDkHAMOYxo7DGrTsE4aksw+u8BIKMgcgBIjiGY=;
	h=Date:From:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VLKFyU22ULDDeut0DCnK1VZFR8lPNBj0kmlHdM4NF+1a0FwrgWftOclhrJWAKWjNn2R0cLaCTPm8E/nnptBI1FwGLcGSRsE6NtrrNjxJ5gji0nbupEby3UmTQ3bCihDbO5g3Y3oNSVBmU0Yq/8ZzDR7Zm/an9fcRi6MAA64/AXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILfaRN16; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A3BCC4CED1;
	Mon, 17 Feb 2025 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739785287;
	bh=pTOSHeDkHAMOYxo7DGrTsE4aksw+u8BIKMgcgBIjiGY=;
	h=Date:From:Cc:Subject:References:In-Reply-To:From;
	b=ILfaRN16Q93lSqr6D+LJ6vfE1t0wgVSlRLqMW96fO/FRGGv87Dh0KHA4JjH6/d6+6
	 p5ZXtlYoRNlT96hHy1phtjBaQlPl2+tNaDOJ0O7acT3/s1Dsxwzlxwr60VU/CtM2Zb
	 I9irVyN4N82nlQQOYYqhJgJm9s6u27c3sJZBAXxBAucLr1n0hQQGmsIxtD+A3FKskE
	 N8Cow6ytENRKwQTUnLdqtFprQZ1JCGd2rr7MlkdFfoUdQ4kWBn8Fl0JMhUz7DWMeZ1
	 LFCZSfDj+zvsFDs9Kx70i0Gh4b/87YVVNf2Jw8W/IQgTJyQMdhuxnY33jkNoQX+3H2
	 2sS6BzfBJmVkw==
Date: Mon, 17 Feb 2025 10:42:06 +0100
From: Alejandro Colomar <alx@kernel.org>
Cc: libc-help@sourceware.org, linux-man@vger.kernel.org, 
	Karlson2k <k2k@narod.ru>, Tobias Stoeckmann <tobias@stoeckmann.org>, 
	Serge Hallyn <serge@hallyn.com>, Iker Pedrosa <ipedrosa@redhat.com>, 
	shadow-utils <~hallyn/shadow@lists.sr.ht>, Rich Felker <dalias@libc.org>, musl@lists.openwall.com
Subject: Re: [shadow-maint/shadow] Add cheap defense mechanisms (PR #1171)
Message-ID: <p6zqecnj4czocoksbicabvp3ec4sgicejct6nhuq4mccisemig@2i3dhnffkav5>
References: <shadow-maint/shadow/pull/1171@github.com>
 <shadow-maint/shadow/pull/1171/c2661802270@github.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fy2e6nwk4gitladt"
Content-Disposition: inline
In-Reply-To: <shadow-maint/shadow/pull/1171/c2661802270@github.com>


--fy2e6nwk4gitladt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
Cc: libc-help@sourceware.org, linux-man@vger.kernel.org, 
	Karlson2k <k2k@narod.ru>, Tobias Stoeckmann <tobias@stoeckmann.org>, 
	Serge Hallyn <serge@hallyn.com>, Iker Pedrosa <ipedrosa@redhat.com>, 
	shadow-utils <~hallyn/shadow@lists.sr.ht>, Rich Felker <dalias@libc.org>, musl@lists.openwall.com
Subject: Re: [shadow-maint/shadow] Add cheap defense mechanisms (PR #1171)
References: <shadow-maint/shadow/pull/1171@github.com>
 <shadow-maint/shadow/pull/1171/c2661802270@github.com>
MIME-Version: 1.0
In-Reply-To: <shadow-maint/shadow/pull/1171/c2661802270@github.com>

Hi,

On Sun, Feb 16, 2025 at 06:15:18PM -0800, Karlson2k wrote:
> Karlson2k left a comment (shadow-maint/shadow#1171)
>=20
> Doesn't use of glibc extensions break functioning with non-glibc, like mu=
sl?

Hmmm, I didn't know musl doesn't support this.  It would be interesting
to get them to support it.  I've CCd several interested parties in this
email.

>=20
> Isn't it safe to use constructs like=20
> ``` C
> shadow =3D fopen (SGROUP_FILE, "re");
> if (NULL =3D=3D shadow )
>   shadow =3D fopen (SGROUP_FILE, "r");
> ```
> ?

Is 'e' only available in glibc?  Do other libraries consciously not
support O_CLOEXEC in fopen(3)?

I see that POSIX.1-2024 added the 'e' mode string character, so we're
using standard features (yeah, very modern ones, but still standard).
Is there any reason to not implement them, or is it just a matter of
time and contributors?

<https://pubs.opengroup.org/onlinepubs/9799919799/functions/fopen.html>

> Or, alternatively, detect extension in `configure`?

If we have to...


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--fy2e6nwk4gitladt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmezBGcACgkQ64mZXMKQ
wqnKtA//YPbKzMNvFKC8bKmZ5HIpgDFYPb2/sZSZ0keL7lhIHd75ocHW5UjyRfpQ
1zHHcYmXvfYdcI/y0NPDts8WIi9wDNUpSozDXicJsvnm5e7DhvcqYJZqc4RdcAEg
/Q3UPC4JsM+e93mF7SBIXHkng44hiUHq1oud5gP+3q9h7kgEwBrlkEK5knUtTh06
tQ7DUhslprH985SGyRlUO+U1QtkHzXdsUImAx9KTYcZFnnPOfrDGw7Q5+I/aixYM
WAueHPek5UCz3l+m+23/51MLnV9r/sip84vtH5vZOKwy8ITGr1sCtP0NT8N4bp+l
Zvxh272Q9mC8/6lLeaN+9+3rzzsXp0Tu2oWZ7L5i3u1AFBsb0LzDww989RahJ5m2
nBX4O1lAljmsc8T0KbihJzor0RnOoffqs5HiW43ni643bcDV68+eG+AwS/6mTFbC
BPmEmkItIxcpCzgtwZsLZs/95bjIlA7Dkmrvg85acch0gAxL7HiKfvvJ2fSw5gjQ
j7gOya17cg+xsdWWr5YGLN5mluk/haDT/4r3wZHvPtmxy2+x9wmcsxkNwlLHM+73
xikVreoYId9bzCRHPgZXmxvQDCF+m6w7IAktAFbC5lwpvaGChe4U3GIZ2F/T3aAs
ZQbKaTMma8zdbiq69KD/jpmdU3FKcF13mD66m8RYZ5hbCUM/JO0=
=taSE
-----END PGP SIGNATURE-----

--fy2e6nwk4gitladt--

