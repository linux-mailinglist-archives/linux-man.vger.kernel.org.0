Return-Path: <linux-man+bounces-4350-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09037C97C27
	for <lists+linux-man@lfdr.de>; Mon, 01 Dec 2025 15:03:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B050E3A270E
	for <lists+linux-man@lfdr.de>; Mon,  1 Dec 2025 14:03:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A2803054EB;
	Mon,  1 Dec 2025 14:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSzu0lw5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC4D36D4F7
	for <linux-man@vger.kernel.org>; Mon,  1 Dec 2025 14:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764597787; cv=none; b=oaRlkSsBRW5oZ/MRSJ9Ztu5R31vGqFqblZAxn7B6cE8TOVAHnTuPBeSUB3ZZTFy+IU0liYwB1jI7iYiSOSwQJeh4wMlXVwIC0BpCi5NZpjQwjO02jaS9rTXz9Z1u2cfgY3GoEfbz8NAnwgyMOrfW3t3J5kXEM1v8TwyOps1xszA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764597787; c=relaxed/simple;
	bh=iHRBc5f2y/yeJyh7V8Ib91SdR2hM73+bUdB+z8XOE2c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EzVP7wucEMXtESS3uM0D/eK/slwSciQdM0XgcSsBn52sFjWj1NFK2wT9PiJ3qB8l7FWKPt3pohI+Y66Pt3v1vTe7G9s30zxIYCsyWIdUKmDT8eu1griLnpZInjt/mKdIhKyJUakHVqqIhLfJj7Zwe+XRYDKlGwqc8nu1MIqbN1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSzu0lw5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE3BDC4CEF1;
	Mon,  1 Dec 2025 14:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764597786;
	bh=iHRBc5f2y/yeJyh7V8Ib91SdR2hM73+bUdB+z8XOE2c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DSzu0lw58QgbRBM1rMx4+PvLEeKg2zXoDbKYTpse1SsC4teMvODAWylu+ErKOGRgZ
	 MLv/qUq2AB/4+gCxDQ1shgLYxnMH2vgxxZ360SwmGbKwQIzYT6xl00BhVqvS5FtlGX
	 MMtDLhKoxI6J7K/NDr4Kpk1LCUawFAxQL/ioNs5OCCJPlug95lzpY+c8lcmkBHCmJo
	 h5lArFtCCq9Rg95mTfRvlT9mke4YB+qvmaTGmXWmUOmO9YlXMAYcmOIe7vqduSl8RB
	 5xfz9g5hooCKW6ezmnsEsvEbC6by41POMj56GYC0Q6HML5OoWhLqE+ADg3dk/f7MZ8
	 FVnDP2YTJNrpA==
Date: Mon, 1 Dec 2025 15:03:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Bernat <vincent@bernat.ch>
Cc: Craig Gallek <kraig@google.com>, linux-man@vger.kernel.org, 
	Martin KaFai Lau <kafai@fb.com>
Subject: Re: [PATCH v2] man/man7/socket.7: fix documentation for
 SO_ATTACH_REUSEPORT_EBPF
Message-ID: <kyhlvia5lyrpu2tk4eqosoeubrkjxynfnpjvvdpgqyphgx3lbq@rltbxdluiflj>
References: <20251027131711.186482-1-vincent@bernat.ch>
 <20251201054800.3652822-1-vincent@bernat.ch>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l5qgdu7cgsvc5hui"
Content-Disposition: inline
In-Reply-To: <20251201054800.3652822-1-vincent@bernat.ch>


--l5qgdu7cgsvc5hui
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Bernat <vincent@bernat.ch>
Cc: Craig Gallek <kraig@google.com>, linux-man@vger.kernel.org, 
	Martin KaFai Lau <kafai@fb.com>
Subject: Re: [PATCH v2] man/man7/socket.7: fix documentation for
 SO_ATTACH_REUSEPORT_EBPF
Message-ID: <kyhlvia5lyrpu2tk4eqosoeubrkjxynfnpjvvdpgqyphgx3lbq@rltbxdluiflj>
References: <20251027131711.186482-1-vincent@bernat.ch>
 <20251201054800.3652822-1-vincent@bernat.ch>
MIME-Version: 1.0
In-Reply-To: <20251201054800.3652822-1-vincent@bernat.ch>

Hi Vincent,

