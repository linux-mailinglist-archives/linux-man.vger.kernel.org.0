Return-Path: <linux-man+bounces-4927-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QE1VNgeWc2lgxQAAu9opvQ
	(envelope-from <linux-man+bounces-4927-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 23 Jan 2026 16:38:47 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C173377DB6
	for <lists+linux-man@lfdr.de>; Fri, 23 Jan 2026 16:38:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7FCEB300533D
	for <lists+linux-man@lfdr.de>; Fri, 23 Jan 2026 15:38:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 911062DC339;
	Fri, 23 Jan 2026 15:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpfxdN/q"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B3222126C
	for <linux-man@vger.kernel.org>; Fri, 23 Jan 2026 15:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769182722; cv=none; b=RNlAawepCfzVD92l0EOfZ3OH542t6Fw8KQKJRJ6BdAXXsURW8TPvMslnHtJiiczG7DxlLO37WG63z+KNXjM9iwOEloF0ETm+iwFUUZpTEPUk2ycdARhNt3YJ00c6ggBWvhZAX2ZaBc5bV/nBNOskOd2arPtP/CYhX2V1ysPl5uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769182722; c=relaxed/simple;
	bh=dD8PhlMOuIkuqNvcnyiiVUY4L9QCiy53LCzaKn8AFK4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JfUBJDPSlX8TUfaEaZG9OWHlxv643ofJe14/GNs5eXsv7xZKUPUIRslGDjBCDgtZYPSklRkJ5Hl9ULucDPwDVecFThfiehfsZS9I7NbGnroJMxjR7o8/X1txXx9HCi3xBp01FOj7UUc3CUXQBxJUsP5dlo3Q8+yD5Xa+IqtyRiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpfxdN/q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D68D0C4CEF1;
	Fri, 23 Jan 2026 15:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769182721;
	bh=dD8PhlMOuIkuqNvcnyiiVUY4L9QCiy53LCzaKn8AFK4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YpfxdN/q3xgXNi+0vQRU/WbEK1Eczlz3Iby6/+YOZ2pGc/1l6MZ+dpYjRQ3JwtJqz
	 5IU8fbz1wmMRZNtP8lVZrMz3+lOhio5IWqMYnna0Ur7Q7nygkE8An7qqkK7Da7WHJx
	 nT5cRZj45BSpKZ6lFn5pVdxK0eckcLiCby8dkfzKGLe/s7fm1EGbeRnsc6guMnvFUQ
	 ZwX2Ns5clOW3uD65s9JCiYNVRYS11TMnzGHc8qMEmSQSFc/ndCZJQ4OyhYDlN6pfn2
	 XEEEr9Bk3uHeM571V/ttwmiMTy5cSlrE333tEoDf93/4L1P4C8NtzIVLeu+IWEbUNZ
	 EgfTeZ5snFqyA==
Date: Fri, 23 Jan 2026 16:38:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 01/23] man/man2/clock_getres.2: HISTORY: Update first
 POSIX appearance of clock_* syscalls
Message-ID: <aXOVnR99sUTBFmLJ@devuan>
References: <cover.1768995315.git.sethmcmail@pm.me>
 <cover.1769047228.git.sethmcmail@pm.me>
 <1a421b5ee130c1d5892791060b6fdf8d911d8362.1769047228.git.sethmcmail@pm.me>
 <CAMdZqKGj6r7RcYSTGgvFj_z+xDJyOqFv3oc8g6tT+Gnh4W-NQA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nrslbwajklor2teo"
Content-Disposition: inline
In-Reply-To: <CAMdZqKGj6r7RcYSTGgvFj_z+xDJyOqFv3oc8g6tT+Gnh4W-NQA@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4927-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: C173377DB6
X-Rspamd-Action: no action


--nrslbwajklor2teo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 01/23] man/man2/clock_getres.2: HISTORY: Update first
 POSIX appearance of clock_* syscalls
