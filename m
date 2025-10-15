Return-Path: <linux-man+bounces-4163-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 147B9BE0DBA
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 23:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CE5744E53E4
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 166722FFDF2;
	Wed, 15 Oct 2025 21:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVVSdh49"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF333254B5;
	Wed, 15 Oct 2025 21:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760564840; cv=none; b=Tr6dHCM2F6MS6x0+DQXqWNbhL9teMmTIA8dyIgUq/+xrQr58G9htdpDX3C90JFxHQB30pQ7nh+IiattxYW4YllEMQbIIgZ4cv7k8uFAPeGJfimXgYo84nV7zXph/0vU30CPFcfD4y99uQNgQ/DyumfXwCRnxl161bu6z3h3yVr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760564840; c=relaxed/simple;
	bh=xJ+vIk5KC5F1xnpnsmsN9qpeSze7SRjsKUVliuwCx1k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DIU4YT/GrFTC20emwB+etKt26PiPh2ndZXlAvcnvuYEQSZbS/YMKszjrl2xkd+QeHe/4DRSRgijoshfZ7iVLGEDbvfRinOY3AqgZjClo7o1KVZIu9WhIrR5/ZSWsaVLzUMCXlJp7hxmdqsLfyPhC24F3aezocoJo7cxdRFGGP6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVVSdh49; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5217C4CEF8;
	Wed, 15 Oct 2025 21:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760564840;
	bh=xJ+vIk5KC5F1xnpnsmsN9qpeSze7SRjsKUVliuwCx1k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LVVSdh49R1/9O8fC5Q7o++Vr1PlEkyFpLLaueAaDUY0Q1J1InYy0RZoLxP34hjaga
	 1ajpPkbjFrUmz1PoTHnfsdOeXGZC+LVivuocJa9EWz6w3Vw6Tn0ZspvSi213RIC4xk
	 eBX6PyofgNfz2TFx7l3y4YiPvVb9/gHhFbzBef1o/4qjiNCo9IpyVU7CitXLmAJ+XE
	 jNav/0+0/MoK2ZNLbdDTOVsch/orqsVpSHk3daj4LM05lF54g5pjAlF+86q3m4QoG7
	 cBM3uIDDT3eFBCiT/TuIuoLn1QB1z7WVLE4WkdNIYDySjBII5SRXMbeTlBLCPUp5fT
	 GUm75B1ADesjg==
Date: Wed, 15 Oct 2025 23:47:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>, Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH v2 4/5] man/man2/futex.2: Update the link reference again.
Message-ID: <yibk3ihxkx3iqkcnuekznvmpjccfo3sq74yjwr647kbfrif2q3@ld2zazy6mh7q>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
 <20250915141305.906440-5-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="okoiu3lx7tlykw4z"
Content-Disposition: inline
In-Reply-To: <20250915141305.906440-5-bigeasy@linutronix.de>


--okoiu3lx7tlykw4z
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
	Waiman Long <longman@redhat.com>, Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH v2 4/5] man/man2/futex.2: Update the link reference again.
Message-ID: <yibk3ihxkx3iqkcnuekznvmpjccfo3sq74yjwr647kbfrif2q3@ld2zazy6mh7q>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
 <20250915141305.906440-5-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250915141305.906440-5-bigeasy@linutronix.de>

Hi Sebastian,

On Mon, Sep 15, 2025 at 04:13:04PM +0200, Sebastian Andrzej Siewior wrote:
> Carlos O'Donell says based on the context, it should be the former link
> from that day.
>=20
> Update the link accordingly.
>=20
> Cc: Carlos O'Donell <carlos@redhat.com>
> Link: https://lore.kernel.org/all/710e8f05-b0b3-489a-9e89-8967cf6a9e70@re=
dhat.com
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Thanks!  I've applied the patch.


Have a lovely night!
Alex

> ---
>  man/man2/futex.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/futex.2 b/man/man2/futex.2
> index fe4a239c3812c..1a7cb1b5e08c4 100644
> --- a/man/man2/futex.2
> +++ b/man/man2/futex.2
> @@ -6,7 +6,7 @@
>  .\"
>  .\" FIXME Still to integrate are some points from Torvald Riegel's mail =
of
>  .\" 2015-01-23:
> -.\"       https://lore.kernel.org/lkml/1422037788.29655.0.camel@triegel.=
csb
> +.\"       https://lore.kernel.org/lkml/1422037145.27573.0.camel@triegel.=
csb
>  .\"
>  .\" FIXME Do we need to add some text regarding Torvald Riegel's 2015-01=
-24 mail
>  .\"       https://lore.kernel.org/lkml/1422105142.29655.16.camel@triegel=
=2Ecsb
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--okoiu3lx7tlykw4z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjwFmMACgkQ64mZXMKQ
wqnjFg/9Ht8+49V0qkleku83fSlQg58lAlT9tjUo6NlP07MGkPAaNbsM0Ix2okkf
Kq8qLh/FeapaTzMQY6/SmyNZgfR+U3XuzHZYOtepnWG+O80qH4g2jPXlV8zKqmcx
qLdAx9AE6EDr6LM0VPLJXl2p1+7JZUpCJIckeBWcgUhYXOCQt5p6YyeXE7tYKVQp
WSoyac6P2fkUpj6zzep03QO4w8c6oCKDRpUZ2sz/J8BibyQXSbIazb+zpdY8a6ia
NEFu3sS6ZzgsTF3qPbyRuTWCaw4LVncrLjaoq9rZxpYpS4PGrWWIXnaap/brdAWr
3RC8LpJUTP9hNyC/1CsnOqE4S+1b53X/cHR3Wnc9UmrR4Tef1dvS1xT4ynEo3Q6o
u30bVUKHcujs889g5WJ/l64s+DtoEiuIiRU4la0iBIU1cALgbvsJx5aDc9IQqj0b
3hPLB+o5coIvmFu0LAJIDm9mQUqDHT756aoy/+u5m9zFmj6aOs7Ow+DQN7GCJQ1g
+uQ6cNRXt2qcmtH72VX71X+2ejiirlWZbYRcfE4/IZaRF1qu4nzHUOAkQW47ta0O
pJhUrRtmoWkjP9MSmWBDqI2WEDbfAjHvQQxSy9j+cZmJggSiWUC8XSmZkqYGiMs5
1Ez77rPkOgz239V2x83qWWB3MQAKAc7Fw8ZKqzIuDf7FBinYyno=
=CH17
-----END PGP SIGNATURE-----

--okoiu3lx7tlykw4z--

