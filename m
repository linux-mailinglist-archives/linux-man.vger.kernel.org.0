Return-Path: <linux-man+bounces-3761-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D637B3D170
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 10:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E4511895752
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 08:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F0082116F6;
	Sun, 31 Aug 2025 08:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKXwFEjr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CFB16F265;
	Sun, 31 Aug 2025 08:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756630115; cv=none; b=ZReYtVHJ6bqW7OBRnZv7aG5N2ngPUjVMmX/2esVX2v65XF3jxoBJkXIbSiTQ5cNVzI4DT9CxECY8cVozKq4CZQ64g9X1whLhWjhVWSSJ/NfkORUPUcaXC2I8zKETL9ouLA1N979cDZNzKt0W8QiSd+zZAFJ/vB+rKNlcsk1kPlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756630115; c=relaxed/simple;
	bh=gsIYtWeJ1fLlCYX0fpKFEK74vbx4/el36wXfoW44tbs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qKFPPgnP2I4rNRTIHCgPfzflN5Aechb0bG4LvOSlDFuwoVHY6Gc6+BAmuLzP4h2dyI4XlCBBCNoQFkQayjdOvfQnRDRgc41MI0Y3piHb1zRLx1cI8c+JDPlBegLnRH1C5dBh0eR1ryiGezIli9uFPNkGCwS1a1G7K8I8B7zHwyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKXwFEjr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DCC0C4CEED;
	Sun, 31 Aug 2025 08:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756630114;
	bh=gsIYtWeJ1fLlCYX0fpKFEK74vbx4/el36wXfoW44tbs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WKXwFEjr2V5PwqZHPrxh/RehA7DoTTJKxmCPhRkhRQgYrhRQzuU0zjnn2v6/6jrqf
	 PVqWwutm613/6LxaEUaPoqUSPsSrR4td+DYzshEW9xQtX2C3qcTLoG/MNNHw7l/R1e
	 xTF8dyi/lwG2hue9p7lB5/5EEQKusoIU40x2Iswrjn3qvkigicvA3HfGS3ECzG7LJT
	 Pq9swnXY3KomS8ZM0ppEpEa+hyYiWVW9x3Gs4+FkBH/Vp1jiS/mhewTuhHK5iBg6jC
	 Uq1bNjYN0jp+uKQDxqE7fYOsFvMhoMut6cMg+ucnxa4/c2haCMAKPa7rrXUKOQ63IH
	 K+UfVUDUU37ag==
Date: Sun, 31 Aug 2025 10:48:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH 3/4] man/man2/futex.2: Recycle two gmane URLs
Message-ID: <ak27gmqpgybt5a22ferayom5wdmn6cfvof5fqvwpu2dugloy6e@chomaex4za3n>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-4-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fdismcoyo2tjgiyj"
Content-Disposition: inline
In-Reply-To: <20250829160200.756194-4-bigeasy@linutronix.de>


--fdismcoyo2tjgiyj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH 3/4] man/man2/futex.2: Recycle two gmane URLs
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-4-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250829160200.756194-4-bigeasy@linutronix.de>

Hi Sebastian,

On Fri, Aug 29, 2025 at 06:01:59PM +0200, Sebastian Andrzej Siewior wrote:
> Based on the date in the comment, the here provided URLs should point to
> the mails that the gmane URL no longer can.
>=20
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D2f5536dd43eaffdcb2bf00addf71aac4596c7f8c>
(use port 80).


Have a lovely day!
Alex

> ---
>  man/man2/futex.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2/futex.2 b/man/man2/futex.2
> index 69df4036ada7f..027e91b826bf1 100644
> --- a/man/man2/futex.2
> +++ b/man/man2/futex.2
> @@ -6,10 +6,10 @@
>  .\"
>  .\" FIXME Still to integrate are some points from Torvald Riegel's mail =
of
>  .\" 2015-01-23:
> -.\"       http://thread.gmane.org/gmane.linux.kernel/1703405/focus=3D7977
> +.\"       https://lore.kernel.org/lkml/1422037788.29655.0.camel@triegel.=
csb
>  .\"
>  .\" FIXME Do we need to add some text regarding Torvald Riegel's 2015-01=
-24 mail
> -.\"       http://thread.gmane.org/gmane.linux.kernel/1703405/focus=3D187=
3242
> +.\"       https://lore.kernel.org/lkml/1422105142.29655.16.camel@triegel=
=2Ecsb
>  .\"
>  .TH futex 2 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--fdismcoyo2tjgiyj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0DFsACgkQ64mZXMKQ
wqkAFw/+OtyJI74DKQ44/Tq6H5KcDSZ81LVWVgmH72p4i4OwfuPw9G31UzIiOktp
oVHx4wW+XIo561Env3+NBDXUuWQdTy3XLDD2lPliuIxohzq1liwHsnhbJTYWmRkW
Tw8+HoesLTyN2403PaXwzRqWFpBjWJlSXQRQZiEpoMs5zTNni9CFA53Rcsw0i4d4
FblxylfB1Hh2udIEhZJujGtwRVTPor7IX3JbcjGV7+XURaUcgfS+/4Mzt39qzhOv
ezmA+rM62u5p4YQpmvu+Y/gQW1oIqYme/KWB0olY99yv6MArZn03/O8hV/bgMJy9
Zjo1N3Xo3PJjfxaZLekd9VjkT3Np2w25sNXwQsqbZHXgJiGPePPUlGVMY6iBxOlt
KAFROeEGSAgZ/rVcYzVn3eMWXbxFGdhbSGi0u+G0HEbYINPKAetmyJpJQG/7RWXQ
chfgDyA2VpRZuHuy7H0rfmYvPHPCbHloPf/l/AaRFyIzDGCFkTueFRcSn+XlAw+G
sm/SZaaVwuMklqfRBVXf2nN1bdYT1ZdcGLzRqOevMshO9BQ6KCboXmyPJc8HP94E
t0CtxDzHUS6Z10GM4UVGTVS4AL19fSDpc8YvycRMEUr3dmAatqdE6lhQrXtkFFec
WqyAdlkY61y/6NRSbefjfJaGjQXbbJ1Vji+7VoLFOaCQ+/c1iSw=
=rE9K
-----END PGP SIGNATURE-----

--fdismcoyo2tjgiyj--