Message-ID: <aXOVnR99sUTBFmLJ@devuan>
References: <cover.1768995315.git.sethmcmail@pm.me>
 <cover.1769047228.git.sethmcmail@pm.me>
 <1a421b5ee130c1d5892791060b6fdf8d911d8362.1769047228.git.sethmcmail@pm.me>
 <CAMdZqKGj6r7RcYSTGgvFj_z+xDJyOqFv3oc8g6tT+Gnh4W-NQA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdZqKGj6r7RcYSTGgvFj_z+xDJyOqFv3oc8g6tT+Gnh4W-NQA@mail.gmail.com>

Hi Mark, Seth,

On Wed, Jan 21, 2026 at 07:37:33PM -0800, Mark Harris wrote:
> Seth McDonald wrote:
> >
> > clock_getres(2), clock_gettime(2), and clock_settime(2) first appeared
> > in POSIX.1-1996.[1]  SUSv2 incorporates POSIX.1-1996, so listing both is
> > redundant.
>=20
> Technically these functions came from POSIX.1b (1003.1b-1993), which
> was a set of optional realtime extensions to POSIX, published as a
> separate document.  POSIX.1-1996 integrated them into the main
> standard (1003.1-1996) as part of a Timers extension.  In 1997 X/Open
> adopted them to SUSv2 as part of their own X/Open Realtime extension,
> which includes the POSIX Timers extension and other extensions that
> had been added to POSIX from POSIX.1b.

Thanks!  For now, I think I'll take the patch, even if the commit
message is factually incorrect.  We can then do a future round of
patches researching those less common POSIX extension standard.

Does this sound good?


Have a lovely day!
Alex

>=20
>  - Mark
>=20
> >
> > [1] ISO/IEC 9945-1:1996, Section 14.2.1 "Clocks".
> >
> > Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> > ---
> >  man/man2/clock_getres.2 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/man/man2/clock_getres.2 b/man/man2/clock_getres.2
> > index 5f8ed14f1555..1a486c886229 100644
> > --- a/man/man2/clock_getres.2
> > +++ b/man/man2/clock_getres.2
> > @@ -369,7 +369,7 @@ .SS C library/kernel differences
> >  .SH STANDARDS
> >  POSIX.1-2024.
> >  .SH HISTORY
> > -POSIX.1-2001, SUSv2.
> > +POSIX.1-1996,
> >  Linux 2.6.
> >  .P
> >  On POSIX systems on which these functions are available, the symbol
> > --
> > 2.47.3
> >

--=20
<https://www.alejandro-colomar.es>

--nrslbwajklor2teo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlzlf4ACgkQ64mZXMKQ
wqmuahAAlDxPEt56IuuZ/ETY0WG02KC8ernz4Ro8OgnTCWkhdJb/l6OgyjUaj+5s
oMNHMTR+aBD6Bw0jgQ/8x3nmGCHtrMM4x80ii6/5t7HWa5HsPHDPAtWTATbHTdP/
huaQ3mvBGAYQITrhhG8BrTiaO2g52txVAsoBKW0g2cT7TUc/0MOSWaAqb/PAu4m2
cDvWHF9+QlANl+hRj5T3SOiieHEzCilrKNczZfBXuBiyuJpdl5LgXY24QE/JoGwx
qTH/iQITa8qTql/51NK2lsbOqyyrGhE0PwFZ3nR+8zjWJrCXqOnIsMMjnCEWDEeO
ozGFfmuOYdpPEOiCa/otHTynVw4LSx+8Ua2SQWNMkbpOT/kuXm/DSTk56NyDBqLw
JuUYfHfDPYCpel9uiXmOCVH824aGZ5ggKUoXwpE63/tmTR1MbmNpI/mrw32QSw1Z
nS6J6AuSOTEXu0EWsu/XIUiBRxjhOG8DYDO5lcd76ruxaEb4etIr0vFAtmBE2DHc
rOB5OAm9hK8rW4BqyTlzfC3H3V0goWlWwNIl8DRBCjBpWKsvFn2kWS3sh9ip8ki1
3e8YWLIInElYGHiz7hk9mHQRApSV8Qt8950CKUyUyLxw3+PoXF+U/zyFWPZTlGcO
/1lhjCgTq0JaROngx37CuZf1OH0QsIFuoOspRGzZ6dMaTU31waE=
=epAi
-----END PGP SIGNATURE-----

--nrslbwajklor2teo--