On Mon, Dec 01, 2025 at 06:44:23AM +0100, Vincent Bernat wrote:
> When using eBPF, there are two possible cases depending on the program
> type. Only the first case was described. In the second case, the program
> should not return an index, but a decision (SK_PASS/SK_DROP). The socket
> should be selected using the sk_select_reuseport helper.
>=20
> Cc: Craig Gallek <kraig@google.com>
> Signed-off-by: Vincent Bernat <vincent@bernat.ch>
> ---
>  man/man7/socket.7 | 34 ++++++++++++++++++++++++----------
>  1 file changed, 24 insertions(+), 10 deletions(-)
>=20
> diff --git a/man/man7/socket.7 b/man/man7/socket.7
> index b4d58a23d5da..426cf63a7d0b 100644
> --- a/man/man7/socket.7
> +++ b/man/man7/socket.7
> @@ -354,20 +354,32 @@ the sockets in the reuseport group (that is, all so=
ckets which have
>  .B SO_REUSEPORT
>  set and are using the same local address to receive packets).
>  .IP
> -The BPF program must return an index between 0 and N\-1 representing
> -the socket which should receive the packet
> -(where N is the number of sockets in the group).
> -If the BPF program returns an invalid index,
> -socket selection will fall back to the plain
> +The classic BPF program must return an index between 0 and N\-1
> +representing the socket which should receive the packet (where N is the
> +number of sockets in the group). If the BPF program returns an invalid
> +index, socket selection will fall back to the plain
>  .B SO_REUSEPORT
> -mechanism.
> -.IP
> -Sockets are numbered in the order in which they are added to the group
> -(that is, the order of
> +mechanism. Sockets are numbered in the order in which they are added to

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

Have a lovely day!
Alex

> +the group (that is, the order of
>  .BR bind (2)
>  calls for UDP sockets or the order of
>  .BR listen (2)
>  calls for TCP sockets).
> +.IP
> +The extended BPF program can be of two types:
> +.B BPF_PROG_TYPE_SOCKET_FILTER
> +or
> +.BR BPF_PROG_TYPE_SK_REUSEPORT .
> +In the first case, the extended BPF program must return an index between
> +0 and N\-1, like a classic BPF program. In the second case, it must
> +return an action
> +.RB ( SK_PASS
> +or
> +.BR SK_DROP )
> +and the
> +.B bpf_sk_select_reuseport
> +helper can be used to select the socket which should receive the packet.
> +.IP
>  New sockets added to a reuseport group will inherit the BPF program.
>  When a socket is removed from a reuseport group (via
>  .BR close (2)),
> @@ -386,7 +398,9 @@ takes the same argument type as
>  .BR SO_ATTACH_BPF .
>  .IP
>  UDP support for this feature is available since Linux 4.5;
> -TCP support is available since Linux 4.6.
> +TCP support is available since Linux 4.6; support for
> +.B BPF_PROG_TYPE_SK_REUSEPORT
> +program type is available since Linux 4.19.
>  .TP
>  .B SO_BINDTODEVICE
>  Bind this socket to a particular device like \[lq]eth0\[rq],
> --=20
> 2.51.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--l5qgdu7cgsvc5hui
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmktoBUACgkQ64mZXMKQ
wqmCmw//bNhAkbNdhBl4n0GYxzSQpGz5rCAGYQoMXh4BJ1uZLqHC2Py15lpVrmXs
x/BWkeplm5BtMu+WCAhpqPhutBKNFT/rdDIVcFyBQmgDTtF/dQ0Ik9rFzsxhRyPV
asFqyYtiJDtnzfhDTjCWgh+D+TXBU/MDNoDOT/CohMhqyq9fL8CnQ2QwsKyY22pL
sYpQ8Ag6vgs4X3Sc5yMwbeZkx05pyE4Ri/51/r4eUlAPb9rcInHxTdBsZ7Ae0LFD
7zYAxDS+lxopuWgMYVZRml5tUu/hp5nKqDHLflcQbNJCC4yVbtBGnab0s8K7J1aL
H0vb6ldx6/oqcwtYSO3iLt1TWonQ+067HxJ9s/7iqqqtmIhxWSTWwLVeQbKtLLLD
FT/PqtfUrSFov1eyKgBAK/VnsktepuBUI1/m+pjsh/+MkeXiLVwqwj15MIysUaPN
13Frs+8f+2PzyOfPUW0Rdd9tQtBRa/wyX0IXXOqjjrct/ZchOZQ/CQhY8Cer9maI
4es9XO4CxXkq3W2S6XCO3KYdd8H1BHZryPAk4C8CokJ2dIt75x73rcWk6gflj03Z
r7BkAQ6EqfPGG9pPs1cbVRlvtl9nP00JqYB4yZlxk4AHL/fHxP0uYkJVF90ExBO2
eYRNV5j+ExKDr8ZPtTPJfGY6lxwDfrk2+CUMFuihXgCVI9ylGwM=
=wPaD
-----END PGP SIGNATURE-----

--l5qgdu7cgsvc5hui--

