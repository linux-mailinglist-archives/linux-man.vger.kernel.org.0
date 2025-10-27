Return-Path: <linux-man+bounces-4198-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96813C0DFE5
	for <lists+linux-man@lfdr.de>; Mon, 27 Oct 2025 14:24:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E3C63A758F
	for <lists+linux-man@lfdr.de>; Mon, 27 Oct 2025 13:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AC4E2777E4;
	Mon, 27 Oct 2025 13:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7EwZ8KJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF033291C3F
	for <linux-man@vger.kernel.org>; Mon, 27 Oct 2025 13:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571475; cv=none; b=PJ4TfLmxuPuxCCj3fZFn5ZzeQB5RSxHET7IKFm5mv4PGWsP6907ZY71ucGnb36s1gYX2XDEcgH6InRDUPFNSBxx7DFgf1BqjAxL+Z8qc1TM9EflRLXdnAp5cxWCbb0tsjQK6vOcZpJvrfP2xguyLnTwugOPjrM08DZlI8sHixm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571475; c=relaxed/simple;
	bh=pKc/eZ1zF3O97e8CNDnyWJ9hshws+C3e2KKkkTz+Tl8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A0ndsHph6in1S9t5TNMC3DPtrL7sEOCcCBf8TI+zdZyALR4O+boGg2D5C8rW654ce0L5hXURxN6kxj9QB6Tr4wV3j9Ei/wgO2ODiwejrC8nkkFSostM2WdZKGRMzCTKB7wFIhX48rXjFUyerej6JHTVmC7gX+eXEGfSp+6Ws1aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7EwZ8KJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 797B5C4CEF1;
	Mon, 27 Oct 2025 13:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761571475;
	bh=pKc/eZ1zF3O97e8CNDnyWJ9hshws+C3e2KKkkTz+Tl8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q7EwZ8KJC1HaF7P9uLIWbAcWg3QEuL9GUtrr6c87QkkPxkpymNWFdiAYUT7VnrHL2
	 hXuXDSqcmOOrF5Fx2a8MjnbWnDmt0ndVvkk0BkBNrvr868QmSAKCkBHcVzpkfhXlz+
	 9AAJ+ZjgkuRU8IC2MDcPDV8ZtfafdGmFokpnFTdBNOIFSX/MgDTHDuKYC2daW2RDkd
	 zShd5CfmuINLRC5T0u4SWuRxYyAvGFq3RUPXy83iOL67ih9br1FwFvbLHFTT/1Ys+t
	 wl6DSqRheFFK4vKnd2Kwzr5ua25IHz5mDSOvGHVZhJcIIdxIAlzHJRk85DwP9mN9Vi
	 UXaV88YBmaPGQ==
Date: Mon, 27 Oct 2025 14:24:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Bernat <vincent@bernat.ch>
Cc: linux-man@vger.kernel.org, Craig Gallek <kraig@google.com>
Subject: Re: [PATCH] man/man7/socket.7: fix documentation for
 SO_ATTACH_REUSEPORT_EBPF
Message-ID: <pqnvi6iojjw5inryoevybyz3ujmwpknn4rwo2jmtycadgcvutk@2o2wuutlsbrn>
References: <20251027131711.186482-1-vincent@bernat.ch>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ezuiebba35rkpbgn"
Content-Disposition: inline
In-Reply-To: <20251027131711.186482-1-vincent@bernat.ch>


--ezuiebba35rkpbgn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Bernat <vincent@bernat.ch>
Cc: linux-man@vger.kernel.org, Craig Gallek <kraig@google.com>
Subject: Re: [PATCH] man/man7/socket.7: fix documentation for
 SO_ATTACH_REUSEPORT_EBPF
Message-ID: <pqnvi6iojjw5inryoevybyz3ujmwpknn4rwo2jmtycadgcvutk@2o2wuutlsbrn>
References: <20251027131711.186482-1-vincent@bernat.ch>
MIME-Version: 1.0
In-Reply-To: <20251027131711.186482-1-vincent@bernat.ch>

