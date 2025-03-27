Return-Path: <linux-man+bounces-2655-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA60DA73236
	for <lists+linux-man@lfdr.de>; Thu, 27 Mar 2025 13:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2B953B69B8
	for <lists+linux-man@lfdr.de>; Thu, 27 Mar 2025 12:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 011272135BB;
	Thu, 27 Mar 2025 12:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZ4de205"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45844A21
	for <linux-man@vger.kernel.org>; Thu, 27 Mar 2025 12:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743078576; cv=none; b=NzTnkQg1Itkh3c0wJXnz5I12F1bIN87oPzCp8mrOSoKswB+zhADOEPSz0nHlRaSxkLQjeNyYifQeJ0hrTnv3s8oaut402aasmn2rGjeJqg/qUg4NhqgbIEiXdU5VnZI/4C6nWAmTlY2V4I+M1bXXiGj2/g73jBBt5PO0sLSX8tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743078576; c=relaxed/simple;
	bh=6ZiBkMiLsZv/k7FFTx9k5Bw5+oP6qErMN6fOJE/T/Go=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U0fkfRJz+4+SrVatf2bi7l1f5gIhllxSiFnR6xL+ujWmnjsppv2ekBZ0/8R4+P99twfYlJmgirh8s5EDWWHzGQ15uGpV6sa7GPRFCfLsdWwmVcL9hK+SlqUs39mzvZxzOxCqrd4eCBhI1dqFUGOSdcqLxAkbmbZE6tZXDUwyPhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZ4de205; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67F55C4CEDD;
	Thu, 27 Mar 2025 12:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743078576;
	bh=6ZiBkMiLsZv/k7FFTx9k5Bw5+oP6qErMN6fOJE/T/Go=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kZ4de205k0DdpWpt9Rg7gd/QUfvGimObNoArde4rEydNnttxdGAuZ4RazcfYIUC95
	 HJrnWUyRO5R0KBuKuGywR1MzqiqrIbk9maCzSm/LFIxNYvUjX8mr81hYbURJ5R2TM2
	 KTZlv12yqHpTwr6Gr76SE7vdv6l/HpCXqZG//YtdylNHziWozx2prLhhXLSEPJaHGp
	 7m1vR+3QaPsNoVLlAPXWQ+kQ/unHTIWaagj3iTHf2A/nmOvYhV/1UpAlW+JdIKDsnG
	 7gshrTzMzPRjS/0nC7T65cwMcDkH3XxbH3Cq0W5CttBAR9WpY/ClhEVvnLcAiX04Ub
	 EB1tj4+TuVWww==
Date: Thu, 27 Mar 2025 13:29:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Peter Radisson <radisson97@web.de>
Cc: linux-man@vger.kernel.org, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: fix: recvfrom() error handling
Message-ID: <ryuuydac7ybjw4pxiqzrjokcwvds3a6ezbjdi6h5fbz7zbr5d7@cqk5eio4lyrh>
References: <5449c846-e9ff-4c4c-b161-485da08a578b@web.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xmj4vorb2xofquba"
Content-Disposition: inline
In-Reply-To: <5449c846-e9ff-4c4c-b161-485da08a578b@web.de>


--xmj4vorb2xofquba
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Peter Radisson <radisson97@web.de>
Cc: linux-man@vger.kernel.org, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: fix: recvfrom() error handling
References: <5449c846-e9ff-4c4c-b161-485da08a578b@web.de>
MIME-Version: 1.0
In-Reply-To: <5449c846-e9ff-4c4c-b161-485da08a578b@web.de>

Hi Peter,

On Thu, Mar 27, 2025 at 11:55:43AM +0100, Peter Radisson wrote:
> Hello List,
> while chasing an unrelated bug i found the description of recvfrom()
> was missing some error description. I would suggest to add a few lines
> to make this confusing state more clear.
>=20
> CU
>=20
> --- recv.2.org	2025-03-25 21:55:10.914273000 +0100
> +++ recv.2	2025-03-25 22:55:18.843789307 +0100

Could you please use git-format-patch(1)?

> @@ -299,6 +299,23 @@
>  and
>  .I addrlen
>  should be specified as NULL.
> +If
> +.I src_addr
> +is NULL
> +.I addrlen
> +will be ignored.
> +

Please don't use blank lines in man(7) source.  Use paragraphing macros
(.P is for a normal paragraph, and .IP is an indented paragraph).

> +If
> +.I src_addr
> +is not NULL and
> +.I addrlen
> +is less than null the call will return with

What do you mean by "less than null"?  Pointers don't have a sign, so
it's not possible to have a pointer be less than null.

	alx@devuan:~/tmp$ cat p.c=20
	int
	main(void)
	{
		void *p =3D (void *) -1;

		return p < (void *) 0;
	}
	alx@devuan:~/tmp$ gcc -Wall -Wextra -Wtautological-compare p.c=20
	p.c: In function =E2=80=98main=E2=80=99:
	p.c:6:18: warning: ordered comparison of pointer with null pointer [-Wextr=
a]
	    6 |         return p < (void *) 0;
	      |                  ^
	alx@devuan:~/tmp$ ./a.out=20
	alx@devuan:~/tmp$ echo $?
	0


Have a lovely day!
Alex

> +.IR EINVAL .
> +If
> +.I addrlen
> +is less than sizeof struct sockaddr_in the src_addr will
> +not be modified.
> +
>  .\"
>  .SS recv()
>  The
>=20

--=20
<https://www.alejandro-colomar.es/>

--xmj4vorb2xofquba
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmflRKwACgkQ64mZXMKQ
wqmNhhAAsi0ThHBNiRoel2RxmAHjeqHj5WXAH/SSD2AaYJKfTYoGBoj/Gaefjlwu
QI/dRI2xR23UKbW2SziD8nxmxLRXwcLk5Vj+DEN0EHTknhsfmilIGt3jcMGUYjyn
ju3n8KsGqvABiotSZUxq0v9nEjcCSviqSE4KVatJ0x2yxfVPaD2HNNa+WWBsKFlj
+uiDWPCsvJwtpUNQbgKom/Cghzi5VCSWxkxXPQyisASVhUcxbpY2tXP1smCFh0yW
oeOkA8hR78e7oy3O8PUTwMhWPOq4f3ZCTfwxhho1PrFTwoIMvQBVFTE0c3pme+dC
ZH1GCXvRBN2hYZzs3xPaJbRyx1blI4q6TgigLoT5af4OGRZGzmEQ52/VWGa1KkL6
22uCeooGY/Cbtk7NGbQZ6rZ/0o33MUNl+wCqmjbeSHg+EbEz6L2pdBhgGdkeKDOJ
oSpG59pWO2ZazOyWtB6Rj6/NwwOmujiiohxepzdI0pZIGc9eo2BrbUS/N/yx8UfB
cWNOsXup0xzZnkhspijygt5l9camTF1mK/JlM74+Q1Kvm4fNpOVntRwO7N4vRVVV
W1XkYiA/EgLNHOyFSX6sv3po5u6nb+Smp/5X2lYypk/m7rsOIPAz+NfoGWhDSYl4
mdEXaHXJ1BZz8IKK9RLZaGInfkYmyHKPu1ifjBhFNcCb/gVJmvY=
=yOLV
-----END PGP SIGNATURE-----

--xmj4vorb2xofquba--

