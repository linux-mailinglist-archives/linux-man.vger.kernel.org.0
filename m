Return-Path: <linux-man+bounces-2542-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 108FEA4A472
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 21:57:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D61863B9A87
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 20:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 098321B3953;
	Fri, 28 Feb 2025 20:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z53CviWl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF41023F38F
	for <linux-man@vger.kernel.org>; Fri, 28 Feb 2025 20:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740776274; cv=none; b=WX6XQwkj6Nl5te7QAcH4LhOUa60kzVFZyMszAm1KfvssDRrM/pjuG+5nrcbT0t6rt8nOOxQNbZh79KIRbBgf7tMkplbmXfAFWrjNWTEC8esNUfoDvGMjHvJK92N1edq7/O7sWOsqU3tRp8+iDuRrzWx3D/AXTPmd9u7KWBP8qi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740776274; c=relaxed/simple;
	bh=NwwoH83fw57D+KqgVJJN6HldgLr1pmN33q8k11wvRTo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sn25J0v3Ldtq1yj9g2g+7rkF+7wGsIUuW/J0JtgekmU41jnmzAKxhDevNzak+3WKt+P8z5jOc4ghLe4STrwbpZ1IIdA+1LISD5rNchcdzTKMr7GfDrAIqlLhEx13rR1EnzqJ3FgnyjqB+uer2GlgrinHNBQKbVTYBR/RwNp/rug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z53CviWl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECFE6C4CED6;
	Fri, 28 Feb 2025 20:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740776274;
	bh=NwwoH83fw57D+KqgVJJN6HldgLr1pmN33q8k11wvRTo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z53CviWlCLA2ga5dfmc9gUsnJh85lnOs3qen+8mfEEz6ZocRi66w08zc2IQ7sWSXI
	 arZIYLas8hz+vUtnRrAqMKzSKZCyXlNNpXqhiOwsl51EIk+MOp6QgtzbjjiOGFN8Tr
	 wrZaIT3WIBo0yJRkMQaRHCPVNcIBOXU4pCYoNGWvmgOkENNzPzkXTL8wmnSrSt9RIA
	 hFD40QimmexkNL7CVeLfFKxM/D9AfR51MzoJtI9HXLxxTF/uJFN5gopFxsUvypWJnZ
	 tx7CRg/pLzLyPpvDcGw/6IpprhIfliQ8fcG3vfV6qgoYJlVVGZsOQozniH6i202BMC
	 ZPYyQgB0x+IXg==
Date: Fri, 28 Feb 2025 21:57:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: rahl <rahl@everwhe.re>
Cc: linux-man@vger.kernel.org, gcc-help@gcc.gnu.org
Subject: Re: Incorrect const in futex(2) example code
Message-ID: <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6>
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ay76svnbojnfdwkt"
Content-Disposition: inline
In-Reply-To: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>


--ay76svnbojnfdwkt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: rahl <rahl@everwhe.re>
Cc: linux-man@vger.kernel.org, gcc-help@gcc.gnu.org
Subject: Re: Incorrect const in futex(2) example code
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>
MIME-Version: 1.0
In-Reply-To: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>

[CC +=3D gcc-help@]

Hi Rahl,

On Fri, Feb 28, 2025 at 10:13:04AM +0000, rahl wrote:
> I noticed that 'const' is used for both 'one' and 'zero' variables in
> the Examples section demo code of manpage 'futex(2)'.
>=20
> The variables are both used in calls to
> 'atomic_compare_exchange_strong()' where the 'const' is discarded as
> it may write to the 'expected' parameter during a "failure" case.

I don't understand what that function is.  It doesn't have a manual
page, and it's neither in /usr/include.  It doesn't appear in the GCC
manual either.  And it's not described in ISO C.

What is that function?

I'd like to understand what we're calling to be able to understand how
the calling code is wrong.

