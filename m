Return-Path: <linux-man+bounces-4034-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 85572BB57A2
	for <lists+linux-man@lfdr.de>; Thu, 02 Oct 2025 23:33:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7882B4E4C6C
	for <lists+linux-man@lfdr.de>; Thu,  2 Oct 2025 21:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 275A81C861E;
	Thu,  2 Oct 2025 21:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeLMUWjp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71A01A9FB5
	for <linux-man@vger.kernel.org>; Thu,  2 Oct 2025 21:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759440792; cv=none; b=K9EtgcyAR4W5TwCyMVmkqw+QODkBjQXmXSalewuixAcqlmzPdaKAPeIZW5APzj6e9MFam7GYBUQZYcLLkJvkvZn4uUu1CzJKdldx637jq4MbRDURn/JMTwZ54BSs6Ibd4fO9EZb/odMhUfO68vrJs7xrAuPfyP/iB0y/OWnhcN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759440792; c=relaxed/simple;
	bh=yuIZzJ+i3gTKAVSsaAvyajLs1CEMi9WegEAVPj0JqI8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nkVupH0pDTsCPoRV18IhK0vZD6LRfNpdb8aGfgylyIO7NtpAqhw8kHD3LWjW5GVmbwmLnOQCxS4TSnt0wLqjfx/6nUV3PQhvXjwK3AugTmOWk0le0dxSmQ4ESagnNA9encz2nXKT8HzgZ8DpNi8LImoATjWnYizty3h1x7sbbyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeLMUWjp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE46BC4CEF4;
	Thu,  2 Oct 2025 21:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759440792;
	bh=yuIZzJ+i3gTKAVSsaAvyajLs1CEMi9WegEAVPj0JqI8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OeLMUWjpgrFrdOgtndvxKo1efqInr3gS6wqruh6jWCD67MqgK8vFZS891YpqbPuCb
	 opHpcDFj2pgOkZgLbKSNWFcp5eC7lDP7+xMYdh7Exv4fxU0uIZiMQs4Jq3sDhyIGa1
	 Z7DuoXX3B3MYSAkPef3tuNJCDTWLulaTbCyDjLy+A72AUfErua/OiZHxq7hn19dqgu
	 zEpQhoCGi510pIBIww6BjFSMiPjy5nDZ/gSIIoCh9fDeVLJYTwzb+irs7SbNgzF93X
	 w7k9t6kiKIx1NnO2kEEOqsxxaNvrGH3uhCrIhtkrXgLK/Wj9/K8Zzav3vH+cSPshlt
	 ZhOSDYceNiWZQ==
Date: Thu, 2 Oct 2025 23:33:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Guillaume Nault <gnault@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <accjbqimswux57cgstzl2jrtqlnbxsuqhmmfjqguat7fk7kzlz@oy545lcy52to>
References: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f7vjq3nokro5p52v"
Content-Disposition: inline
In-Reply-To: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>


--f7vjq3nokro5p52v
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Guillaume Nault <gnault@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <accjbqimswux57cgstzl2jrtqlnbxsuqhmmfjqguat7fk7kzlz@oy545lcy52to>
References: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
MIME-Version: 1.0
In-Reply-To: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>

Hi Guillaume,

On Fri, Sep 19, 2025 at 12:53:55PM +0200, Guillaume Nault wrote:
> Add a brief explanation of the RTAX attributes that can be used in
> RTA_METRICS.
>=20
> Signed-off-by: Guillaume Nault <gnault@redhat.com>
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

I would use

	.RS
	.IP

and get rid of the .in +4n.

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

And here use .RE.

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

I find this placement of .in weird.  The preceding paragraph isn't
indented by it.  I think I prefer using .RS/.RE, and then you'd have to
put .RE before this paragraph to get the same indentation.

Here's how your patch looks like:

	$ MANWIDTH=3D72 diffman-git HEAD 2>/dev/null
	--- HEAD^:man/man7/rtnetlink.7
	+++ HEAD:man/man7/rtnetlink.7
	@@ -218,7 +218,8 @@ DESCRIPTION
		     RTA_GATEWAY     protocol address      The gateway of the route
		     RTA_PRIORITY    int                   Priority of route
		     RTA_PREFSRC     protocol address      Preferred source address
	-            RTA_METRICS     int                   Route metric
	+            RTA_METRICS                           Route metrics
	+                                                  (see below).
		     RTA_MULTIPATH                         Multipath nexthop data
							   (see below).
		     RTA_PROTOINFO                         No longer used
	@@ -242,6 +243,37 @@ DESCRIPTION
		     RTA_EXPIRES     int                   Expire time for IPv6
							   routes (in seconds)
	=20
	+            RTA_METRICS contains an array of struct rtattr with their
	+            corresponding attributes:
	+
	+                                                           Attributes
	+                rta_type                  Value type      Description
	+                =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
	+                RTAX_UNSPEC               =E2=80=90               unspeci=
