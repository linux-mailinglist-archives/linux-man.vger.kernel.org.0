Return-Path: <linux-man+bounces-4068-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EACD6BC13CB
	for <lists+linux-man@lfdr.de>; Tue, 07 Oct 2025 13:38:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5A7C188A764
	for <lists+linux-man@lfdr.de>; Tue,  7 Oct 2025 11:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8608F2DC353;
	Tue,  7 Oct 2025 11:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhW1xlvk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AED2D46BB
	for <linux-man@vger.kernel.org>; Tue,  7 Oct 2025 11:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759837103; cv=none; b=ONWGW63zj2bBZJe3kDn3mvkx4T7SU1JWN7wOcOhwSCv7YZguDOrjdqZcCT+LxtvA5DQ5Jrs9VVNBjAxxEeBwwdKPSHzbDCADg8nDOoN9kkSaQZOp6f4hVLYvYgAnKM+Wf0+HX/Js316XaPR+acP1zm+sYn8m7+TjTVXp2NC+6r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759837103; c=relaxed/simple;
	bh=SeDbIRr+FvZARPW1gFcpq3lrnmaFqJxnYqDKnDz/iN8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u3RlrEyrHj0HNjxFOxIaeVWZb6CPFq6y3jfnb0sMTV/bE5RrY2jECWV57GXkb3cP/1/BxZSWL15TdldKXGOxWIfJA2jsWIMzMkRzis3xA6cnNytpKFDGdD3HtkVRv2Bs3cHpLcz7XIzO5p1JmKqbAATqSmQ4Ng3oC4u31dQim4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhW1xlvk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2002C4CEFE;
	Tue,  7 Oct 2025 11:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759837102;
	bh=SeDbIRr+FvZARPW1gFcpq3lrnmaFqJxnYqDKnDz/iN8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NhW1xlvkeEpEz3VY2kKgoRfYP9B2+jIzYmTNCcwIbsq4ao/ZHos9jtcO1prN6fDUN
	 ALrPH+MgPycnlreh7FIW6lWHx94vlAmkwTRs/bk1DTrygNcXh81+PmJXhCPgwlq4Oo
	 HMYVEeHcK2bOUQAy0sj1b7iXMk5upM6LnAsvCcDOGm/D6HHNLbxI2bUNtofx7yDlVw
	 wacPjgBdx60KAFMUvlze+lX+O8OdUy6vmLhuMgCLqO4/gceTUmgiO7S6uxqmRfbahc
	 SGDlgw+GMLd0yYypl/WONnD2Im+MT4p6MF44+n7qEzv/xrqsBYG+9vEGfs6KJ+Bwxy
	 5vrc4+hg2SKWQ==
Date: Tue, 7 Oct 2025 13:38:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?Micha=C5=82?= Kalenik <mchl.klnk@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Bug report
Message-ID: <yudiyp5lou32ri6zt5wfdkv35jkckgmgi3sujwsk7jico2isxf@xkia67y23qbs>
References: <CAGZ+kfD9W1fU8FUDct3kbtDitXtTu=zeY_vqZzOJCwkjOYFM5A@mail.gmail.com>
 <3tq3issiyu3opsfqj4zqjjbog36hdfscciioubdsoajimnv2pa@vh6hfvlzpd3n>
 <CAGZ+kfC2sgcXcZ6JBo+QmfcjAcpjMnz91CdV7TwyEVUzpeZqww@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qsjd7jcsf7ddxx2p"
Content-Disposition: inline
In-Reply-To: <CAGZ+kfC2sgcXcZ6JBo+QmfcjAcpjMnz91CdV7TwyEVUzpeZqww@mail.gmail.com>


--qsjd7jcsf7ddxx2p
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?Micha=C5=82?= Kalenik <mchl.klnk@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Bug report
Message-ID: <yudiyp5lou32ri6zt5wfdkv35jkckgmgi3sujwsk7jico2isxf@xkia67y23qbs>
References: <CAGZ+kfD9W1fU8FUDct3kbtDitXtTu=zeY_vqZzOJCwkjOYFM5A@mail.gmail.com>
 <3tq3issiyu3opsfqj4zqjjbog36hdfscciioubdsoajimnv2pa@vh6hfvlzpd3n>
 <CAGZ+kfC2sgcXcZ6JBo+QmfcjAcpjMnz91CdV7TwyEVUzpeZqww@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGZ+kfC2sgcXcZ6JBo+QmfcjAcpjMnz91CdV7TwyEVUzpeZqww@mail.gmail.com>

