Return-Path: <linux-man+bounces-5001-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHj1KT1Ee2l+DAIAu9opvQ
	(envelope-from <linux-man+bounces-5001-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 12:27:57 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A600AF9AB
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 12:27:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B87F7301050F
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 11:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F9EE37C0F7;
	Thu, 29 Jan 2026 11:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbd8iSYW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030C93396E8
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 11:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769686075; cv=none; b=dvNTWaInUgO8GYOEVPcH42fppEjvLzaZ8w2rKEIhj1DYvfOPn2LCelAhQ/2zpzvUqM5ximnompCCTvZGDuwkODrHrKcnrVMfBuICZae64qif5iMNNn2qRILrS9gnTn24M7cz7iZdRv64P0qFz0JnMTVWfP3EDog13qCFrYwFoJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769686075; c=relaxed/simple;
	bh=EyCLGGSB2hDxIqkxCGReMT9Max9LTsJld0/aFPdKjzY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lp/YvXeKoXaywMQFvdro6e3AMCFO2Lb9c0xmw3i9nL3e/zyYNJPmHoci8FYYO4bNY8fUZsH7J1CpA2La3dCIQsmzo99/m6TLG/sR1ryhO3/0xEFBsFX7hSjAbnyTOxjTu18mh/+Hgb2FIisLRX6WaRnOH97gxcyJw5n05iSDjdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbd8iSYW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66FD0C4CEF7;
	Thu, 29 Jan 2026 11:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769686074;
	bh=EyCLGGSB2hDxIqkxCGReMT9Max9LTsJld0/aFPdKjzY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pbd8iSYW9JBmHnsSokC31BYz16HHHhvDYL+hUpLwfqIRJbMh30e41J23K8oEy8+El
	 1fKVvs7QKJng8Bn+JadjTFVMMNIWpuIAiQLe/H8JoyqAOC7hlgz5lLUurOk0YfrEXH
	 LkqzyMocERNNAWxPGIf/rs20hmvOMOsbgJo0GTY7WgZJyAMyn1eN3qF3kM3M1SplB3
	 GxmS0bj/fNMAydDq4KAGxeHQ+Rr/69huG+vHv63+fKcww29EjY0girg2g5ugI4kAmk
	 tHIfekgGCDhuv/TGQ4zTLBy8VHcFB/2W6ZHTwy6kdkvS7pC8uNNNw9YpQkjpcHjkfs
	 8MVpcZ3isIvcg==
Date: Thu, 29 Jan 2026 12:27:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, "G. Branden Robinson" <branden@debian.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH v2] src/bin/mansectf, man/man1/mansectf.1: Add program
 and manual page
Message-ID: <aXtB34FpfoybBAkN@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <c5da437ce6c8a41c4e5c26ee969170254b49dcab.1769626502.git.alx@kernel.org>
 <aXr1G4Y2VZZO0t3N@McDaDebianPC>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xdezjj6lpu2crlij"
Content-Disposition: inline
In-Reply-To: <aXr1G4Y2VZZO0t3N@McDaDebianPC>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5001-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0A600AF9AB
X-Rspamd-Action: no action


--xdezjj6lpu2crlij
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, "G. Branden Robinson" <branden@debian.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH v2] src/bin/mansectf, man/man1/mansectf.1: Add program
 and manual page
Message-ID: <aXtB34FpfoybBAkN@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <c5da437ce6c8a41c4e5c26ee969170254b49dcab.1769626502.git.alx@kernel.org>
 <aXr1G4Y2VZZO0t3N@McDaDebianPC>
MIME-Version: 1.0
In-Reply-To: <aXr1G4Y2VZZO0t3N@McDaDebianPC>

Hi Seth,

