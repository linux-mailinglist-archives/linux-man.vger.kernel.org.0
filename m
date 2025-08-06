Return-Path: <linux-man+bounces-3345-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D879CB1C1A1
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 09:56:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02DE9169ADD
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 07:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1882C21A436;
	Wed,  6 Aug 2025 07:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wj1SjSyY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5BB21B196
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 07:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754466992; cv=none; b=hNPnHVsGXXTyqMoV6tdMkD5YMeT11m7xn3LiKKQs8iycWq3Vg8WXae9tOk7v+V+97uNOOcKp/cU729YYUjDCYDuo3nccGylMXeMKb4/9gTRwVteuNJkuesfiDZuCHsyJrRyYJWrbZYX52hj8bss7nzkYJGdFTz8T6MGHukkF0a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754466992; c=relaxed/simple;
	bh=2Zw1KQ+42rJwioTxC/3XyPUQvIZWizaIHU3Cenzp+9w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bkAYq4JZ6Je3IBMYEDH8mhUurqYn13WV9lY57iQi/9OPbYE2ZNp2NhipmgghnDR9IxGkIYDsA+ZHV6oDY1IlwDDMT6qFM1cpix12qn95+zvCl/TnbV75sClcrjWhWKL4m+HDaLzioxQnJ/UMww4JI4e8hk8YBqUhHIKjeIwU270=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wj1SjSyY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9324CC4CEE7;
	Wed,  6 Aug 2025 07:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754466992;
	bh=2Zw1KQ+42rJwioTxC/3XyPUQvIZWizaIHU3Cenzp+9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wj1SjSyYHiKhguIJkH491Lxh49TSXkhh/K6BNXN9hOyPPCGgoBk0nSxx1NfF93RJK
	 aDo0B/ME4JoJLmVUbgde+1xKc/5iGzqYbXIuE8rbQTMzPs3pHtvtJQ1NKyLtSjIo8F
	 swDG14QVonHxUDkfkmix4M4QKxnHZx3ShnAEm2XBcCwH/5fCwMVkiTHkGVhZKXQLj2
	 JwPgWsu5ULD0uKyLhuVVqnz5BnuNFPjdgV/QE98h8WUuo/sWLgEAFGCiaJEsw3dVIx
	 aBsfFn/6S+sIsNFV37MLvnZSbW3iB7fMUtEEYRYVCM8lDslY76bjSaRrPrFEcod8/C
	 T75wawrtVQ7eg==
Date: Wed, 6 Aug 2025 09:56:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 03/10] fsopen.2: document 'new' mount api
Message-ID: <oddcieelhg2ilwn3l5vw5w6bxssz6ly7udapxhnnyzqegiioc7@m4o3lpvkrc52>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-3-8678f56c6ee0@cyphar.com>
 <p5ays37bbmfviag4ab4piciqtypbdy6v6uvqng4jj2gqbbtlq4@yks2uhxcajak>
 <2025-08-06.1754449030-onyx-chive-copied-spills-bendy-impact-K16w4n@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="36yx77qsgnhz5oyf"
Content-Disposition: inline
In-Reply-To: <2025-08-06.1754449030-onyx-chive-copied-spills-bendy-impact-K16w4n@cyphar.com>


--36yx77qsgnhz5oyf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 03/10] fsopen.2: document 'new' mount api
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-3-8678f56c6ee0@cyphar.com>
 <p5ays37bbmfviag4ab4piciqtypbdy6v6uvqng4jj2gqbbtlq4@yks2uhxcajak>
 <2025-08-06.1754449030-onyx-chive-copied-spills-bendy-impact-K16w4n@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <2025-08-06.1754449030-onyx-chive-copied-spills-bendy-impact-K16w4n@cyphar.com>

Hi Aleksa,

On Wed, Aug 06, 2025 at 01:05:00PM +1000, Aleksa Sarai wrote:
> > > +.SH SYNOPSIS
> > > +.nf
> > > +.BR "#include <sys/mount.h>"
> > > +.BR "#include <unistd.h>"
> > > +.P
> > > +.BI "int fsopen(const char *" fsname ", unsigned int " flags ");
> >=20
> > I tend to not have "name" in the name of parameters that are a string
> > representing a name.  The rationale is that strings very commonly used
> > for names, and so "fs" would be just as menaingful, and shorter.
> >=20
> > The description would make it obvious that it's the fs name.
>=20
> Personally, as a documentation reader I would find "const char *fs" more
> confusing -- a filesystem-related "open" operation that takes a non-path
> argument is already a little bit fruity, but "fsname" at least provides
> some indication that the string argument is a _name_ rather than a
> _path_. Just having "fs" is less clear IMHO.

