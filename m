Return-Path: <linux-man+bounces-5089-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cP8xIqyRi2n/WAAAu9opvQ
	(envelope-from <linux-man+bounces-5089-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 21:14:36 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6DA11EECA
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 21:14:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 809163034295
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 20:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CBF5330663;
	Tue, 10 Feb 2026 20:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQYAleKF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5098232E68F
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 20:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770754473; cv=none; b=g2vAgKOooiE2g0qkwzkkJlN73K86+v9GUR7nJyieOUBK54TdAS2R4TYdQ/Fb3qV0Ax2KwJLAUH1lG0Hji1ztBi21Q/cyi9nd5pbDhoxu/z3hTrndl7sAR2Q2QsCBCpxMLeBMrUQZ/pbBUiXoW7cv4LGmY+WPFICj3uu6/9xNF/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770754473; c=relaxed/simple;
	bh=P//sNm/6Z7p0OF8tNJx+EczTl+6hj88+OctgG5ASn1Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L72jWRMr0bqqUzzELfCK8br9FmVoyqMNJn89o1K4SvxD+SF5WeUj4DrZjhHLSNFKqlvSUEo7Hu2RvNXVpJrRr00xwyNQL2gUAlkPrJADcveDDHpImnJEZpNY1RZnFYjBHCfNIT4iSYIveYUxV8U2W5q24DokcD8UTMCWG1BVGnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQYAleKF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C66EC116C6;
	Tue, 10 Feb 2026 20:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770754472;
	bh=P//sNm/6Z7p0OF8tNJx+EczTl+6hj88+OctgG5ASn1Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CQYAleKFVqbj3RmXdBIaFPzD1PNeOx5M+7cx4kw4gz00uO1d6WUnk6IIzNyvgkbyE
	 Y571MW/mU+IuVzIYtVV6bc+5KSZ1qvyzhDSMKD73BF32EJES/taJ3KFyvFBY31n5R+
	 gGk2GBxTAU5q2tuaWi/O32l1lIthBPITa55/cqx298eytbzN3/O/OMT48hbTnmWaAd
	 VloYkDhbm6Vc6VuWQ31F2FNDDPa/s6Aa6MZPHEKYP9uLe4lI9+8dI7hMroEL9lE0K4
	 YpcIN/yMujN2gAEz9W/9M6MA6TWEXdaK6Gh+ol01tQcz3DJ2a3HWZeq1Vyl6ctYyVb
	 iUsAjbXXnldRQ==
Date: Tue, 10 Feb 2026 21:14:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Dmitry V. Levin" <ldv@strace.io>
Cc: Marco Cavenati <Marco.Cavenati@eurecom.fr>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ptrace.2: Add PTRACE_SET_SYSCALL_INFO, update
 struct ptrace_syscall_info
Message-ID: <aYuRZuZIQCMw1gqP@devuan>
References: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
 <20260121165639.GB6261@strace.io>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tgkqnblbsd4bjtpu"
Content-Disposition: inline
In-Reply-To: <20260121165639.GB6261@strace.io>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5089-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,eurecom.fr:email]
X-Rspamd-Queue-Id: DD6DA11EECA
X-Rspamd-Action: no action


--tgkqnblbsd4bjtpu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Dmitry V. Levin" <ldv@strace.io>
Cc: Marco Cavenati <Marco.Cavenati@eurecom.fr>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ptrace.2: Add PTRACE_SET_SYSCALL_INFO, update
 struct ptrace_syscall_info
Message-ID: <aYuRZuZIQCMw1gqP@devuan>
References: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
 <20260121165639.GB6261@strace.io>
MIME-Version: 1.0
In-Reply-To: <20260121165639.GB6261@strace.io>

Hi Marco, Dmitry,

I'm back.  :-)

On 2026-01-21T18:56:39+0200, Dmitry V. Levin wrote:
> On Wed, Jan 21, 2026 at 04:55:41PM +0100, Marco Cavenati wrote:
> > Add documentation for the new ptrace request PTRACE_SET_SYSCALL_INFO,
> > introduced in Linux 6.16.
> >=20
> > Add 'reserved' and 'flags' fields of struct ptrace_syscall_info.
> >=20
> > This description is based on kernel commit 26bb32768fe6552de044f782a58b=
3272073fbfc0
> > ("ptrace: introduce PTRACE_SET_SYSCALL_INFO request") by Dmitry V. Levi=
n.
> >=20
> > Signed-off-by: Marco Cavenati <Marco.Cavenati@eurecom.fr>

Thanks!  I've applied the patch.

> > ---
> >  AUTHORS           |  1 +
> >  man/man2/ptrace.2 | 21 +++++++++++++++++++++
> >  2 files changed, 22 insertions(+)
> >=20
> > diff --git a/AUTHORS b/AUTHORS
> > index 9035d405a..f332932e1 100644
> > --- a/AUTHORS
> > +++ b/AUTHORS
[...]

> Looks good, thanks!

Should I take that as a Reviewed-by?


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--tgkqnblbsd4bjtpu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLkaUACgkQ64mZXMKQ
wqmXXA/+LsZNaMLWn4+URcwX8FkD5pMeBIL1BSUVrTMZFsNY3LvO1jtBLn8/m3l+
s60idYYbsUpxvRgqLtfFnXV6EWeEB8MIbB+p3DMCH77Oamv8c+g+AAccPbm3dlDk
ZW2GrtoV23fiz8kHbbfkbQuMi1Tcw4jwA+Obd36WTUnkpfMkQpOyGC0JiOMkVO6G
b396o1HMt5LfljuW0rhFhWnQs5XwcsXKcEZnFRim424Nf6RK0eVZAtUOEXdwpx2b
4c0hHpQD2ieqWF71+/DugjPgVb691iYIdphk6FIwPfri6Un0WoPT2Zb0rlvpX72s
95IS9N7ulv7eOKg+TnSxaHaaAi43wNwqodG/6cBEJJEifI2gKXgfaGpFkd18SW2V
z/TLEyhokUsGCllTd3YDuOJ46id4SFAwkBIVKyFoMDo0PAMX2KG98tUbsEGU+515
Rho3lSwhWUGiiQR/e1gusoDBJ1/ypfV9T/KEMErCI3CSuDkN7w1T18UBOqX5bYMG
mPK8/GZbr7jDRl4Tb9Xxr9gaTMgkuvyPMb0g3zgpJJKmi2kzLjZybcCL5hHhAXIJ
PWzn7c/FxrNK0eZmSOgpIFjCRGNoeV5XSL5ZChhvbmPfOSa4PuT2ZTGXnA1Me0aV
aYdCjAS1UHE5yaWLOInCkxvQD/dD/LM3cca8Tfh0MhyJHpr+r+g=
=cUOB
-----END PGP SIGNATURE-----

--tgkqnblbsd4bjtpu--