On 2026-01-29T05:50:26+0000, Seth McDonald wrote:
> Hi Alex,
>=20
> On Wed, 28 Jan 2026 at 19:55:43 +0100, Alejandro Colomar wrote:
> [...]
> > +.SH PARAMETERS
> > +See
> > +.BR mansect (1).
>=20
> (If this isn't a problem then feel free to skip this)
>=20
> AFAICT, 'PARAMETERS' isn't a heading used anywhere else.  Running
>=20
> 	~/Code/Linux/man-pages$ grep -Fnr 'PARAMETERS' man/
>=20
> comes up empty for me (besides mansectf(1) of course).  Perhaps instead
> the DESCRIPTION can explicitly state this.  Something akin to "This
> command uses the same interface as mansect(1)."
>=20
> [...]
> > +#!/bin/bash
> > +#
> > +# Copyright, the authors of the Linux man-pages project
> > +# SPDX-License-Identifier: GPL-3.0-or-later
> > +
> > +set -Eefuo pipefail;
> > +
> > +mansect "$@" \
> > +| man /dev/stdin;
>=20
> Thinking about it, one thing I did like from v1 that would be nice to
> keep is the specified sections being case-insensitive.  Since the
> section headers should always be in uppercase,

This is not necessarily true, and in fact I plan to change that
eventually.

The reason I haven't done that yet is that I'm wondering what would be
the best way to refer to sections in running text.  Currently, we refer
to them by name, and the fact that the name is upper-case makes it
obvious.

Still, if you want case insensitivity, since the section is a PCRE2
pattern, you could use '(?i)' (see pcre2pattern(3)):

	$ man -w snprintf | MANWIDTH=3D64 xargs mansectf '(?i)name' | cat
	snprintf(3)         Library Functions Manual        snprintf(3)

	NAME
	     snprintf, vsnprintf - string print formatted

	Linux man=E2=80=90pages 6.16=E2=80=9043... 2025=E2=80=9012=E2=80=9007     =
          snprintf(3)


Have a lovely day!
Alex

> specifying them in
> lowercase when invoking mansectf(1) shouldn't introduce any ambiguity
> (i.e. "Does the user want the 'NAME' or 'Name' section?").
>=20
> --=20
> Take care,
> 	Seth McDonald.
>=20
> On-list:  2336 E8D2 FEB1 5300 692C  62A9 5839 6AD8 9243 D369
> Off-list: 82B9 620E 53D0 A1AE 2D69  6111 C267 B002 0A90 0289



--=20
<https://www.alejandro-colomar.es>

--xdezjj6lpu2crlij
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml7RDAACgkQ64mZXMKQ
wql6ThAAgWCPbqPFVmuctSZPHX2TyD4wtyt90waxrH/rQEYGgXwQeNBtXKLYhEau
y6r4UvIBqo/f4RjDk3CTH0CrYWfBWm8GUCgnCASCYKcuqZNIA/71Obm6h5tNXsVF
eutiXxV2dp7+B4PUus00Lmr8JzM6q8X23wna36VP6rhHZoN9zY3lJFIKUclSqHNX
5owo+76GeGFQNccmEHdfksRZhvvxa79nTxNc8t8v3WDAb1xLs85+d4IifHuy/KlE
LgzA8zwXpf/7R/fI+q6zCTdhzesWXntT+lqO8g/HlxzKmwtjZQ10iXNgZEOhPpTH
zn16p+cmw6z/jvOvqhKY1ETXlrZXrMKZx+GYTkD2rUG8kza1jtEq7pnrfTNRXyLq
9A+nPznQmv4toPlvYQTfQ2GwO9vsibnm6WeNEGm0tfGcJ9Kmsbe2KIDsc0NXrfVz
bOTpeIip11wyX39P4If+iL4B6wNdRULR3/mfFbBAjS95c4Tqcup0oU36zsalLSFU
9hKFWzOgwDlYsQk8DKE0GxfLZXzJ5d+8QLV8c7tAV7ZXV0lim4ntlHoNAh6rUd4R
gVavuDuM2q8pFQt5CjIq6IR1Bgv0m2Qc1C+njov9lRZ6bzCSx0V8ndnltlLauNBI
Q5nmPC0ArHb4e3EmPAG0jrZRPBtgTn1Vbl61YB/LJmMEzJx8h+g=
=/pV/
-----END PGP SIGNATURE-----

--xdezjj6lpu2crlij--

