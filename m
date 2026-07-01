Return-Path: <linux-man+bounces-5682-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0EG/CyMrRWqV8AoAu9opvQ
	(envelope-from <linux-man+bounces-5682-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 01 Jul 2026 16:58:43 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BA16EF0D3
	for <lists+linux-man@lfdr.de>; Wed, 01 Jul 2026 16:58:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VH7ftQfv;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5682-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="linux-man+bounces-5682-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 362773006B14
	for <lists+linux-man@lfdr.de>; Wed,  1 Jul 2026 14:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9363235E1DA;
	Wed,  1 Jul 2026 14:53:35 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487AA35C1A0
	for <linux-man@vger.kernel.org>; Wed,  1 Jul 2026 14:53:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782917615; cv=none; b=CQWqQIs3XhNhAG63u9eI15WP3zvPjYimdDmlx8hAyPm/0mRleNlSDPGV6tMRO0CYpD/tIi+qHVX5YG2Xxdsh/h3TgSnIo2zVKHLF2zsR+mZv1iJGLBSp4uQOY7buEbofcciY6Mw6wwudIZihQ1tUsvCHPjwmTPXURf00uXzgrYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782917615; c=relaxed/simple;
	bh=K9rYtgdg3F3YXDxbk8vcaIs6S7XFjfwQSVqNj7U7qNk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YqPkQJlhTVyVivkxHoivAVjwV3ZCXK9gxYAaGmIy1acCVxydG3OYJ1jR1Twd06yV3zgjrUuLmcbmAoQRJYOG0E+1QaiShbh5us54A6/ayFRb3uMWbc5F1ksmAbCe5XVgh47OYOYnttL9zrcMCp8Vdccb5GanGsUBgHPaCuV9zxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VH7ftQfv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EBE41F000E9;
	Wed,  1 Jul 2026 14:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782917614;
	bh=apqlpNQtLfMjU/AcMh1An8wAzAKF63nbmNuWxNSWrwU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VH7ftQfv8wDFkfvRZ7aRSoYATAMRYFqgXI6WzWMWmyr+mc5rouh2BXt5F1lbz2qm9
	 T5jLkWHd46glgglU+vfesoHqihBV1GpUbcPCCXWXUnN5qwfac05U/r2IzgMIvFF7ox
	 flw9vxa+ehLJ9hdlGQ8Af1ymtkNwokjPf9aiL2YKsJ7B9dFPSckbKNVMoWhU2Lp7W6
	 0bpm2Xhd1q3sJEgzp8F9Y/ABl0k2K4OaY96kMJ/myxLih9NhRwom7yYklt6FWTDKsz
	 N3/q2leUl3lJiK8ls1IjGiAxJ2UPUbxc4Ywk2MV0fPYwU3gfZKdeUd6RAoeYoItbtn
	 46Y7kvbMRRgQg==
Date: Wed, 1 Jul 2026 16:53:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/4] man/man3*: document the glibc 2.42+ baud_t
 termios interface
Message-ID: <akUn-T3OpyEAhm5B@devuan>
References: <20260629135910.143781-1-hpa@zytor.com>
 <20260629135910.143781-2-hpa@zytor.com>
 <akOL9gQovBTRQ3VW@devuan>
 <da42ba8e-782c-4b42-bcd7-ed089780acb1@zytor.com>
 <akQw0mjXu4yTzofX@devuan>
 <76055054-9902-4cd8-87e5-d2745ae2b261@zytor.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5l7vi5tyk5boc47v"
Content-Disposition: inline
In-Reply-To: <76055054-9902-4cd8-87e5-d2745ae2b261@zytor.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5682-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:hpa@zytor.com,m:linux-man@vger.kernel.org,m:libc-alpha@sourceware.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,alejandro-colomar.es:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 96BA16EF0D3


--5l7vi5tyk5boc47v
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/4] man/man3*: document the glibc 2.42+ baud_t
 termios interface
Message-ID: <akUn-T3OpyEAhm5B@devuan>
References: <20260629135910.143781-1-hpa@zytor.com>
 <20260629135910.143781-2-hpa@zytor.com>
 <akOL9gQovBTRQ3VW@devuan>
 <da42ba8e-782c-4b42-bcd7-ed089780acb1@zytor.com>
 <akQw0mjXu4yTzofX@devuan>
 <76055054-9902-4cd8-87e5-d2745ae2b261@zytor.com>
MIME-Version: 1.0
In-Reply-To: <76055054-9902-4cd8-87e5-d2745ae2b261@zytor.com>

Hi,

On 2026-06-30T15:01:02-0700, H. Peter Anvin wrote:
> On 2026-06-30 14:17, Alejandro Colomar wrote:
> > >=20
> > > However, doing that using the broken-up diffs that you want would be =
very
> > > difficult at least for me, as I'm neither particularly comfortable wi=
th troff
> > > nor a good technical writer, plus that this is a "spare time" project=
 for me.
> > > I would be willing to try to submit such a rewrite, but if that means
> > > refactoring it into small diffs it isn't going to happen.
> >=20
> > I can break the page myself.  I can use the break points that you told
> > me above.
> >=20
> > Do you prefer that I break the page in small bits and then you apply
> > your patches on top of that?  Or would that be inconvenient for you?
> >=20
>=20
> No, that would probably be the best way forward.

