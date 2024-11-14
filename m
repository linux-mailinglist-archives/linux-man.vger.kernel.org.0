Return-Path: <linux-man+bounces-1914-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D28999C8821
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2024 11:54:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9642C281633
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2024 10:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69FF31F80CC;
	Thu, 14 Nov 2024 10:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALqI27n0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293021F80B2
	for <linux-man@vger.kernel.org>; Thu, 14 Nov 2024 10:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731581623; cv=none; b=d/qE781JH6M2IPvgEvqjrg7GpVuvXGPVFZpRFOWQULxFyOtP67ZTI86sNtQS7Vi/Mibwql9QiuNnHN+NuD5+1p+AWRMkqRPbOg2ziU6Q9FNqfmuM0fZSMFdoWyndSoyieAkET7jsrV5g9FETJSN9g1TpGi0DQq4pPNBAdWFvqjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731581623; c=relaxed/simple;
	bh=ARK8yTH+gulN8mhJBF1h3rRlR5fcnqpNVQaxl1YfQHI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aIeSbxfbV/cBlScARwEC9D6frYCg8wHw35E9lEp7LHcVsqw3bvSU5canIxa24AgrYOsfF2khsk+4UvUHzOwb6d0N+cx7Z6FCDe/H7hBig4ieDSjRMFkPtEcx7tQRjKoj3M8olziJg3NmkdjsjinChuomiwu3ziDyv8OzRBHxhlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALqI27n0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61ACAC4CECD;
	Thu, 14 Nov 2024 10:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731581621;
	bh=ARK8yTH+gulN8mhJBF1h3rRlR5fcnqpNVQaxl1YfQHI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ALqI27n0rVsk6W9fhevQlAEhvo0grO9MzP+4IL7d+I9BEnhfCf3UCg4t4tZyshMBP
	 gQHxutzkWuabjPgpSbgkH5kJeVILzMRvhngjiA9CUkdkl0fijeI/1uH3Wd289W8rOE
	 DZZ5lk412B1duWrozHd48NL1XQTv9tEZJPk+RHIUOTdBIdALfcWd1AwcM52XdVje2A
	 1scFbJdqvt9dyAbYCt7bqxgo2Qp4BaQBet2c2m4+8vXrn+GW72esLAekkrOpPrz6t/
	 e+T+05TFWhQ5mZgpfCwBvI+IsMjNrSdsiAWQZ6PMACOmopkhK4HUqZGr54yJksA2k4
	 q/Vja64UwssMQ==
Date: Thu, 14 Nov 2024 11:53:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yuanchu Xie <yuanchu@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Yu Zhao <yuzhao@google.com>, linux-man@vger.kernel.org, 
	"T.J. Alumbaugh" <talumbau@google.com>
Subject: Re: [PATCH v5] posix_fadvise.2: POSIX_FADV_NOREUSE now supported.
Message-ID: <g5br5ispdajhe45jzop5jz2a7p7wx7nxaa2vkngno4l33ok5ia@e2lk57xgwv6o>
References: <20241114012233.4152152-1-yuanchu@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vrkqdhvf6c6rjfze"
Content-Disposition: inline
In-Reply-To: <20241114012233.4152152-1-yuanchu@google.com>


--vrkqdhvf6c6rjfze
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Yuanchu Xie <yuanchu@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Yu Zhao <yuzhao@google.com>, linux-man@vger.kernel.org, 
	"T.J. Alumbaugh" <talumbau@google.com>
Subject: Re: [PATCH v5] posix_fadvise.2: POSIX_FADV_NOREUSE now supported.
References: <20241114012233.4152152-1-yuanchu@google.com>
MIME-Version: 1.0
In-Reply-To: <20241114012233.4152152-1-yuanchu@google.com>

Hi Yuanchu,

