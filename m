Return-Path: <linux-man+bounces-2418-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A47AAA33174
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 22:27:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 334061889215
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 21:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A119202C2E;
	Wed, 12 Feb 2025 21:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVOaUfWC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C0D201025
	for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 21:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739395658; cv=none; b=Hnyx6P93kDqvqRtYjmk6M+mTdOwKsnh5Q/M6qmyfT0iJvSyu+SOpIzmJ0jtORtAGxenpaG0VYdmGPEhjHMEDMIifU6hFTRNSEwJFMu80AxOaYYrQYmUxnX5hozoYpOAZadzebn4Pz4dBT5W0IUCfeVjhjAUh23LuChVQmHnd4wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739395658; c=relaxed/simple;
	bh=lN9Qu82jCc1YKv4Sjz0J129di4Ge5LFCAqAxXA2iqYo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D4Ku61rl68yaE1hFqcUky4/iD7DmNRkqMKHsTf7tft5snIma7U0Wt09+BsQfE6pZPJqC361xLj/r/s7BtDu7mVgvmv8y4mNcZUNekURDVpgO9Voewz807ZLExfWtCnwmNXkoIwQlJmnBs2ZtW/TU29hC0/hCc3dsTOR2bIPLXAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVOaUfWC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 273FCC4CEE4;
	Wed, 12 Feb 2025 21:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739395657;
	bh=lN9Qu82jCc1YKv4Sjz0J129di4Ge5LFCAqAxXA2iqYo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qVOaUfWCoPKghqNJsI/xb8eHWXVQaYNQduMEF1vUbjJDuaJHvxrqw2o8S097WCu9V
	 kYI4cMLyE4Ex+dm0BvKaY8efYIz5zyIh5arQllMcHEnbnshv0th5B0UVQuBz057up3
	 hO0+kTa7WGEgf/bi6hJ5cwl33bjgEDc1krBfihSNb9EgqeATQfcZc+u4+9nPe8ZFvj
	 /9CjUB/tCbVAw+fWvx+SmZGV3TBEKgep5BWfZSoJMZu9ay3ysGwVe6zXGPpYhfzJIZ
	 1CJv+hPdtQqNYamBeGQeQcxV1pZuNa7QIKZaTuOA9Chd6B08R8dNvhyuEFsWctIz6t
	 9zi9iuDFrg8+Q==
Date: Wed, 12 Feb 2025 22:28:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Amit Pinhas <amitpinhass@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/1] man/man2/kill.2: Wording issue in kill(2) with
 sig=0
Message-ID: <iixoo776pl5wcwu3b3eu52dw5lcxsjeldbub37xccxoeoaetdo@vlhg5hp46sll>
References: <cover.1739393685.git.amitpinhass@gmail.com>
 <a4fa37e0fc89a3c99982ace3fe381991ebe85b00.1739393685.git.amitpinhass@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xwmevcz5dnimv6as"
Content-Disposition: inline
In-Reply-To: <a4fa37e0fc89a3c99982ace3fe381991ebe85b00.1739393685.git.amitpinhass@gmail.com>


--xwmevcz5dnimv6as
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amit Pinhas <amitpinhass@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/1] man/man2/kill.2: Wording issue in kill(2) with
 sig=0
References: <cover.1739393685.git.amitpinhass@gmail.com>
 <a4fa37e0fc89a3c99982ace3fe381991ebe85b00.1739393685.git.amitpinhass@gmail.com>
MIME-Version: 1.0
In-Reply-To: <a4fa37e0fc89a3c99982ace3fe381991ebe85b00.1739393685.git.amitpinhass@gmail.com>

Hi Amit,

On Wed, Feb 12, 2025 at 10:56:20PM +0200, Amit Pinhas wrote:
> The fix was found from the relevant man page itself, as it had a wording
> issue regarding the return value when sig=3D0.
>=20
> Reported-by: Amit Pinhas <amitpinhass@gmail.com>
> Acked-by: Alejandro Colomar <alx@kernel.org>
> Signed-off-by: Amit Pinhas <amitpinhass@gmail.com>

Thanks!  This patch looks great.  I've applied it.  I applied some
tweaks to the commit message, to better document the rationale:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D7=
1154d16c5b5fe09b46acdfdf7c8a57f8f2fb892>

I had plans to release a new version today, but haven't had time.  I'll
release hopefully later this week.  Thanks for contributing!


Have a lovely night!
Alex

> ---
>  man/man2/kill.2 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/kill.2 b/man/man2/kill.2
> index 96468622e..9d3a7411e 100644
> --- a/man/man2/kill.2
> +++ b/man/man2/kill.2
> @@ -79,7 +79,9 @@ .SH DESCRIPTION
>  processes belong to the same session.
>  (Historically, the rules were different; see HISTORY.)
>  .SH RETURN VALUE
> -On success (at least one signal was sent), zero is returned.
> +On success, zero is returned.
> +If signals were sent to a process group,
> +success means that at least one signal was delivered.
>  On error, \-1 is returned, and
>  .I errno
>  is set to indicate the error.
> --=20
> 2.43.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--xwmevcz5dnimv6as
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmetEm8ACgkQnowa+77/
2zK4Cg/+M8M0wMdaoMXk2zHhn8hyqLfy80S6bwsJJRSbGlm5xKNYlf/uW2EqQhw7
EfaFnj6nf8NfKBIVFGAC4Ohc2+DoTn31ee2VGlJlzr+jmOuBskb8lh6mU16XecGN
Ar5nuhEsjUzo615kpek+bYFL1oJkPmUmuC2lIcsWhws9Z80NCjQ+FrK67pFBO201
2qyyJKsDTkeiAl4t4iJ/chJb85gnWGMQpzYw7x0rHCv7QsP0AGsKI/JVVXL0TbUv
6bvA09k89uzbvVkNmEnSuFsPpGVkSuK36LDlp04CIitTEjc8DFqZ8eAHBHl3rwTF
PbUv7F9ywbEEzkrul6+AYf0AtbEEmtZnlVtTfqoFDSmvpgxuzaDCIhcnywULBIwQ
CxKkLgOBW6fvhnk4TlUc+JZGnVjmcQlFQO4Ea4VxnoDbSPDHnfeV2l5ujiNwYIMB
1sR4gzM5FUoe0tkMd8yObtjLhh5dY0U7nCgyfOH1BDUpYlsmFiFq0Ys87dB7LuH4
mS4Rlu+tapcvqQgcZpC1srCrFg6Y5YCWKMP0+wvlMIjq4VetN+0fhNITVDmv8Itt
w6TJ5ISG7GM9dlYPEkt+DTK7tm7VLbuBW1Rr39PqO5OSnpCVu8fK+JNuBtmgGp0+
5BL4ERefERFeoH7D+milIHzUA6VpSd9PnZhoYwdA67FcgR3f5qI=
=rI3A
-----END PGP SIGNATURE-----

--xwmevcz5dnimv6as--

