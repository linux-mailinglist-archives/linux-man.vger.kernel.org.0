Return-Path: <linux-man+bounces-3344-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AFEB1C196
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 09:51:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28A381891F73
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 07:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16FE7218821;
	Wed,  6 Aug 2025 07:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzLW92r7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB32218C31
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 07:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754466688; cv=none; b=HJF3BQGu8caqSK/2HbkcBACVz3K+7QWuYT5D8e1kwgKn631VbWKrNgtawYjRa3noWq63N3/ZO2E/hBHKUC+BVwRAUao7m6LkJFfUZnJGLlMP5l8m5+oX9hqATKrMR1GHN4P7niDPp/FhF29c6gQXh8qP+P9FL0CTxTh3k4ODBvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754466688; c=relaxed/simple;
	bh=9ORVfoTVSPfu23F/XhGBdkOm607rR+A2Iwp4U2MNYOs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iaV2QbegHCniQ/cG2Bud37Mt08XPyU6PIRaoMCkhI7hkku6+vOayTam3Q6TeVUQeYNsmdUU2UQoWYMhGHrUwoiw9T2xLFvTt2MhW7+AbSdH5DH493DfHjHyPbi4yP7GwMAOdrCSkVPe7rz1fUmwrFYlXcx9kgsbE9czeQS+u9lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzLW92r7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B713CC4CEE7;
	Wed,  6 Aug 2025 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754466688;
	bh=9ORVfoTVSPfu23F/XhGBdkOm607rR+A2Iwp4U2MNYOs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lzLW92r7e6C0BIb9n26rq3QDQxqmV62EchvKcFDCE6x7f0wZKdvPcv2I90Kr8crqo
	 EWhFq3XLOiw7zPbPzWPeG5bKLsny778ZcXzSFjKWiwgfSt7Ynj3bRIuoSKWGGueMwe
	 Wdqs5VuHUKHcTHahmYTiv8I9lbo7QNKqjgsbjNQ/5JdRvyKram1YZDbYcwz0Huede1
	 Ti6X85y1TQBxrdN2ZwL072BcshsLFBmS1u7qA8vTRjAQZaDnxCJEAPwnsnO2iPw8n2
	 t3r7b2ECCvT8ymJVPbzviHQdc4I3hhO1TlnD4200hwh5mJNm5SBcXhntCgGXLNzjie
	 K0ZstivpHGE9Q==
Date: Wed, 6 Aug 2025 09:51:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 01/10] mount_setattr.2: document glibc >= 2.36 syscall
 wrappers
Message-ID: <k65abiv7biuyl425nrdxjqyd4ltxkdwhrxwusogewu3ph6iuga@qdpcimo4zbwc>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-1-8678f56c6ee0@cyphar.com>
 <3bzyha2suimaoub2buy3epy2awxde75tpmnsbtgbshigngbi56@pgan2jq3eic5>
 <2025-08-06.1754448771-warmer-joystick-brown-wins-proper-slack-7Nj7RV@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6uh2slvetq3bq3xk"
Content-Disposition: inline
In-Reply-To: <2025-08-06.1754448771-warmer-joystick-brown-wins-proper-slack-7Nj7RV@cyphar.com>


--6uh2slvetq3bq3xk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 01/10] mount_setattr.2: document glibc >= 2.36 syscall
 wrappers
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-1-8678f56c6ee0@cyphar.com>
 <3bzyha2suimaoub2buy3epy2awxde75tpmnsbtgbshigngbi56@pgan2jq3eic5>
 <2025-08-06.1754448771-warmer-joystick-brown-wins-proper-slack-7Nj7RV@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <2025-08-06.1754448771-warmer-joystick-brown-wins-proper-slack-7Nj7RV@cyphar.com>

Hi Aleksa,

