Return-Path: <linux-man+bounces-4316-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A84C81A84
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 17:47:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F32224E5283
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 16:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84CB528489B;
	Mon, 24 Nov 2025 16:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEw2Blrc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439B619644B
	for <linux-man@vger.kernel.org>; Mon, 24 Nov 2025 16:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764002870; cv=none; b=IMdt8cA/jHzXl/SvPbs1hgL33kixHpHkFs4Bx4BOacbiWofgmSAuUo1WkaP2l4aPKupvjrCh7HwWELTjas5U0Bj56KmQ+ciJbqcfSJjqy/auduHe8FCPZxIXAocQXFPE+1ItITe75MBN6C9Ham4d/8gI2F5oFQkSxnSvTfeQgoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764002870; c=relaxed/simple;
	bh=74NeYfUNIrT8TJfa3edFRWk/1sJoo+cpkzUo5YrcWqo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ncp65SngYNzgoxz/o2nygvx1PGS5yQsrbcgI6JX0A4zoX+jmdRTmg4DUVMnYdiqocImx26IGMQ1TGNWTxoGh6+RDQR14pwC3mUMNtqv3TXkhaEIe5XDGtgmhRvNNfRJMo+gaKCCsCvhfsb8mgMPlhxDtlzdMVJiQ85VVaFFaP8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEw2Blrc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D53EDC116C6;
	Mon, 24 Nov 2025 16:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764002869;
	bh=74NeYfUNIrT8TJfa3edFRWk/1sJoo+cpkzUo5YrcWqo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GEw2BlrcXgpkOdXB0OMWDsRKFP1biENvOAmrAxZeOfOQWL8SCl5bjBM1pl0OSJ5dY
	 qT5PineQcGmdmeyYA8LZ7b5aC1hRpx+UoG6BLO41tpTTUYV64UAV2nI+wNkGwgph5f
	 9v5FTjkHYF/H8ucBW+WM+byw+N2SGRXHPVCed9oXacvLpsDjMSn8EWZUQgYBHKaXjC
	 OdVFfT6BK72s1jNmlksM72nwPIcGAJbiMcYsMq66XvsHnVurl2Xc1xHGNyPwF5R1Fg
	 MzWVrTEuQYr5wxX/bOFp0VmG9+EyJ4GaQxsQK3m/lP+SjoDhB15h8ScwqE3UTE5Ydc
	 MzDAJTts/u7nQ==
Date: Mon, 24 Nov 2025 17:47:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Bernat <vincent@bernat.ch>
Cc: Craig Gallek <kraig@google.com>, linux-man <linux-man@vger.kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>
Subject: Re: [PATCH] man/man7/socket.7: fix documentation for
 SO_ATTACH_REUSEPORT_EBPF
Message-ID: <5ttfwkqtgovymwtxtyd2u4733kunuhse5a3tf4kdgm7f5oz5uz@kojolfth7ybi>
References: <20251027131711.186482-1-vincent@bernat.ch>
 <pqnvi6iojjw5inryoevybyz3ujmwpknn4rwo2jmtycadgcvutk@2o2wuutlsbrn>
 <6bb1b90e-1b1e-4cf0-b1c6-fe96adbb3e58@bernat.ch>
 <CAEfhGiz9OLu=arVoPFJhYTr3h-wB5QR5sOkgNDMzwR+74NUEBw@mail.gmail.com>
 <b6486fae-b0d2-48f2-a57e-371ae960e93f@bernat.ch>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4ccv2vkxmgro4vdv"
Content-Disposition: inline
In-Reply-To: <b6486fae-b0d2-48f2-a57e-371ae960e93f@bernat.ch>


--4ccv2vkxmgro4vdv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Bernat <vincent@bernat.ch>
Cc: Craig Gallek <kraig@google.com>, linux-man <linux-man@vger.kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>
Subject: Re: [PATCH] man/man7/socket.7: fix documentation for
 SO_ATTACH_REUSEPORT_EBPF
