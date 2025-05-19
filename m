Return-Path: <linux-man+bounces-2982-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF6EABC092
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 16:25:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DD3217FB4A
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 14:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3D97283C8C;
	Mon, 19 May 2025 14:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6QkA5wm"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E11280CE7
	for <linux-man@vger.kernel.org>; Mon, 19 May 2025 14:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747664684; cv=none; b=E8VQCQ4CKAmjN58bmZmN+/arnb2zvMR6J+BmMkQag5GmlgkjbkOp6E8zu+E9WwJ1geYx/HpVDvLKqzD1mbpVt1/t4l2pcifxmJo504Fw+Ft6JzzCidGZBRu4lqRhdBQokObjRqf1d00PzUT/9bMwhh5SsTzC+roxIcvAPoAylXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747664684; c=relaxed/simple;
	bh=d7xeZ+yXOSDo8yKqjLj32+BL77N7fslgIg+DqqRQFG4=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SeUdtZYBzgx92lenw9BGV16o9ioFEnSpTF6YMGZ2mnuUmRBP3i8mzd3/tGt9yIDee+S++HCnJN8s8Ub29DxCHGe2TB2Yxerk0fD7LKkXCaU63CZZBMrhiZwbbnhlKA//Q5/UposhNAzGrhCpGxwrZL+BVL1APe+d7S2Kdg4/g3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6QkA5wm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5ED77C4CEE4;
	Mon, 19 May 2025 14:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747664684;
	bh=d7xeZ+yXOSDo8yKqjLj32+BL77N7fslgIg+DqqRQFG4=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=D6QkA5wmSrgpXVS47Suh1RtWcWPDkdBmF3boIxTpEb5r4wSmWjZCn6j5BYwG8qNl4
	 ez+fA2M6yS9k3poERRXTsPYXfQsZeRC4QpBpq27MFrJ7znDl1TQ2rWb4BiXUgIoUID
	 WBXJlXuSX2pyCqOO44iOrKRpbHluaNyruBq6EbufCfe+pw0z2sDN//Cy3F2WHVZQ6P
	 5vGFk2BxSYQR/gF8KfCB5nGGAV0bxI+DD/V2w9QD1bTLIVfnR8kjfRcebFx2ml9Bqv
	 IXlCkpz7hvRswawyNHT/4WZGj3mAN/v3zTC+otpSxNGWhnAByU8jRwTPdPaLyiCj/2
	 mV22bUOlltAhg==
Date: Mon, 19 May 2025 16:24:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
Message-ID: <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="prnof6uhtatgmkkj"
Content-Disposition: inline
In-Reply-To: <20250519135221.5a48Joxu@steffen%sdaoden.eu>


--prnof6uhtatgmkkj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
MIME-Version: 1.0
In-Reply-To: <20250519135221.5a48Joxu@steffen%sdaoden.eu>

Hi Steffen,

On Mon, May 19, 2025 at 03:52:21PM +0200, Steffen Nurpmeso wrote:
> Hello.
>=20
> Alejandro Colomar wrote in
>  <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>:
>  |Hi Steffen,
>  |
>  |On Sun, May 18, 2025 at 03:34:01AM +0200, Steffen Nurpmeso wrote:
>  |> Hello Alejandro, all.
>  |>=20
>  |> "man 3p mbrtowc" is great, but "man 3 mbrtowc" says for the -2
>  |> return that "meaning that n should be increased".  However, "n"
>  |> bytes were consumed; more data is needed, that is true.
>  |
>  |Thanks!  Would you mind sending a patch?
>=20
> Hm well.  By the way, i sometimes admire the Linux-specific
> manual pages,

:-)

> but at times i wonder why they exist at all, if the
> POSIX one is comprehensive and no Linux-specific note is to be
> added?

There's a list of reasons:

-  POSIX manual pages are not maintained (I can tell; I'm supposed to be
   the maintainer).  The last commit was from 2021-02-14.

   I would love to maintain them, but I refuse to maintain them if the
   Austin Group keeps making it so uncomfortable for me to do so.

-  They are in the non-free repository component in Debian (and in
   similar ones for other distros).

-  There are no POSIX.1-2024 manual pages at all.  And there won't be,
   if I have to create them.

   I have already written patches for updating the whole man2 of the
   Linux man-pages project for POSIX.1-2024, and am working on man3 at
   the moment.  So, the Linux manual pages will be more up-to-date.

>  I mean, for example, clock_settime 2/3p is such an example
> for where the Linux page is of significant value, but for that ISO
> C thing mbrtowc ... hm.  I mean i would simply copy over the
> RETURN VALUE block from the POSIX page?

For copyright reasons, you probably can't.

> I will have to look around where i can find sources, 'will look
> today or tomorrow, ok?

Sure, take your time.  Thanks!  :)


Have a lovely day!
Alex

> Ciao Alejandro,
>=20
> --steffen

--=20
<https://www.alejandro-colomar.es/>

--prnof6uhtatgmkkj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgrPyEACgkQ64mZXMKQ
wqkU5BAAvjVzqtmPfdVmE+jCl3pFbkFCKfS5cBv5nqtRQDS3UwUFsfjmLBlUltNm
gGgqGC4TEmsUWf1LwuBaNN4WaroMAgboYnvYCrfMAXcm4z/YXqBMK8EToTQ0rUoq
hKkSGo3vbSiqCegXi5rWb8uhNa/OV3lU60FkqEVNJLBXRF46pXbFjRA0geiazfXd
J5nW7vDYLF+XkGZN0GkQRbybR/AXAGk51LivUfZ6wev8o+QH2WloCDTJ6e2lUDs+
X16wRAB3UIVUs57fw5BYW5AKCf09iJbhzZxX0cyI821Ap7dm+3aKetfrQSw0/3ae
9ENZq68jH0Qnab3e1mkR1oZVzG3KrUG0uo3TyQmweO3ch/buuxzEKrFnYwNxj0u9
/4Vfvr3UP1mCcpzRuJGXX1jU/2L+vcrXwBIxTGPGulowXsnWSvk9kZVpWJ8fONyI
hsmaopPlO8QAmW427w565SXGio9/xWqZCfqtUfo9HodQU7Mvhaxvac1pc3ajLdpQ
+77XrRoxkg6EOyRY9QWVDZIC+BweAj5lFzGnp6Y63H7Tzy8HlVmtElAGQKWWr96r
vPL4jxgNCeNMQQpYm+xjIU3r//w6MJr7SZ5qA/xYt4Y1UeuJKGyd1C43jcfvlzjM
jNf0Qh0k8a+03j0qoMa2Pmxm8WTzMGujtuU53S3itJiIrzCDyjs=
=T65W
-----END PGP SIGNATURE-----

--prnof6uhtatgmkkj--

