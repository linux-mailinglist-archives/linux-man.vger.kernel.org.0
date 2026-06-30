Return-Path: <linux-man+bounces-5679-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SoceF640RGogqgoAu9opvQ
	(envelope-from <linux-man+bounces-5679-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 23:27:10 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9676E823D
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 23:27:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Qh9g09Xl;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5679-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5679-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 15BF331ABF71
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 21:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD9953290AD;
	Tue, 30 Jun 2026 21:19:19 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853E631E107
	for <linux-man@vger.kernel.org>; Tue, 30 Jun 2026 21:19:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782854359; cv=none; b=BOaMSlwqcaab73/PO3SWOxCy9/65kJeMEgetFtjMcU+gWi0VhWn0AQcJBONHjDhNeF0xkYkJ4KqqFbjoGdBrVV9WIp6sMBU38Alzt4AqxlgRm0qW9uZUfb0VOWnDRnqie91BQMikLBONVrxUYz4eeqdHc4tgsurOAuw12yzmlww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782854359; c=relaxed/simple;
	bh=KG2zBNdfDtDtioO9gfq75zZttt6qhIX53wEaMd+WBbs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i5rGztj6aWqcBZFU6BnlWyB92jc2aSd3sQnGvNpv0VqLwvn+Nh83ROELrb9R4EEZg3v9N1SNquptNhXyjXAbcKCQNlCU7wS5fSLUoXxybKCeYnDcF8plG4toJDZ5YstmInyfQkh660IRYYiLj+7TL6pBw4Dh0V8eTnSfYDPNeZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qh9g09Xl; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C0CC1F00ACF;
	Tue, 30 Jun 2026 21:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782854358;
	bh=PunDWMFSvmFL0nw5aJJrdYEO67TbQKC2arC4cf1mV4A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Qh9g09XlD8RayJ5JkjgsvOSo4jx5oHFg9z778j/FN3WuNX3vUTsZC1Nx+KUK3rMPW
	 51THhHLSMM12giKolvAhbGrYbwuckNYJxUmVTIcQmqLPbba8GxZ7CmU/ldcIoDcYQj
	 bOSRnMjxBRmL/Uf+aA43VnjmwdWw/VNYFDwAqcwpb8grbpY2yF0rLp5agmlrCmXIZg
	 /W1ngy4N7VQXlimc5drKj6gUS9hQPqUQotVdlNrzcHaZBsO2A48ZLqVTSqgQnQ9mxR
	 LPi7OxwnsSHW1r+dmXCyrKFmeBJRmmN5tmntoeXuQq0BUTxbjMLW4yP0PlezlTht/9
	 G/4FDcT2/TG/Q==
Date: Tue, 30 Jun 2026 23:19:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/4] man/man3*: document the glibc 2.42+ baud_t
 termios interface
Message-ID: <akQydQ9Qa2TOvW2p@devuan>
References: <20260629135910.143781-1-hpa@zytor.com>
 <20260629135910.143781-2-hpa@zytor.com>
 <akOL9gQovBTRQ3VW@devuan>
 <edef56f0-90d6-47a6-8a4d-314825f3167b@zytor.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6653mfqvafyz5qgg"
Content-Disposition: inline
In-Reply-To: <edef56f0-90d6-47a6-8a4d-314825f3167b@zytor.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5679-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hpa@zytor.com,m:linux-man@vger.kernel.org,m:libc-alpha@sourceware.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,devuan:mid,alejandro-colomar.es:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB9676E823D


--6653mfqvafyz5qgg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/4] man/man3*: document the glibc 2.42+ baud_t
 termios interface
Message-ID: <akQydQ9Qa2TOvW2p@devuan>
References: <20260629135910.143781-1-hpa@zytor.com>
 <20260629135910.143781-2-hpa@zytor.com>
 <akOL9gQovBTRQ3VW@devuan>
 <edef56f0-90d6-47a6-8a4d-314825f3167b@zytor.com>
MIME-Version: 1.0
In-Reply-To: <edef56f0-90d6-47a6-8a4d-314825f3167b@zytor.com>

Hi,

On 2026-06-30T13:41:16-0700, H. Peter Anvin wrote:
> On 2026-06-30 03:39, Alejandro Colomar wrote:
> >=20
> > Hmmm, even with --diff-algorithm=3Dpatience it shows the diff too badly.
> > I've been trying, and --diff-algorithm=3Dhistogram shows a much nicer
> > diff.  I have the following in my gitconfig:
> >=20
> > 	[diff]
> > 		algorithm =3D histogram
> >=20
> > I suggest adding that to your gitconfig file.  It is implicitly also
> > used when you generate patches.  The histogram algorithm works quite
> > nicely (I've been using for a few years already).
> >=20
> OK, I'll try that. I haven't played with the diff algorithms, perhaps bec=
ause
> I na=C3=AFvely assumed that the default would be the "currently best" alg=
orithm and

The default is the fastest (I believe), but it's actually bad.  While
there are a few weird cases where the histogram algorithm fails badly,
it regularly results in better diffs.  :)

> ending up using a stale algorithm choice when a new one is introduced is
> unfortunate.

TBH, I don't know why they didn't change the default.


Cheers,
Alex

>=20
> 	-hpa
>=20

--=20
<https://www.alejandro-colomar.es>

--6653mfqvafyz5qgg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpEMtIACgkQ64mZXMKQ
wqnS3Q/+NluXePDFxejUTpaExs/D9XATq+KMCz9u4zzDEUWvsO567A2jnri7ra62
R50jOpQlHNPxBhMH8YpcAkjRtwYgfEFKuEDxomUJjFzOHha5XIfDDsOvItVXWqtR
FOaFSaW5HTLVLYdF3zVSWZSWmf0dBte/wZNRe1MWTJtaJt34d4pm0MuVEbagkNlI
7yeJV7MZGEaJ+ZY6kqZhck4MSNOGb2aXZ4eAqgDJHmhq94r8lGs0rDtvzPfxPXNu
C0kMUoW96sKZKfogUe2WdZcMgFoC7aTnXvWLCqG2QPWlBtJZB3Bgyl830wIQytvE
ojsjX8Ikn6qQVCXQYchAYEQjU69t0cWAtFyG5xrDRH0BVLif6BenP0gnZ1uimPLd
LFN4r0HqEn5/nAD4muQ1gOnNmpQpX5NPkxY6Ed65d49fvhmZuX2B9jWc0gHoJvt6
NdncbPWpFFMXJwWLh85A8vZj3qHWeE8tMVz41Tn6arwzgUHld/kmPKrfLH/SCqV/
qRm9+rJVIPyL5SfRyV5jC70HKl7D/q8Q1jneimYhEOlzH+XDZt8L57eO6A0joGaP
RfXP41PUvE2Dvyw9Yy1zAYO7cRkiScIhzIZkSBNZ/SW3Pz0Kkp3TvgPZTUcA4JBb
WVJkKuINzQrGXftCBbhobHGYwXf2qXZ+5AkWa1P0ife+ESNWevw=
=Ankf
-----END PGP SIGNATURE-----

--6653mfqvafyz5qgg--