Message-ID: <5ttfwkqtgovymwtxtyd2u4733kunuhse5a3tf4kdgm7f5oz5uz@kojolfth7ybi>
References: <20251027131711.186482-1-vincent@bernat.ch>
 <pqnvi6iojjw5inryoevybyz3ujmwpknn4rwo2jmtycadgcvutk@2o2wuutlsbrn>
 <6bb1b90e-1b1e-4cf0-b1c6-fe96adbb3e58@bernat.ch>
 <CAEfhGiz9OLu=arVoPFJhYTr3h-wB5QR5sOkgNDMzwR+74NUEBw@mail.gmail.com>
 <b6486fae-b0d2-48f2-a57e-371ae960e93f@bernat.ch>
MIME-Version: 1.0
In-Reply-To: <b6486fae-b0d2-48f2-a57e-371ae960e93f@bernat.ch>

Hi Vincent,

On Mon, Nov 03, 2025 at 09:28:04PM +0100, Vincent Bernat wrote:
> On 2025-11-03 17:31, Craig Gallek wrote:
[...]
> > It's been a while since I've used this code, but it looks like the
> > sk_select_reuseport helper was added a few years later by=C2=A0Martin K=
aFai
> > Lau in=C2=A02dbb9b9e6df6.=C2=A0 The execution of the bpf program (run_b=
pf_filter
> > in sock_reuseport.c) still uses the program's 'returned' value in both
> > the cbpf and ebpf cases, but it looks like Martin's change tightened up
> > the 'type' of eBPF program that can be used for this purpose and
> > included this helper function to allow for an explicit validation
> > instead of just having the program return a raw integer value.
> >=20
> > So I think this is just a case of the documentation not keeping up with
> > the code.=C2=A0 I'm less familiar=C2=A0with the PASS/DROP syntax, but I=
'm guessing
> > that came along after the initial implementation of these reuseport BPF
> > programs as well.
> >=20
> > In any event, my quick read of the code lines up with your proposed
> > documentation change.=C2=A0 It might be worth having Martin verify as w=
ell,
> > but this looks good to me.
>=20
> OK, so, two things are possible and the kernel selects depending on the
> program type (BPF_PROG_TYPE_SOCKET_FILTER or BPF_PROG_TYPE_SK_REUSEPORT).
>=20
> if (prog->type =3D=3D BPF_PROG_TYPE_SK_REUSEPORT)
>     sk2 =3D bpf_run_sk_reuseport(reuse, sk, prog, skb, NULL, hash);
> else
>     sk2 =3D run_bpf_filter(reuse, socks, prog, skb, hdr_len);
>=20
> So, I can update the documentation for that, as I have missed it. Waiting
> for Martin feedback in case there is something else.

You can send an updated patch in the meanwhile, if you want.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--4ccv2vkxmgro4vdv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkkjDIACgkQ64mZXMKQ
wqnkPw//YKjGE+i7K3/W+VyC6XzDxn6+im4wK9r2Nxtnf6gqkQnrDLuVqucaPZAA
JzF9Hq0Sv0aV4SOmWA24cbhU/WHNYiZ5QTOPQK+py9FS+ynz1XEiHa7n/3XGLDNA
sXu5hL52CbixBuCwdYdU/A5cd6ApeSwveVhqeWtsDGyjYL2X6IQutEdMpcCUykK5
B4zRCD4gKJ5k6G9NyQTP9Z+j23JAPWCY1LXFAWy83kvt4F+u4b1exa4wE+rRUAOp
4IBR+ABADbQ99owbhYYJL9uEXH4t1oQdTapRbMQupfYIJfx8/0KK4T1WDIflqQ7j
LtcS+Z+OvUn26Z9GVPJFoSbkNMmI9QlXbbiUWcEg6mXWcm8M8A8is2PPon6NtE9k
EPQhmwHhzg6VFbyaSckMPzaO6qD9P2i9QwuszcP7TWF+AfTEcuVX7QX0PjdZe61m
8USCr0U1nffw6L8EKXvt4OkY53l8q0pTGfLoMxH4u+XRXutv+VSNpdO+q4h1pRPy
JjjDp5feaHtx9cWtqALoDNlpai8qU01Wf6LBVukFpN5Cuc5wNbNN22v8todXhJu4
qWgpmLpxgSoYqlHwP+DtlYpDVR/fLt0MBpECpkd/3Bu05zQQmzoiLNbsjMEodviV
MxzSvgUQr7oYehLJ+Vs1pNQE3bpqLZtNuxwlagxPpLxe5X0/nLg=
=XjUs
-----END PGP SIGNATURE-----

--4ccv2vkxmgro4vdv--

