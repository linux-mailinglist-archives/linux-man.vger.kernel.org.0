Return-Path: <linux-man+bounces-4687-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DF574CF8BB1
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:18:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6926730D2D00
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 14:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D554A334C2B;
	Tue,  6 Jan 2026 14:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWADSWew"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C0F334C2F
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 14:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767708230; cv=none; b=PlpbvWWLY6Vs8FaH8QnVqO6KBiD/dJBQnIOLtnd1SQtWLoRFbgjpblDJ1zHJ7WFoif9YB+EBtLf1CX6OFg3kLQ8hMckpDwk76TTBkjSLjEPbzvSCvJZFKHW3v2t/JeSktTl9b2moHD8y/XAYUXhgJfnnnXoWjs8elQ7EP/iDi8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767708230; c=relaxed/simple;
	bh=/8cBgzbv917gqTUJbvUEi5hvll0d1GXkMWL5jaCWklE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jkTRz1flKdK3+v+pTydZAHwMkPcI5sKnV9V0HPSOCDM9llDq+N/pv2mdVU2PyC4rvvUDed/ERVCgELGbQdf5VfXbVMFrt9BzjgWbfsmFKH6OsPCxAov6mCW1yTb6Rcn1zf/F0kN7tHwciJ1MRNkw8uMJeMIvFjN9M2Q5zzpQtHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWADSWew; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AEFFC116C6;
	Tue,  6 Jan 2026 14:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767708230;
	bh=/8cBgzbv917gqTUJbvUEi5hvll0d1GXkMWL5jaCWklE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RWADSWewQ7+ll+nvLhYnoq0ffoFjfdkQVFZMuVqX9SvSYK+tocxB9hXA2yPHH5hFG
	 iiYqVKfXh5iCEA9qQrCtrttbGduwykJbbTRYWXo3pM+wYjerO+05kKn3xA7wnjqZKj
	 21RPQInI6o3pFOpf7mMftSRkM51TtbDvNin+nyD/7D/B9otOBse6VjJPHckVQItoU1
	 4u8flRPpseikGNxvHVeZTdeEVHPlVcnEFFyMofGi5g6pygU1UPOk7MC4/Qo7FssIdQ
	 wJq1km+G+HK6rPAyt1Igb3YAp9HVX/uabkWquXVgfGSS8IbFu4QzuSbRJd1ebGlWYa
	 iFIuV8dY5u2Zg==
Date: Tue, 6 Jan 2026 15:03:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 07/15] man/man3type/div_t.3type: HISTORY: Split
 [l]div_t(3type) and {ll,imax}div_t(3type)
Message-ID: <aV0WO6aHPBslTXU2@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <417e53f6394af198ebac893236ad51beafa3488e.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vkppdy7rlsbm4gkq"
Content-Disposition: inline
In-Reply-To: <417e53f6394af198ebac893236ad51beafa3488e.1767675322.git.sethmcmail@pm.me>


--vkppdy7rlsbm4gkq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 07/15] man/man3type/div_t.3type: HISTORY: Split
 [l]div_t(3type) and {ll,imax}div_t(3type)
Message-ID: <aV0WO6aHPBslTXU2@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <417e53f6394af198ebac893236ad51beafa3488e.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <417e53f6394af198ebac893236ad51beafa3488e.1767675322.git.sethmcmail@pm.me>

On Tue, Jan 06, 2026 at 05:07:56PM +1000, Seth McDonald wrote:
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Applied; thanks!

> ---
>  man/man3type/div_t.3type | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/man/man3type/div_t.3type b/man/man3type/div_t.3type
> index 19af4ee7d5c3..654e78b215c0 100644
> --- a/man/man3type/div_t.3type
> +++ b/man/man3type/div_t.3type
> @@ -49,6 +49,16 @@ .SH DESCRIPTION
>  .SH STANDARDS
>  C11, POSIX.1-2024.
>  .SH HISTORY
> +.TP
> +.I div_t
> +.TQ
> +.I ldiv_t
> +C99,
> +POSIX.1-2001.
> +.TP
> +.I lldiv_t
> +.TQ
> +.I imaxdiv_t
>  C99, POSIX.1-2001.
>  .SH SEE ALSO
>  .BR div (3),
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--vkppdy7rlsbm4gkq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldFkIACgkQ64mZXMKQ
wqkXgQ//UACypGbd+1bKPF2UvJc6In1E4PJ/unIzF6Rj7/QqbngdJRL5btAPqykA
GrMIogmoRzpABNzNxuOUUwaSp2SlSnRAXvVflOTcCO2KSzYIRs3OsWD996CknpFi
B7L22REBTAPg97U3w8eBj/9/li4Huqp/bQl6WM6wSRJ6Zib7yq26Q3mRxijK+q01
KsHHsaBa6V8kZosAtTM4rHoSL06/x91wgnkojGxdW1ZbpQiZJqjLWI0XgbjOLriH
IkyPw3s8g0ZuNYQO/ik4zIINWEwlc6xA0yT6KtVPmHv+4R/YeNFyxrFFLHfbW7ar
vwzSk1Wlf9d0bolLp6msMpZQgIRxdyVC4xB02wVWWIsagFuN4JqVQg47UMpslPyQ
Obg+c0Rzm3P3nRAU+ahfZ0kn948I9PwNeoby6iMcg7Fv+y3inQkLsVCMJHELSsXL
GQ9UKsbLrl5iTF/ai15v6XaVjGruG/n1ozt6qyQQcbC0XRmUXHBdUCuF7yg51H7n
8KFj6EN0o6WqmQUo2WOycDT5cL7tVSpglIXd4v8J9nnwnO4M1WndOkyFg8r8LaMV
X+oCtzafuycL9HkAzr3tfpJAEuHevH525G1E6cb3DXmP/JaNKXImO0JYRToGh1Tc
IXNzDhUFK2rcd19lqAxb/3cvR4jKuUxU+cSvqJn9jfQHurqoJkg=
=ilX4
-----END PGP SIGNATURE-----

--vkppdy7rlsbm4gkq--