I've pushed the patches in a branch:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dt>

I can send patches via email, but I suspect you prefer to pull the
branch.  Let me know if you want the mailed patches.  Please review, and
let me know if I should push these to master.


Have a lovely day!
Alex

>=20
> > > In fact, I *did* rewrite and restructure significant chunks of the te=
rmios
> > > chapter of the glibc texinfo manual during this work partly due to th=
e sheer
> > > number of errors that had collected over the years, partly because th=
e clarity
> > > was muffled by unclear language caused by wanting to pretend that the=
 tty
> > > interface is anything other than an emulation of an RS232 interface.
> > > Explaining it as an *abstraction* of an RS232 interface that may be r=
eal or
> > > virtual really clarifies a whole lot of things.
> > >=20
> > > As such, I would be very very interested in what you think of the for=
mulations
> > > I used in that document. Perhaps we could use some of them if you thi=
nk that
> > > such a rewrite would be worthwhile.
> > >=20
> > > I *very* strongly believe, however, that the ioctl_tty(2) interface n=
eeds to
> > > be kept separate and that we shouldn't muddle that into the termios(3=
) man
> > > page. It's possible that we should be factoring out the termios parts=
 of the
> > > kernel interface into ioctl_termios(2), as the rest of the tty ioctls
> > > generally coexist just fine with the termios(3) interface and thus fa=
ll into a
> > > separate class.
> >=20
> > Okay; I'll try to do that, and send the patches to you for a review of
> > the overall break points.  When I'm finished, you can rewrite the text
> > as you wish.  Does that sound good?
>=20
> Sounds great to me.
>=20
> > >=20
> > > Speaking of ioctl_tty(2)...
> > >=20
> > > One thing I have wondered about is that in ioctl_tty(2) you state to =
use
> > > <asm/termbits.h> as the include, but in practice applications use
> > > <linux/termios.h>.
> >=20
> > IIRC, we weren't sure which header was preferred, so I put one that
> > looked correct.  I never used these interfaces myself, so it's probably
> > good to change it.  Feel free to send patches for that.
>=20
> Yep, I will look at ioctl_tty(2) and its fellows, but I think that needs =
to
> be separate.
>=20
> > > There are considerable subtleties in using the kernel
> > > termios interfaces, as they are architecture-specific *AND* mutually =
exclusive
> > > from the glibc one (neither the types nor the constants necessarily m=
atch up.)
> > > On PowerPC, for historical reasons, the ioctl values in <sys/ioctl.h>=
 for
> > > TC[GS]ETS* don't even match the kernel ones and are intercepted in gl=
ibc and
> > > redirected to the *glibc* tc[gs]etattr() functions, expecting the gli=
bc
> > > structure which I do believe is different in that it has a different =
number of
> > > reserved special character slots which also pushes out the c_ispeed a=
nd
> > > c_ospeed members.
> > >=20
> > > Let me know what you think.
> >=20
> > I mostly agree with everything, I think.  There's too much to be
> > specific, so maybe I should split the page, and then we can discuss more
> > concrete patches.
> >=20
> > I'll wait for your confirmation to start breaking the page into many
> > bits.
>=20

--=20
<https://www.alejandro-colomar.es>

--5l7vi5tyk5boc47v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpFKeoACgkQ64mZXMKQ
wqk9JRAAsGqbg+gideJjaG/THsrWywq7t3J8BGlHXAk8oJRbL+R8vGUEJ9nQ1qcE
n5U5RKN6DHmiB6JWyvaSrimjEp4upsQEgl/qwTdw/TzoS7rIy9igEcjV4BboxuBx
kjGsWsTX5uVSe7pTcak8IzG8I2HzsBdZJWd71kvAM56jFZHPLUVE8SUwYjGIee4N
YnV5TOnMZyI32dxImzkBkLDRevKmBozhDgiE7F8KuGWRQrfoYKIVjQtga46w8Wos
/pm/SA2DH5UaZSlRFKa/R7XRrx2Cw6y/iBS2E9amIZUWzDlBDGbQou8nLoYdUIiO
hhwjuZ3o//jnh+zYP1+7cgFqiCYlKpqg4eK4EnYy1lFskTNUxYqjp3ZVbOXKeIul
hpIt0qEt37CL3aeR2kCKYi4ee36+NB9uo4GZOrx7o37ybhLZHEIF/C3lrvDlBa4q
Bg2avM/hOUq3qbcdabtcVCT2kzA0h0qkmA5T1nMfib8B2N4pjwNxl/1VbZjuz8GZ
TsVB14+wegmRjitRfUMTr3PAIl4GEvNjMFeEulrz9D3oDwj/7B8TbnrKjqjKpSAS
RdY7/kjjajTigMxg7RH0k4dHZcSo8xolM0HnGDlnMIA658o2Q4tCoWQkcxEta4sO
dVBzAxY0wh+8RYs4Y3hj8/6XXMN0sgybuvRFQX3bP3dqdLCugl4=
=CS4z
-----END PGP SIGNATURE-----

--5l7vi5tyk5boc47v--

