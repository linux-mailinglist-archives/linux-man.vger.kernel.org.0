Return-Path: <linux-man+bounces-1444-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC1792FAF4
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 15:13:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD9441F2336C
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 13:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E94716F8E3;
	Fri, 12 Jul 2024 13:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXTfwU6y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB52316F850;
	Fri, 12 Jul 2024 13:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720789994; cv=none; b=gLmubBppbll5Rpz3Ojb+KjNYvLQLH4laHuyacG9MvyTbiDWgRdGqYg6LiwjZBCx6klWfq1vficQSxSzATyESg5LZx2L6tjiavSPt+sxAWaV4uTs61K3vng+77bwKBksXh4KFCCqiPsauoFeBWlC7JWwg0p8AQLdYLuWvS7yPyJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720789994; c=relaxed/simple;
	bh=XJpN4iWDV662kk6JHLhAJ5VOVp/NFFTzMwtUWb3FEGE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y3DTbI/bWnlWEfbKQ6u6TdJ5tYWfOucwOsF0MT7yWSoUhxu+Y17pmHFdsaXDIZM20RPmZJbmFW1rF2g8r8YhNe+26bGo2wdFYxVUXg8N+tMdq3SdYV7/M1w9Z66LwVUFOgYWISBC2KKx7X3V/K3OLyY/nV6lCiANEbQOFQprNuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXTfwU6y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38CFCC32786;
	Fri, 12 Jul 2024 13:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720789993;
	bh=XJpN4iWDV662kk6JHLhAJ5VOVp/NFFTzMwtUWb3FEGE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SXTfwU6yDOlvmDl71PDZiCh3cxJcJWeNiddxgK9BEB954ZUkx42IqDAjgrf8rPabC
	 8NKVc+/s0VVZPH69Y85q1NK5lH4UIPZ2vsDFRvXwslQ3nYN6IjidDu2/rpUSjzj/GS
	 Mr1It7oe14o6JP5we9XGnvg9qOuI7yycri11o8nnamHgtDf6M9TWEokXtrxqMtAHVm
	 NOO08LV7j6Vw0FKCgjvcvGJN9pVKY4b5buWqgnQdNfDqQGgkz028iCCF12sjklMJmi
	 dvFl3+E5O4v/++nI/S7DXBAzJgT5XddHNrUbBLcGQ/hMwwUXqkRrYscGloLu3PYQJL
	 QXvvtbFpnildw==
Date: Fri, 12 Jul 2024 15:13:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@linux.microsoft.com>, =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, linux-security-module@vger.kernel.org
Subject: Re: [PATCH 1/1] landlock: Mention -1 return code on failure
Message-ID: <evf3o7bjqr6262out6aazgbmmgm45o3gtuywdulrzhtd742p7n@v6xdj5yftinm>
References: <20240712130904.145010-1-pvorel@suse.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zkufiwn4voij5nsj"
Content-Disposition: inline
In-Reply-To: <20240712130904.145010-1-pvorel@suse.cz>


--zkufiwn4voij5nsj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@linux.microsoft.com>, =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, linux-security-module@vger.kernel.org
Subject: Re: [PATCH 1/1] landlock: Mention -1 return code on failure
References: <20240712130904.145010-1-pvorel@suse.cz>
MIME-Version: 1.0
In-Reply-To: <20240712130904.145010-1-pvorel@suse.cz>

Hi Petr,

On Fri, Jul 12, 2024 at 03:09:04PM GMT, Petr Vorel wrote:
> Mention -1 return code on failure for landlock_add_rule(),
> landlock_create_ruleset() and landlock_restrict_self().
>=20
> Although it's a common rule to return -1 on error, it's better to be
> explicit (as the other man pages are).
>=20
> Fixes: a01d04a69 ("landlock_add_rule.2: Document new syscall")
> Fixes: ca5163697 ("landlock_create_ruleset.2: Document new syscall")
> Fixes: 3f7e4f808 ("landlock_restrict_self.2: Document new syscall")
> Signed-off-by: Petr Vorel <pvorel@suse.cz>
> ---
> FYI we test return codes in LTP.
>=20
> https://lore.kernel.org/ltp/20240711-landlock-v3-0-c7b0e9edf9b0@suse.com/
> https://lore.kernel.org/ltp/20240711201306.98519-1-pvorel@suse.cz/
>=20
> Kind regards,
> Petr