Sounds reasonable.  Let's keep it as fsname.

> > > +.BR CAP_SYS_ADMIN
> >=20
> > This should be B.  BR is for alternating Bold and Roman (normal).
>=20
> Grr, I thought I fixed all of these typos. My bad.

No problem.  :-)

You could run the build system to find some of those for you, BTW.  Let
me know if you have any troubles with it.

> > > +capability in order to create a new filesystem configuration context.
> > > +.P
> > > +After obtaining a filesystem configuration context with
> > > +.BR fsopen (),
> > > +the general workflow for operating on the context looks like the fol=
lowing:
> > > +.RS
> > > +.IP 1. 3
> >=20
> > Please have a look at man-pages(7) for some conventions on lists in the
> > project:
>=20
> I will admit that I wasn't aware of how detailed (and particular)
> man-pages(7) was about the style guide. I'll read through and adjust the
> patches accordingly. Mea culpa.

No problem.  Most people don't know about it.  :)

> > > +.SH EXAMPLES
> > > +To illustrate the workflow for creating a new mount, the following i=
s a sample
> > > +of how to mount an ext4 filesystem stored on "/dev/sdb1" onto "/mnt".
> > > +.P
> > > +.in +4n
> > > +.EX
> > > +int sfd =3D fsopen("ext4", FSOPEN_CLOEXEC);
> >=20
> > 'sfd' is common for socket file descriptor.  Shouldn't we use fsfd?
>=20
> It's not really a "filesystem fd" because there is an in-kernel
> distinction between "filesystem context file descriptors" which are tied
> to superblock lifecycles and "mount object file descriptors" that act
> like a filesystem.
>=20
> As such, I'm not sure if "fsfd" is more descriptive in an example. The
> "s" in "sfd" stands for "superblock" and is a fairly common pattern
> userspace users of this API tend to use.

Hmmm, okay.  Then sfd or sbfd sounds reasonable.  Feel free to do what
you think more appropriate here.

> But I'm not too fussed about it, if you really prefer fsfd, I'll swap to
> that.

Nah, if fsfd might be confusing let's not use it.  But maybe if sbfd is
reasonable to you, we could use that.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--36yx77qsgnhz5oyf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiTCqkACgkQ64mZXMKQ
wqmoPg/+JqeourqUWa6PLTpZJkU2qjmyaPqClJQorMy85cf5u6Xdb19KdpfTGVom
a8c+KgBt7aCMUWncCvWkR+Bt2n3aIidcOW6LoWBwC2Pyb5Q1bD6BGclq0j1Ghsby
GwXm90zWcIjsFy4c+WNGLvUO4j3qjKf+eNTt6V8Vm+k/IhGVMTzNsHV5RWaWmicj
KPzDVuXB5XWv0c85zx8/lmaaEK+newPF7xVoFujPLduyx/vixhw9uyA2Lw2SDKPT
hb04U9IySovuS3kBQ9JVR+M4M9Vms5IsQT439dvdopfibmapR70VnLNZh91coH5h
E7395bFQLlXAYUR3lItjcBGAAxuX5XBb6lDScjDjp/i6ycbOjzq6aUuA1R5ZoANO
pfQ3wNRm00MQjZe9G+fHMGstrHTPSmn0hTg5H0IoF073xhAiwImJHwmOizLZ7tDC
R28g9hG432se6arkDrogk2LgzSpFSTUfr+tZ6RrLz6gBSSiuOP0Ebs9pmSXDSVU6
f/cMzoFDaRmlL2/TUgXgAbNlmF7DA7D1xavL60q9Z7kzW9E5jaSCJBX0QESVUzOf
2JZLEQqXPQV1LatrsmNAE2XgEqwSdJTChG/2mJVT9Gw5sRWFhViVvpsbCHmaEOiI
ElxMsOD9pQpCBmYYcRjDgb5DGvcWxtfVUxsvvPa5ahpvSBYiRgc=
=yd8G
-----END PGP SIGNATURE-----

--36yx77qsgnhz5oyf--

