Return-Path: <linux-man+bounces-5317-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +L7VCXoO2GmlWwgAu9opvQ
	(envelope-from <linux-man+bounces-5317-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 09 Apr 2026 22:39:22 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B46C3CF903
	for <lists+linux-man@lfdr.de>; Thu, 09 Apr 2026 22:39:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32176301050A
	for <lists+linux-man@lfdr.de>; Thu,  9 Apr 2026 20:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA6DC315D3B;
	Thu,  9 Apr 2026 20:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxTaxfyp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D88A239E75
	for <linux-man@vger.kernel.org>; Thu,  9 Apr 2026 20:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775767155; cv=none; b=nPOr3gHpCb9UDW70+5kVUx6IkE09giPfzALJR2Vx0gMLs7DM4jcroKB+01Av02qS5kaqsMsbc0EX/vC7GfvZbhF17HHReksRxtrZbvb6ZEAiW7Mfj9FYKFG4g/030VtMOFvfiuW/txwdQtQxkkFzQtEjgax8MZdl4sHoEoIaqS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775767155; c=relaxed/simple;
	bh=1LcxTP6ZlSde3ZBdqtK6U+TJdBzcZFJXKqlLLopiJH8=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AAyCFDARGjZQ4jp0ckdYIS4+nDkk2GMIVOllL6BwgI6LX7ggpZHGPQ+Mlzvtb/cRGwNbCcdCRA0HkC3h3fj2JQ7wAD/084WG445pmUWof7Zn+UuRcFyrZuxOzsOQ8pLFq/46a2EcSg8cdQWVLXiy8ykpgdlVD3C5AtchOpAt39A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxTaxfyp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9661C4CEF7;
	Thu,  9 Apr 2026 20:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775767155;
	bh=1LcxTP6ZlSde3ZBdqtK6U+TJdBzcZFJXKqlLLopiJH8=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=gxTaxfypToREQ36rwKAw6WNABNx+pn7YvEkbF0HFjzz8IpUb72964DDQau4F5e7AB
	 RkBhv5cs8hS7feY5WYHj8+haVf5dJNn0gxz7c7/SHT0yt5inLjc/KPlAhT4HRzH1r9
	 oH5aXBj7R6rcdboWwPXojqhHe3TbfQK/WpSScfxkzDsZg2OKY/wYn4E03WHYTnGyhr
	 G+qqRz1XKQveJPR4W2+yoY804AA5L7gNGwvlYs/gwGWH3oUbpLJDnsC6TTBlz8Tqr7
	 es+WBDfKSBTWYlF5SUOokYz5ZBYpBGtDPhIcwsJ1dgT58uXXgrkKnEcjFCX+c3FfWg
	 eVa9jb47R8cxQ==
Date: Thu, 9 Apr 2026 22:39:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@debian.org>, linux-man@vger.kernel.org, 
	linux-aio@kvack.org
Subject: Re: [PATCH v1 6/6] man/man*/io_setup.[23]: Split io_setup(3) from
 io_setup.2
Message-ID: <adgMl9ixFGs04eiM@debian>
References: <cover.1775639353.git.alx@kernel.org>
 <c6fcae43d95ef9d96e156d295ee72a2b5563dbce.1775639353.git.alx@kernel.org>
 <adfY40InKCShuLlE@thunder.hadrons.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qyw7wdyltmoetcmh"
Content-Disposition: inline
In-Reply-To: <adfY40InKCShuLlE@thunder.hadrons.org>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5317-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,kvack.org:email,fedorahosted.org:url]
X-Rspamd-Queue-Id: 7B46C3CF903
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--qyw7wdyltmoetcmh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@debian.org>, linux-man@vger.kernel.org, 
	linux-aio@kvack.org
Subject: Re: [PATCH v1 6/6] man/man*/io_setup.[23]: Split io_setup(3) from
 io_setup.2
Message-ID: <adgMl9ixFGs04eiM@debian>
References: <cover.1775639353.git.alx@kernel.org>
 <c6fcae43d95ef9d96e156d295ee72a2b5563dbce.1775639353.git.alx@kernel.org>
 <adfY40InKCShuLlE@thunder.hadrons.org>
MIME-Version: 1.0
In-Reply-To: <adfY40InKCShuLlE@thunder.hadrons.org>

Hi Guillem!

On 2026-04-09T18:50:43+0200, Guillem Jover wrote:
> Hi!
>=20
> On Wed, 2026-04-08 at 11:18:51 +0200, Alejandro Colomar wrote:
> > This simplifies the documentation of the system call.
> > Let the wrapper be documented as io_setup(3).
> >=20
> > Cc: Guillem Jover <guillem@debian.org>
> > Cc: <linux-aio@kvack.org>
> > Signed-off-by: Alejandro Colomar <alx@kernel.org>
> > ---
> >  man/man2/io_setup.2 | 60 ++++++++++++---------------------------------
> >  man/man3/io_setup.3 | 40 ++++++++++++++++++++++++++++++
> >  2 files changed, 56 insertions(+), 44 deletions(-)
> >  create mode 100644 man/man3/io_setup.3
>=20
> > @@ -87,35 +81,12 @@ .SH ERRORS
> >  .BR io_setup ()
> >  is not implemented on this architecture.
> >  .SH VERSIONS
> > -glibc does not provide a wrapper for this system call.
> > -You could invoke it using
> > -.BR syscall (2).
> > -But instead, you probably want to use the
> > -.BR io_setup ()
> > -wrapper function provided by
> > -.\" http://git.fedorahosted.org/git/?p=3Dlibaio.git
> > -.IR libaio .
> > -.P
> > -Note that the
> > +.UR https://pagure.io/libaio
>=20
> The pagure.io site is being decommissioned in few months, and I've
> been meaning to ask where the project will be moved for its hosting.

