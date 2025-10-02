Return-Path: <linux-man+bounces-4030-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 239F2BB4419
	for <lists+linux-man@lfdr.de>; Thu, 02 Oct 2025 17:02:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7BCA3826C6
	for <lists+linux-man@lfdr.de>; Thu,  2 Oct 2025 15:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AF7913A3ED;
	Thu,  2 Oct 2025 14:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnrGEyZc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4CF136672
	for <linux-man@vger.kernel.org>; Thu,  2 Oct 2025 14:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759417164; cv=none; b=pYahaA9YajOV5+c+7tGLahiqfowiTWyxBuiD7WH7HlgminBVohQWyhIHPv5xiY1Xv3pP+e78dpKXOP3x+LHN6V+IVzAGghU5V/1RSlvPlOYobczYEAcVJHXSH7qmo5DARKM9x5G109zpaDGtvsWVAU1ri4Ywpw1sX6+LoxO33J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759417164; c=relaxed/simple;
	bh=DTYJeRRuLDANpUbvVAHKcL35VnyXTh/RwU9kQkislaI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rwDgE7Na3zlROwWtKOtBXMrZzOTTY7QMtwgci8ePGm21biilS36zrMD5VFUG0FWhPlRolJduG2N2MI0SUAi3OX7mCVmpxX/2hhs+D98O76C0hmONOqqUKRAth6AmhjA2xpVzkkGvOsa/0RsplkL/VJOcFsFnqfaXGLR0jegN4Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnrGEyZc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3822C4CEF4;
	Thu,  2 Oct 2025 14:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759417164;
	bh=DTYJeRRuLDANpUbvVAHKcL35VnyXTh/RwU9kQkislaI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NnrGEyZcG88nbkdxvmVMPILoCktqTrh+isYSY1nO4hG6if202z2MSi1AKf5XYQHpp
	 bSkqjgaXs+idoLrhLYVx/HBhXcGjyeLysn2tNhOResmeC9sxZzIfm2dizOVxBYip/o
	 5yTU3pSaLU0tXwwbn6p2hqr/4jUyZfmnWUKBuG4pXBGr5wOShNlnmSDZNxFc78jOcw
	 BEeaHmbGdpT/1yLyQNWRvpIZd9kgBEiTimWT52fpmYva/cLT3gd7IG52mBLOj0Mw3x
	 fuL85QzeVJ2zplAACjWPYhaGNpxpOOdU2GXzO4C/EMNHCPcrMOCF1aiPGSem6QnvjU
	 iRE/4bWyzgPVw==
Date: Thu, 2 Oct 2025 16:59:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Guillaume Nault <gnault@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <k6gzpa3l7kux4j24jekirc2d2izvlizruk2iydst7w7hi542ev@qdvoql6ypykw>
References: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
 <aN6PoAPSQYuy-kJV@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a2z7xsmz42xfceo2"
Content-Disposition: inline
In-Reply-To: <aN6PoAPSQYuy-kJV@debian>


--a2z7xsmz42xfceo2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Guillaume Nault <gnault@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <k6gzpa3l7kux4j24jekirc2d2izvlizruk2iydst7w7hi542ev@qdvoql6ypykw>
References: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
 <aN6PoAPSQYuy-kJV@debian>
MIME-Version: 1.0
In-Reply-To: <aN6PoAPSQYuy-kJV@debian>

Hi Guillaume,

On Thu, Oct 02, 2025 at 04:43:44PM +0200, Guillaume Nault wrote:
> On Fri, Sep 19, 2025 at 12:54:01PM +0200, Guillaume Nault wrote:
> > Add a brief explanation of the RTAX attributes that can be used in
> > RTA_METRICS.
>=20
> Hi,
>=20
> I haven't got any feedback for this patch. Anything wrong with it?

Nope, I was attending a conference last week and didn't have time to
look at this patch.

I'll try to have a look later today.  Thanks for the ping!


Have a lovely day!
Alex

