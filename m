Return-Path: <linux-man+bounces-4998-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMgHDnyHemkE7gEAu9opvQ
	(envelope-from <linux-man+bounces-4998-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 23:02:36 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 58943A9589
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 23:02:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E992F3004DAF
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 22:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E6FF33C19C;
	Wed, 28 Jan 2026 22:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="XYtzKBdv"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D10D341056
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 22:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769637751; cv=none; b=djDZTXgZp41AjuMFs2I9NmOd04KDT4mXDK2tIHeI7a0MMCz3OO7jAZVTMvYv/Nqsg3zl19mIvjCUZ1cpIhptLmJPp2XIr0+Ap2asMKsIWargOCTXLEGXD2ic5/52KKO5PwkzQuHR933nbnOLYGejYfxvUug5pd0jN2yveJmZeJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769637751; c=relaxed/simple;
	bh=JZ/0TDk54hxkxAB5Z9fXJY+Vzg/Ykv0PKbJqK7x18x0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pKXVUhIKffFu1+j3MMTDfH/ruhxZxwwnyUp37sI1XjLxqoaHlLA9VZZ40iGAvvfFgZ4y55Mj5+J3tM3jij11JOwBnACSiT8p8IzP55jVbYXargEfnjEvyLx75h6d3LwShyicnTMj1MvrEZHCIDUyBL/GmPZwnZFkWO4JKK+cdVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=XYtzKBdv; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1769637744;
	bh=JZ/0TDk54hxkxAB5Z9fXJY+Vzg/Ykv0PKbJqK7x18x0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XYtzKBdvpKQ/GRd+Lp9vyPsSAV9jJQ78+J+jFbtd3WaKPcWsFlLcQGjj2/6/tZLqp
	 U1W26OLq6/xr20+oQXGIBC7UKhPr1rRRk1abfRVgMtGwjF1PB9K211rito++KU7k3n
	 6Or4vwWgnjOudnSqkeolodul1kTyRpYYqRGixi9kJsOTDGpxXUbbxJiQs/kAUFZjtN
	 zSEjcRn/NWGehnc5P10Sl8HUWWK266/qLWrKLcGyuxu8AVvRXGETQjGYlorW3jl8a/
	 MHfigNFVo9OOKDpBss5MIza8i6HU9RjY+iiORMwkzGXiBTpq6NtAgHrcY4MGXBnKhk
	 6n3DNsk+N4G+w==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BE5FBE26;
	Wed, 28 Jan 2026 23:02:24 +0100 (CET)
Date: Wed, 28 Jan 2026 23:02:24 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, Alejandro Colomar <alx@kernel.org>, 
	linux-man@vger.kernel.org
Subject: Re: [RFC PATCH v1 1/2] src/bin/sman: Add script
Message-ID: <tl5pjzy56c5f4ce5smzbvjlbiblld6vjhrcg3u5ahmcvphgnur@tarta.nabijaczleweli.xyz>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <d093a884e5fbe60d62c35189ac38de5a6b0005e1.1769497513.git.sethmcmail@pm.me>
 <xclnrhc3q3kub6gqhd64difkyls74zcqmhnpwov2dwzrsghjg3@tarta.nabijaczleweli.xyz>
 <20260128190730.aylqwn55b6bo63xi@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i7habri6klpgwt6a"
Content-Disposition: inline
In-Reply-To: <20260128190730.aylqwn55b6bo63xi@illithid>
User-Agent: NeoMutt/20231221-2-4202cf-dirty
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabijaczleweli.xyz,none];
	R_DKIM_ALLOW(-0.20)[nabijaczleweli.xyz:s=202505];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-4998-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nabijaczleweli@nabijaczleweli.xyz,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[nabijaczleweli.xyz:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,tarta.nabijaczleweli.xyz:mid]
X-Rspamd-Queue-Id: 58943A9589
X-Rspamd-Action: no action


--i7habri6klpgwt6a
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 28, 2026 at 01:07:30PM -0600, G. Branden Robinson wrote:
> At 2026-01-28T17:52:15+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > You wrote it confusingly (if I wrote it like that it'd be on purpose;
> > I doubt that was your intent but that's how it reads), so I
> > isomorphised your program into third normal form:
> A) I believe the "correct" locution would be "isomorphed", by analogy
>    with "the party magic-user polymorphed the gate guard into a toad".

I got there from "applied isomorphisms" so I analysed it as "isomorphism-is=
ed";
if you morph stuff unchangingly instead, "iso-morphed" makes more sense.

(Isomorphed also reads preferentially reflexive to me,
 but I see both in literature with a preference for isomorphed,
 both used reflexively and not.)

> B) (While the foregoing discusses GNU Bash specifically, I have
>    read--but not seen a proof, and can't promise that I'd understand a
>    proof if I saw one--that POSIX shell is undecidable as well, the
>    "alias" feature being a sufficient condition to produce thus.)

If, AIUI, "undecidable" in this case means "the parser depends on the
execution of the program being parsed", then alias is sufficient
do ensure this property, but I think it's the only feature that
lets you inject macros into the parser,
or otherwise interact with it directly like this.

Best,

--i7habri6klpgwt6a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAml6h2sACgkQvP0LAY0m
WPH1Tw/+MKndbHZ88rLOsqVzNSxQm1YJH74IiEsp5TVIOb+5OcEu/0fG6lw5qBvt
xsjXpUF8R3bZ3BrzC+ciy79PvW5087Ec8PIUtZJbuznj4D19btDf2mkKpgqJOKiN
0B+LTI4nltnX8dwQtyjiVu8XfzCAIaNWlSJXZfggLsf4DGV7zPyU6cgBGxxoy4Ef
2xTeLLJG0ZOFleyL09/uy1LpUQueUhEWX00Km9j0WMxEvxn2xFl4ibTOJZZEqdBE
voY/XIFN1qY79ScY8ZVLOPxG61JjtrVr6t82U2bc/25fIsY82GrbxAseXcTAL7Zl
NN56PfDyO+1U+8qrCrlyAZDdKjSHF9avOCT5pRFCu1tV0yqeyeghixvXveNdaKht
nDxcCD1kiHAidG1YGP51VsTaSyjIPRzFasHNip/wdnyMuV7gwsCuR5ni3Y/GctZi
yodhdDNg6PHh1bpIuCK18RKrX7X71M/RD/woOFThssDQ2pL+n5sbM3G5DhcStyWL
kqmH974PwFBULtqI1CvVReMOlNP+wVT2um3lKYwDZkdBKaiHLddBQ7cgfHfaaoV5
6VgcUUhCVefjVD2AgShDTsKgYyjbrMAkNKdodoWsxNy/kzEi6ix8ueyVMETTQp+r
OAte+eLNw9nMZ+Jdoj0brneQ7PR4Ebkg5UFxDnze6b09KYuHDIA=
=X3pU
-----END PGP SIGNATURE-----

--i7habri6klpgwt6a--

