Return-Path: <linux-man+bounces-5052-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KJOHs+zh2mRcAQAu9opvQ
	(envelope-from <linux-man+bounces-5052-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 22:51:11 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8AF1073BB
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 22:51:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07FF1301368D
	for <lists+linux-man@lfdr.de>; Sat,  7 Feb 2026 21:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78711354AD8;
	Sat,  7 Feb 2026 21:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PwYUQtYA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1E22D8382
	for <linux-man@vger.kernel.org>; Sat,  7 Feb 2026 21:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770501061; cv=none; b=n/HnxaJ6ziZPk1yBG9GxnX7FF2g2m0ygLXP1p3kHQa3lshvOv9KIGFfWqK/6wTNmFH1ueFx2nV/hBa7q4XtpELqDy48jtA+2ZWIN9IOysqqTiPEzTDqUBaBEOZGKyok7b7VBVRt8gvLy6YvWcJdmFTrQ7QfrCwAM3F8XZWs4E9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770501061; c=relaxed/simple;
	bh=4vDf1mtxrImveqxdQJGBPhlM0rdEn+a/3NShSvhVMEE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RwKejWSbM/QqGMeyHAROZ0d2E90k5GxZxb1v14oOONv8hExCRYLN5tqRiKGAwRSyNQSncx4uPX4CeWMAiiqwheNEH09OS2cHGd8tL5lLcxWCOGU7fQmXyLZbFVKCpA6YKhaTHcwzvA00Ywl5XS11f0i2ct2ErZwO7yO50mjpk2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PwYUQtYA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3809EC116D0;
	Sat,  7 Feb 2026 21:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770501060;
	bh=4vDf1mtxrImveqxdQJGBPhlM0rdEn+a/3NShSvhVMEE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PwYUQtYAZ5qMfzDP/1qc3AZgNn1BrxakR/q3MsFougvlFgFkaA5na07EgVH5odtXI
	 PNoXP8jAbsNPWK9QY4GIEiHereQc7p05D0ZgKw+1hxqMOu5dJqN0lgS2oeadndOWTy
	 pJVnUpJaFX7FOn5B+2BRUpsZs8nEM5A0uopv/cobWrS028dPpkLE57ZPXMH64pud5D
	 ykaWH8eLXgWHHz1krFPMni95x/UYXAd+x7454yCXPeYH9RHBrJy1mZe6yj30jrhZLo
	 zSMI3Pwf0Fg4biO792AiTgCyGqCkR3oH+k6vRa7mIEkme1Ohc9NBG9VGsWtlqZVTON
	 i4uOf7ouz5wPw==
Date: Sat, 7 Feb 2026 22:50:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] futex_waitv.2: new page
Message-ID: <aYezLCRammSoqjTM@devuan>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <aYeDkRWB2ZxYutG1@devuan>
 <3en4ifc2b6upp4ufedhajhyikvmpc2yrosl5hpftszlzsdy3b4@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rxy3ybfiahg75esq"
Content-Disposition: inline
In-Reply-To: <3en4ifc2b6upp4ufedhajhyikvmpc2yrosl5hpftszlzsdy3b4@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5052-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BD8AF1073BB
X-Rspamd-Action: no action


--rxy3ybfiahg75esq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] futex_waitv.2: new page
Message-ID: <aYezLCRammSoqjTM@devuan>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <aYeDkRWB2ZxYutG1@devuan>
 <3en4ifc2b6upp4ufedhajhyikvmpc2yrosl5hpftszlzsdy3b4@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <3en4ifc2b6upp4ufedhajhyikvmpc2yrosl5hpftszlzsdy3b4@tarta.nabijaczleweli.xyz>

On 2026-02-07T20:16:36+0100, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!

Hi!

>=20
> On Sat, Feb 07, 2026 at 07:57:03PM +0100, Alejandro Colomar wrote:
> > On 2026-02-07T13:49:12+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > +.TP
> > > +.B EINVAL
> > > +.I nr_futexes
> > > +was not between 1 and
> > > +.B FUTEX_WAITV_MAX
> > > +(128).
> >=20
> > In this case I would like to see a range.  "Between" doesn't make it
> > clear whether the bounds are inclusive or exclusive or combined.
>=20
> "nr_futexes was not in [1, FUTEX_WAITV_MAX (128)]."?

Yeah, that sounds quite good.

