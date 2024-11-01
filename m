Return-Path: <linux-man+bounces-1807-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6289B918E
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 14:10:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE9942829B4
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 13:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C736A19F117;
	Fri,  1 Nov 2024 13:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZD32488"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86195487A7
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 13:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730466616; cv=none; b=ggD8rGgMYMW0OUZtDDpk4SyII0bsljvg4kw6bUDBcgMvgxklYQba2WA2rpkrZQnnPhn/6q9pWzBij2NHqShmX7uWzl7sZ9HJC8LfceY6Buft63KzcupOr58R2pMAanrJM7Y68ArDW7Ys6NbC4I8YTM3y5U/UZWe7fqU53Fi57U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730466616; c=relaxed/simple;
	bh=+BFbpHcXgXqU4GAEa7UNhEz1YjNaSjHcDnUMB0s8BDo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dHQgIN/OKGtCLuQ+lhNXxSskdBDlevWoLZJ4Aoz61oV39G8uBp6LopdCA6/C2iD669/ZOy+ZrOvB5YDAxjqvgrpFHbWbIZRVounN3M/Q7+6bvlqqr/t/8x7Hb+sjBGDkEb1lCJ+uV45/t4ndY+utPxMiqc7e7OIXX1701j4AS5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZD32488; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F39FAC4CECD;
	Fri,  1 Nov 2024 13:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730466616;
	bh=+BFbpHcXgXqU4GAEa7UNhEz1YjNaSjHcDnUMB0s8BDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tZD32488gqO0EgA3w/uU0+dnepe4A4vwuT7KD8/RvPKZGA8CLHAxcx7MPG1ziv/HQ
	 P/66IYU6+rhqyl7+i8LnyatWKl0UksFWJnbteKRt3wSpL3ltjY3u3kaTLMYwPZkwcE
	 YuRtr0clTCP6dvI4cRP3P9NyhrJaV0FzDlfaLiH4uojbb3rty0itN3Ti9piX598aBm
	 1M9WNgPcUlgz0rrHBzq9q3bEZuxXa0dqY1N+nH/E1eL458c/CFgk578iWas462wA7l
	 GT8S67gSzD5P2YcwmDSOOJOoA9jx5ZJWjRObDeyvdKEack0L699Bs7A9DIuT458P8W
	 bP3lUhNJDFy8w==
Date: Fri, 1 Nov 2024 14:10:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jan Kratochvil <jan@jankratochvil.net>
Cc: Florian Weimer <fw@deneb.enyo.de>, linux-man@vger.kernel.org
Subject: Re: [patchv3] pthread_cond_wait and pthread_cond_timedwait can also
 return EPERM
Message-ID: <20241101131011.4vvwbww2ls7oqatb@devuan>
References: <ZwZ8wiQz6hYtQxV2@host2.jankratochvil.net>
 <8734l4fdt8.fsf@mid.deneb.enyo.de>
 <Zwe-ipF5N82CTN64@host2.jankratochvil.net>
 <87ttdkdu0b.fsf@mid.deneb.enyo.de>
 <ZwfK-LmLeU0gQjLe@host2.jankratochvil.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s3tizrkztw2lrpcc"
Content-Disposition: inline
In-Reply-To: <ZwfK-LmLeU0gQjLe@host2.jankratochvil.net>


--s3tizrkztw2lrpcc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [patchv3] pthread_cond_wait and pthread_cond_timedwait can also
 return EPERM
MIME-Version: 1.0

Hi Jan,

On Thu, Oct 10, 2024 at 08:39:20PM +0800, Jan Kratochvil wrote:
> On Thu, 10 Oct 2024 20:25:56 +0800, Florian Weimer wrote:
> > Indeed, POSIX disallows EINTR for all three wait functions.
>=20
> Fixed.
>=20
>=20
> Jan
>=20
> Signed-off-by: Jan Kratochvil <jan@jankratochvil.net>
> Reviewed-by: Florian Weimer <fw@deneb.enyo.de>

Patch applied.  Thank you both!

Have a lovely day!
Alex

> diff --git a/man/man3/pthread_cond_init.3 b/man/man3/pthread_cond_init.3
> index 42e7eac..df1f631 100644
> --- a/man/man3/pthread_cond_init.3
> +++ b/man/man3/pthread_cond_init.3
> @@ -141,22 +141,28 @@ and a non-zero error code on error.
>  .
>  .SH ERRORS
>  \fBpthread_cond_init\fP,
> -\fBpthread_cond_signal\fP,
> -\fBpthread_cond_broadcast\fP,
> -and \fBpthread_cond_wait\fP
> +\fBpthread_cond_signal\fP
> +and \fBpthread_cond_broadcast\fP,
>  never return an error code.
>  .P
> +The \fBpthread_cond_wait\fP function returns
> +the following error codes on error:
> +.RS
> +.TP
> +\fBEPERM\fP
> +\fBmutex\fP is not locked.
> +.RE
> +.P
>  The \fBpthread_cond_timedwait\fP function returns
>  the following error codes on error:
>  .RS
>  .TP
> +\fBEPERM\fP
> +\fBmutex\fP is not locked.
> +.TP
>  \fBETIMEDOUT\fP
>  The condition variable was not signaled
>  until the timeout specified by \fIabstime\fP.
> -.TP
> -\fBEINTR\fP
> -\fBpthread_cond_timedwait\fP was interrupted by a signal.
> -.RE
>  .P
>  The \fBpthread_cond_destroy\fP function returns
>  the following error code on error:


--=20
<https://www.alejandro-colomar.es/>

--s3tizrkztw2lrpcc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmck0zMACgkQnowa+77/
2zKSnBAAjl1iLDsumTX1R98eftW52m+M0zi32j/eybjGT53EA2SVhw8caIh039A2
GYqR64kRZXzXUxLkpscimE1tscGtjmSGYAtzsn0AxmccXsPEpNF02A2gZGMwQ95/
SxSXSKiWhrC8t2fsIyogeNma46a3pNCZ3A4N7Qo+TN8jo+wEO1zvIQriTrs8B2m2
HpFpfLkYTtZx7jGrMEvGxOJh/zYCQPuZCwgrMGX8FSNor8AH6l6N4H3/Zzn2apFj
ffsaQkz9v6Apf8BdsqksU5HhU7wp9Q+vulSUlCPirZlmI0mJJ4slDsoRZ8G+ZfdQ
RO2TBoKwSRrX3VfniY91WCS50nW/bnVNT2mWBap4YAQCUXXApEqi8mPWg83gWcct
PTk/HHUbJbuBxQ1jGZI9G/ENhUXw6MYymdklTRC23cODB+W3zGJvkPt9YncxyVdQ
GheXIlvvmYoOTqlE0WPhpeDchrV1ndhmtdvH/oMDqnFNmDOfJrX+FUS3269URUAS
xVHLusbf+cDNE4IUNwAwEPjgOHE2KGiMJA2W8qg9ZWeuw+IU4MuPdc6Tw8Te5XuD
xduYxxoZMiz2u7GjEvOJbB7VSeOITGlqUnZIS+udAYVkRI3sYPM0peRBTcychaw+
PBnZlm+G1EryO6kwY1kFIXsnI7M5IdijTUpteSfMKZfUz/gl1vA=
=A79g
-----END PGP SIGNATURE-----

--s3tizrkztw2lrpcc--

