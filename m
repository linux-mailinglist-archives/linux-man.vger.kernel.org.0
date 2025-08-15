Return-Path: <linux-man+bounces-3449-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BD9B27D48
	for <lists+linux-man@lfdr.de>; Fri, 15 Aug 2025 11:40:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 795DFA2668B
	for <lists+linux-man@lfdr.de>; Fri, 15 Aug 2025 09:37:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 878C92512C8;
	Fri, 15 Aug 2025 09:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JV8iT1D9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F1F2494FF
	for <linux-man@vger.kernel.org>; Fri, 15 Aug 2025 09:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755250626; cv=none; b=KN8rWnx/JIaCTT1YsfYAxkpaaWDaj0K4ypFO/buT6r2Vd75XNmYBgnZLplCZjfupjgwXcjpYsiPIXBi1PZyLFN8+fEyQ02K2dmzyNxC9M7UppANYKvFC4mO4u8a+hxbEC38Wfwei14wqZNPe/E0FXUP78r8YCc0FXZTTISG7ePU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755250626; c=relaxed/simple;
	bh=P3CV2RxTHJ9rbyy9yoWthmTdOVRfpAKovdplfgtPOow=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g61e5CQJn1dNdyRwf0K3VJ33CFw+6vUYEtE3QAgorhL1NuX2O2KP7gWPTrIZ89oPxyeCld8GynaiFBL84dq+md5e94y4xJkADvSLmeBGPQfu6cldKULDD2CUq6NfVQNJ5XnHt+L0MEw1Tnba91SsBy87dx9KfFip6KTrcxN1giE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JV8iT1D9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B514C4CEEB;
	Fri, 15 Aug 2025 09:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755250625;
	bh=P3CV2RxTHJ9rbyy9yoWthmTdOVRfpAKovdplfgtPOow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JV8iT1D90wwVpferi+/BnHCWlBRmsi2XYDs+TkaMvJq0NJ7WGlKQiLxvVH17IwS5M
	 Gz+ER0E2lBgZErqXf8xAyqwxPRYYSe1SJ5KGpOkSmL7tF8056nmOHa2k1zXaszRvXw
	 CNocFhX8IMQfx7v8pX2KQAL0qdxYalkdfLm92n6N0utRYwYfuVsmgO66nTmyO/lrrC
	 uw/UhWutQ5srkO3chbrX8+jh22P4jbke5LzYEcQdlFUVfxwYweHJOT+WjGo2ibzCah
	 btfxVOHRSXuGX9zhYVXZ9AaFA2fhx+LMjAMusJ42bMM2pmepWVjhsNQz0KQGOLrL/d
	 nY4YYhQWditjg==
Date: Fri, 15 Aug 2025 11:37:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ian <ilc@ilcharle.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Bug report: typo in cgroups(7)
Message-ID: <w262e42fnvrommsgevgwotyqokyskuv6p3mgoqyawphjonexct@su33amf5whnp>
References: <48640e85-30ea-04d6-85db-307e6756ac55@high-tellinar.ilcharle.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="adgu5nz23s65oidp"
Content-Disposition: inline
In-Reply-To: <48640e85-30ea-04d6-85db-307e6756ac55@high-tellinar.ilcharle.com>


--adgu5nz23s65oidp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ian <ilc@ilcharle.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Bug report: typo in cgroups(7)
References: <48640e85-30ea-04d6-85db-307e6756ac55@high-tellinar.ilcharle.com>
MIME-Version: 1.0
In-Reply-To: <48640e85-30ea-04d6-85db-307e6756ac55@high-tellinar.ilcharle.com>

Dear Ian,

On Tue, Aug 12, 2025 at 12:13:28PM -0400, Ian wrote:
> Dear Alejandro Colomar,
>=20
> I encountered a typo in the croups(7) man page. On line 1467, "cgroups"
> should be "cgroup". (In context: "The threaded root cgroup can't be a par=
ent
> of a domain cgroup~~s~~, ...") I have attempted to attach a patch file
> correcting the error.
>=20
> Thanks for your hard work!

Thanks!  :-)

