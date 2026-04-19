Return-Path: <linux-man+bounces-5345-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id pE6dK/Ew5WnNfAEAu9opvQ
	(envelope-from <linux-man+bounces-5345-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 21:45:53 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0011842556D
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 21:45:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF3373014664
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 19:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24EE023E35F;
	Sun, 19 Apr 2026 19:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7iM2Js0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91601F5EA;
	Sun, 19 Apr 2026 19:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776627946; cv=none; b=X7a8Yn/W8a+QA1/T9qOjslFEqATxx55jcF37r5Z28Y1xkOJ5Lr4fsjWImCl2royqZFQeBftYzRsvGVgMXRCeUJyxc2Tvj1xOfCoEXhNbZv4ZJn3gMGUEqjdxh+i2YXYnaHD4sGcWJAQJVjGcZFTlW734VTe6fEHPi+utm3SJk2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776627946; c=relaxed/simple;
	bh=eh6Fc4SwBJIorUmaj01CPUL8y1WekoYNWTpVGvaqgKc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VZzbn2MPP1SzWfRTgOh2o2MMKbaPN0MJiB2fwuJmzw1Z6gtCjapUHQJK8d3JtecybGdWlIqJtGWbv7HyXeI5jdPMG7RySt5pu7SiFlZ9RCEeU7Vlse2jOwNxkWTbEaL4IrFotFo5OPXUXzKigrt3ZFyW+IrpUlbWGQhlV81pfks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7iM2Js0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96D00C2BCAF;
	Sun, 19 Apr 2026 19:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776627946;
	bh=eh6Fc4SwBJIorUmaj01CPUL8y1WekoYNWTpVGvaqgKc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u7iM2Js0Ov8gnbeeTtMCDiY/ruLAFKKoMpfALH0DRczXkoVk6LFJS7u8PyAHtS6as
	 BEWEUMD/RLyEOtMFRatMf2hLrLKmt2/t6T2id27vsqx1SyOcyrdo8kJ2aSsAOWrBir
	 Xvggm14Kw3aKDcCpA4xkhzPNqJXsGwtKRZoZNIB45ViPFEW2iKXfG5zHO29b3gvTN5
	 Gjgf4pYoroRSSt4PqJ0NBQVZBdzsJYSCG3JNaijkuI+h+xuu6ldWyvXoF5P6b5PyIm
	 qw2ZS4jF6dUOHUj4d2CihSIHm+loyo0i5JtHprzYicwlbkorvAqYwUKwD6WUv6mYdS
	 eLbbv586rLPlg==
Date: Sun, 19 Apr 2026 21:45:43 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Cc: linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] Document TCP_DEFER_ACCEPT rounding
Message-ID: <aeUw0dQOB-KRjCXn@devuan>
References: <ad50CQgF_gNtB1Kr@localhost>
 <aeAAXdBe1f2THR2N@devuan>
 <43b64cba-a7c5-41ed-8e45-c0508f482687@app.fastmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hyohipfgfmycmb47"
Content-Disposition: inline
In-Reply-To: <43b64cba-a7c5-41ed-8e45-c0508f482687@app.fastmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5345-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 0011842556D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--hyohipfgfmycmb47
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Cc: linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] Document TCP_DEFER_ACCEPT rounding
Message-ID: <aeUw0dQOB-KRjCXn@devuan>
References: <ad50CQgF_gNtB1Kr@localhost>
 <aeAAXdBe1f2THR2N@devuan>
 <43b64cba-a7c5-41ed-8e45-c0508f482687@app.fastmail.com>
MIME-Version: 1.0
In-Reply-To: <43b64cba-a7c5-41ed-8e45-c0508f482687@app.fastmail.com>

Hi Josh,

On 2026-04-16T14:57:19-0700, Josh Triplett wrote:
> Patch attached.

Thanks!  I've applied the patch.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--hyohipfgfmycmb47
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnlMOYACgkQ64mZXMKQ
wqnNBxAArtyyFcCCy413EVUAZeORdG56N6HesRuhXFkTe6k7rrJXymcVpeBTc3TS
w2ZeJwEUfj40bWi6KNsn9cUNpbreEno13f45BQENSzHVhYOTB+kW9ZGisZUdZrDV
LQtUojPMA0PV6UgT8BVtAUk9umVKg8jT4Q9itbRG5tTMQpD0hfJWaxQ+aqNfq2Dh
pn0J4bm026rTCvLRSA9EH5ALZGL3Ia3g3IHK7BjE3jzLPePeFCYaA4408ht2XIfB
RcU4+P3T9NAa0FWvA3ZovJaCVska3aqNKbKZQR4bdEiCY8fnHc5DpNcbu9xFHrlG
qiHqOu2+2ifKxs5LAIrxieCFA/gXBBARHwuDkcIwP+hJYudREmUJnWdPOqhJRw83
PtIteT93eRjFr+JPXmTmteu4YGvGRQ3WX/d6dRI2GMfkdk6eSkvrdNfHUDzmM5wP
wX8a/QlmcwETRPlA5rXPNspzR9b4is9lcgZCqhahefNb7rldyc0Wd9ZTcHR/cQcc
1vk36kFTUDe0y+B1sV3LAsnUk254H5JklN3cwQql/HMtLquWiz17NH0HtMXyEX2U
BbsQ+IUl9QE/jGlzM7u0WPKjHICGF3X83hmk1+saCPqKHVYTcbTAftv7LFjNBR+t
BhG2Cr5N/sPbcKVPEQD2Lm6eCWkFdtajFqbD5l15K9P/iPkAHn0=
=B1ye
-----END PGP SIGNATURE-----

--hyohipfgfmycmb47--