On Wed, Aug 06, 2025 at 12:55:15PM +1000, Aleksa Sarai wrote:
> > > @@ -10,21 +10,14 @@ Standard C library
> > >  .RI ( libc ,\~ \-lc )
> > >  .SH SYNOPSIS
> > >  .nf
> > > -.BR "#include <linux/fcntl.h>" " /* Definition of " AT_* " constants=
 */"
> > > -.BR "#include <linux/mount.h>" " /* Definition of " MOUNT_ATTR_* " c=
onstants */"
> > > -.BR "#include <sys/syscall.h>" " /* Definition of " SYS_* " constant=
s */"
> > > +.B #define _GNU_SOURCE
> > > +.B #include <sys/mount.h>
> > >  .B #include <unistd.h>
> > > +.BR "#include <fcntl.h>" "       /* Definition of " AT_* " constants=
 */"
> >=20
> > Please keep the include that provides the function prototype last.
> >=20
> > And document with a comment the rationale for including all other
> > headers.
>=20
> *All* of the headers? <sys/mount.h> includes both the prototype and
> MOUNT_ATTR_* constants, and most other man pages only include an
> explanation for some of the includes AFAICS.

Not all of them.  The only exception is the header that provides the
prototype; we never comment that one.

So, since this prototype is in <sys/mount.h>, this header should come
last and not have a comment.  But you should add a comment for why we
want <unistd.h>.

>=20
> > >  .P
> > > -.BI "int syscall(SYS_mount_setattr, int " dirfd ", const char *" pat=
h ,
> > > -.BI "            unsigned int " flags ", struct mount_attr *" attr \
> > > -", size_t " size );
> > > +.BI "int mount_setattr(int " dirfd ", const char *" path ", unsigned=
 int " flags ",
> > > +.BI "                  struct mount_attr *" attr ", size_t " size );
> >=20
> > Please use array notation if you can.  Have a look at, for example,
> > strncpy(3), for how it's done in source code.
>=20
> "struct mount_attr *attr" is not an array argument, it's an extensible
> struct. mount_setattr(2) already has docs explaining this (in the
> "Extensbility" section, as well as later in DESCRIPTION).

Ahhh, sorry.  So this is a versioning size.  Thanks!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--6uh2slvetq3bq3xk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiTCXkACgkQ64mZXMKQ
wqn6Xw/9Gp2fDbDEjIYq6eb8qx4GoTPXeQbA2OvPAB86DukKvL594bo+w7EEKM5o
zAXc3S6izt1BSuJG/n5QSG6hMbrwJGxYxjeY/XEW7RHC7gUHR72qFN7+AAk2Meno
qQi+HJsoroDG+gnk5cveY8AlHlHL+Ry0MBlnewnCx697TeWWG7dSnL6U8EfTGqmF
RfvHAGZdQlETvbuV7UtdTUNn1xWLCvin46HupCIhpnFOCz7KBRfZ+PhGqCCod4Ry
YJ9w0DZQlS/0lBLwea2EI7w9gAEl2qVPKGR6woDvePnKYBulu2iaRTxY2sSMvR+g
F4lSFi8vcNCfcayor2kXGPGcWJn1E/rT1sypUoR/0M1G3L2xGQZ+Zlls0Tf2fdYS
e+tZXdkXe482kzhRk7KQhv5ggzdkTPFh56cvR7aG5DT42H2FXzc3UXPTLhXlTwhH
do6CVdRCqDJ8qU2Wo9jR6ZojfwzdlIvRx35AweeV9UgFOfGlWE3YaVOciB5Ap7Lo
zrnux3VWiamd3V91hluopI2H94PLIgeUBCNbFPQMR0I2P3c/1+pPkomtYGvlYJKv
KyWPiDgxaffS8tIAFOlveswq/5NxKcI/bqGvrrTq27swP0W6idyURRtUyInq34kT
y1Ird2X6KvpX8vN3tQD/V305L3nfg7+isFxIWQD08mddWk+7G1s=
=OI4R
-----END PGP SIGNATURE-----

--6uh2slvetq3bq3xk--

