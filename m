Return-Path: <linux-man+bounces-3347-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DFFB1C235
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 10:33:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D03D3AD0A1
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 08:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B80B62853E9;
	Wed,  6 Aug 2025 08:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="bZ+cQyfe"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D9D22156C
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 08:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754469197; cv=none; b=WnnZJlFe89dz9RD0BimFmf6/TpRk3uGPVK6Sw+o+2vYdt8PNvl4npOv2YA3NgMABtEfp2SJmcvC6RusUqOr/1BHjM9J+hnQ5YrHRo8+IJw+UCObCqxL7ab1lW/lCiAqV6pr5D08O2XBDWiagzGTDCvZJiDiqO1fuD3Yl90sTJdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754469197; c=relaxed/simple;
	bh=K+LyBrXmcQZUqx47khETCkEBM/EjP2XiYexGfVJrJz0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r91/GjQO7VFAfxp5VVsEANbt+83n82b3G4WZgTvw3io4NfFYjJXf/I9R7YeEUAE1dTnVymAgK+G6PqMbo2Q+G3OOJ7JOP93lVDN9VrPuLmVrSdFGDfJTGUySPOlptXjmpotKPh6mdEQT8jsCdfZ6jLmsKHsR6NN3eUD8PGTMMjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=bZ+cQyfe; arc=none smtp.client-ip=80.241.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4bxk870CBvz9smZ;
	Wed,  6 Aug 2025 10:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754469191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=o5tCPxt+gHJZY2Ag20hASpPGrguIdcvhGJ7CQJ6MPSI=;
	b=bZ+cQyfeV08N1GfRJZpVxzkP1Pz0XLoFnEIfkI2bipy3rekxKax4N+M3YHYAxpYiEdLuSo
	ZRFCcgQKyvx03R82ZXLgPdL8I7MnNWwUceRcRnEtSUJfAIhFwnondf1yK6+nkLpvQ3T8+2
	ZvypCi7IP8BQNdRnHHHf7tzjWp5TY7H+PJFhS8gxBm7RcAe6Sdcu+WGHmQDiB65WRYA8jo
	kTZpRuh2xZOV5guMEHMHJvUAdGUyBuW+UydnmR5eLYV+OCGpRNdbITtW+1OuNhinBywg5f
	OBBUjigLse76HMl41k05STqahWTeWOOhp3umPXxkWb+BL2N5zdv1p5qpZtVV8g==
Date: Wed, 6 Aug 2025 18:33:03 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Askar Safin <safinaskar@zohomail.com>
Cc: alx@kernel.org, brauner@kernel.org, dhowells@redhat.com, jack@suse.cz, 
	linux-man@vger.kernel.org, mtk.manpages@gmail.com, viro@zeniv.linux.org.uk
Subject: Re: [PATCH 05/10] fsconfig.2: document 'new' mount api
Message-ID: <2025-08-06.1754467977-polite-tests-sheer-baristas-mousy-juniper-YmIjZm@cyphar.com>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3le44uh4w4jiw3gl"
Content-Disposition: inline
In-Reply-To: <20250806074619.59685-1-safinaskar@zohomail.com>


--3le44uh4w4jiw3gl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 05/10] fsconfig.2: document 'new' mount api
MIME-Version: 1.0

On 2025-08-06, Askar Safin <safinaskar@zohomail.com> wrote:
> > and so a parameter that accepts FSCONFIG_SET_FD may not work with FSCON=
FIG_SET_PATH (or vice-versa).
>=20
> You probably meant FSCONFIG_SET_PATH_EMPTY here.

No, in this case I did actually meant FSCONFIG_SET_PATH (or rather
"FSCONFIG_SET_PATH or FSCONFIG_SET_PATH_EMPTY", but that felt too
wordy).

The point being made is that fsparam_fd() parameters are not compatible
with fsparam_path() -- though it turns out nothing in the kernel uses
fsparam_path().

