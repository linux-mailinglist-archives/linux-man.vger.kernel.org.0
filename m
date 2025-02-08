Return-Path: <linux-man+bounces-2368-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA7CA2D9E5
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 00:59:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2241A1887918
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 23:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F3011AF0AF;
	Sat,  8 Feb 2025 23:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="it3ygzMT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C49D24338C
	for <linux-man@vger.kernel.org>; Sat,  8 Feb 2025 23:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739059157; cv=none; b=dvBtsVT7ZL++SiJeToKFDRmsFGkCO2EyO3VZUaYJpQg1knopgalIwl68fU8Cnic1OXxWXGaiqBFIowrgjqVvnW5HY5ZORjKXQCDZPBUjv9draYIpY5TKkgYmJ5ZIxLRjH4RM7mpVD3duTpRoL9wEgEju6+09TplMRYoaRZSfUzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739059157; c=relaxed/simple;
	bh=MrFlxYOZTIOlAU5UmHX22QHHbxwJ9Yj6KXntMd8pobU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mIKmL8+jh0uoWhAKwUBPy/45BZXjEKPKE5ZZCEFXr2ho1BLQX4MGeNDOvTE8xpjSndSRlRSm6jnWF4qt6tJFI5zt8tWbO/hs+DJ9X9lDNTQVoF4DNB6ss/MWSdyQephlLK3dxUPUE2Al88aglTjPCceKVBm0AR6BV6qy5u1U7Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=it3ygzMT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74DBEC4CED6;
	Sat,  8 Feb 2025 23:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739059155;
	bh=MrFlxYOZTIOlAU5UmHX22QHHbxwJ9Yj6KXntMd8pobU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=it3ygzMTXUoCHGYpe8XsxHm2gOjaoVMcAylAOrhU7+m6JfnGe1+P8IMla8NxZw3Kz
	 2NVNomGjLq/Y6GeTMJnP0c1vt9WdZqZKZU0RkGfUosoBDxVmIa31N9XKD/kzn23njX
	 v9K4XGukNVPiXsBpQUpyPKXdjZBBJ1shNnhK9xTXdyOyN7VSv5/hVXSJoPneoIuTIZ
	 ARGkYwHen0b9xj/+K1b4XpHS2FetwpZhebIjOBgqbN4cIT4IStqFkeTC421JONlsJA
	 r15gtquQ8qCClJjCJcZfA3dByxq45tryb0q66MABXNGDgWSaOvSeNpC8ZaVnxcUEm6
	 crm+QlecXgdJA==
Date: Sun, 9 Feb 2025 00:59:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	groff@gnu.org
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
Message-ID: <sxeh5c2rcyyp7eakkmjsxvdhiugw34ytqe3rqk3khi6mjpuikn@qglzlxykjlvs>
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
 <qdcjd7falwasz4fakmt6mraw6omkt3gdhfi5o4teigxwobtoqq@ga5bgz26yoas>
 <20250208234619.a3zfan43cawwhae2@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gq2uzx7rwkx6ijhf"
Content-Disposition: inline
In-Reply-To: <20250208234619.a3zfan43cawwhae2@illithid>


--gq2uzx7rwkx6ijhf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	groff@gnu.org
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
 <qdcjd7falwasz4fakmt6mraw6omkt3gdhfi5o4teigxwobtoqq@ga5bgz26yoas>
 <20250208234619.a3zfan43cawwhae2@illithid>
MIME-Version: 1.0
In-Reply-To: <20250208234619.a3zfan43cawwhae2@illithid>

Hi Branden,

On Sat, Feb 08, 2025 at 05:46:19PM -0600, G. Branden Robinson wrote:
> _If_ you advise the use of tab characters _only_ when filling is
> disabled, as, apropos of the Subject line, is the case in (displayed)
> code examples, you should be fine.

Yes, I'm proposing using tabs exclusively within EX/EE.

> However, you will get 8 character cells per tab stop and I am _not_ sure
> it's portable to expect, or to try to configure, anything else.

Are you sure?  I'm getting 5 characters per cell, which is what has
prevented me from doing it more happily.  I would have done it already
if I had seen 8 chars-per-tab.

	alx@devuan:~/tmp$ cat c.man=20
	.TH a s d f
	.SH g
	.EX
	if (foo)
		bar();
	.EE
	alx@devuan:~/tmp$ hd c.man=20
	00000000  2e 54 48 20 61 20 73 20  64 20 66 0a 2e 53 48 20  |.TH a s d f..=