BTW, there seem to be other important bugs in that example program,
which I don't understand either.  Would you mind having a look at those
(I'm assuming that you seem familiar with these atomic APIs)?  See:


$ man futex 2>/dev/null \
	| sed -n '/^EXAMPLES/,/^[^ ]/p' \
	| sed -n '/^ *Program source$/,$p' \
	| head -n-1 \
	| tail -n+2 \
	| clang -x c -;
<stdin>:58:20: error: address argument to atomic operation must be a pointe=
r to _Atomic type ('uint32_t *' (aka 'unsigned int *') invalid)
   58 |                if (atomic_compare_exchange_strong(futexp, &one, 0))
      |                    ^                              ~~~~~~
/usr/lib/llvm-19/lib/clang/19/include/stdatomic.h:150:67: note: expanded fr=
om macro 'atomic_compare_exchange_strong'
  150 | #define atomic_compare_exchange_strong(object, expected, desired) _=
_c11_atomic_compare_exchange_strong(object, expected, desired, __ATOMIC_SEQ=
_CST, __ATOMIC_SEQ_CST)
      |                                                                   ^=
                                    ~~~~~~
<stdin>:82:16: error: address argument to atomic operation must be a pointe=
r to _Atomic type ('uint32_t *' (aka 'unsigned int *') invalid)
   82 |            if (atomic_compare_exchange_strong(futexp, &zero, 1)) {
      |                ^                              ~~~~~~
/usr/lib/llvm-19/lib/clang/19/include/stdatomic.h:150:67: note: expanded fr=
om macro 'atomic_compare_exchange_strong'
  150 | #define atomic_compare_exchange_strong(object, expected, desired) _=
_c11_atomic_compare_exchange_strong(object, expected, desired, __ATOMIC_SEQ=
_CST, __ATOMIC_SEQ_CST)
      |                                                                   ^=
                                    ~~~~~~
2 errors generated.


> Attached is the trivial patch to remove the offending qualifiers.

Please provide a complete patch, with a commit message.  See the files
under <CONTRIBUTING.d/>.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ay76svnbojnfdwkt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfCI0cACgkQ64mZXMKQ
wqlWhhAAirDhs0TLc91RPHFwFEHPV8wB+ZIhcfzVt8owh+LDgzwd86iYsZDmD2s/
ePFlp2V2ynG1YxERTsQPacX71Sp/sZyM+yM1VOvwiR1C0kYHj+em6W3Usx/dmE6b
xXcvIUt7NZjoV+QLQ7wDF56DNPVl4zZRhvsm2/whBMGOXCWskqm62Npu8UFeAAal
26VYczrWG6HDfNvOgqvdMrf11iEPI5nk0oue+9QPIyhyWCts2sPE6KLKSQs6psVM
yARIX+9ufzdB75bI7ykdmv/bkWVXC9SAtFiBNDDav+hlpZ4sKbZzlrZD+LkMtyh8
zps7NftpqVOyx6G6VV3D7/PB7+dx3RWGMgwzMk7iE2QHA04zNH3CsJQd6erimGvg
fPT9cqF11P2ANV3lEgjs0fbVPBd2XSUeBdSXK+4bFlG0pLXuITptsJg1P+QaM+Ge
dvk/YB8W8mw6DeeIwHk8UEntMi0uhIJxrwtFJ9DVHCJW3cymviALoi7ptWrplf5/
XWxV5RFQ7AJj+4Sq7YH1pjGDwSeO0vbsDRgp8wFRT4FUZrzMlRIV98BC3fsOHEU7
ZD6o1EQ+Z2zPtwpC1M0M0NPjzpjH5Yyb+pXYrfOQX40No7seiZuerIeJXqUGip02
4UG/duHilKXnPSx61PcsB2XlPb0FjHn5Pcm9IlB0dJKRarb2Isg=
=imYr
-----END PGP SIGNATURE-----

--ay76svnbojnfdwkt--