Thanks!  Please see a comment below.

>=20
>  man/man2/landlock_add_rule.2       | 4 ++++
>  man/man2/landlock_create_ruleset.2 | 4 ++++
>  man/man2/landlock_restrict_self.2  | 4 ++++
>  3 files changed, 12 insertions(+)
>=20
> diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
> index 4b95afb07..6fdc2f896 100644
> --- a/man/man2/landlock_add_rule.2
> +++ b/man/man2/landlock_add_rule.2
> @@ -79,6 +79,10 @@ must be 0.
>  On success,
>  .BR landlock_add_rule ()
>  returns 0.
> +On error,
> +\-1 is returned and
> +.I errno
> +is set to indicate the cause of the error.
>  .SH ERRORS
>  .BR landlock_add_rule ()
>  can fail for the following reasons:
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_creat=
e_ruleset.2
> index e62a3f9b9..4f638e85c 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -86,6 +86,10 @@ returns a new Landlock ruleset file descriptor,
>  or a Landlock ABI version,
>  according to
>  .IR flags .
> +On error,
> +\-1 is returned and
> +.I errno
> +is set to indicate the cause of the error.

I think the common wording is s/the cause of //

Michael unified these a few years ago.

Cheers,
Alex

>  .SH ERRORS
>  .BR landlock_create_ruleset ()
>  can fail for the following reasons:
> diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restri=
ct_self.2
> index 43f15c932..88850ddfb 100644
> --- a/man/man2/landlock_restrict_self.2
> +++ b/man/man2/landlock_restrict_self.2
> @@ -72,6 +72,10 @@ must be 0.
>  On success,
>  .BR landlock_restrict_self ()
>  returns 0.
> +On error,
> +\-1 is returned and
> +.I errno
> +is set to indicate the cause of the error.
>  .SH ERRORS
>  .BR landlock_restrict_self ()
>  can fail for the following reasons:
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--zkufiwn4voij5nsj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaRK+UACgkQnowa+77/
2zLDSBAAmQQm8hyufDxubeSyg0Ql9sltjuxUc/zQW1W+pcWuQZF05uQX5aQAlJ+x
HtikBXTzmtyh1T1tgJGrgIKxP0L0GpkDHembTYa2yQDlvfm+MteEPS+w3Bm/aJLX
iFCzjmA8cI1yjwYQ2SZffYb3mM4HQLrNwKBkEB7SqhkBoO5KQ0dUNycMcA04Oc15
iQlzpfwx5JQedotg0n5SrKZ8/Mr4wkZFf0plF8M1+i+4pSOFG8Y9g/4XQc/5enZc
RfKEUCCCHua/WR1anVNM4TasyomepJMtk4O335TWcJY4VA7Qchovluq9GGBGx11+
lB1scAVJtI2159Cov+kknijDgyF7rIOVmUxeMSEPh1CoVwAUI30nNSEGbMrWoVgh
DpjTDf5MhGxhgESEsdYyOf7Qgxkeoen0bU0UxbuDgAbybRXhdgwco9sTxmky+exD
A+osvDDRQliLRVZtmKYr2lEpct30X+9uS7mb61ejAjAOZ1AN9zRkpKhXJQO8u7Ra
y5Z6DMnVehIYOcWYTQBOblwEnE7/8AXDtPIqMHKrnyMEvllnbTXHb17v6LE7MDAO
40sVbj3qo6v6AXOgH1dqipVh9ZlQAGfPY9sAb64VSnXWxAtY+g60wDGUT2v/xkOC
IH75m4Xz7LT5xe0gCbMCDT+BAQa4qdJjNoFphjrGapzPUmgI+0w=
=m1sN
-----END PGP SIGNATURE-----

--zkufiwn4voij5nsj--