SH |
	00000010  67 0a 2e 45 58 0a 69 66  20 28 66 6f 6f 29 0a 09  |g..EX.if (foo=
)..|
	00000020  62 61 72 28 29 3b 0a 2e  45 45 0a                 |bar();..EE.|
	0000002b
	alx@devuan:~/tmp$ groff -man -Tutf8 c.man=20
	a(s)                                                                      =
  a(s)

	g
	     if (foo)
		  bar();

	f                                       d                                 =
  a(s)
	alx@devuan:~/tmp$ groff -man -Tutf8 c.man | hd
	00000000  1b 5b 34 6d 61 1b 5b 32  34 6d 28 73 29 20 20 20  |.[4ma.[24m(s)=
   |
	00000010  20 20 20 20 20 20 20 20  20 20 20 20 20 20 20 20  |             =
   |
	*
	00000050  20 20 20 20 20 1b 5b 34  6d 61 1b 5b 32 34 6d 28  |     .[4ma.[2=
4m(|
	00000060  73 29 0a 0a 1b 5b 31 6d  67 1b 5b 30 6d 0a 20 20  |s)...[1mg.[0m=
=2E  |
	00000070  20 20 20 69 66 20 28 66  6f 6f 29 0a 20 20 20 20  |   if (foo). =
   |
	00000080  20 20 20 20 20 20 62 61  72 28 29 3b 0a 0a 66 20  |      bar();.=
=2Ef |
	00000090  20 20 20 20 20 20 20 20  20 20 20 20 20 20 20 20  |             =
   |
	*
	000000b0  20 20 20 20 20 20 64 20  20 20 20 20 20 20 20 20  |      d      =
   |
	000000c0  20 20 20 20 20 20 20 20  20 20 20 20 20 20 20 20  |             =
   |
	000000d0  20 20 20 20 20 20 20 20  20 20 1b 5b 34 6d 61 1b  |          .[4=
ma.|
	000000e0  5b 32 34 6d 28 73 29 0a                           |[24m(s).|
	000000e8

Why am I not seeing 8-char indents?

> Finally, I have a vague memory--perhaps not a correct one--that Michael
> Kerrisk preferred 4-cell tab stops over 8-cell ones (however obtained)
> because he found that the latter caused lines to overrun too frequently.
> Keep in mind that displayed code examples in man pages will always be
> significantly indented, unlike in real C source where we start
> everything at column 0.  Things to consider.

Yeah, that's one consideration.  I'd try to make sure that examples fit
in 80 columns before switching to tabs.  On the other hand, once I have
all the examples fit in there with tabs, the code will be more readable
(less nesting).

> I would proceed with caution, and test with multiple formatters.  (Maybe
> you already do.)

Yup.  :-)


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--gq2uzx7rwkx6ijhf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmen7/AACgkQnowa+77/
2zInkRAAnWE7bpvKNB2f47Pz8s98gUtj2y0OAfYj/cfA7bNb6SA9cqRDnb8lW8h/
mP8S1tzaoQesIwdFEx0fhUzCqXCVjIua1FAnAyiz9i/fe/bH111exwIYF7oRVEPX
wsB78BSFbb2PVTUV7mosCHjg5A1oEN3CxRbWNdkKmlbZGdfrzMSt8cPLdDacHO8T
2JpzlxuxE8SlGu9Smv9/vP6vntZu9gYToO2rMnc99+98T2GA9Gm24I++o7g+I+q3
qh9ddK6B1mPLeGqUvNHkk1WMh2u+eINQJkOP1orMnbHw8z+0K8HD5zR6HIKm2IQe
Niug+3tfeanaGxB9qbtFaStNe6XwYULt4dnnNBTLhJLvu0ezt3h4h/QUjJFeDS3p
+sHUhSoTJYLKjWN3uUCX9DwtiQat97UjJnKGxEEwTSWVpwC/31jFUKoz5NVcKlBj
kn4ON6f+WKb1wLgbz0dorZofenAlr5vK/sikuvSixQtlBzJ31no6/hR5swjYeCGW
r8PtsRVB/wvTdv/Xmab7wqd23rqIrKExIrnFgiUy6HCEZpWH8Nza+Wi7KylinJbt
dRmQ1cCTTtDY/8pCLsCIb0kcj+NhhKqP4HrkyPq4BuGBptqkmxahq0x7qKtqmJOq
mqMqGTKiW+M65XCJOgWCP6L1cWZa09gtizPvVKHuuQfG1HDpfS0=
=V5r+
-----END PGP SIGNATURE-----

--gq2uzx7rwkx6ijhf--