>=20
> Best,
> Ian
>=20
> (P.S. This is my first time reporting an error so I do not know the proto=
col
> or the etiquette. If I've sent this to the wrong place, I'm very sorry.)

This is the right place.  However, you should send a complete patch, as
formatted by git-format-patch(1).  What you sent can't be applied with
git-am(1):

	Applying:=20
	fatal: empty ident name (for <>) not allowed
	Press any key to continue...

This time, and since it's an easy patch, I've manually applied it.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Df52e9ca6c5d40975f7b3fdbde064f1dc57ce9b8e>

	commit f52e9ca6c5d40975f7b3fdbde064f1dc57ce9b8e
	Author: Ian <ilc@ilcharle.com>
	Date:   Fri Aug 15 11:25:58 2025 +0200

	    man/man7/cgroups.7: plfix
	   =20
	    Signed-off-by: Ian <ilc@ilcharle.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

For guidelines about contributing patches, you'll want to have a look at

	$ find CONTRIBUTING.d/ | grep -e git -e patch
	CONTRIBUTING.d/patches
	CONTRIBUTING.d/patches/description
	CONTRIBUTING.d/patches/base
	CONTRIBUTING.d/patches/patches
	CONTRIBUTING.d/patches/range-diff
	CONTRIBUTING.d/patches/diff
	CONTRIBUTING.d/patches/subject
	CONTRIBUTING.d/patches/sendmail
	CONTRIBUTING.d/git


Have a lovely day!
Alex

> diff --git a/man/man7/cgroups.7 b/man/man7/cgroups.7
> index 44bf8248a..352e0d1d3 100644
> --- a/man/man7/cgroups.7
> +++ b/man/man7/cgroups.7
> @@ -1464,7 +1464,7 @@ is that the threaded root cgroup can be a parent on=
ly to
>  cgroups.
>  The threaded root cgroup can't be a parent of a
>  .I domain
> -cgroups, and a
> +cgroup, and a
>  .I threaded
>  cgroup
>  can't have a sibling that is a


--=20
<https://www.alejandro-colomar.es/>

--adgu5nz23s65oidp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmie/74ACgkQ64mZXMKQ
wqkeOw//bl3/us0q0Sfj6bVjd5CgtUQiqG8V2/9Q3df/J6picJXCzptUibshDsqk
l55JDauI/sv6wt2uJVu+hgsZ2tFxxQMMVw1oz6oC324Fx0C0LORDG76g1BIJ6HOu
9XEk2fUh6Js/KBAycV36n2usRTnfPlKUWnaCO4sL1i0AcJ8T6Xzi78j/ZpbAuS0i
9X0TO9OYibbNnxAeGQkGp2LtwIerrbKIhQueMh76eyLexQNBVtRQhnj6yik1U9eI
ZwFfgFqNL+I8lzGO88Z5ynjFzIJpJQBOmdBGEElrcO6qnm5Hf/A7M0dslNakORaK
4BV8f7kc+3dmIzHS0wSZdqpNrWwGkQ/zxlsRIll72c4XjBp4jZee46VYxxsj+bSF
DBdOEQW/AqiigSVRA86OlNnmBhVNfz1z14pcJBkJSMP79pD0oAdAPtVXOmYY0aCh
CNvr8U4kdjAm2CaKp6N8IBzi4ypLf9OtOvlssv6uIvzaYvvIfx4wAUDlmHaboVBQ
QkaUvxJTJsyGFvFfIxg70gGEUCyg6MrdOzu9RzLE6QOlNS8pi9aGT/6ztV6u7DMS
/8CBiox1U6B2xSnW1Jc1KlfrE3gqxmW1ozpFM9aRrxRx7z0OKeHt2tPfMNEFCPKF
6ad/eHVMuBx//Jr6Mj/eAMLavcqEj3zxooEui67VLNzDpANyg4o=
=isiN
-----END PGP SIGNATURE-----

--adgu5nz23s65oidp--