On Wed, Nov 13, 2024 at 05:22:33PM GMT, Yuanchu Xie wrote:
> POSIX_FADV_NOREUSE is now supported in Linux.
> Update text regarding former no op behavior.  Indicate the readahead poli=
cy
> and treatment of file pages read with this flag.
>=20
> Link: <https://lore.kernel.org/linux-mm/20221230215252.2628425-2-yuzhao@g=
oogle.com/>
> Signed-off-by: T.J. Alumbaugh <talumbau@google.com>
> Signed-off-by: Yuanchu Xie <yuanchu@google.com>
> ---
> Changelog
> v4 -> v5
> - Remove unnecessary changes
> - Use two space inter-sentence spacing
> - Fix lines exceeding 80-column
>=20
> v3 -> v4
> - Use semantic newlines
> - Format with macros like .B instead of inline \f
>=20
> v3: https://lore.kernel.org/linux-man/20230320222057.1976956-1-talumbau@g=
oogle.com/
> v4: https://lore.kernel.org/linux-man/20241113031654.3964740-1-yuanchu@go=
ogle.com/
>=20
>  man/man2/posix_fadvise.2 | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/posix_fadvise.2 b/man/man2/posix_fadvise.2
> index ed40b0c0d..3c47efeb8 100644
> --- a/man/man2/posix_fadvise.2
> +++ b/man/man2/posix_fadvise.2
> @@ -64,7 +64,13 @@ The specified data will be accessed only once.
>  .IP
>  Before Linux 2.6.18, \fBPOSIX_FADV_NOREUSE\fP had the
>  same semantics as \fBPOSIX_FADV_WILLNEED\fP.
> -This was probably a bug; since Linux 2.6.18, this flag is a no-op.
> +This was probably a bug;
> +from Linux 2.6.18 until Linux 6.2 this flag was a no-op.
> +From Linux 6.3 and beyond,

'Since' means precisely "from ... and beyond", so I'd rewrite this as

	Since Linux 6.3,

> +.B POSIX_FADV_NOREUSE
> +signals that the LRU algorithm

What is the LRU algorithm?  I suggest saying

	signals that the Last Recently Used (LRU) algorithm

Have alovely day!
Alex

> +can ignore access to mapped page cache marked by this flag.
> +This is useful, for example, while streaming large files.
>  .TP
>  .B POSIX_FADV_WILLNEED
>  The specified data will be accessed in the near future.
> @@ -130,6 +136,8 @@ in this case.)
>  Under Linux, \fBPOSIX_FADV_NORMAL\fP sets the readahead window to the
>  default size for the backing device; \fBPOSIX_FADV_SEQUENTIAL\fP doubles
>  this size, and \fBPOSIX_FADV_RANDOM\fP disables file readahead entirely.
> +.B POSIX_FADV_NOREUSE
> +does not modify the readahead window size.
>  These changes affect the entire file, not just the specified region
>  (but other open file handles to the same file are unaffected).
>  .SS C library/kernel differences
> --=20
> 2.46.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--vrkqdhvf6c6rjfze
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc11qsACgkQnowa+77/
2zJbuw//UCnC7Q0+08xOzUsI2KkzEKc9XBQ4MrJZI43oi6Qf/TZ3QYrfuOvyoTCW
m4w4ZRG8fEHKR5e1pyxwFwaQDD80Sh15ZJ6qyuHf4PjMNXO28JR2ORgpWRxJ/N+m
u/H5Dtmy+yy9rbenNPJN+dXKBx7b+uUoMSqjDNoE8CElRwH5DkjZreT4DAxMIlfk
vwSHxlGJwGlNopmuHNbH1sV8W65XMYKO1w8MAcc3uF41WMTq3qMMqxt/nmcjdvrA
dyUP2ckbLPBKMXbn1htWbIKklMlz575veOOlKPfNNegLHk9O0YQbazwfdlajAYLc
2ILF7zGbxC6B7n8dqCXmHOmT67mRu2ka8hjje/XYQW1TTdQI6iKLKdl0v7eZQJg8
JafOGWJSg/Mk7CiqQIti8bMTKImJPmG3uznnEjygU4aOq9JJX99wxHgWrzUwK861
oX1xizd23D0Q93nHeM8hcIkV3XGIwNR/gwOhpNHvGf+xNUHugJK5eN9pJmdHWU8g
XQjAamyAkr5ERL7aM6q+VP+r6vzrBzHhsOJizbOnXNMfF0Oru0meg5q7YxfqK3z1
EaicYhCqSLXuRN4Fx6N4IX3/ynr177Wv0UnlbHXJAmwph+UM9Wg/WiKaC55GwfI/
PAUdW7f1Qq/begXE93JzZHvJ1LZM3kat1kc3Mcqr//52ov0W65o=
=De4w
-----END PGP SIGNATURE-----

--vrkqdhvf6c6rjfze--

