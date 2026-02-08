Return-Path: <linux-man+bounces-5057-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aB8wNCrTiGnLwgQAu9opvQ
	(envelope-from <linux-man+bounces-5057-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 08 Feb 2026 19:17:14 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47636109D97
	for <lists+linux-man@lfdr.de>; Sun, 08 Feb 2026 19:17:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 878283085118
	for <lists+linux-man@lfdr.de>; Sun,  8 Feb 2026 18:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D2322F90DB;
	Sun,  8 Feb 2026 18:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0Q8KtRp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017392F2613
	for <linux-man@vger.kernel.org>; Sun,  8 Feb 2026 18:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770574271; cv=none; b=tZuReRUEl2wQ4fq+LZX4fYph5Yrvq3rJso+p6GiuIKC+ROq4J1txeCYXFtQxM4B5jEE8h5bE3VLblVouFlU9hM89jdD2I4OTSqJP4KZrQnY4D0uWf4ziPU6EvXJ1bDKRRUfiuNrJ+at+v3hu8jiI8iEdQGYrte8pqN27w6/hKUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770574271; c=relaxed/simple;
	bh=JMP+/uIx3F4JZKhb2S+JOWsd0k1sni1hM+rXCreCdM0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cpr7ZtBhjRSl0IdTUO+0AveBneREkcusb5QXZholLUpkMH4M8d2fLF5XzfEC7H2pG0KKQ0/w0yYKQqJGd1K/dImDn+4XO2/K1o7s8lAEX6ulgCpVPJoiOGWhFzyp/V3OSab5kHrAj+ryzmLO+KFRAGdphzmbjWviRRNhNaE4Jz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0Q8KtRp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8086FC4CEF7;
	Sun,  8 Feb 2026 18:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770574270;
	bh=JMP+/uIx3F4JZKhb2S+JOWsd0k1sni1hM+rXCreCdM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F0Q8KtRpMsdoGasnvlWUeOkOiB5V/HoHhkftYNWMq1aW2remVq/bA3O76nul1znUs
	 jc3boTyG3+wlQrttd4ANv4S4Rh3sL0XgaYIGOTiHh4ilA1hhHGwZBCNhYTgCJyxxnC
	 mHnCDcO+QK3081A0iVg1g8iPdbU6C8gIVQJFwNb58Kji/8erU2/LsDxrFU+cbNlaTs
	 OdMzYdDAd3Dhz9oCcMDRMmjnSiYr53D4/yzyIW6Kq+aNupjQ16ubG1m448qjthABsA
	 33dvemfW+KqPcwhJPCn8nuqogr1h/hCT4C8R49s07H5wppeRUHXPyoUZS33NNdNc9T
	 XeYEZlJHf/mHw==
Date: Sun, 8 Feb 2026 19:11:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: Issue in man page  sigaction.2
Message-ID: <aYjQyPt5lrAe9CuE@devuan>
References: <aUv64Ecu6dwxcii9@meinfjell.helgefjelltest.de>
 <aU09001I8wO6AySD@devuan>
 <aYjJPiTfTR5I7DZL@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zdhk43bcgg54iw36"
Content-Disposition: inline
In-Reply-To: <aYjJPiTfTR5I7DZL@meinfjell.helgefjelltest.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5057-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,sourceware.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 47636109D97
X-Rspamd-Action: no action


--zdhk43bcgg54iw36
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: Issue in man page  sigaction.2
Message-ID: <aYjQyPt5lrAe9CuE@devuan>
References: <aUv64Ecu6dwxcii9@meinfjell.helgefjelltest.de>
 <aU09001I8wO6AySD@devuan>
 <aYjJPiTfTR5I7DZL@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aYjJPiTfTR5I7DZL@meinfjell.helgefjelltest.de>

Hi Helge,

On 2026-02-08T17:34:54+0000, Helge Kreutzmann wrote:
> Hello Alex,
> Am Thu, Dec 25, 2025 at 02:38:07PM +0100 schrieb Alejandro Colomar:
> > > Subject: Re: Issue in man page  sigaction.2
> >=20
> > I believe the report is about sprof.2.
>=20
> No, probably sprof.1.

Sorry for the typo.  Yes, it should be sprof.1.

>=20
> I rerun the example programm in sprof(1), and it works in the sense,
> that no error is reported. However, there is also no sensible output
> either, just the headers.
>=20
> But I don't know (I'm not a programmer) if this is a problem or just a
> normal output.

