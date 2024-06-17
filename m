Return-Path: <linux-man+bounces-1221-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 502BE90AD6C
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 13:56:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E9837B24C80
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 11:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB503195384;
	Mon, 17 Jun 2024 11:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHMrRQeg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E34194C96;
	Mon, 17 Jun 2024 11:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718625336; cv=none; b=OhDzG4KJlBkge+u4u8LRWbcII4hMPGuhtHwKFUtEr7064DpUaGou9zXezPE8XqH9rAk7peB6OJDtYBMq4y8HHoQORb+E/cvF5bDQKNy48JVM8jW7RMl+cD9mt8cQirp/NsCIQUD26e+tWRoVRkVTcTvo5uHNzzVFb68w3pB6RtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718625336; c=relaxed/simple;
	bh=XM+m2RBVOi8tsNIGmrWAzIXgQ8fNtz6IroH1/xqCBNk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OICWaxI/EBslFbNzoye5mW8mFmZIYXlLxMpOLdcR2Iwx+fOMtTa2QZZt6rdcDB854e6KKCkh3bFT5d02zZ3s45x9FNy7kRC0wMq74f83x0Dk0Gxu07SRxtTp39nyTag5bQjdLehI2dpV8qvRXtpm8Ps8LMlEbZ5QxIlVNN9gVRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHMrRQeg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1F6BC4AF48;
	Mon, 17 Jun 2024 11:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718625336;
	bh=XM+m2RBVOi8tsNIGmrWAzIXgQ8fNtz6IroH1/xqCBNk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OHMrRQeg5jp/ugsI0Ko0Jw4GuJKWfKVsxFoJPkp2wQMUuxzrF1TX50bBeovTHaGj/
	 cLWnjCrFW+2/+AYJlUCZH9GaKoSaN8mqsLIyelves8FneOqCp+9Q3P7d/dOBz/P+1d
	 W0vCQ+65jT2UIYZ0NGox4EQIXANyDAPDUI3NaIfh1U8e0tKv+VE2PAiMlM3AtLQ/9T
	 +7bKSH36imNi1wtNQzggryPWLZ0wVfKOVK0237ZvRJt7NnT6gzN2Omg1ECt/1PSxJW
	 c8P91uvb1a/b/fZ/vJYeSrHsb8vY9Og9v7ZlglMkH/SRaNhnyThk5agik8Yvj6DAx9
	 alHY+JqTkasQQ==
Date: Mon, 17 Jun 2024 13:55:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org, 
	andyrtr@archlinux.org, Luna Jernberg <droidbittin@gmail.com>, 
	"Dr. Tobias Quathamer" <toddy@debian.org>, Marcos Fouces <marcos@debian.org>, Sam James <sam@gentoo.org>, 
	Jonathan Corbet <corbet@lwn.net>, man-pages-maintainers@fedoraproject.org, 
	Petr Gajdos <pgajdos@suse.cz>
Subject: man-pages-6.9.1 released
Message-ID: <dncnuuuqpf4pa3toado6hk3inupa6ntlqxdt4x4y4l63mubuoy@kyam5murveos>
References: <cpolays26kcjvekvowwik3di3ut66puls47w3gvdfwep66uaul@ka4omfzltwcs>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2fxiyucdjqmu7hrg"
Content-Disposition: inline
In-Reply-To: <cpolays26kcjvekvowwik3di3ut66puls47w3gvdfwep66uaul@ka4omfzltwcs>


--2fxiyucdjqmu7hrg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org, 
	andyrtr@archlinux.org, Luna Jernberg <droidbittin@gmail.com>, 
	"Dr. Tobias Quathamer" <toddy@debian.org>, Marcos Fouces <marcos@debian.org>, Sam James <sam@gentoo.org>, 
	Jonathan Corbet <corbet@lwn.net>, man-pages-maintainers@fedoraproject.org, 
	Petr Gajdos <pgajdos@suse.cz>
Subject: man-pages-6.9.1 released
References: <cpolays26kcjvekvowwik3di3ut66puls47w3gvdfwep66uaul@ka4omfzltwcs>
MIME-Version: 1.0
In-Reply-To: <cpolays26kcjvekvowwik3di3ut66puls47w3gvdfwep66uaul@ka4omfzltwcs>

On Fri, Jun 14, 2024 at 10:16:22PM GMT, Alejandro Colomar wrote:
> Gidday!

Gidday!

> I'm proud to announce:
>=20
> 	man-pages-6.9 - manual pages for GNU/Linux

man-pages-6.9 had a broken link page: FICLONERANGE.2 pointed to a
nonexistent page.  Thus, here's:

	man-pages-6.9.1 - manual pages for GNU/Linux

Tarball download:
<https://www.kernel.org/pub/linux/docs/man-pages/>
Git repository:
<https://git.kernel.org/cgit/docs/man-pages/man-pages.git/>
Online PDF book:
<https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/>

