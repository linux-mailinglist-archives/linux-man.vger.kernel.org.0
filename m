Return-Path: <linux-man+bounces-933-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F24948C9509
	for <lists+linux-man@lfdr.de>; Sun, 19 May 2024 16:37:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A7081F21099
	for <lists+linux-man@lfdr.de>; Sun, 19 May 2024 14:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37F1D4AEDF;
	Sun, 19 May 2024 14:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJEirfKI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91FA3D56D;
	Sun, 19 May 2024 14:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716129441; cv=none; b=CkLJcBLJBByC+sBRuLpmPftohstbKKIYZNypBOwYMxRmmmy0n+xn4gQLeqlcT4G/ChhyRfiAFL8bI9ZEdKxh990fZ5aN9E8MTXJ50n9UiI++9BY2JjTKCLz24IFki9bM7LYc3mTEcPG5YEGHzjJml4gDjOb7bRE7Dkj0BkaggJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716129441; c=relaxed/simple;
	bh=Wm9kuBvbN2Z0ar7wcWYh/6btVifnIAsGAULz5deVKZo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jRLWJ2r5lxsCKDYL+OcBjx+Lx8BHxC+FV/VFC4/eQ5jlQClCLmsukktXxJyj+Lwcu5Cvwad01NvPOa51OQLki4rbu7Wp4N3Yg0va9VUXcdj3LmMQvBifwxSJjGRgbsv6rnaenGEg3NwEsh5vpYoCtHwC3AaTlgdTzZ0oNSNEknI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJEirfKI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17042C32781;
	Sun, 19 May 2024 14:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716129440;
	bh=Wm9kuBvbN2Z0ar7wcWYh/6btVifnIAsGAULz5deVKZo=;
	h=Date:From:To:Cc:Subject:From;
	b=gJEirfKI1pc+SMsHKhryXOvgYK2HdV7p/qh3seLs5HxBhW6N5g4gcWcKnS8teEHol
	 ci0Xgd2s6XXuz8xyrkuoX4dc8r+OHtPUcf1FzpCAoPH6KYCZygi8g7N/bzbpoC3jIo
	 pIs2g46q0MGWsqfLGr7pxTnDymGkpo1zYkQqiL+Hil7zXNAZ1IwESYbXjDMSed73pZ
	 gcgbV+gglGIsGC5uI/OhJBI8HfwZ0rC3nw2rAY8C0N8zxWWjeMgTMDk1A+2TR/kzfr
	 mnndftr/LwS9mR8KomXkerWXTCAg1IihdIQNb+rwyN+metaV47hWjypKQYIgv0s/WD
	 091wD4AWPaQUw==
Date: Sun, 19 May 2024 16:37:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org, 
	andyrtr <andyrtr@archlinux.org>, Luna Jernberg <droidbittin@gmail.com>, 
	"Dr. Tobias Quathamer" <toddy@debian.org>, Marcos Fouces <marcos@debian.org>, Sam James <sam@gentoo.org>, 
	Jonathan Corbet <corbet@lwn.net>, man-pages-maintainers@fedoraproject.org, 
	Petr Gajdos <pgajdos@suse.cz>
Subject: man-pages-6.8 released
Message-ID: <je5cqtxomjonmjyzdkhalfxr5idkselxxgfybjtwupnocqgaai@hue4yy7hvory>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="daawn735hgbapzjg"
Content-Disposition: inline


--daawn735hgbapzjg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org, 
	andyrtr <andyrtr@archlinux.org>, Luna Jernberg <droidbittin@gmail.com>, 
	"Dr. Tobias Quathamer" <toddy@debian.org>, Marcos Fouces <marcos@debian.org>, Sam James <sam@gentoo.org>, 
	Jonathan Corbet <corbet@lwn.net>, man-pages-maintainers@fedoraproject.org, 
	Petr Gajdos <pgajdos@suse.cz>
Subject: man-pages-6.8 released
MIME-Version: 1.0

Gidday!

I'm proud to announce:

	man-pages-6.8 - manual pages for GNU/Linux

Tarball download:
<https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/>
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

Downstream packagers, please read the changes below.  There are
important changes in this release.


Have a lovely day!

Alex

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in man=
-pages-6.08 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Released: 2024-05-19, Aldaya


New and rewritten pages
-----------------------

man3type/
        locale_t.3type
        mbstate_t.3type
        wchar_t.3type
        wint_t.3type


Newly documented interfaces in existing pages
---------------------------------------------

man2/
        init_module.2
                MODULE_INIT_COMPRESS_FILE

        get_mempolicy.2
        mbind.2
        set_mempolicy.2
                MPOL_WEIGHTED_INTERLEAVE

        mount_setattr.2
                squashfs
                tmpfs
                cephfs
                hugetlbfs

