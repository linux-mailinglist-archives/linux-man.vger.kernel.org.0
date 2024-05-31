Return-Path: <linux-man+bounces-1018-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F06A8D690A
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 20:37:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0E3F287706
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 18:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5BD7D096;
	Fri, 31 May 2024 18:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzvTiVgp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE441E498
	for <linux-man@vger.kernel.org>; Fri, 31 May 2024 18:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717180672; cv=none; b=ltC44F61oAPl+dyIc0TLY/Hw6rCjah+qCzxzbOvb+x0Q/Y7vtVbDUS1SRtNJAKQcILTLsZ7PeIvGfLqAO55dP7hUBsm7Xwc9R65he6BN2K2NXrqjNnI5VlsOkW1iQA3zqiZTlYjLgFa/6fb7Vs0zT+Y7ZhPfgCvZparr7RaGX1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717180672; c=relaxed/simple;
	bh=udaHrnhkzoqmkr2TF4NLK/5WMCCKchTr/vye1jISgKc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SGsg5Oc6f3AUskujpcJ0E6v2YW/3ltwEzooAhJfe8V1fCLaqzUhvMaw7+3WGdmTVSrcuuwyT2ghgVw1ytJ/ONZky5yo1QyPfXp/iPAf68Xylq/X3yW89oNlDCpqT7ik2AZBkCyR/dlt6UZE2/0BUhaCOdjohWJ628r7f5+gINyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzvTiVgp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 759F2C116B1;
	Fri, 31 May 2024 18:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717180672;
	bh=udaHrnhkzoqmkr2TF4NLK/5WMCCKchTr/vye1jISgKc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WzvTiVgpYly9mho/YLjI1tuCTlAx26Do4N8oTIn0vnLB+l31miBd2EV15jJC1VxcS
	 Yd1Wf1UPlT4iRr2mrdVXmdM52o7sGUfZfTQpIxtSiKWTAgee+qqWbExuupm0FdX7bj
	 n7nCCw/Q3gmJDkQuqwMPJqV5Q5yYFH+Aqvbxx4haqg6Yg1r7Q24pVtdJGZeGVi24jZ
	 UJJY1yHdXibT7CL+wTdh6Z0vaFNlEyBYB+3y+83cPIIS5YCZ/r22Hsos1YGFhvYSEL
	 Ln06DILY3H9vCQT/cN/YVgzxY2KK5fMyF0m9/VjqWN0EO8IVEFOLzu5t6X/Rww0tZC
	 z6OD65u46tAnw==
Date: Fri, 31 May 2024 20:37:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] open_by_handle_at.2: correct the name of the FreeBSD
 equivalent
Message-ID: <e6crzxjve4e6xsz2hmzwujgnv6ty5rtalc44dmqb5kupkuy3nr@yocrwitryuep>
References: <20240527113800.1098633-1-hch@lst.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tlaggiel3lgz4l63"
Content-Disposition: inline
In-Reply-To: <20240527113800.1098633-1-hch@lst.de>


--tlaggiel3lgz4l63
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] open_by_handle_at.2: correct the name of the FreeBSD
 equivalent
References: <20240527113800.1098633-1-hch@lst.de>
MIME-Version: 1.0
In-Reply-To: <20240527113800.1098633-1-hch@lst.de>

On Mon, May 27, 2024 at 01:38:00PM GMT, Christoph Hellwig wrote:
> The open_by_handle_at equivalent in FreeBSD is called fhopen, not
> openfh.

LGTM.  A simple search of openfh shows that it doesn't exist at all in
the FreeBSD tree:

alx@debian:~/src/bsd/freebsd/main$ grep -rn openfh
alx@debian:~/src/bsd/freebsd/main$=20

>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Patch applied; thanks.

Have a lovely day!
Alex

> ---
>  man/man2/open_by_handle_at.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/open_by_handle_at.2 b/man/man2/open_by_handle_at.2
> index 8fa1bf630..ee8a4f72b 100644
> --- a/man/man2/open_by_handle_at.2
> +++ b/man/man2/open_by_handle_at.2
> @@ -402,7 +402,7 @@ flag and the filesystem does not support
>  FreeBSD has a broadly similar pair of system calls in the form of
>  .BR getfh ()
>  and
> -.BR openfh ().
> +.BR fhopen ().
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--tlaggiel3lgz4l63
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZaGNoACgkQnowa+77/
2zLZ2A/5AQjUp+2gxIIUTBuaYnluNNup9X6SZ1OGMhUSA9vjfkzEUD/L31u69Iv/
shogJqJrOwaCm/+Cl/WHM1NKca8cbxwkOqSzPrUiqyOyhyI4T7skdUzH3FAsqiGp
aRrAaF5O4eziGsi+SDE96coeBj2gf2YtuZREE8lo2XlKqypG8NdMWaQpdcOVfihr
BDv6Ctocc0vKgG6Bfy2OefRniH7Txih5WXglx4jkWfBDsinP/nH9YXq21wbTbpo2
D1hvnQsOKQSiRW6gVfpGk3mX8c6gJgGGashIhoIbMD7v2pDUCMB83ZbAgqIPxlye
Om5b6d2963XKKHsS6N58QMcyk4iOWW/2u6ApW8fOvKNxB6QOIY9bSlIJ+uJFpiUY
m07qUYozM3pXOA1bMyrptvFrFokHXlldTJPIRxU1cBSqxLIrdkY8IjmmvsGI2EDE
ZClQ1Q2ownjIgxmLvdLSuSe81zcGtbwurJH3vV2sqW3Rs0fFzblD8/ZT+fzeM4tt
BjS8kPkuSA9NzrCak3kGClyh9uUANnFuPXLq4nRPlnMR7nNQZNd9nUD1A1a3xcnm
yQDD8Z9SSaqyvaPPexV1SjmpETAgysA9cFISykF1gAdgFzGTuXcB4nq6zHQpYbrD
vW0IUruhrxNcPeI2T1CphvyOaRdvzYEBpshNGKL0NUZwDzOohtk=
=znXc
-----END PGP SIGNATURE-----

--tlaggiel3lgz4l63--

