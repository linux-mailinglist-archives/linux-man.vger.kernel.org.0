Return-Path: <linux-man+bounces-2607-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 287A0A63749
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 20:49:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C3A27A55E8
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 19:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AB351A23B8;
	Sun, 16 Mar 2025 19:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soCvESqT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AE61898F8
	for <linux-man@vger.kernel.org>; Sun, 16 Mar 2025 19:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742154584; cv=none; b=XB9/3ARcczlrFP08G+Ki5qboOUpg2kAkE5Qm1YhVbsq87HaMe3iVlNv0wy/cooITH4sSX53bVgAQAHhVDcbp5RUNNVL6I3n44FUCc//4fDIt5jbaW6gRC7Tn+eNipxfjzRSiLe1TLTHfcCv5JmDaVuqK9VNM70+LGV65YgXQjO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742154584; c=relaxed/simple;
	bh=vacAWfB/tU8NQrGh/TBQBcCFjTVENACdg6Msw2giTSk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sNPwV5Mt1PO4hO+Aj5HMGtMRyAiiEI22dHsBzVnWN94XkfznKck9RD2jLFc2L8d/MgtUZtldcEUZDztzsdbcy+F4f19yWC8kezr7CfymCRnyHlDk+vefU3TtkSOavhFKNJ9oyEYtf0qAsSGJ2dfGFf3Td/mQaVQiQ3ouCimm2ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soCvESqT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA1D4C4CEDD;
	Sun, 16 Mar 2025 19:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742154583;
	bh=vacAWfB/tU8NQrGh/TBQBcCFjTVENACdg6Msw2giTSk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=soCvESqT2ZwYyOzGQZoAKawa7zJFC21BHX+eJjbirSooUJaI3sqVYhpvLd69+MxIk
	 aCuITAjqX/Fm1pQTw3F2WntmwmTkaSjw3hyn5h9UmLIW3dxB+qoLq0BmqMrGDcNPmy
	 eeMuwE5uWSb1/4AsrR4wIh/YhOWB8NHXjR8VhJSf2ZTYrimuKSQ9IIOLedpQhZDeBP
	 Pqp2CeG9vowythazY0un/EduaEjGsKP27vtUgKpg7c6ruxg90dPT9FNP5qrdQEpul4
	 O5KxdXA0zl8sixigN3RElfqTdl3Qx7NRUdolKiOHFgtzREjkH84RptB1IQ3TKueu8V
	 gVQ7jNw4GcpOw==
Date: Sun, 16 Mar 2025 20:49:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Kang-Che Sung <explorer09@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2] man/man3/wc{,r}tomb.3: Rewording to MB_CUR_MAX
Message-ID: <fah7wr2xvhyhb2fpxouz2azqycvxrh5hrfabxbo72ph6oj4jjt@zzktz24ygtx7>
References: <CADDzAfM1HVMkyQY-zhv81NKS4X-neCTGETQec-f9X4acgpZApw@mail.gmail.com>
 <CADDzAfMq3X=u7+Sk_gTxOKA0O+4OgXw8XD3KifnQKSNFwGtG0Q@mail.gmail.com>
 <CADDzAfMfQ0Tg+Xy_0Moe2oQ6SC5BgXhCa8oBDPgrmMRb2RPnUA@mail.gmail.com>
 <uxualrxjgtb4cld44fvt7lr6blpltiflnjzertpkctk3s2jwx7@ei4h74ueqzc4>
 <CADDzAfN7_kdv4iQtH=OpgSWtRuqOZXYhxsBiz_OF8Zqf-zy4_Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5ool3owhvzsgjhqz"
Content-Disposition: inline
In-Reply-To: <CADDzAfN7_kdv4iQtH=OpgSWtRuqOZXYhxsBiz_OF8Zqf-zy4_Q@mail.gmail.com>


--5ool3owhvzsgjhqz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kang-Che Sung <explorer09@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2] man/man3/wc{,r}tomb.3: Rewording to MB_CUR_MAX
References: <CADDzAfM1HVMkyQY-zhv81NKS4X-neCTGETQec-f9X4acgpZApw@mail.gmail.com>
 <CADDzAfMq3X=u7+Sk_gTxOKA0O+4OgXw8XD3KifnQKSNFwGtG0Q@mail.gmail.com>
 <CADDzAfMfQ0Tg+Xy_0Moe2oQ6SC5BgXhCa8oBDPgrmMRb2RPnUA@mail.gmail.com>
 <uxualrxjgtb4cld44fvt7lr6blpltiflnjzertpkctk3s2jwx7@ei4h74ueqzc4>
 <CADDzAfN7_kdv4iQtH=OpgSWtRuqOZXYhxsBiz_OF8Zqf-zy4_Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADDzAfN7_kdv4iQtH=OpgSWtRuqOZXYhxsBiz_OF8Zqf-zy4_Q@mail.gmail.com>

