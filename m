Return-Path: <linux-man+bounces-4111-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BB57BBD0CB9
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 23:28:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5C90C4E3848
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 21:28:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6832264C7;
	Sun, 12 Oct 2025 21:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtCgsg1P"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4DF1F8908
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 21:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760304488; cv=none; b=ciC/pcPKqXuy9K5pwIAXEOPEAQ+krQHvG0/d1Eb1dV94MUCeLYEVgceZJwdpfEwRzU6ReV75cACpNllEnb0LaI3AqUMX4XRzr0s+I6AOgA2WyZNb7QVdljUExR+kepwKWl8J8erdgiPqs95yaFVokmkB+hcgtdJxSU2HkfdqH2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760304488; c=relaxed/simple;
	bh=OumZzbPRYQiVkw4nAUg/exhHCbCgUDcvZE0ufPVLkVA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tBO8Hwv6fluSbg7ecr5rhaGTknxCg696IOpCRnzEJlKUPRX7Qgu7QThlpoCYuRYZrotquL+WTONoB73ZlWdYaQ584t6rgYcWhVPzuihTni/I7ROLcD8cfqK8ZVc3WguN4BgdlH5OByLd31CA42jm+UFHINLmgm8XOrPYcjnyvQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtCgsg1P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2CF4C4CEE7;
	Sun, 12 Oct 2025 21:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760304486;
	bh=OumZzbPRYQiVkw4nAUg/exhHCbCgUDcvZE0ufPVLkVA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JtCgsg1PJs6atfXnFA/qu45aVoj+JNV7GRfgoqrIOT69+1SazIo051LEyYGZqUkKd
	 AxAmbfk3EBjz8fnau/L/27s6zDNsBi/zOOnugvbLa7YGEqz9GFj8rVxO7LlMpoJnh5
	 nUOn4/m3oqzK6pLx/HZoKaQdHwloqWqmMM1ivSZSzTLO4V0EFVmG2evCqmH8sQwXyB
	 DVQdDpH88GuorW8vrj8KQI0E5Aapk4ertsoOJNwZ2oCme+HfW1FxkePV7QOdbnaryA
	 SJVT34ibHW2bpF2f7tE+jDz4aqKwBWQvKhpXkquXMKPNN8onn42CpRyttMiRZAwufV
	 7cVH0Zt8lRbJA==
Date: Sun, 12 Oct 2025 23:28:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Guillaume Nault <gnault@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <kt47a73coitnwp564fhij7tv5lwcp43rv2lyjwxyhh6b2tzst7@b52kcmtfwcys>
References: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zlrx7ckbb3etw5m5"
Content-Disposition: inline
In-Reply-To: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>


--zlrx7ckbb3etw5m5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Guillaume Nault <gnault@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <kt47a73coitnwp564fhij7tv5lwcp43rv2lyjwxyhh6b2tzst7@b52kcmtfwcys>
References: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
MIME-Version: 1.0
In-Reply-To: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>

Hi Guillaume,

On Fri, Sep 19, 2025 at 12:53:55PM +0200, Guillaume Nault wrote:
> Add a brief explanation of the RTAX attributes that can be used in
> RTA_METRICS.
>=20
> Signed-off-by: Guillaume Nault <gnault@redhat.com>

Thanks!  I've applied the patch.  I've amended it with some formatting
fixes, to make the table fit in 80 columns.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D6ad569611a1b5c7e4d8c2f019d04bacaa85dbbce>
(Use port 80.)


Have a lovely night!
Alex