You are receiving this message either because:

        a)  (BCC) You contributed to the content of this release.

        b)  You are subscribed to <linux-man@vger.kernel.org>,
            <linux-kernel@vger.kernel.org>, or
            <libc-alpha@sourceware.org>.

        c)  I have information (possibly inaccurate) that you are the
            maintainer of a translation of the manual pages, or are the
            maintainer of the manual pages set in a particular
            distribution, or have expressed interest in helping with
            man-pages maintenance, or have otherwise expressed interest
            in being notified about man-pages releases.
            If you don't want to receive such messages from me, or you
            know of some other translator or maintainer who may want to
            receive such notifications, send me a message.

> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in m=
an-pages-6.9 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Released: 2024-06-14, Aldaya

[...]

> New and changed links
> ---------------------
>=20
> man2const/
> 	EPIOCGPARAMS.2const		(ioctl_eventpoll(2))
> 	EPIOCSPARAMS.2const		(ioctl_eventpoll(2))
> 	FAT_IOCTL_GET_ATTRIBUTES.2const	(FAT_IOCTL_SET_ATTRIBUTES(2const))
> 	FICLONERANGE.2const		(ioctl_ficlone(2))

This was broken.  And now I realize that the changelog didn't document
the rename from ioctl_ficlonerange.2 =3D> FICLONE.2const.  The script I
wrote didn't handle renames.  I'll fix the changelog later (but not
include it in a bugfix release, since that's not critical).

[...]

Have a lovely day!

Alex

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in man=
-pages-6.9.1 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Released: 2024-06-17, Aldaya


New and rewritten pages
-----------------------

None.


Newly documented interfaces in existing pages
---------------------------------------------

man2/
	getrlimit.2
		rlim_t


New and changed links
---------------------

man2const/
	FICLONERANGE.2const		(FICLONE(2const); was broken in 6.9)

man3type/
	rlimit.3type			(getrlimit(2))
	rlim_t.3type			(getrlimit(2))


Removed pages
-------------

None.


Removed links
-------------

None.


Global changes
--------------

-  Build system
   -  Add checks in the build system, to prevent creating link pages
      that link to a page that doesn't exist.
   -  Merge handling of man(7) and mdoc(7) manual pages into a single
      implementation.

-  man
   -  Fix old references to NOTES sections, whose contents have been
      moved to other sections such as VERSIONS, CAVEATS, or HISTORY.
   -  Fix incorrect nesting of EX/EE inside nf/fi.

-  CONTRIBUTING.d
   -  Fix some contributing documentation, after I noticed some
      contributor had been confused by some old instructions.


Changes to individual files
---------------------------

The manual pages and other files in the repository have been improved
beyond what this changelog covers.  To learn more about changes applied
to individual pages, or the authors of changes, use git(1).



--=20
<https://www.alejandro-colomar.es/>

--2fxiyucdjqmu7hrg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZwJC4ACgkQnowa+77/
2zJoww//fkV9ygdQ2FKX7Yw3NF/RUh/JQ68qYeXoy6R7FiOG5cZhaoYp8muSNFVV
caX/fH4CjcRGkJmMXlubST5eY0wJo0EcHX4SAJ6qXU6J9HMJvtn7frFcXqmUVZJF
UuYD5D9alckpLxuIb1fL8cHdqXV2GpP9a3FuY9I67CXdvRaKdDaWOMY9Ojqrj0jh
IV1M7uXvcbLfAJZHkvXzS8eybyqmkJLYjiL6r8UOer8S5PTkkZPzTLTxeJsZtE2m
T+Vb/0CCatRy/fl5oCNBfVTwHkufEfzmeqRSb+EHjdfJVo7Eo05n3PxUzZ0Fzg0B
a14R5XtXoY3gl7U0b7xfzWd1krWLjPuz+5nj+C6SWgUeMkJmmKjx5qSP9frW4dsO
TB+pDJoF1eBvaPv6kVJ9ps3KILHmCWXgs5q1BADbP/f5yu9IVNaX76pr7BcAGIZc
qh+epRtlJkEF1qKqJnDwOB0Ns8SYMzDMobeVSjYbO9YGzJA4XCUAGFzyZgTAtGBF
x/sHHOnG2ox0/YVsjMsBBylBKIy6HOnDtseTtRcpFW+nVmkwbx694a/jUIZmUzPc
zJ6cRzVgCllD/KRLOQhS288ARqCy8d1RwsAOrRcpFNqrVeUDTrbm+EroBk4o+Tcj
hyalh5pdmn+3x5PnxhnYXBC1cMTMma7lOOHIPNJPD9yhHPVCzv0=
=cgbA
-----END PGP SIGNATURE-----

--2fxiyucdjqmu7hrg--

