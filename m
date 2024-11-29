Return-Path: <linux-man+bounces-2082-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A88FA9DE68A
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 13:37:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 496A92814E6
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 12:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78470195980;
	Fri, 29 Nov 2024 12:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiG6No1/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376EF153598
	for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 12:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732883866; cv=none; b=rUesrO2X1R+EOsMBwLePtlVhVrnAmkKeee2W9uBFgtJv1H84SF3q5G0KYPa3mDY9nG5HehoySCT9wSG+BZiyDhy/UcUTUEolef4wkrsIlHTF8/gVYXgSD/yguJC2QXh1eUvl7WIsUhb5HgkjNyAJdTlWM2BHmorIgthhYYUo6UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732883866; c=relaxed/simple;
	bh=tI6UA7OJo1Pn23C/Dw9GV5skm6hBr8PsuWTzDkFs4Cw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UF+8bzhn+0F7KnUYsE5dXAiq7r95YGK7cy0zfmn3GsRBiL5qJnh6pffgc8Iwa1kU0zDqZJm2BlDlWqFHKYh8JscKOHqhyRTDeoOGL6cLalJOzp4UarXrm59iQFwIi1KZnC6S67cytz1pN0+CN3o4/LCvspsuxqKgicoO4SJObGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiG6No1/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07461C4CED2;
	Fri, 29 Nov 2024 12:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732883865;
	bh=tI6UA7OJo1Pn23C/Dw9GV5skm6hBr8PsuWTzDkFs4Cw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KiG6No1/2jrI9iQRT9xu6qqyEPziwRecsCIvTlPPJ+766Nf8gPcp7vTXKrWjjllhI
	 pls15DMQjApUWMBvbVUFhjDWTibm08JsvIlWxY9dEcs9eP2HcripuImUoeJiBZoPbE
	 GsnEqUUXrWzbwT+HXVlyX19HxHT1uhVufSu3+N8W8/cDfzraNJ5D6vjHU619bHtImq
	 LIQlA9TV2TG6NCIWbXOpIjJ+rCGLMI9t1LYCR+DnVHA/QwrlW5zlnAFRTeL2OGgHCq
	 VC+E9LfFFds2ZAy6CEMkhIQ8h9DlkapnMprpUOe8f+HiSNmeb6jDs+a3TgeNx6FtvN
	 L8n8r0lqa53QQ==
Date: Fri, 29 Nov 2024 13:37:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Matthew Wilcox <willy@infradead.org>,
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
	linux-mm@kvack.org
Subject: Re: [PATCH man-pages] process_madvise.2: describe 6.13 behaviour
 permitting all madvise flags
Message-ID: <20241129123741.n7qxysu3w3ulurj7@devuan>
References: <20241129095507.11001-1-lorenzo.stoakes@oracle.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yb5bhfwlb6ud3r4j"
Content-Disposition: inline
In-Reply-To: <20241129095507.11001-1-lorenzo.stoakes@oracle.com>


--yb5bhfwlb6ud3r4j
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH man-pages] process_madvise.2: describe 6.13 behaviour
 permitting all madvise flags
MIME-Version: 1.0

Hi Lorenzo,

On Fri, Nov 29, 2024 at 09:55:07AM +0000, Lorenzo Stoakes wrote:
> Since Linux 6.13 it has become possible to use all madvise flags when tar=
geting
> the calling process. Update the man page to reflect this change.
>=20
> Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
> ---
>  man/man2/process_madvise.2 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/process_madvise.2 b/man/man2/process_madvise.2
> index b78a61553..d12407bdb 100644
> --- a/man/man2/process_madvise.2
> +++ b/man/man2/process_madvise.2
> @@ -54,7 +54,7 @@ This value must be less than or equal to
>  or accessible via the call
>  .IR sysconf(_SC_IOV_MAX) ).
>  .P
> -The
> +If manipulating another process, or prior to Linux 6.13, the

For consistency with other pages, how s/prior to/before/?  Prior to is
ok; it's just for being able to grep for a single expression.

>  .I advice
>  argument is one of the following values:
>  .TP
> @@ -74,6 +74,9 @@ See
>  See
>  .BR madvise (2).
>  .P
> +Starting in Linux 6.13, when manipulating the calling process, any advic=
e flag
> +is permitted.

Please use semantic newlines.  See man-pages(7), and the other email.

Cheers,
Alex

> +.P
>  The
>  .I flags
>  argument is reserved for future use; currently, this argument must be
> --
> 2.47.1

--=20
<https://www.alejandro-colomar.es/>

--yb5bhfwlb6ud3r4j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdJtZUACgkQnowa+77/
2zJsjw//bJgex3xBPRGUEj/CGPafcgoeu3ruwnKWWizjH5CxWezPrgDB5vMsJnsB
fvL7k4MgnalW6DfRQfCDmvxaLr4N4a24+Mcpdj472ZbW87ZofVqy2cGOGESAIt9Z
u9K/x10QvKihuFhnrBjr+fSxT4GpjuAB/MPnVAc5jQ7oqo9Q0qlkAwu6M3rLDZn7
i+PvD/eK/1+moqvPjB4nHYNXo0/qSM67hnX8HeN7cCCNrzxTlNw8TuI5OudoR+Mw
t671Je3ZK9j0lIV91KqsWXYvmyHfEDqFFGtZ33y8dPT/68nIrD7T/CAcQxNuCECW
3+LII8nuSmv/ZV/vnxBG1W7RlAh8tkvBjbfUX+ohzFENgz2xyiCXW0fiOno0+F/1
ju1L+012C0Ej6M+v4FroBLCYQMlBGFSJIWEoO8rnKhYQ8pj+t52twjbQ5AyEP4NN
KskcDzGQIug9cRG2JqHG6zQOcglO9Pp06Q9HxWfjTJgKusHUQ+Y9OgPP/kPE2EAw
bGIe2MfXbR64PyPh3WHkoVVvf0Nh+KweuPTpX3XwrDkSIpTYDK+mrXiKCnpCgLVO
nPkqHhwKe6ebUzfZ1nTeXxppUwDrmdcMInUjfS9A5Zhi0hmKtea7ohTx/pAQe07S
Zulk2UoynfwGL9+83H4XJpVrjX1RpDtbopMPny5EXpCD9RkOP/o=
=gpSc
-----END PGP SIGNATURE-----

--yb5bhfwlb6ud3r4j--

