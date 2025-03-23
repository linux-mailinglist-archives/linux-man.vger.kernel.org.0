Return-Path: <linux-man+bounces-2649-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6217A6D105
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 21:15:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A67823B3C78
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 20:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A59C13541B;
	Sun, 23 Mar 2025 20:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2qqlkmT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5DD2C80
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 20:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742760941; cv=none; b=OuVQEnLn85Emlp3wigus+3qkKRtI8n+dVtVS51KfT8bg7ZdxFAitc4K+fecphlBMsS+GeHFoVAC3otUZ05aOEkpyvAoW0xtQjDUX8juJ68I1xEc5W6EHaUuFk+tOerUmBnTRyeh+ETDRM2yyBPOkyKTReeFCYqgBUnAsRvYJrVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742760941; c=relaxed/simple;
	bh=SVk4j6TBdSCuy29JCC0t8p2C7ceZdG1F++o+hktnNLs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B+1QeOIxtZ7JUqE7/6Xp7KAMb5FqgZGSQ9mnD7oNjovnnGaNqFfI5gxHEtFVDCKorQxFN4w2YryX0+F5MqizrnT6svw0ZybOV0HN+wD1q9vx6hcOqfA+mI+tGyQPQgS+DaqXgumaOU0TcjFA/mHiSD1wigPTVbd4Zh5tXfRiPy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2qqlkmT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81B71C4CEE2;
	Sun, 23 Mar 2025 20:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742760940;
	bh=SVk4j6TBdSCuy29JCC0t8p2C7ceZdG1F++o+hktnNLs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P2qqlkmTW7rpRTfiSOkHmnRuXb7mKKXk5SsG2h/QsHlsyVTatbFkBcbn1Q4CAKB/L
	 zx1wiln2ldD813GvaN0WNWZcvjgpr9Eb4YDiwgT+QXIK+7Hi3UpAOEjSJMywRXRmji
	 4AkKlbbQVO1hIQA2g4bXE/dLM8ldOEJDgaoRfY9qwcAbr/ftv75jYPeTacLUGI9uT/
	 jEk2We+tUN4FJtK63mnRNXsX8tvclAhqu2LjowFfJQ4eYXsE63hN48MG0SfZXKye8w
	 wAi+KVCFUj/uRuLnhShNbg9cFQPxX5+A1LF6JtJbWXTcP1PPaEurU4FKNG0Fz97xgT
	 QBvmV+xDhYmCg==
Date: Sun, 23 Mar 2025 21:15:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Matthew Wilcox <willy@infradead.org>, 
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>, linux-mm@kvack.org, 
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] madvise.2: update MADV_GUARD_INSTALL, MADV_GUARD_REMOVE
 description
Message-ID: <jy7enfjux7etamfupfipzijrnlc2ltzuaq5limlpd6aus6ihfs@zpc5jqxtsbs4>
References: <20250317210653.273728-1-lorenzo.stoakes@oracle.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2r3ocp75ythhsiff"
Content-Disposition: inline
In-Reply-To: <20250317210653.273728-1-lorenzo.stoakes@oracle.com>


--2r3ocp75ythhsiff
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Matthew Wilcox <willy@infradead.org>, 
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>, linux-mm@kvack.org, 
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] madvise.2: update MADV_GUARD_INSTALL, MADV_GUARD_REMOVE
 description
References: <20250317210653.273728-1-lorenzo.stoakes@oracle.com>
MIME-Version: 1.0
In-Reply-To: <20250317210653.273728-1-lorenzo.stoakes@oracle.com>

Hi Lorenzo,

On Mon, Mar 17, 2025 at 09:06:53PM +0000, Lorenzo Stoakes wrote:
> Lightweight guard region support has been extended in Linux 6.15,
> permitting the use of these features for file-backed and read-only
> mappings.
>=20
> Update the description for these operations in the madvise manpage to
> describe the changed behaviour.
> ---
>  man/man2/madvise.2 | 37 +++++++++++++++++++++++++++----------
>  1 file changed, 27 insertions(+), 10 deletions(-)
>=20
> diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> index bd2b90b7a..37492c8cf 100644
> --- a/man/man2/madvise.2
> +++ b/man/man2/madvise.2
> @@ -697,9 +697,22 @@ is applied to regions
>  containing pre-existing lightweight guard regions,
>  they are left in place.
>  .IP
> -This operation is supported
> -only for writable anonymous private mappings
> -which have not been mlock'd.
> +Prior to Linux v6.15 This operation was supported

