Return-Path: <linux-man+bounces-5032-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8t6eAhOXhGmh3gMAu9opvQ
	(envelope-from <linux-man+bounces-5032-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 14:11:47 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 915E4F307E
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 14:11:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC14D3017251
	for <lists+linux-man@lfdr.de>; Thu,  5 Feb 2026 13:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9A0D3A9D9A;
	Thu,  5 Feb 2026 13:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxvrlsdE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D40B86353;
	Thu,  5 Feb 2026 13:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770297056; cv=none; b=BRbaSJt1PQI9weXPZOONXpvwkMAJCYqbbeBL9UnjnF6XdQx4AuWiM6s6FuvvEwofWv76wyVpn+hb67Onc99eeDjvkCvCBZwiAUHhIuAW2mPqZFdOUqpiZdAqXUJ4DYHIPrKUBs74IqE+/EuaF+fAxSqg6K0GWfZe5zd03OZTE9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770297056; c=relaxed/simple;
	bh=+uE4os4EY9QzUvt+CqJtvN1JM0aEwqWttuAQZpJZBQ8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R6aoocNbriKJ5Fr0TqNyGUz0xIvAXT2Ry3be8vF7oNhG7xodpXtn4gyDCcxZ/YEruBNDLpcKjbZu2NtM2FE+neA/OCPQaujYOQODHFZDrzhArvyyOJKYIlSUzgEqCmod/k+Z5IjyHfo+D1EoJhKZnaK+EMcz9zDeURC3gxF9wMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxvrlsdE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E16A7C4CEF7;
	Thu,  5 Feb 2026 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770297056;
	bh=+uE4os4EY9QzUvt+CqJtvN1JM0aEwqWttuAQZpJZBQ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MxvrlsdEw4dfO0biiJWl4i/0OBwi4ssmn529J2V2OWqjNBa/HxN7rlIpw89jIQN8r
	 Pn+ZHWat77Cz2GrgxMt4F2352HqjCVjZ2v7yoP+lWNQ1g/ae+EU8mSIKV7jO5IroKO
	 /r9LmEnBztiqU6sk41ugL5nEDKPl/J1w9PL64MYErDlpgkyyg1vWpmSB3oiJH6MuTf
	 yO9HO6T5aI2rm/uT6Xa7jWbVMuEdifzdGcHobK2OXaYTunJrroQfIFUzcFwVwrSxRl
	 frtgmjWUin6uFk90GSK8Q9TYsDUN+KhUZAPE8zVxNTA2k2jXszdLFub7nlYWrgYU8+
	 XC6RrRj0N7HTg==
Date: Thu, 5 Feb 2026 14:10:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Xiu Jianfeng <xiujianfeng@huawei.com>
Cc: Alyssa Ross <hi@alyssa.is>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
	David Howells <dhowells@redhat.com>, Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
Message-ID: <aYSWoVUBkPA52fqS@devuan>
References: <20260203195001.20131-1-hi@alyssa.is>
 <aa62e24c-537e-4141-9507-37cd0af19dfc@huawei.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yhe57fagq2cmnxat"
Content-Disposition: inline
In-Reply-To: <aa62e24c-537e-4141-9507-37cd0af19dfc@huawei.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[alyssa.is,gmx.de,redhat.com,oss.cyber.gouv.fr,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-5032-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[huawei.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 915E4F307E
X-Rspamd-Action: no action


--yhe57fagq2cmnxat
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Xiu Jianfeng <xiujianfeng@huawei.com>
Cc: Alyssa Ross <hi@alyssa.is>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
	David Howells <dhowells@redhat.com>, Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
Message-ID: <aYSWoVUBkPA52fqS@devuan>
References: <20260203195001.20131-1-hi@alyssa.is>
 <aa62e24c-537e-4141-9507-37cd0af19dfc@huawei.com>
MIME-Version: 1.0
In-Reply-To: <aa62e24c-537e-4141-9507-37cd0af19dfc@huawei.com>

Hi Xiu,

On 2026-02-05T19:48:02+0800, Xiu Jianfeng wrote:
> On 2/4/2026 3:50 AM, Alyssa Ross wrote:
> > This is true for Fedora, where this page was sourced from, but I don't
> > believe it has ever been true for the mainline kernel, because Linus
> > rejected it.
>=20
> Yeah, I also found this issue not long ago, but I haven't had time to sub=
mit
> a fix patch yet.
>=20
> >=20
> > Link: https://bbs.archlinux.org/viewtopic.php?pid=3D2088704#p2088704
> > Link: https://lore.kernel.org/lkml/CA+55aFzYbpRAdma0PvqE+9ygySuKzNKByqO=
zzMufBoovXVnfPw@mail.gmail.com/
> > Fixes: bb509e6fc ("kernel_lockdown.7: New page documenting the Kernel L=
ockdown feature")
> > Signed-off-by: Alyssa Ross <hi@alyssa.is>
>=20
> I am not sure if appropriate to add my ACK here, if needed, feel free to
> add:
>=20
> Acked-by: Xiu Jianfeng <xiujianfeng@huawei.com>

It's appropriate.  Thanks!


Have a lovely day!
Alex

>=20
> > ---
> >   man/man7/kernel_lockdown.7 | 3 ---
> >   1 file changed, 3 deletions(-)
> >=20
> > diff --git a/man/man7/kernel_lockdown.7 b/man/man7/kernel_lockdown.7
> > index 5090484ea..5986c8f01 100644
> > --- a/man/man7/kernel_lockdown.7
> > +++ b/man/man7/kernel_lockdown.7
> > @@ -23,9 +23,6 @@ Lockdown: X: Y is restricted, see man kernel_lockdown=
=2E7
> >   .in
> >   .P
> >   where X indicates the process name and Y indicates what is restricted.
> > -.P
> > -On an EFI-enabled x86 or arm64 machine, lockdown will be automatically=
 enabled
> > -if the system boots in EFI Secure Boot mode.
> >   .\"
> >   .SS Coverage
> >   When lockdown is in effect, a number of features are disabled or have=
 their
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--yhe57fagq2cmnxat
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmEltQACgkQ64mZXMKQ
wqkxBQ//R9kPXo6B0sLs5avEPdlNYp1Kij/ZyGXk/ZGyH+Jom6r0c0z1L4rrp9YZ
6vgmpFgLXPsZRRFuDPHakjqeEd05IwjH5novgmLQcDEwY3XyawHDC8cxWlCwrgqM
JOK4Os/QvS3EXG+UxS6Bh++fqRCyRNiCJ8ytes4qDK2SiA/gatGfCKD6yqhlawmO
e3GMVgxTNcWrUfkE13YPkBrEuSpvwIautcm6bEKnXb8eLWtf5fkYTANaUa26xQlb
8tH2i+54xE8BVmuGyJvCXi4d7pmVecUcEL7LMUiyuSQ56BaWp7Kxvd+X/C4WeYYe
LENFyeqzx2lD+Sk8NaLnBSaOvW/f631cVn+Y6ZX3tUo/8yrJIYS+uCbXacO6hU4e
EEg9r8KPTGDK5+cowUTa/Jh+q7cizzVHyPjJ2Gr1ZT3hWUv9APDy1Wnngpp8mgJ+
AgeUHOHO8NsxzFuYPNddnZfvq7X+xKY02IG7zsOV7+tn0FNRyFku19lGiGgku3/e
N1D3uUgXiY/z7QYcAk+p9MxCi1YTZ+KjJbrxEVBI8bmskUsuB0hik7r8rJ/9uh+a
HxfqL8etbhI9we5Bc7Naa0EVyDx6bAI08DGp/0+aCdzWlP2sZO1tZQo1DKDaU96c
aekhlZDfiOWFvTB3tfXBJMJCqsgh0Zhi7Z0W9p0d4vL/4B8i2Zs=
=SEQH
-----END PGP SIGNATURE-----

--yhe57fagq2cmnxat--