I am working on an update to [1] which will add an fsparam_fd_or_path()
that does what userspace probably expects (and port overlayfs to it),
but most filesystems only accept one type for a parameter argument.

FSCONFIG_SET_PATH_EMPTY is a special case of FSCONFIG_SET_PATH, so I
opted to mention the general case here.

[1]: https://lore.kernel.org/r/20250805-procfs-pidns-api-v4-0-705f984940e7@=
cyphar.com

>=20
> Also, when I render this manpage using "man", I see this:
>=20
> > that the  underlying  file  for  the  file  descriptor  aux  should  be=
  used  as  the  parameter  value  directly;  FSCON=E2=80=90
> > FIG_SET_PATH_EMPTY  indicates  that  the  underlying file for the file =
descriptor aux should be re-opened by the filesystem
>=20
> As you can see, "man" breaks word "FSCONFIG_SET_PATH_EMPTY": "FSCON" appe=
ars on one line and "FIG_SET_PATH_EMPTY" on another line.
> Can you somehow prevent this? I. e. to prevent breaking of API names. Thi=
s is very annoying.
>=20
> > And here is an example of how fspick(2) can be used with fsconfig() to =
reconfigure the parameters of an existing mount
>=20
> As well as I understand, you meant filesystem (i. e. superblock) here, no=
t mount. Please, re-read all your manpages and double-check
> that you use terms "mount" and "filesystem/superblock" correctly everywhe=
re. As well as I understand, clear separation
> between superblocks and mounts was one of original motivations for creati=
ng "new" mount API. So, this is very important.
>
> So, it makes sense to write definitions of "filesystem/superblock" and "m=
ount" somewhere (for example, to the top of manpage for
> "fsopen") and then to use these terms consistently.

I intentionally tried to avoid using the term "superblock" as much as
possible, because the term is not generally used nor well understood by
userspace. The kernel terminology for it is even more fraught with
ambiguity because the closest thing approximating common usage of
"superblock" in userspace is the on-disk concept of a "superblock"[2] --
which doesn't make sense to refer to when talking about runtime
filesystem parameters. Kernel developers, of course, are referring to
something completely different -- a _conceptual_ "struct super_block"
that has little to do with the on-disk kind.

If we rely on the term, we would probably need to add a superblock(7) to
describe what a superblock is, which is a much larger documentation
topic than just the "new" mount API. It's not really enough to just
define it at the top of the fsopen(2) man page (as you suggested),
because most of the other man pages would need to cross-reference it.

The compromise I came up with was to use "mount object" when referring
to mounts (read: "struct (vfs)mount"), "filesystem configuration
context" or "filesystem context" when talking about "struct fs_context",
and "filesystem instance" when talking about "struct super". Those
seemed more self-descriptive to me, which would hopefully let me avoid
having to write 3 extra man7 pages. Though to be honest, I'm still not
sure that "filesystem context" is a sufficiently helpful term here, even
with the introductory paragraph in fsopen(2).

In this case, this should probably read "filesystem instance" but that
sounded strange to me when the comparison we use is with mount(2) which
uses the term "mount" for the same operation. I wasn't sure whether to
go with what users are more familiar with in an EXAMPLES section, or to
use the more common words. I guess there's a stronger argument to go
with "filesystem instance" here...

[2]: https://en.wikipedia.org/wiki/Superblock_(file_system)

> Also, thank you, thank you and again big thank you for this big work! We =
waited for these manpages for many years!
>=20
> --
> Askar Safin

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
https://www.cyphar.com/

--3le44uh4w4jiw3gl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCaJMTPwAKCRAol/rSt+lE
b6iAAP4/pFd2q3BR7U+Lzc0UYwVsq502gkWrGXEaLisst+/IdQD/aMVB4+er2whZ
qc8aixUrW7h8r88hMAHIRjkGuICRIwA=
=ZaQB
-----END PGP SIGNATURE-----

--3le44uh4w4jiw3gl--