We don't use 'v' for version numbers.

	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ grep -rho 'Linux [1-6]=
[^ ]*' | wc -l
	7679
	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ grep -rho 'Linux v[1-6=
][^ ]*' | wc -l
	13

(Oh, well, I need to fix those 13 places.)

Also, there should be a comma (and lowercase):

	Prior to Linux 6.15,
	this operation ...

> +only for writable anonymous private mappings.
> +Since Linux v6.15 both anonymous and file-backed

A comma here too.

> +mappings are supported, including read-only mappings.

I'd break the line after the comma (and put 'mappings ...,' in the
previous one).

> +.IP
> +The mapping must not be mlock'd,
> +nor can they map hugetlb ranges

mapping is singular, but they is plural.  Did I misunderstand, or is it
a typo?

> +or special mappings

I think there should be some punctuation here, but let's revisit after
the rest of the paragraph is revised.

> +for example,
> +mappings marked with kernel-internal flags such as
> +.B VM_PFNMAP
> +or
> +.BR VM_IO ,
> +or secret memory regions created using
> +.BR memfd_secret(2) .

The space should go before (2), not after.

> +.IP
>  An
>  .B EINVAL
>  error is returned if it is attempted on any other kind of mapping.
> @@ -756,19 +769,23 @@ and
>  .IP
>  All mappings in the range
>  other than lightweight guard regions
> -are left in place
> -(including mlock'd mappings).
> -The operation is,
> -however,
> -valid only for writable anonymous private mappings,
> +are left in place.
> +The operation is supported on those mappings
> +permitted by
> +.B MADV_GUARD_INSTALL
> +in addition to mlock()'d mappings,
>  returning an
>  .B EINVAL
>  error otherwise.
>  .IP
>  When lightweight guard regions are removed,
>  they act as empty regions of the containing mapping.
> -Since only writable anonymous private mappings are supported,
> -they therefore become zero-fill-on-demand pages.
> +Anonymous private mappings therefore become

I'd put 'therefore' as the first word in the sentence, followed by a
comma.

> +zero-fill-on-demand pages,
> +and file-backed mappings are repopulating with the

repopulat{ing =3D> ed}?

> +memory contents from the up-to-date contents of the
> +underlying mapped file.
> +

We can't have blank source lines.  That results in a diagnostic.

>  .IP
>  If any transparent huge pages are encountered in the operation,
>  they are left in place.
> --=20
> 2.48.1
>=20

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--2r3ocp75ythhsiff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfga+IACgkQ64mZXMKQ
wqmX9Q/+IdfXW+4OfBHbmYKJj2Z5k6+Atdh5Z+IhN2fa6ijTXBC9V97r3QeqXhzI
DaG74efMckeg9iMq348FNT0SPnbItsadTtbnVj59pkdXVhmtczHF6kfpLVHoapVX
pLr0jVVqQx0bCg9bdyclbNkRDYAmO9IBzm4QV/5PmLXqC8VcvG1fVXQoBBEzAQbO
c8LF35EnI7xrF8j3Tr26dqI2sN7LeiQeQyLCWZvN4Q4Z6mYd0P2+nIU+CYfjyta0
Y4xNdNQwGKKDo4pwZZS4XdjkjIuwMLDg0ueChRCDZQJJYQA75K7pcQSb02fccnvA
NJTv4gjjr7MdHUJbPDFg4dCFfVLKBSgNFFXOt1TW+ThKBSZyqmmHYZE+973XPD2/
NanJWFLn2VgKsv8L6/jW9xMzqoWZ+yh7DX2PaVUZpHxCJJjrxSfwYMAytjMv0hUB
6k0LKGqQb9yn8h5RDf6Pk4w+4FjcgGkjbLTIEExTG2NyY5GiRTnUhFM4KXSLfLqc
5V05xW8eP1jfiPKagNJ+nLWnC1ztul3ENf4wBEXyR5hPsaazDm+zO/RTODQRGJat
rDgLM/1C22NR4FZPnyFWJNozH05BiJTy5kOctHQUuNzif//HOzZ8oNyUEHwmCUXu
7OfEqiXmjk6nevdOkWqlFAL/pNh/ec8Eor7kUFJAjzuIdsozK5o=
=PTgC
-----END PGP SIGNATURE-----

--2r3ocp75ythhsiff--