Hi Vincent,

On Mon, Oct 27, 2025 at 02:17:00PM +0100, Vincent Bernat wrote:
> When using eBPF, the program should not return an index, but a
> decision (SK_PASS/SK_DROP). The socket should be selected using the
> sk_select_reuseport helper.
>=20
> Cc: Craig Gallek <kraig@google.com>
> Signed-off-by: Vincent Bernat <vincent@bernat.ch>

Would you mind adding a Fixes: tag for the commit that introduced the
incorrect text?

Also, do you have a guess of why the wrong text was written?  It would
be useful to have an idea of that.


Have a lovely day!
Alex

> ---
>  man/man7/socket.7 | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
>=20
> diff --git a/man/man7/socket.7 b/man/man7/socket.7
> index b4d58a23d5da..d85fdd931e42 100644
> --- a/man/man7/socket.7
> +++ b/man/man7/socket.7
> @@ -354,20 +354,25 @@ the sockets in the reuseport group (that is, all so=
ckets which have
>  .B SO_REUSEPORT
>  set and are using the same local address to receive packets).
>  .IP
> -The BPF program must return an index between 0 and N\-1 representing
> -the socket which should receive the packet
> -(where N is the number of sockets in the group).
> -If the BPF program returns an invalid index,
> -socket selection will fall back to the plain
> +The classic BPF program must return an index between 0 and
> +N\-1 representing the socket which should receive the packet
> +(where N is the number of sockets in the group). If the BPF
> +program returns an invalid index, socket selection will fall
> +back to the plain
>  .B SO_REUSEPORT
>  mechanism.
> -.IP
>  Sockets are numbered in the order in which they are added to the group
>  (that is, the order of
>  .BR bind (2)
>  calls for UDP sockets or the order of
>  .BR listen (2)
>  calls for TCP sockets).
> +.IP
> +The extended BPF program must return a decision and the
> +.B bpf_sk_select_reuseport
> +helper should be used to select the socket which should receive
> +the packet.
> +.IP
>  New sockets added to a reuseport group will inherit the BPF program.
>  When a socket is removed from a reuseport group (via
>  .BR close (2)),
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ezuiebba35rkpbgn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmj/cocACgkQ64mZXMKQ
wqlNoQ/+MHLuSD5RiKPOYIGctN0J9bnlSEPjueO0O6t+6Tn+EvYPOpyP/MIiII8q
NSjGseq67kmiJh/j8gpnpNkSGModyq2VnPOu2YOf7tuws4216zuL3ceVUxZRk3QF
PZQvK3D95xKRekaIPx2hDrEQSFjiudCUuqKwr2MrvefobAwGIVpNmxjmlmlB8YcX
K/AyKeah0DQWc46V4D9Kk50WOz4GfAaQWPnMVcuHUBHk1oG7DF0nXUGx54sk95gp
tw+Gqe8wIMjALVqx3ilhXkYpxv7+QVsw/o2oFoO4R3iQiVAmt68vKRrjKUHgLhSN
GNHVThYYdotklFxx9l1Ihmh51NTDwp+p09GN9P5w/dAnTbzgLHWls3kmbSm4KsZt
+h0e5x+W10DZ5sUlLjUN3oavm2Be70PcrI2oVPfD31NuvrEZWlhLmhHoYEyzXtV4
y+rXw2RKt9WNfDma8+Zy6G/2TNwk/Jz57DYZbcez/pEcq9ShkE9LWT+YYlkmnGRc
iGI1Vjm8iXeyFSqpD4CRB5n4fD6EFfZPIE6OdGS7iq69ezhUunAAGYf8jQJlZNUO
yAW/Eamkua8E1XkDvpvEdIZugTQ8UYPxbgDiMMvtUjD9BjpiisWXxt+lIC6TYspZ
tYsVapNNII7ecdM8Ms/qBR8VgK9buxSpsscj0wtF7LqE8SstnyM=
=NJv9
-----END PGP SIGNATURE-----

--ezuiebba35rkpbgn--