>=20
> > Signed-off-by: Guillaume Nault <gnault@redhat.com>
> > ---
> >  man/man7/rtnetlink.7 | 49 +++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 48 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> > index cb9f5155f..a04edce79 100644
> > --- a/man/man7/rtnetlink.7
> > +++ b/man/man7/rtnetlink.7
> > @@ -342,7 +342,11 @@ RTA_OIF:int:Output interface index
> >  RTA_GATEWAY:protocol address:The gateway of the route
> >  RTA_PRIORITY:int:Priority of route
> >  RTA_PREFSRC:protocol address:Preferred source address
> > -RTA_METRICS:int:Route metric
> > +RTA_METRICS::T{
> > +Route metrics
> > +.br
> > +(see below).
> > +T}
> >  RTA_MULTIPATH::T{
> >  Multipath nexthop data
> >  .br
> > @@ -384,6 +388,49 @@ routes (in seconds)
> >  T}
> >  .TE
> >  .IP
> > +.B RTA_METRICS
> > +contains an array of
> > +.I struct rtattr
> > +with their corresponding attributes:
> > +.IP
> > +.in +4n
> > +.TS
> > +tab(:);
> > +c s s
> > +lb l l.
> > +Attributes
> > +rta_type:Value type:Description
> > +_
> > +RTAX_UNSPEC:-:unspecified
> > +RTAX_LOCK:__u32:Bit field indicating which RTAX_* attributes are locked
> > +RTAX_MTU:__u32:Maximum Transmission Unit for this route
> > +RTAX_WINDOW:__u32:Maximum size of the receive window for this route
> > +RTAX_RTT:__u32:Estimated round-trip time for this route
> > +RTAX_RTTVAR:__u32:Estimated round-trip time variation for this route
> > +RTAX_SSTHRESH:__u32:Slow start threshold to use for this route
> > +RTAX_CWND:__u32:Maximum size of the congestion window for this route
> > +RTAX_ADVMSS:__u32:Maximum Segment Size to advertise for this route
> > +RTAX_REORDERING:__u32:Initial reordering level of packets for this rou=
te
> > +RTAX_HOPLIMIT:__u32:Hop limit (TTL) to use for this route
> > +RTAX_INITCWND:__u32:Initial congestion window to use for this route
> > +RTAX_FEATURES:__u32:Features to enable for this route specifically
> > +RTAX_RTO_MIN:__u32:Minimum Retransmission TimeOut to use for this route
> > +RTAX_INITRWND:__u32:Initial size of the receive window for this route
> > +RTAX_QUICKACK:__u32:Use quick ack for this route
> > +RTAX_CC_ALGO:asciiz string:Congestion Control algorithm to use for thi=
s route
> > +RTAX_FASTOPEN_NO_COOKIE:__u32:Allow TCP Fast Open without cookie
> > +.TE
> > +.IP
> > +Metrics that are locked with
> > +.B RTAX_LOCK
> > +take precedence over the values normally used by the kernel
> > +(computed or assigned by a sysctl or setsockopt(2)).
> > +Therefore, some metrics, like
> > +.BR RTAX_RTO_MIN ,
> > +have no effect unless their bit is set in
> > +.BR RTAX_LOCK .
> > +.in
> > +.IP
> >  .B RTA_MULTIPATH
> >  contains several packed instances of
> >  .I struct rtnexthop
> > --=20
> > 2.47.3
> >=20
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--a2z7xsmz42xfceo2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjek0MACgkQ64mZXMKQ
wqlZhRAAksenM4bBL7VtHn9jE2cpGksQdF6cSPClNnoKOpwp7saIBGTQ99AgT/PS
2rUQeAWxk+35yMl17UDdW5GuARbyb1CTcRn4yz0lxqBbPJOZPIT5acg+lU5T2drn
f4upiL1ptygIYxQBFAB/I/ZXiCKDGItFKbf1QnDYu9eZjFIC2oYSs85Xb9j+uXJ7
EUfJRe/YXqRYkAUQUEGPy0q4GdYn5zxIpsnOXANwhzfQb9zk19jKTUT0xlUWVUFe
uxVGrQtaluYluP7cMlX+8IW19MBeBokosDtSlKO4PdSZCNn1TQ6EQsHxU1ZxYNrC
mWnARGqpUNyLOKGQ685yNNc4pYyF6Yd7gB9mX101vwiAAno/Muy3UIeJey+2uubK
67r13Ci/qhqsRRDJPBTPtvGxXre1vDo8jMow3To7sgzfXd5qJZ5L4R/iOFAsN0Ul
P3YXB0mkvgHBZYOdXRwMvRF5AAwJhBiHqCnrHg+AXap9EvnRwYS/YU4dRJJtPh5n
dHq0f9m2Wad2Y4ygBgrQIh+93o6MzuUkRxEgXu4cdtqytCJQ2zcy/vhOM03F2AZD
JFZ4Q3ESXFY96gepyTQGlylV7noDmlLmYjZWvWvzttbGKSCE4d48xkTNP1NyUB8G
b8PR7vAGgTVCHK9iTgJ6tV18FWjThH+k/EQugLo29+J+PkFJ/W8=
=L1+g
-----END PGP SIGNATURE-----

--a2z7xsmz42xfceo2--

