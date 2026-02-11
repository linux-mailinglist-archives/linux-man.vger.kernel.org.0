Return-Path: <linux-man+bounces-5124-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJsAHXOdjGmPrgAAu9opvQ
	(envelope-from <linux-man+bounces-5124-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 16:17:07 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDED51258A1
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 16:17:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4693D303A264
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 15:13:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7DFD2C029C;
	Wed, 11 Feb 2026 15:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxJyRaSL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE942857FC
	for <linux-man@vger.kernel.org>; Wed, 11 Feb 2026 15:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770822817; cv=none; b=oHQeStKlMYstAphBRRiCp0tryegiktpORnizGFayfGWldelWEOd5ebhmyH2n/F8P8qGOODoGkqnFDnF4JPh/leSuq7UAzdZX0CobSgqQJUk6x079TYquL4MuyxfFN9aPjy8vRRiihcS1rhQUStRvZrL7nAwWGAfL+FZdxpSbB0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770822817; c=relaxed/simple;
	bh=08kty1dsjguXnnuuBEGhLuMU9+SYqNoia9CrmgK6PCQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CEyx6MDdk/tWXeg0tLiSDsFxY66iVIKKbnL7Fk0Mb+0s3p1cSVXhdpYEaHV8q63oacXECiInWvxfUiCJm5VMFDDquwcDyrVmR5a/ibXLuxl1Y1I8DLytrpU8l5Eb4spBGDzX9JIZo+lwmXJp+lkWRdo6NzwzmaomaswaRtQ7u5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxJyRaSL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 609BBC4CEF7;
	Wed, 11 Feb 2026 15:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770822817;
	bh=08kty1dsjguXnnuuBEGhLuMU9+SYqNoia9CrmgK6PCQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XxJyRaSLY/5nMpXlxlmy6STB2zMQgqISCaERPWTVUTYSx673PnQZSP6Sdlld/ivh+
	 5S/w8m0IzQJ2S4/xVyZtL6vMBf6OarH6tAV4PBpnsHX5qEVadjk0AdZOOqN8G1Ab4k
	 yWKbk5QIIFriotGsNN8UbMJK9pImsk+cdKaqRNMe6UM4mdFlK01CVuci/HuEXpb9LY
	 mP8Aadir23Bion34H3RxBnbDPH0TbwgPgr27/xic+w0IgIQPnsVRYo6+AXOAE6R+Wj
	 KgrZtIqORBjnEepr1gOiE1ujYNiQsdzN8UXXEaKP7q9onDNI9J+zfAMq4hZ62qp/wC
	 Mkab2C8o4Cy1w==
Date: Wed, 11 Feb 2026 16:13:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v7] futex_waitv.2: new page
Message-ID: <aYycRq-sA6QVt-xk@devuan>
References: <aYySf9HuORRCchje@devuan>
 <3e2gme6737jjnklm37pmgdlhl3zfxbdtvi5po254czvwuvn3cj@tarta.nabijaczleweli.xyz>
 <aYyYAqzaRovxMMEB@devuan>
 <ok7zluffntc26pdbaz6smbpm3rl2o5gj62o7pd5atznzzxhsj2@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lrqxuzmsnlyiz55n"
Content-Disposition: inline
In-Reply-To: <ok7zluffntc26pdbaz6smbpm3rl2o5gj62o7pd5atznzzxhsj2@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5124-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: CDED51258A1
X-Rspamd-Action: no action


--lrqxuzmsnlyiz55n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v7] futex_waitv.2: new page
Message-ID: <aYycRq-sA6QVt-xk@devuan>
References: <aYySf9HuORRCchje@devuan>
 <3e2gme6737jjnklm37pmgdlhl3zfxbdtvi5po254czvwuvn3cj@tarta.nabijaczleweli.xyz>
 <aYyYAqzaRovxMMEB@devuan>
 <ok7zluffntc26pdbaz6smbpm3rl2o5gj62o7pd5atznzzxhsj2@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <ok7zluffntc26pdbaz6smbpm3rl2o5gj62o7pd5atznzzxhsj2@tarta.nabijaczleweli.xyz>

On 2026-02-11T15:59:41+0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Wed, Feb 11, 2026 at 03:55:54PM +0100, Alejandro Colomar wrote:
> > On 2026-02-11T15:44:20+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > >     -+	return syscall(SYS_futex, uaddr, FUTEX_WAKE_PRIVATE, val, time=
out);
> > >     ++	return syscall(SYS_futex, uaddr, FUTEX_WAKE_PRIVATE, val);
> > I don't think it's valid to call futex(2) with FUTEX_WAIT without
> > a timeout.  Is it?
> Correct, it is not. However,
>=20
> > I think we need to pass NULL explicitly.
> if you pay particular attention to the second pair of letters in the
> futex operation, you will no doubt come to the conclusion that we don't.

Ohhh, I had the same problem when splitting the futex(2) page.
I confused those two rather often.  :D

Cheers,
Alex

>=20
> >_<



--=20
<https://www.alejandro-colomar.es>

--lrqxuzmsnlyiz55n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmMnJ0ACgkQ64mZXMKQ
wql7vQ//f7xruguW9y4E7jlAnnpDBbp5md6rOQgNGZzcMdMbi5sUBsMfexdg0j/6
cg+TzcAsW3XKiew6oNpsVSArdzS/7nLnYeK1/mFy0sz4wte/nQXf1kDUB118nV7G
iya9nGGVPWj9UW33/i5yrPR8gX2s6TC159xhs+V6h1U29M5/6FyruCgEi9V0JvM1
deFMtVX/iS+GIuDCtwp/+rqdwjtz/wW85pxmgItx7zSNewB38KZlAqbsH9nAVr8V
Zk2SflL/ZuaW5ARgGpnVFvatpwqyuQRMVzIYxdRMCqDc2aTi34hqtUH303XnoF17
lhHWompk9oQDshJhDnFdSVF0RtR3kBYgG+dh8NmTsZwWpaN2h/cRYdDoSbF5LCVr
dMDmm8TRqcWLQ121dMs1ym6UbhNNb9VVsjmEyoSXjoDcnu48pWouXTljivJqeR2k
4Q1EfLkEHusVs/8CjSqrDgkCkPuZIyBbMaBD4dDigt3iG4LjA81I9IY4mewpLKDb
oUmQvyMHSwxsUSMnUP2xbl9TI8BdS4x7wJBrAahFXPXq627JVD3YAmm+x7Zh3C5c
QRY11h40R31w0C7er2+Jy0KZzPxP+g5W/dtWQl2aoLQEWBafElC0jwxHdqB/Yi3g
giBGc3AKxVh3f5/gvTEQWngyJeLwfoMEFIJO/2sVDA1E5ILTCPA=
=ey/4
-----END PGP SIGNATURE-----

--lrqxuzmsnlyiz55n--