Thanks!  Please let me know if you learn anything about this.

> > diff --git a/man/man3/io_setup.3 b/man/man3/io_setup.3
> > new file mode 100644
> > index 00000000..28b59550
> > --- /dev/null
> > +++ b/man/man3/io_setup.3
> > @@ -0,0 +1,40 @@
> > +.\" Copyright, the authors of the Linux man-pages project
> > +.\"
> > +.\" SPDX-License-Identifier: GPL-2.0-or-later
> > +.\"
> > +.TH io_setup 3 (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +io_setup \- create an asynchronous I/O context
> > +.SH LIBRARY
> > +Asynchronous I/O library
> > +.RI ( libaio ,\~ \-laio )
> > +.SH SYNOPSIS
> > +.nf
> > +.B #include <libaio.h>
> > +.P
> > +.BI "long\~io_setup(unsigned int " n ", io_context_t *" ctx_idp );
> > +.fi
> > +.SH DESCRIPTION
> > +.BR io_setup ()
> > +creates an asynchronous I/O context suitable for concurrently processi=
ng
> > +.I n
> > +operations.
> > +.SH RETURN VALUE
> > +On success,
> > +.BR io_setup ()
> > +returns 0.
> > +On error,
> > +a negative error code is returned to indicate the error.
> > +.SH ERRORS
> > +See
> > +.BR io_setup (2).
> > +.SH STANDARDS
> > +libaio.
> > +.SH HISTORY
> > +libaio.
> > +.SH SEE ALSO
> > +.BR io (3),
> > +.BR io_setup (2),
> > +.BR aio (7)
> > +.\" .SH AUTHOR
> > +.\" Kent Yoder.
>=20
> I think it makes sense to split the syscall from the actual library
> function man pages,

Thanks!  I'll go on with this.

> and IMO it would make sense to move the .3 man pages
> for the wrapper functions to libaio, as it's the project providing them.

On the other hand, it depends on how much work a project will spend on
their manual pages.  To me, it's just a small percentage of extra pages,
so I'm fine handling them if it would mean a lot of work to the project.

I might need their feedback every now and then, but since I don't expect
the APIs to change much if at all, I guess I won't need that much help.

We can do whatever they prefer to do.

> I think though it would be nice to have them being self-contained, and
> only refer to the syscall man page for reference, but not to delegate
> content.

This means more maintenance work.  It's harder to keep them in sync.

And it's also harder to spot the actual differences.  I tend to prefer
referencing other pages.  Of course, there's a limit to that; you don't
want to read 10 or 20 pages to understand an API; but 2 pages could be
reasonable, depending on the case.


Have a lovely night!
Alex

>=20
> Thanks,
> Guillem

--=20
<https://www.alejandro-colomar.es>

--qyw7wdyltmoetcmh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnYDmcACgkQ64mZXMKQ
wqnAlA//cT63ScAl7vZmtXsw8oQKUiNAQUlUCG88wMZ/wkkS87JJBs4aZZEtBXgm
M35wQuyLrwKzIrxWoKb7N9JbWd3rUbiJoMmNF1FRduIdOe0pH93t42NBGquzeric
ItDPMInjenq2Sldo+2t4npl5UGQhYRRApW3e/1REgLeoZsl4VEt95dFp6f+f9FCg
t9KTyFU2vGgMyJu62KuXUAsI6tVHslPX8KY4xGn69jUiEQi0dswy32Zv1eZGMDMj
gyb/NiJSOqT6GxrblJ4dNWkNCvOIaBe2KnAwH+B5v39qbxuA3WZ+nE/1h8pIn3EI
mmiPxy5EGgn93c6BWOdsKhNrfkspzb9cqVpa82msUFa7C3RBb2yg/b0PgWFBsA+I
C7XR8qO2rmClpyT4AjBNkLblKacSxAl+rEGLCu644IeFoKm93jy+YQYrnFOcng/c
sT5FHj9Qs3yMyRHlY5zjgOoXETtT21ed4TojaTsy2fcr0vfYqc3RQh9Ejzs2d9aN
0mbaIHfxjPCByRbGPHSYjI7DZAsdSJXMlO1zPTYtkXY/29IvkhFwBNOQyNPAy4Nm
m0xLYwD2Szbedhet7cv/Bij4OnexOjhHkilR3+pvMbMhNRJfv8B5KnxX5Dp+JmEY
cyMmqkxpPQcWuAgKAnhV9pVy65v1QdjIpUxHGAQE4vSq/dpBQ2E=
=Hb0q
-----END PGP SIGNATURE-----

--qyw7wdyltmoetcmh--