Hi!

On Mon, Mar 17, 2025 at 02:32:13AM +0800, Kang-Che Sung wrote:
> Add the missing length requirement about MB_CUR_MAX to wcrtomb(3).
>=20
> Change the wording on the MB_CUR_MAX requirement in wctomb(3). If
> programmers know the wide character to convert beforehand, they are
> allowed to use a buffer smaller than MB_CUR_MAX bytes, as long as it
> "fits" the sequence.
>=20
> Signed-off-by: Kang-Che Sung <explorer09@gmail.com>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D03f0a95096ac8a95124bad3b65fc4d92bfb2d0c1>


Have a lovely day!
Alex

> ---
>  man/man3/wcrtomb.3 | 8 ++++++++
>  man/man3/wctomb.3  | 8 +++++---
>  2 files changed, 13 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man3/wcrtomb.3 b/man/man3/wcrtomb.3
> index 967a1a0f6..162d97df8 100644
> --- a/man/man3/wcrtomb.3
> +++ b/man/man3/wcrtomb.3
> @@ -94,6 +94,14 @@ is NULL, a static anonymous
>  state known only to the
>  .BR wcrtomb ()
>  function is used instead.
> +.P
> +At most
> +.B MB_CUR_MAX
> +bytes will be written at
> +.IR s .
> +The programmer must ensure that there is enough room to store the
> +multibyte sequence at
> +.IR s .
>  .SH RETURN VALUE
>  The
>  .BR wcrtomb ()
> diff --git a/man/man3/wctomb.3 b/man/man3/wctomb.3
> index fce54cb4b..643e2e677 100644
> --- a/man/man3/wctomb.3
> +++ b/man/man3/wctomb.3
> @@ -42,10 +42,12 @@ that is, the number of
>  bytes written at
>  .IR s .
>  .P
> -The programmer must ensure that there is
> -room for at least
> +At most
>  .B MB_CUR_MAX
> -bytes at
> +bytes will be written at
> +.IR s .
> +The programmer must ensure that there is enough room to store the
> +multibyte sequence at
>  .IR s .
>  .P
>  If
> --=20
> 2.49.0

--=20
<https://www.alejandro-colomar.es/>

--5ool3owhvzsgjhqz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfXK1QACgkQ64mZXMKQ
wqmh0BAAu2jsr3vIyNzAGyhRCTHuQ9d8aKctntgvnCwEZ0faqK0j5jCWziE98n/D
+zxItRpE8N34ksJZW5ZrbSpZfJh5+QFN/CUya6aK8UantdZMr6qPP8ntG6ihx2ES
sSuSGWxZNIvGcQAnFYSfPOym096OLRRkZLAh6E3RsJPcic2rILeAXAIOlv+fzN0H
voXkjL0FDE7xJi9v8eqvc65XbPe/EjinS88X+Hp2KdwuLKynZuGUfBgUMYyTx3Ue
V7agfCnHESlJybOR3bP6Qc8KraB2GjveKtvqq17oxtOr/lxPCi6NMbgvgHJNzOvJ
qwrWSnra7FciJjbttvJk8sWnYFgH81BEAU6Rs7d0JfZDrEGbiU/NL/qZqzpaGQrg
1Epn2Cb0KfDRt+0vqjhG8g6MYqhwIT5Vni10LOfhpDRveXFvwybt7fNa9ygvgdOi
//qJdVsPQUzwhCncthq5Hnq2HT/FKjb/Roz7qbG62a40JdEBjPoBcPsrl1ohB1mA
aqUYFCOWZzDVsUiaDiDlpJus8GapkrcIsGA0uVr9yvtFyrs3zRI3TDAS0T/pAv/M
7/bL1eWeRQuSwaCppWGdD34HtKVAVMsPodCKeu1WQXyzSjHyeiF69eS/uGuZ3cEc
ZUsHK0PEldtZKIfgFZJU4IIOcre2Bxk6kElb67c9KWQNoHXWNCM=
=4jIb
-----END PGP SIGNATURE-----

--5ool3owhvzsgjhqz--

