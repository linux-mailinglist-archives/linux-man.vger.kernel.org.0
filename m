Return-Path: <linux-man+bounces-1718-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BDB96251E
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 12:42:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA689287426
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 10:42:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE5D516BE37;
	Wed, 28 Aug 2024 10:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwnkPRoY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EED11465AC
	for <linux-man@vger.kernel.org>; Wed, 28 Aug 2024 10:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724841723; cv=none; b=JQIY0UgqdeNxOiHhQrQaGuU+V6yb1LH+uTGcDLxYpJtjoBc8UsHKhakI3IsxDjcBvzAqKe1UAnl8AaSatdt/KWog833X88SFgGVYCGSOz6YiXNrTqJC4lKLpFwfo/ND3d725OR0qAXIe+i8VwBXMcJw0Yu6XZ0MWHpa5SucCBTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724841723; c=relaxed/simple;
	bh=qu/AELnd1UsqHDjkJ4w1TZARCKJHbB5FhxYuFr4txJQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S4Bqb9TllAf26achkcXq95tl8qJ0k6k4PGxEAbbDk+EVz/7d3QOuGb9z7MGYSE/j5tOgYA6NnyPu27YSv23+UBZ4Nqe6imsNqqJxbkKcQDo4xxKjUguWektynDSskaRdt9O7lkJ95FIRZuLtxJV0Hh9q0XaNGn916GDd6vIeWmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwnkPRoY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 252C6C4E692;
	Wed, 28 Aug 2024 10:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724841722;
	bh=qu/AELnd1UsqHDjkJ4w1TZARCKJHbB5FhxYuFr4txJQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MwnkPRoYyOOkYnh0xajjL3uHuh8lplHI+Rp+l9Brpv0mfU1zuk9Izw+/FNtSp/LJE
	 JiCRnAEpWv84gaVdTSumcMxiZ8temQlbp7uBqZWekTr4RnEtAM8vLcgCLSObr4rhjp
	 QnIXrZDR8zUhTnV45zl0TwM53CPyKRr0AU98KUe8/GJ5mUq4udsuM2dq6xRBovoqL5
	 uL+aCIMANXhOJABMjn8gNuMonxKLKLKeh5yCktMYIDqNihAi1+PyMM6MHKuAwNYWJC
	 utzMEUPj46W2joCWqk0Tr5oz9H0KSsSG8uWHsTitHUP5x3yD9iSwlPl9cSSjQLDiKv
	 hNJKvg14R8mrQ==
Date: Wed, 28 Aug 2024 12:42:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH] dlinfo.3: Document the RTLD_DI_PHDR request
Message-ID: <kfejgehnj7fvhwranihdhtkbe5bqcycvkt4kmo6j7b3tbfe2d2@umq45jqu32qj>
References: <87jzg1p1ay.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7qrlpreycjkqnde4"
Content-Disposition: inline
In-Reply-To: <87jzg1p1ay.fsf@oldenburg.str.redhat.com>


--7qrlpreycjkqnde4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH] dlinfo.3: Document the RTLD_DI_PHDR request
References: <87jzg1p1ay.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
In-Reply-To: <87jzg1p1ay.fsf@oldenburg.str.redhat.com>

Hi Florian,

On Wed, Aug 28, 2024 at 09:13:41AM GMT, Florian Weimer wrote:
> First added in glibc 2.36, backported upstream to glibc 2.34,
> so mention 2.34.1 for the first version.
>=20
> Signed-off-by: Florian Weimer <fweimer@redhat.com>
>=20
> ---
>  man/man3/dlinfo.3 | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3/dlinfo.3 b/man/man3/dlinfo.3
> index 84b696f8c..8d61f81e8 100644
> --- a/man/man3/dlinfo.3
> +++ b/man/man3/dlinfo.3
> @@ -194,10 +194,23 @@ If this object does not define a PT_TLS segment,
>  or if the calling thread has not allocated a block for it,
>  NULL is placed in
>  .IR *info .
> +.TP
> +.BR RTLD_DI_PHDR " (\fIconst ElfW(Phdr *)\fP, since glibc 2.34.1)"
> +.\" glibc commit d056c212130280c0a54d9a4f72170ec621b70ce5 (2.36)
> +.\" glibc commit d056c212130280c0a54d9a4f72170ec621b70ce5 (2.35)
> +.\" glibc commit 91c2e6c3db44297bf4cb3a2e3c40236c5b6a0b23 (2.34)

I think the two above should say 2.35.1 and 2.34.1.  (I'm assuming it's
2.35.1, can you confirm?)

Have a lovely day!
Alex

> +Obtain the address of this shared object's program header and place it
> +in
> +.IR *info .
> +This
> +.B dlinfo
> +call returns the number of program headers in the shared object.
>  .SH RETURN VALUE
>  On success,
>  .BR dlinfo ()
> -returns 0.
> +returns 0
> +(if not specified explicitly),
> +or a positive value corresponding to the request.
>  On failure, it returns \-1; the error can be diagnosed using
>  .BR dlerror (3).
>  .SH ATTRIBUTES
>=20
> base-commit: 6a7f1461b0e5474d50ef1920558dec103c0c058f
>=20

--=20
<https://www.alejandro-colomar.es/>

--7qrlpreycjkqnde4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbO/vcACgkQnowa+77/
2zL90A/+KRe7v6bnpoasBzev3phKsydlxMQmmDYhqzkTOn/f1hdhSYkEBxBmuLpF
fm+Q+PkhchWHDz+SfHbMqojuCpvVRFN8p4K0mZburwy90G/Ac0wOYolHhdlSg//N
AULPOqgYQ1DuN3eUm9420EQ+cJdOWx5kuwLZeeGW635LzUB71ajvSclnnsPi3Nyr
L4zz/M8RHNhXac/I0alJUr4Z+9b0wdkINzsUnJ3nnC1KY2/ldysg4PIxcd+OH9YP
JDlwNPeBEtmvUvH8RimoLSaXSLetvl7LJn5XKBwqZzQfDsiPYaldruPezlWJxoeZ
+Nvxq3jNZIoZ6MX/COy5aYzcnK5aC7Epm7GunGZ6ofAcyyf3G9eBWm7sHCsXdLjX
qBuWxN7xwMXWLAtkjKV3/b24Rj0btmQ9/Ya1pmBQxLN0+Whi5qzvktvl22xPmm8O
aQIq6IgkuEDIK75Ry07A2JX84LB+z8TaNLjn0p/h5dr2CG2tOM1Rn5kEdOCTc0zm
ZPm8SwSQqgJ4yqawBWICQFCKGNSh+aEPvKJMSSXdYtCdPJ4YQ34a9dllT6U5Dhjb
zmbwBpMb84zBBYgd0l2TLNNDdtThNpYhfSZ36ue2X2D7U+URcJTn7b2u87m/EoOC
WC7hiTlqXYFQaUuUCCrzE0ueVlAm+JSEIm810ivCnUIhonttcZg=
=iRnb
-----END PGP SIGNATURE-----

--7qrlpreycjkqnde4--

