Return-Path: <linux-man+bounces-1906-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD089C6E11
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 12:42:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D361A1F2279B
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 11:42:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D4F520010C;
	Wed, 13 Nov 2024 11:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f60Tum9k"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01221FF7D9
	for <linux-man@vger.kernel.org>; Wed, 13 Nov 2024 11:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731498138; cv=none; b=cPsrFnq6J3g6+hfvS9v+FpIiHMzsoTAJNdXKdsghITuK3i5+BULyKEgIj/B+0ERHGoZ3YIWDYvxxOCoGQ5ecHJ4vZcHHhviJRtLwKaF1r3FBcq5Fk+edWF3VsVwbp8Z+7Njg0sF8EnWdvXdyGE5ZWoes5qElDFsASM3Clw7XsGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731498138; c=relaxed/simple;
	bh=BjTbJmatYHoFC8EnvEEWRDk6vK3/TFVANbhNujCF9yE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d1niMRizA09yBHhkeCVeDVnCvJPvN3EZam36D+4d39wdzXxunwDmLAQr5NrcznVUwzMtTSsGgCV4cvZfTc1Q3Af9gvq+fB2OXpJsuLHLLDnUp9QBx0AYA3BQSiuIyO9OUEnQGYxmveRnHJwZgwOtV9W/XMpexu/pYZry0bIH79g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f60Tum9k; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 207FCC4CECD;
	Wed, 13 Nov 2024 11:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731498138;
	bh=BjTbJmatYHoFC8EnvEEWRDk6vK3/TFVANbhNujCF9yE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f60Tum9kjC1H5LBv1Z0/kfWJG54yVRK0YgNgR0sejIxYxVzx4GpRu6Kfk9BZtZDjQ
	 ZKrH1Y1k6LDhSS+dNtRcdQiVFuAPyswvDikUTF6PMSWJKQh5Yrko4BN9nPwYIt0IVB
	 pkG0Q/ARD6didhuSmNKqOoeZ50F0EAYgd5/mmE4Q7WIuzwlpVVwjFVPol7ef8laA9Q
	 7tjSkHBkZOVbEWhsdm5pLiwWpcNozMWKYB3fGbpKo1C0od5Nyk6Bp1BrdzrTYNbUQ/
	 XpKeNC5V2aJUzI9qVF/96S01gzbJyv/Lufx7cxN5FlqlEtuZYTj7xG3Nudq9KzUKbI
	 X4pWGwJLCghIw==
Date: Wed, 13 Nov 2024 12:42:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yuanchu Xie <yuanchu@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Yu Zhao <yuzhao@google.com>, linux-man@vger.kernel.org, 
	"T.J. Alumbaugh" <talumbau@google.com>
Subject: Re: [PATCH v4] posix_fadvise.2: NOREUSE now supported.
Message-ID: <xuzxyv26ncwokfb32j4kajaqsnzo2o776encbvb4kli3jtyaxo@2duy42n7boga>
References: <20241113031654.3964740-1-yuanchu@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ownjjxqwt5mkvs3k"
Content-Disposition: inline
In-Reply-To: <20241113031654.3964740-1-yuanchu@google.com>


--ownjjxqwt5mkvs3k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Yuanchu Xie <yuanchu@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Yu Zhao <yuzhao@google.com>, linux-man@vger.kernel.org, 
	"T.J. Alumbaugh" <talumbau@google.com>
Subject: Re: [PATCH v4] posix_fadvise.2: NOREUSE now supported.
References: <20241113031654.3964740-1-yuanchu@google.com>
MIME-Version: 1.0
In-Reply-To: <20241113031654.3964740-1-yuanchu@google.com>

Hi Yuanchu,

> Subject: Re: [PATCH v4] posix_fadvise.2: NOREUSE now supported.

Please spell the full name of the macro.

On Tue, Nov 12, 2024 at 07:16:54PM GMT, Yuanchu Xie wrote:
> POSIX_FADV_NOREUSE is now supported in Linux[1].
> Updates text regarding former no op behavior. Indicates the readahead

Please use 2 spaces after period.
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches/description#n44>

> policy and treatment of file pages read with this flag.
>=20
> [1]: https://lore.kernel.org/linux-mm/20221230215252.2628425-2-yuzhao@goo=
gle.com/

Please prepend this with a Link: tag, and wrap the URI in <>.
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches/description#n42>