TBH, I don't know either, as I never used sprof(1).

>=20
> > On Wed, Dec 24, 2025 at 02:38:24PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:     Inconsistency detected by ld.so: dl-open.c: 930: _dl_open:=
 Assertion `_dl_debug_update (args.nsid)->r_state =3D=3D RT_CONSISTENT' fai=
led!
> >=20
> > This has been reported in
> > <https://lore.kernel.org/linux-man/20251020093148.vve2nui3xtym4z6m@jwil=
k.net/>
> > and previously in
> > <https://lore.kernel.org/linux-man/ZznJf0DLo7CVHddl@meinfjell.helgefjel=
ltest.de/>
> >=20
> > Please go to the thread in
> > <https://lore.kernel.org/linux-man/87mshxxyol.fsf@oldenburg.str.redhat.=
com/>
> > where glibc maintainers are expecting feedback from you (or whoever
> > reported to you).
>=20
> I was not aware that there was an open question directed to me, sorry.
> I'm not sure how to properly answer that from this e-mail, I hope it
> is sufficient that I simply CC libc-alpha@sourceware.org?

At a minimum, a reply would need the following header fields:

	Cc: <libc-alpha@sourceware.org>
	In-Reply-To: <87mshxxyol.fsf@oldenburg.str.redhat.com>

That should be enough.  Let me know if you need more help.  I've bounced
the whole thread to you so that you have it in your mailbox; that will
make it easier for you to reply.


Have a lovely night!
Alex

>=20
> > > "$B< sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile>;\=
n"
> > > "Flat profile:\n"
> > > "\\&\n"
> > > "Each sample counts as 0.01 seconds.\n"
> > > "  %   cumulative   self              self     total\n"
> > > " time   seconds   seconds    calls  us/call  us/call  name\n"
> > > " 60.00      0.06     0.06      100   600.00           consumeCpu1\n"
> > > " 40.00      0.10     0.04     1000    40.00           consumeCpu2\n"
> > > "  0.00      0.10     0.00        1     0.00           x1\n"
> > > "  0.00      0.10     0.00        1     0.00           x2\n"
>=20
> This looks like the following with me (Debian stable):
>=20
> helge@twentytwo:/tmp$ sprof -p libdemo.so.1
> $LD_PROFILE_OUTPUT/libdemo.so.1.profile
> Flat profile:
>=20
> Each sample counts as 0,01 seconds.
>   %   cumulative   self              self     total
>    time   seconds   seconds    calls  us/call  us/call  name
>=20
> Greetings
>=20
>          Helge
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es>

--zdhk43bcgg54iw36
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmI0boACgkQ64mZXMKQ
wqnwUxAAkD9d7SDVOhtQ7ovHjN2A82nb2Rn2PoemebA0ZNKOwOgoP9ztjSa2nnkU
6r9js5vZD+W9XH2gZyFmN0+x4AGcZpjQoIywRNCfEvrqO7t689VJJmgHiSqKDnmO
0rqipe5sr+TIu9RfpCSRjW7uNJNy+v42pwDQ0J5RJOxHmr5Io1HX1UIngRS/RlIM
//gop5NH4LLFibnD+iguz7zYKSPa+sLBbsHP6GfCZwifmP0r6hiTSeartGBTnMMT
lySyDslIRmlnGYywc7QI72sJv/DCw1V+YDg2cGe7hJ3hUlf5THjE/R3NN9yEu5iX
NN5+fbKWSHfvYul2ofUzcyoSeRPwowUq7xJyu0i0bisfA6mkjBjo8jE199oUhadF
qo2CCu2oJ7q7/WUczmsWJleb9+k1BZG0Nq25ozhUVGhhgi9nQ1SUqvQCVg0WCii5
WZVjcCb8l7RNDmdfpYQnFHaP5v0E4q8WB7iMN8SUIb3tN4M+kD+KksfRy+boD2QC
4lb871OebfQIj1QOXHK3qEjCmrF9RKsGyJzl0K6265+UlCA/i8kHXG29qTQYY+Z4
FT4qp5ycmIvGEkGUIlKsdbLYTw3cGWWmt9ZybzWlgop60OFEajO6NPYmTCnAmOvK
wowoQ9Ds3AIqdI7PiDHJCZiL+HlW8Vr1Rsifvscd6M6bzJvX/VA=
=cFNQ
-----END PGP SIGNATURE-----

--zdhk43bcgg54iw36--

