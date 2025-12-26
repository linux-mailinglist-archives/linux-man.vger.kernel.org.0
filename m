Return-Path: <linux-man+bounces-4578-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46508CDEA2D
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 12:14:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3CB883004C89
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 11:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AA8731985B;
	Fri, 26 Dec 2025 11:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="GV3cTonP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC98731960C
	for <linux-man@vger.kernel.org>; Fri, 26 Dec 2025 11:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766747682; cv=none; b=MbHEOuXwQT2tQWIGIHYGrzA9C6pcCQC5RvOOq42kS/sZ5KuohxCvJu4I0lrszgaIbV5BaQLzX3tleBhIEcq4CoeEZrrATO9bs7VXByosy1rZ7CX0SgW/Vw2kg8jNa756ptNHCSCtjNABdMjHB6WlGhv/u9qp7rzmH4AZSs18Ayw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766747682; c=relaxed/simple;
	bh=+ZfPjZl4CQS3QOgZ2VeSxCSdXgoYhBH7aeP7dw399rk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=psWcXhtp6ZdCMtWw4yUsx9lshxWXcbJMBx1bUb7RUH6aJfBNdXhmzwOmIokerY7OLd54lPpqCoOpGNX2hFjfXfmcAU90lWr1kZ3urHetRT3ryhNS+Z2kqvAZ5gKTAJgXjn9tmxi6jd030yRo9k5LFNo7YX0Nx94EQINy6LQRiZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=GV3cTonP; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766747678;
	bh=fHRH4mCuUhenl7ZQEpiiLYxYswITCOI2iyW3epp54q0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GV3cTonPqsw8OSYJSd1JqczlN4HdBanWP9+MpBSTJsrwlioAweMFiOibuGYycnclD
	 UDYAsNrlfIkwbKEjKuYDk8PPfgH9As8wlzOXFr8XtoVUTZqJZ2j0R0YX2nDo9r1h0k
	 0NYteo6EVtbbyafpMioe+A7dS9f/pmFPhbBMS5QCCxsj4dyIVTs1sjiRgp3V5PTRDR
	 bo4ULLD6RCte1IILOc86aBgi2jOdChlk4lE2cTJzeWcIPbUUKB3ll2YGi/krxybYdc
	 Lopc/+zWHlIp1AWk3kf/yuxnevkqqndq7dvf62KBu5zpkiXH4yBz9wjo8KxHShaIkd
	 0Fqw1mFAopQLQ==
Original-Subject: Re: Issue in man page  __riscv_flush_icache.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200AF.00000000694E6E1E.00341D42; Fri, 26 Dec 2025 11:14:38 +0000
Date: Fri, 26 Dec 2025 11:14:38 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  __riscv_flush_icache.3
Message-ID: <aU5uHqEZxgGW_wRL@meinfjell.helgefjelltest.de>
References: <aUv64AqCY2_fdHAj@meinfjell.helgefjelltest.de>
 <aU09SWMTQHSh25gP@devuan>
 <aU4VGitTZacSjEht@meinfjell.helgefjelltest.de>
 <aU5m0sSpRclqY4Pi@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-3415362-1766747678-0001-2"
Content-Disposition: inline
In-Reply-To: <aU5m0sSpRclqY4Pi@devuan>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-3415362-1766747678-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Fri, Dec 26, 2025 at 11:46:30AM +0100 schrieb Alejandro Colomar:
> On Fri, Dec 26, 2025 at 04:54:50AM +0000, Helge Kreutzmann wrote:
> > Btw. in the German translations team there used to be some discussions
> > if you could switch (add/remove) a genetiv or plural "s" to suite the
> > the grammar.
>=20
> I would never change the spelling of an identifier used in code.  I'd
> certainly never remove it.  If you add it, at least the plural should
> not be in italics, so that the identifier can still be identified.

Don't worry, I won't do it; it was another member of the German
translation team.=20

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-3415362-1766747678-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmlObhsACgkQQbqlJmgq
5nD+6A//cg/Hgy0whzVf07Hc70/fyx+JOXukypymfKuTpIhf97lqDJfbxCeBxRvW
TJRp3XK0U/zYYYqCuXT3VbtMuHqsUKNcnaymh/n5TyJpTcPFi1SGIzFOdvLZsEM6
DBS1p+p2MqzI/5Aly6L/7/5yMTx4c/jkkbvdNvFokRnXeLTkDDW4vBWmiAy3kO5s
hCXfyTdU/D3u1tbuawQNGCtZUXgQYf0te/S4gw2s5UoZ7ANAlNyUdsZdRtxLKfam
0nnYcNn2Zsk8gpoow7pfcgSCI24pK4C0MHsnXICvQwcQAFy+D++m1edvYJDfTAw9
G6J/kWHV5yuYfa8C8tOZJXLIf9dtm6UlhwGIfe8M3jvMJIRvgF6CC4AKdVTjaL1H
2DfChRzezgviO6MTEpUqG0PZ0kCWr+w+FikOGOy1EwiIUT4tLc2Axg4ngpQ0+jjD
KrD9EWEfUOpcB7yGc2tcg0dtSvzmHVQFU3BbAUM+SGQ5/ByYLNrPJUbZrR5P98ms
bd7HehkHKSK/CS3q4K1nUZkOFqiDXbuk6aQovVRuJ0KimazS8A+MfeDKfiUO5/Kf
yAnKjSdlx8f55qp6NpheQwxs8Gj/Yhl54s25T6IGPaXFq95V2kFaT/OJDD0Zg8yR
DzZwphSCAottreC1tNX2/C+0B1japksJxV4RqmXTRymuPwegem4=
=A6XR
-----END PGP SIGNATURE-----

--=_meinfjell-3415362-1766747678-0001-2--

