Return-Path: <linux-man+bounces-5537-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJ3JM9XJCWropQQAu9opvQ
	(envelope-from <linux-man+bounces-5537-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 17 May 2026 15:59:49 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 357B25616F5
	for <lists+linux-man@lfdr.de>; Sun, 17 May 2026 15:59:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FD57300A634
	for <lists+linux-man@lfdr.de>; Sun, 17 May 2026 13:59:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 681CD277C9D;
	Sun, 17 May 2026 13:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FS4u1dgY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3D525782A
	for <linux-man@vger.kernel.org>; Sun, 17 May 2026 13:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779026386; cv=none; b=m4LsOw98nCLR2lHewrN5BmNcmqr65VBM6/17veJUCMOI1jTtQ8GMe7pBOnWzenB1d4T8eDFI7Jqf9s1xb0+m8IVIMpuAcjQewfdMydnSsNqHhjh7q4sEvjSRAkosZrFMN2jUQrLzUEx2sTsO3i8298e5kubUAdajK2+zOv280UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779026386; c=relaxed/simple;
	bh=a+4/lKcWPgH0KXFxqBDJk+LyVpy1+3NjBYslwuh6XXk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fj4q5SKUpBdv322KxmJcFS3ppmvH7QI4+KknjnMZVXBPoQPo7V6zFbn1GI5cOV2p2YTqyh14gg+04RwG2twT1FGlfpii57UIQq3jL1X5RMP9npgOpTD1+in/1NR2fAaEUHZcELeTE+w8E/9UeGLh+wupndZ4lT93I+6iIvA6LhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FS4u1dgY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBABEC2BCF5;
	Sun, 17 May 2026 13:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779026385;
	bh=a+4/lKcWPgH0KXFxqBDJk+LyVpy1+3NjBYslwuh6XXk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FS4u1dgYelw+Coajq2MKSPuRarfC/9JJo5paH6ZmmFi1GWtBHj+CrKpGSJ/XjkNbx
	 F80gM6a4w1iP9OjM7VJuag0YYqD/uKSGNLkkqsmLiTTNd29FOyVYcQTynyQtYQw+sV
	 ba1s5bXOmrC6X5ycSmYV0+lPjnT31vUTwHWO11BFMWBwJ8kD2n4w8wsU0xW/9ekagy
	 7YG/5spcAKWK2v/uWwFK0m5uvbpkZvHQoev26hsL+B9I7qStb0R9VUg3flQmbRUSzi
	 voSSLSjXqiDD8oMtW8boU3gAbA2gE+syVGQ7nFfTUHnHWYe76f0JLc+sr5pQr1OixX
	 Ky9I3nKQ8gkNw==
Date: Sun, 17 May 2026 15:59:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: non-standard const-preserving string APIs
Message-ID: <agnIOfwI5KKGwS_I@devuan>
References: <agizh06CdDnhDvAB@devuan>
 <c57574d1-9031-4ae6-8cd1-0e74931b9af6@linaro.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t62r5oul5n7eqwzp"
Content-Disposition: inline
In-Reply-To: <c57574d1-9031-4ae6-8cd1-0e74931b9af6@linaro.org>
X-Rspamd-Queue-Id: 357B25616F5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5537-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--t62r5oul5n7eqwzp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: non-standard const-preserving string APIs
Message-ID: <agnIOfwI5KKGwS_I@devuan>
References: <agizh06CdDnhDvAB@devuan>
 <c57574d1-9031-4ae6-8cd1-0e74931b9af6@linaro.org>
MIME-Version: 1.0
In-Reply-To: <c57574d1-9031-4ae6-8cd1-0e74931b9af6@linaro.org>

Hi Adhemerval,

On 2026-05-17T09:22:41-0300, Adhemerval Zanella Netto wrote:
>=20
>=20
> On 16/05/26 15:15, Alejandro Colomar wrote:
> > Hi!
> >=20
> > I'm working on documenting the recent API change of strchr(3) et al.
> > to adapt to C23.  While doing that, I've realized that the related APIs
> > that are not standardized by ISO C, such as memrchr(3), have not been
> > changed consistently with their relatives.  Has this been discussed?
> >=20
> > I think the inconsistency might be dangerous.  Should we change the
> > other string functions accordingly?
> I think it is reasonable to support const-preserving to the GNU interface=
s as
> well. Are you preparing a patch?

Yup, I will.  Thanks!


Have a lovely day!
Alex

P.S.:  Adhemerval, would you mind having a look at my other recent patch
set?  It was 'Add [v]aprintf(3)'.  The message-ID was:

	Message-ID: <cover.1776882798.git.alx@kernel.org>

--=20
<https://www.alejandro-colomar.es>

--t62r5oul5n7eqwzp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoJyc4ACgkQ64mZXMKQ
wqm3cg//Z7hmDDTnEFvhjOp7L7cwEbMvCtRwoo9PQvSZnf/ea91dPVgDhgL8ppaG
AV5DTvUihstzbGcRrHpAYPg3o0fR2NPpK3qHlZeeEchfAzpEhXc+gQmcGcDvwuQi
bEclo5xTrav5EIHKmciXWoTdSJQJZdWxVZn0rXdbFgy8CFu7ZMPElRnRXiLslhrr
K5yKCThR0FIJPQF/SF6HkUMFAx4IvNtr8Sza4rtSe0eV7K1OAcPjuKlylmhf2t+X
BsLji0X2pgCdnAERc8eF4mcKlGl2FDLKfVlpIN1dMeDA3L4GWv0svrnrXOZvuKlL
e9D4GuI4Gk9ciJg7NmbZ+Vj9raCa5lTq/3IUtaVVlSjxZ3qi8d7kEpHmu4b3zWJP
mPzoSvtTB0jSwpkZAk9PyF3/VVELbp8ydkW8OZI3YZPr+1Te/0Dz2u+UtSrHojq9
07SkgHH1Wo+0MVjiidTC9r79lPAfVcHedDi3HOhxz39g27VJKoxg+AMc/fIoqhxv
PPMoJx8+rJMKatFRzBOYJgiGnrgnJdjjQcYZYiVIJyjNwnuTCJCeMYIZm0Z87WG8
tv9pT5MySqzyqcYQHSkh4YWswhH7k+bHR2Y18/zvCIObfz0bHVRZjR/q/o/y77Rz
gc1veGLHqWh6Od/kqPCgetRBZebgijUHeK/RzR+swpzOEaGIAl4=
=8E24
-----END PGP SIGNATURE-----

--t62r5oul5n7eqwzp--