man5/
man8/
        proc.5
                subset

        elf.5
        ld.so.8
                Updeprecate and explain DT_RPATH

man7/
        string_copying.7
                strndup()


New and changed links
---------------------

man3/
        S_ISBLK.3                       (inode(7))
        S_ISCHR.3                       (inode(7))
        S_ISDIR.3                       (inode(7))
        S_ISFIFO.3                      (inode(7))
        S_ISLNK.3                       (inode(7))
        S_ISREG.3                       (inode(7))
        S_ISSOCK.3                      (inode(7))
        pthread_cond_broadcast.3        (pthread_cond_init(3))
        pthread_cond_destroy.3          (pthread_cond_init(3))
        pthread_cond_signal.3           (pthread_cond_init(3))
        pthread_cond_timedwait.3        (pthread_cond_init(3))
        pthread_cond_wait.3             (pthread_cond_init(3))
        pthread_condattr_destroy.3      (pthread_condattr_init(3))
        pthread_getspecific.3           (pthread_key_create(3))
        pthread_key_delete.3            (pthread_key_create(3))
        pthread_mutex_destroy.3         (pthread_mutex_init(3))
        pthread_mutex_lock.3            (pthread_mutex_init(3))
        pthread_mutex_trylock.3         (pthread_mutex_init(3))
        pthread_mutex_unlock.3          (pthread_mutex_init(3))
        pthread_mutexattr_getkind_np.3  (pthread_mutexattr_setkind_np(3))
        pthread_mutexattr_gettype.3     (pthread_mutexattr_init(3))
        pthread_mutexattr_settype.3     (pthread_mutexattr_init(3))
        pthread_setspecific.3           (pthread_key_create(3))


Global changes
--------------

-  Build system
   !  Stamp the versions on the pages at install time, instead of dist
      time.  This change is important, because downstream packagers will
      need to `make install` instead of just copying the pages.
      The benefit of this is that downstream distributors are now able
      to set their own distro-specific version strings.  The most common
      thing that I'd expect is setting a suffix such as '-1', which can
      be done with `make install EXTRAVERSION=3D-1`.
      Another benefit is that downstream patches that apply near the
      TH line will have to be refreshed less often, since the TH line
      will not necessarily change in every release.
   -  Reorganize build system
   -  Improve support for Darwin systems.
   -  Remove any generated files (fonts) from the repository, and
      generate them at build time.
   -  Various improvements to the generation of the PDF book.

-  man
   -  Move manual pages to a new directory man/, so that they are now
      under man/man*/.  Symlinks have been added for convenience.

-  git
   -  Import pthread_*.3 link pages' git history from debian/glibc.git

-  CONTRIBUTING.d
   -  Add help for using git-config(1), git-send-email(1),
      git-range-diff(1), and [neo]mutt(1).


Changes to individual files
---------------------------

The manual pages and other files in the repository have been improved
beyond what this changelog covers.  To learn more about changes applied
to individual pages, or the authors of changes, use git(1).

--=20
<https://www.alejandro-colomar.es/>

--daawn735hgbapzjg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZKDo8ACgkQnowa+77/
2zI1BQ/+IRoelPfShOnPHBa5YoMZ/kdABDKsrLpm/a0h4qhn6sAHcsG8Nmbto+5L
kiIyzjeOt5kYCyU7UHCWsnQWGJVLD9ZNVGklKfJe/Pn7Z842DucAIa8Ss7G3DmZT
dKNtMz7yBIXAOJo9kejkUiqea/5oucw4mfiM1Vu5WmnrLlJIH6ujBsDSNATawnNx
XNlDd67A8+LY0fEay/tXG0niWNYbVOgDpkl1nGcyN/tkG5UYmVrnOewGM+MY8vRw
iKCAwd+TyMmjsOKp/dFU6iyJD2TviaE1yUXid3FY3jhjUjQVBn8ck/Mev9xxYzsA
4WU7tY97tnPRIZlAP2CR6jAFa9jdkU8paO/9xYpRppdnwcDBbepE+v3v6418N2mt
Rdo8rpLtm/XpIiL8wjRhWECCIBDrhzrfXTaT0dGT0y6tsS/z58erBf+pXTL1TqF8
bDU2Y2v4XTLpUaNAcyiVar8FjbKyb4K+doCTPlsNUqDyWSu+P6HkGif9X/xR8ONr
91EUV1fh+8Zjury2Dq5LETdYyLw7SuRn9a0KWLuJbJdfdT4IpqMAMEo077jXMD1w
yJBDamWH/6Tdrs2yt7WnslCExgZo1cMHEp3vJwUh3lyUpPUt2o4ckJ04mNxnwgBW
7Al+64pNq9g1gQPm869Ymfx/8MVhkmZIVqFDVO4jABk7hHA6eC0=
=TGSe
-----END PGP SIGNATURE-----

--daawn735hgbapzjg--