fied
	+                RTAX_LOCK                 __u32           Bit field indic=
ating which RTAX_* attributes are locked
	+                RTAX_MTU                  __u32           Maximum Transmi=
ssion Unit for this route
	+                RTAX_WINDOW               __u32           Maximum size of=
 the receive window for this route
	+                RTAX_RTT                  __u32           Estimated round=
=E2=80=90trip time for this route
	+                RTAX_RTTVAR               __u32           Estimated round=
=E2=80=90trip time variation for this route
	+                RTAX_SSTHRESH             __u32           Slow start thre=
shold to use for this route
	+                RTAX_CWND                 __u32           Maximum size of=
 the congestion window for this route
	+                RTAX_ADVMSS               __u32           Maximum Segment=
 Size to advertise for this route
	+                RTAX_REORDERING           __u32           Initial reorder=
ing level of packets for this route
	+                RTAX_HOPLIMIT             __u32           Hop limit (TTL)=
 to use for this route
	+                RTAX_INITCWND             __u32           Initial congest=
ion window to use for this route
	+                RTAX_FEATURES             __u32           Features to ena=
ble for this route specifically
	+                RTAX_RTO_MIN              __u32           Minimum Retrans=
mission TimeOut to use for this route
	+                RTAX_INITRWND             __u32           Initial size of=
 the receive window for this route
	+                RTAX_QUICKACK             __u32           Use quick ack f=
or this route
	+                RTAX_CC_ALGO              asciiz string   Congestion Cont=
rol algorithm to use for this route
	+                RTAX_FASTOPEN_NO_COOKIE   __u32           Allow TCP Fast =
Open without cookie
	+
	+            Metrics that are locked with RTAX_LOCK take precedence over
	+            the values normally used by the kernel (computed or as=E2=80=
=90
	+            signed by a sysctl or setsockopt(2)).  Therefore, some met=E2=
=80=90
	+            rics, like RTAX_RTO_MIN, have no effect unless their bit is
	+            set in RTAX_LOCK.
	+
		     RTA_MULTIPATH contains several packed instances of struct
		     rtnexthop together with nested RTAs (RTA_GATEWAY):
	=20
Is this indentation what you intended?


Have a lovely night!
Alex

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

--f7vjq3nokro5p52v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmje75QACgkQ64mZXMKQ
wqnXGxAAviVn04DSqPCfVpJNU6xNKa5esa7kKJKYswptiYjbXAorsmi7nLJ/jMps
rvY/gO3moygUQRXfRHzhfjvzkig4l+y/AadfrRCDWmLIkQFtUm1FjTmjTbJjHLyS
6VOLwI2eSPfGGj0GLS0oWTKDVwPv17+RtKQZcvYIYYCp1BS/ODxcRHuVzy1YMISb
yRSH8rQ8K3q+A6WNZPr+nzHw5/ciCXIdP8xRj3MlnizpqHqFlOmZ2EQA7zDF0iOp
sQdC/4ZzmeTrWUgU6D3joXI2hLJqTSzlSQlE5inlxlt1kVkYZhvb6+SMPKr1tJaQ
WuiHoT/sjDiXm5r2RwVA4RFQ/XVnESKfiYNy7fppcgf5m9nbgn6XsHhkGBRg8gJq
miJ5fljgaZQYVsM5MwmeCjnEODeuPsPbgopTwCq5uoMtsGeOaeO+3nSLPpX5cUu7
cIXHOGGmM7se+JPBj9XJPZX8X68UXmyNlNN2ee60zb/X+SQPsh9W+BIigG1a2TsL
aGMRz/KagjGhZO92OY7kRAMnTHMEbz6z00LEvi3RQhZznlQJ0+igdowOR/6k2L3U
YNFX0/F6HoY3Yt2VrjTeVINblp+MZfvquoyJGc4cO8mRJNfCRyqlmfKP5meew95H
yzrRC5/KUKQzFyNXpPKS+9Yv9l/qbyWVY2jjT9Q2cYvF4kMV6vg=
=6t8m
-----END PGP SIGNATURE-----

--f7vjq3nokro5p52v--