HiMicha=C5=82,

On Tue, Oct 07, 2025 at 12:27:47PM +0200, Micha=C5=82 Kalenik wrote:
> No problem Alex:
> This is  site  https://man7.org/linux/man-pages/man3/bzero.3.html
> SYNOPSIS         top
>        #include <strings.h>
>=20
>        void bzero(size_t n;
>                   void s[n], size_t n);
>=20
>        #include <string.h>
>=20
>        void explicit_bzero(size_t n;
>                   void s[n], size_t n);
>=20
> This is man bzero:
>=20
> SYNOPSIS
>        #include <strings.h>
>=20
>        void bzero(void s[.n], size_t n);
>=20
>        #include <string.h>
>=20
>        void explicit_bzero(void s[.n], size_t n);

Ahhh.  Yup, I changed the prototypes recently.  The latter syntax,
using [.n], doesn't exist in the C language at all.  That's an old
version of the manual page.

More recently, I changed the manual page to use real C syntax (actually,
GNU C syntax).  That syntax is documented here:

<https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html>

	If you want to pass the array first and the length afterward,
	you can use a forward declaration in the parameter list=E2=80=94another
	GNU extension.

		struct entry
		tester (int len; char data[len][len], int len)
		{
		  /* =E2=80=A6 */
		}

	The =E2=80=98int len=E2=80=99 before the semicolon is a parameter forward
	declaration, and it serves the purpose of making the name len
	known when the declaration of data is parsed.

	Lists of parameter forward declarations are terminated by
	semicolons, and parameter forward declarations are separated
	within such lists by commas, just like in the regular list of
	parameter declarations.

	You can write any number of lists of parameter forward
	declaration, but using more than one is unnecessary.  The last
	semicolon is followed by the list of parameter declarations.
	Each parameter forward declaration must match a parameter
	declaration in parameter name and data type.  ISO C99 does not
	support parameter forward declarations.=20

> Have a nice day!
> Mike

:-)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--qsjd7jcsf7ddxx2p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjk+6sACgkQ64mZXMKQ
wqkSdRAAhvfY0h0f4NZetGknr7wpigk5Z3/lcGhu0x+hAu5H32UvzTDrq8KVpNtd
hwTO6N4YIKWK+N1C5UfYUmQW+OA9WMv8Q0azu+bfA4szoYa4wB1rTBxvspOAXepb
wHQZFx6TVKVU3Difwk9ZIxfBERqgNzdZQvtdaF7yoGn7h+/UhO0BSsYcXr+F5emm
UPiXnwUX6nSK+bSuP4Kq6aRU1JOSR/81bxZHEOeN8weNoxNCnuR2JC4CX2fY4dwO
s2CoCjZSiGMiMWuL0G8Qr9aXUzq3pGr/jdLPTHWsGOnrOYCVrxHYLAC8cd446y7r
5CvhHrcCHaXDQAxLrsY9K21OxLmSbboFqJSmNmFAb0xN3oBqCgJOW5WxLC1rhlUJ
E6t4pU5DXeA+wlFeV3TON/VDE6CFQQ1JFxuH+5xS4jXP9w0B8sMGcTk8+Ct69n3s
VYMclPJZmZ4vu6cx3KERRy8l/xbBcyczGpc7GXaTj2YSssVFgFWNrvzf0xqlCRAk
0BAdhIpVEgdUmBUuoE5g72QWW0auL8r7voTLtkPES6KYXkqTiLsxsFzpFjUHpMn+
iYGVrgfvTcdxKZqjfy+WXYyRjFA2BE4gNiDea0XyskJIrXhSu+Bk8BFNsVHsljjZ
TU53TvsY0mif8BOJlOn8AtNwIrOfHBmtp+a6e/QbnjkPK+0QQzc=
=ok6P
-----END PGP SIGNATURE-----

--qsjd7jcsf7ddxx2p--

