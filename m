Return-Path: <linux-man+bounces-5295-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YYbsH4fc0mlgbwcAu9opvQ
	(envelope-from <linux-man+bounces-5295-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 06 Apr 2026 00:04:55 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B444E39FF1D
	for <lists+linux-man@lfdr.de>; Mon, 06 Apr 2026 00:04:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9E213006B31
	for <lists+linux-man@lfdr.de>; Sun,  5 Apr 2026 22:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B5A62F5A29;
	Sun,  5 Apr 2026 22:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rig/PGxR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27221A262D
	for <linux-man@vger.kernel.org>; Sun,  5 Apr 2026 22:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775426691; cv=none; b=MS8j7tN1CDR8kxdYq8GzDEF2PVst45XzEcWW0GfhCVbdJTsbASO3TGUyoGYzbNM36gx7kmDaY2KEd9cIN6xubfC8t/mQ+zfYR6zYZkD8Je1BeLABmCh7zRPVgWu2AQLkGfQfwMY4qZwEOsOQkIyenRqilcFmgRuSZZkTzc8cQA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775426691; c=relaxed/simple;
	bh=xCYq9f4UQtD2oFqsVvfEfGKOMfRNvaRHOf/bxvu4Y6o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=twfjIr6UpDlJjfGPAZh3TT6XRdRVvBU9k9o9O2OTZ+pQeABFvLGQMzz3T1kO8Al6832UfW4KQdlgfzdxTtzab/HUZZciRzQgXCgsPkKVBA8u5fcNdBxR6MswGTiPJh4++E+J09SEhU4Gn/n16zetqMRlKq3u0kGM5eO661yIEO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rig/PGxR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE134C116C6;
	Sun,  5 Apr 2026 22:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775426691;
	bh=xCYq9f4UQtD2oFqsVvfEfGKOMfRNvaRHOf/bxvu4Y6o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rig/PGxRif2UJtgDMgutMUbHRqopOlZms553Q+MvN2CNNAA4p0oLR7P6sWqa5JjBt
	 Ci9MA/nMIHXhjBU2JHLcW7f8QoI+76RRckbZ8iLtTg2667z7OxUJeM1wRf38STIJ5E
	 7B10YgpeiMZNNPmifNaCF5QSgMZ43XndQEFh/b2+BFBo5ss/zRM+jY+Kfg0/kl3N1j
	 gCt/YZANfRvwbLitxp2696xxe0s0V0/BvJddP2krrWZrl/9u6apqBwvrXZazCed1vH
	 qtvccBTsitZjwYKCvehNv/WY2G52VmiocAoh2NXCMBhstS1ylnN3fgRyy+iZ6z2MPI
	 uRyUssDkiMHpQ==
Date: Mon, 6 Apr 2026 00:04:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: vursc <vursc@vursc.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/getdents.2: Fix incorrect argument type
Message-ID: <adLcKauddujSMHyZ@debian>
References: <20260404074909.92900-1-vursc@vursc.org>
 <CAMdZqKGyG3vksBugjZ+WOt6xV7dqtc40L-vESmoAB9HZHfV7FQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rcs2ikqabbocwxjh"
Content-Disposition: inline
In-Reply-To: <CAMdZqKGyG3vksBugjZ+WOt6xV7dqtc40L-vESmoAB9HZHfV7FQ@mail.gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5295-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vursc.org:email,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: B444E39FF1D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--rcs2ikqabbocwxjh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: vursc <vursc@vursc.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/getdents.2: Fix incorrect argument type
Message-ID: <adLcKauddujSMHyZ@debian>
References: <20260404074909.92900-1-vursc@vursc.org>
 <CAMdZqKGyG3vksBugjZ+WOt6xV7dqtc40L-vESmoAB9HZHfV7FQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdZqKGyG3vksBugjZ+WOt6xV7dqtc40L-vESmoAB9HZHfV7FQ@mail.gmail.com>

Hi Mark, vursc,

On Sat, Apr 04, 2026 at 02:53:07PM -0700, Mark Harris wrote:
> vursc wrote:
> >
> > The count argument of getdents64 is an unsigned int; see
> > SYSCALL_DEFINE3(getdents64, ...) in linux/fs/readdir.c.
> >
> > Signed-off-by: vursc <vursc@vursc.org>
> > ---
> >  man/man2/getdents.2 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/man/man2/getdents.2 b/man/man2/getdents.2
> > index 8c5bbebbc..3890943ee 100644
> > --- a/man/man2/getdents.2
> > +++ b/man/man2/getdents.2
> > @@ -23,7 +23,7 @@ Standard C library
> >  .B #include <dirent.h>
> >  .P
> >  .BR "ssize_t getdents64(" "size_t count;"
> > -.BI "                   int " fd ", void " dirp [ count "], size_t " c=
ount );
> > +.BI "                   int " fd ", void " dirp [ count "], unsigned i=
nt " count );
>=20
> The third argument of the function has type size_t in glibc
> (https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dsysdeps/unix/sysv=
/linux/getdents64.c;hb=3DHEAD)
> and musl (https://git.musl-libc.org/cgit/musl/tree/src/linux/getdents.c).
> According to intro(2): "the manual pages in Section 2 generally try to
> note the details of both the (usually GNU) C library API interface and
> the raw system call.  Most commonly, the main DESCRIPTION will focus
> on the C library interface, and differences for the system call are
> covered in the NOTES section."  So rather than changing the function
> prototype, adding a note to the NOTES section may be more appropriate.
>=20
> That said, the DESCRIPTION section claims, "This page documents the
> bare kernel system call interfaces", so that should be corrected as
> well.  It appears that that was written before the glibc function
> existed and is outdated.

Thanks!  That seems the appropriate solution.  vursc, would you mind
sending an updated patch set doing that?  Or should I?


Have a lovely night!
Alex

>  - Mark
>=20
>=20
> >  .fi
> >  .P
> >  .IR Note :
> > --
> > 2.53.0
> >
> >
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--rcs2ikqabbocwxjh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnS3HMACgkQ64mZXMKQ
wqndUhAAt/m1j54ILPEMQFGI0skJvEeS8cHdpl+nwXgutRSZxFTFLXpkzFIFbffk
I0qVFZzaqsNigQUF9zcNRLlCZ1/RJDK5XVx7ujzUd/8CW+ZS7dl+XF1wgSNUN7TO
4HUCzCNZdB1HymEj/aPlnzftSUKIS+/BT+hpgYbj/N7f19AWWk4qQTfGnOhAMNoG
3KTiax3HC7D+K+UOL3xQlXrVX2bRyQPXNUDzIOIqj94R3UsIyV3C7f9mWc8Ygpqi
uBVz5XffhrIG0P2vHSNcsiKQg5M4N8lJS7YiG4XwOI/zMakNlh6hz3iqShHz0J03
QfGvMDpwsmZzlBFUNE08Ke0xxUN8hNKLW9Rs2kiyfpKqVLtWuSxTEKFk/1V8ruuh
BuT7ND57T5OUxN2XSIbAG11pRXqeW2SQoCMjaTbtMBcsUIKsuuaIzoYL7eR7n12m
6Lz7SrQKy4WRgkO15p5OKg26L0FqXpBCK/EUrF3Amo7KxO+6I+MdP7ll5m6vl+lc
jno8QPjcWwXmiDK3iLdYw84Bwrd3VDKo2ozCrlmyoqo/aZ1S3iPLGbPE1jaqC3BI
I0VxkwF0u3vf2qWXtED+P2Eux9QHgNrFxC0o+JVfz9uPVS0DrznvmxJaga8pBXxE
BnbZOW8iLfF7EyXznfVIe18hnKddeEK1edeCVAkO+bDOMEeQnu4=
=mAM1
-----END PGP SIGNATURE-----

--rcs2ikqabbocwxjh--