>=20
> Signed-off-by: T.J. Alumbaugh <talumbau@google.com>
> Signed-off-by: Yuanchu Xie <yuanchu@google.com>
> ---
> Changelog
> v3 -> v4
> - Use semantic newlines
> - Format with macros like .B instead of inline \f
>=20
> v3: https://lore.kernel.org/linux-man/20230320222057.1976956-1-talumbau@g=
oogle.com/
>=20
>  man/man2/posix_fadvise.2 | 24 ++++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)
>=20
> diff --git a/man/man2/posix_fadvise.2 b/man/man2/posix_fadvise.2
> index ed40b0c0d..11452699e 100644
> --- a/man/man2/posix_fadvise.2
> +++ b/man/man2/posix_fadvise.2
> @@ -62,9 +62,15 @@ The specified data will be accessed in random order.
>  .B POSIX_FADV_NOREUSE
>  The specified data will be accessed only once.
>  .IP
> -Before Linux 2.6.18, \fBPOSIX_FADV_NOREUSE\fP had the
> -same semantics as \fBPOSIX_FADV_WILLNEED\fP.
> +Before Linux 2.6.18,
> +.B POSIX_FADV_NOREUSE
> +had the same semantics as
> +.B POSIX_FADV_WILLNEED.

Please don't reformat text that you don't change at all.  Patches should
be minimal.

Also, you've made the '.' bold.  To keep it in Roman, you should use:

=2EBR POSIX_FADV_WILLNEED .

> -This was probably a bug; since Linux 2.6.18, this flag is a no-op.
> +This was probably a bug; from Linux 2.6.18 until Linux 6.2 this flag was=
 a no-op.

This goes beyond the 80-column right margin.  Please break the line in
an appropriate point (';').

> +From Linux 6.3 and beyond,
> +.B POSIX_FADV_NOREUSE
> +signals that the LRU algorithm can ignore access to mapped page cache ma=
rked by this flag.

Same here.  See man-pages(7).  I'd break here right after "algorithm".

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

Have a lovely day!
Alex

> +This is useful, for example, while streaming large files.
>  .TP
>  .B POSIX_FADV_WILLNEED
>  The specified data will be accessed in the near future.
> @@ -127,9 +133,15 @@ Linux returned
>  .B EINVAL
>  in this case.)
>  .SH VERSIONS
> -Under Linux, \fBPOSIX_FADV_NORMAL\fP sets the readahead window to the
> -default size for the backing device; \fBPOSIX_FADV_SEQUENTIAL\fP doubles
> -this size, and \fBPOSIX_FADV_RANDOM\fP disables file readahead entirely.
> +Under Linux,
> +.B POSIX_FADV_NORMAL
> +sets the readahead window to the default size for the backing device;
> +.B POSIX_FADV_SEQUENTIAL
> +doubles this size, and
> +.B POSIX_FADV_RANDOM
> +disables file readahead entirely.
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

--ownjjxqwt5mkvs3k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc0kJYACgkQnowa+77/
2zJKGQ/9Fs4NRfj0lHeUrEdvJzAv2/hmRC7530vVAzhxFeSkBIkQifG1XMGN5Z6C
2ZTglwscgcBRNjyM0xTujQs2RVnIiUKFZXyMsppgk6QqaWMJqWLZSrfRFn/+abmg
KeIO+FQLxpkIsNZiYr0iOKaOl3RqoKOTLvT8CDL+51TByzbfePK/AtO6omeGKqI2
j8VdOuDWJsYoEaE1VR4mI44UxxKlVk5GiRuqDrdVuHg2NlkHa5lOkw2OAehAG1eR
ZXw/8UNOgvagkUfu+FOtikkdfgSOzUT2YK6yFXbZ9x1FpDo20UVO7esyBRnhYEyX
noI3eOtunqVTbWvo0liNACeD9nSj1oTblQy0ZUZP2LPM2akR8ntKKACtAsvgMsAP
1d81RNFbwwA2BHGdnSpdSrw8fKiVrwRKhesRU4BwtcUSH2A/17o+Z+uPAkrehPn0
trs4SUPDdzJR8vtl6KEDlG2yR1YIn3A2cbTSzrammI83aFxBzBJT76hNqoAdGvNp
BGLR9Ji1+1U7YYbZ4IKrn67BzI30RaU7e+HnLtJDhPWbqthZP8nCaM5jLfvojreZ
HfKLlYK6/P6KPlpDQ1qbQ5kBvIbjD6xXlzEIPDKd3cr4gRCa5BhbQSwaAH3EmI+X
qaLmCgqqojYD2uG8I1i3ZLcKXGdheaaVhuJ4xW5Knaw7NBtgtdU=
=sBxR
-----END PGP SIGNATURE-----

--ownjjxqwt5mkvs3k--