> ---
>  man/man7/rtnetlink.7 | 49 +++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 48 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> index cb9f5155f..a04edce79 100644
> --- a/man/man7/rtnetlink.7
> +++ b/man/man7/rtnetlink.7
> @@ -342,7 +342,11 @@ RTA_OIF:int:Output interface index
>  RTA_GATEWAY:protocol address:The gateway of the route
>  RTA_PRIORITY:int:Priority of route
>  RTA_PREFSRC:protocol address:Preferred source address
> -RTA_METRICS:int:Route metric
> +RTA_METRICS::T{
> +Route metrics
> +.br
> +(see below).
> +T}
>  RTA_MULTIPATH::T{
>  Multipath nexthop data
>  .br
> @@ -384,6 +388,49 @@ routes (in seconds)
>  T}
>  .TE
>  .IP
> +.B RTA_METRICS
> +contains an array of
> +.I struct rtattr
> +with their corresponding attributes:
> +.IP
> +.in +4n
> +.TS
> +tab(:);
> +c s s
> +lb l l.
> +Attributes
> +rta_type:Value type:Description
> +_
> +RTAX_UNSPEC:-:unspecified
> +RTAX_LOCK:__u32:Bit field indicating which RTAX_* attributes are locked
> +RTAX_MTU:__u32:Maximum Transmission Unit for this route
> +RTAX_WINDOW:__u32:Maximum size of the receive window for this route
> +RTAX_RTT:__u32:Estimated round-trip time for this route
> +RTAX_RTTVAR:__u32:Estimated round-trip time variation for this route
> +RTAX_SSTHRESH:__u32:Slow start threshold to use for this route
> +RTAX_CWND:__u32:Maximum size of the congestion window for this route
> +RTAX_ADVMSS:__u32:Maximum Segment Size to advertise for this route
> +RTAX_REORDERING:__u32:Initial reordering level of packets for this route
> +RTAX_HOPLIMIT:__u32:Hop limit (TTL) to use for this route
> +RTAX_INITCWND:__u32:Initial congestion window to use for this route
> +RTAX_FEATURES:__u32:Features to enable for this route specifically
> +RTAX_RTO_MIN:__u32:Minimum Retransmission TimeOut to use for this route
> +RTAX_INITRWND:__u32:Initial size of the receive window for this route
> +RTAX_QUICKACK:__u32:Use quick ack for this route
> +RTAX_CC_ALGO:asciiz string:Congestion Control algorithm to use for this =
route
> +RTAX_FASTOPEN_NO_COOKIE:__u32:Allow TCP Fast Open without cookie
> +.TE
> +.IP
> +Metrics that are locked with
> +.B RTAX_LOCK
> +take precedence over the values normally used by the kernel
> +(computed or assigned by a sysctl or setsockopt(2)).
> +Therefore, some metrics, like
> +.BR RTAX_RTO_MIN ,
> +have no effect unless their bit is set in
> +.BR RTAX_LOCK .
> +.in
> +.IP
>  .B RTA_MULTIPATH
>  contains several packed instances of
>  .I struct rtnexthop
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--zlrx7ckbb3etw5m5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjsHWMACgkQ64mZXMKQ
wqm+OA/8C5MMBkxiAGMiMK6Awp+enBXeZroG7OsH7n+AjZplWLGd76Ws3IBDHL1b
N0HmY1ApR7N4OCFIQILrl2yYr+3uRjC5wtfF0pyiEqb9a9+sX3v4tfcthpYZIwSU
Xiy0BegvmXG2miSjvMi6OtCgO83hE7iGVVm3brx0g3WLjKN0JVaOKeVWNYhYXOeU
BKaKYwwqIoohJn1AVrPqWBHy4Lr3l7x6Ctc/vJS4Qt/TPl91idvvwd9R+lx7OCNf
/OgAQAuE2MU04NEXlHIOp9DNQ2k6SBcKJX99b2TXXk2jMeoHLzfKnVDXeEwLMkz+
idMSyXYFudbvE4Zaw0fCCXIid46VvqueGvLJgEEf70K2Lz7k5gD+Fqx1zHyzATuY
fYHUnyHt6cZJwg4t4jf+VWkDkGeljssOfa2zeOW9ErBYoVWAABvM0gaszkgGNbQK
2Hs9hbJJfu3+67EeeWpB3dUYfYj8vn/nfV5Du0QCOeD+9PVdP0hn4kAFHi+kZCtq
qRRRGC8YU5kPib5JpyT98LOMrKUfGhXbjqtN31klwub7Ki47nEExyyhekHfpKa6o
yfKauKZtJpxqqb478gs77UoxgwSAjabdA0GmXrimeNgpl3E5zJ5B3c5o1MZE+qlV
vQEtPjHYokZpGeGVHQRpJTiYCSXSROanpPnslbiYE5JCR9RoHDI=
=Gkmj
-----END PGP SIGNATURE-----

--zlrx7ckbb3etw5m5--