> > > +.TP
> > > +.B EAGAIN
> > > +The value pointed to by
> > > +.I uaddr
> > > +was not equal to the expected value
> > > +.I val
> > > +at the time of the call.
> > > +.IP
> > > +.BR Note :
> > > +on Linux, the symbolic names
> > > +.B EAGAIN
> > > +and
> > > +.B EWOULDBLOCK
> > > +(both of which appear in different parts of the kernel futex code)
> > > +have the same value.
> >=20
> > Should we use wording like in read(2)?  It uses
> >=20
> > 	.TP
> > 	.BR EAGAIN " or " EWOULDBLOCK
> >=20
> > Or do you have reasons to prefer your wording?
>=20
> That's what FUTEX_WAIT(2const) says and that's the most-sister page
> I copied this from (it is pretty crazy wording). But

Makes sense, thanks!

>   $ git grep 'hich appear in different'
>   man/man2/futex_waitv.2:(both of which appear in different parts of the =
kernel futex code)
>   man/man2const/FUTEX_WAIT.2const:(both of which appear in different part=
s of the kernel futex code)
>   man/man2const/FUTEX_WAIT_BITSET.2const:(both of which appear in differe=
nt parts of the kernel futex code)
>   man/man2const/FUTEX_WAIT_REQUEUE_PI.2const:(both of which appear in dif=
ferent parts of the kernel futex code)
> so those want to get those gone as well.

Yeah, if you feel like cleaning up the wording in all of them, that
would help.  On the other hand, I would understand if you don't feel
like doing that.  Do what you prefer.  :)

>=20
> > > +.SH NOTES
> >=20
> > Maybe CAVEATS?
>=20
> idk if it's a caveat... the futex(2) API family functionally hard-codes
> FUTEX2_SIZE_U32 into every operation and it's not a caveat there.
> And, having just seen a lot of futex kernel code, it abuses futexes
> being 4 bytes /so much/. I don't think anyone's expecting to have
> non-4-byte futexes any time soon. So this is more like a notable curio
> to explain why you need FUTEX2_SIZE_U32 at all than "beware this missing =
API".
> Y/N?

Agree.

>=20
> > > +#include <linux/futex.h>
> > > +#include <sys/syscall.h>
> > > +#include <time.h>
> > > +#include <unistd.h>
> > > +\&
> >=20
> > What's the distinction between the two include groups?
> Top 4 are for the syscall from SYNOPSIS,
> rest are for application code.

I would merge them.  After all, we already have the SYNOPSIS for that.


Cheers,
Alex

>=20
> Best,



--=20
<https://www.alejandro-colomar.es>

--rxy3ybfiahg75esq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmHs7sACgkQ64mZXMKQ
wqkfhxAAve2hlXHsdvx1CGKyO3i43Edew355F+hVQSJiBfqU+/G9+w+wT6Hj/oyU
3jiXTBUzT1Kyp5Wvs+tzqQoVnU9kZV4drlPMueI2kGCJQ5rdSTrahNwB200W4rVH
DZvMCOn60X/Ati9a2goBFteMH1+6hiFgpSS5MPINNdxb4EjW5tf++eOfB/ZX/wPl
vntFVhJwULz18ijsDuvZaG6SVPILXbHiJEcnJDb+/vS8hYPBzVXrSIHkc4Qiw5Z6
i7eKJuw6XQH9XKNM0IFS4nhkklcR2rd3g9R8K37ZlM+j8ZeycXWFEuPAL5c6gq7d
MjKl8q/LBwUAL4rd4wURsGvb04LHfUgM9fJnBpdMfFBaBdv1EYhWILqfioaBZNfk
hZy9y7yD72j/nvnm54BGpqvDpq6ouk4pORJVCAi9ApVpI/6YCfThZaJouC/GFP1m
tXjFYqwIRSS8XKZoQsvGU03QtgfExGRYYjMsm6N8LFkY2RsOB+nhRYUMsPi+rxJN
3BA6+rRRlcVpd5kTmzo0azlTg4jQDFiUtM77f3u7yWN4mlg1Tl0/npWyAJqy+7cm
t8JoDrxIBemaBwqQhUTw+Hl3Wxe7GqS7I326eFhaJhbG5MkKr6cEt06bXtshxmqx
pwr/hhykU4I+fbhKFRrDCIzKCcNmCSmUVh1O5KA8+6jjqmybWfE=
=fXo1
-----END PGP SIGNATURE-----

--rxy3ybfiahg75esq--

