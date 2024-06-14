Return-Path: <linux-man+bounces-1184-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C75BA90934A
	for <lists+linux-man@lfdr.de>; Fri, 14 Jun 2024 22:16:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02B21B25ABB
	for <lists+linux-man@lfdr.de>; Fri, 14 Jun 2024 20:16:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE85145B34;
	Fri, 14 Jun 2024 20:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AboRr9xf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893C62F50;
	Fri, 14 Jun 2024 20:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718396182; cv=none; b=uMI+9mNTddyp4GTzwTgYm02jKQYVp9nypESvl/G2Jt9kZVMywjbwukhhuT99u98fNGWeHC9GCPh9uZXvgmqCa/34b+SunuZytrXW7alGv9V95sA7QK3ze+wgpfVJJFmnp9vKDz8qFtYUiEzmUaWSNpcU0Z+dTAYF/8YHbwUy8Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718396182; c=relaxed/simple;
	bh=W5mdwUGuy10Mm/dF++7azDm4jplkxvGjMBqI8ottECY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=B3OF1YejeHsDokK9zXsdIuf/W+/ga6aA91W9Q3a3degnmfhr0y8UeXeVE1fVYSIaXZheYM+CwIO/UGxHkQ/MBorpDmauOJtVd9wysbrqdYl8ciGMjuaZu+UmdmtdBYfd4ZC8jiOp8HhCC8Eane9wx1WVU17PN98bEje8ADtkpgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AboRr9xf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 484DFC2BD10;
	Fri, 14 Jun 2024 20:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718396182;
	bh=W5mdwUGuy10Mm/dF++7azDm4jplkxvGjMBqI8ottECY=;
	h=Date:From:To:Cc:Subject:From;
	b=AboRr9xfXEJyv70LXkKBnAEykMGM+PCRgqej/EEV+jXfo67Os2TsDMNbUH+XpljYV
	 ++TUKCH+1bqr0UDVCdadQzi/dPsNvJAHdI7FgG7lkZAvsMRw+rUnGyzUqoSYx31hLf
	 m6lXIJxhXmtjxwXQoP8C6ksE8glFaeYWMfxrUVGheM43Q+gaQ7904VUud0MKQoiBtJ
	 3ZLvQSZtXMtq5fK7j8V3ete1QkhVibO1NJLvEx7JWZl53oT7QlEkh3ysr1r0iPkLgB
	 /GecLbRnGbKfFR1Bq4R7rjX/lsJh8gpmdyediNP8/qeF3gz+KGlt4EbFb+v52Xe9NI
	 tyX5czxwIeQUw==
Date: Fri, 14 Jun 2024 22:16:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org, 
	andyrtr@archlinux.org, Luna Jernberg <droidbittin@gmail.com>, 
	"Dr. Tobias Quathamer" <toddy@debian.org>, Marcos Fouces <marcos@debian.org>, Sam James <sam@gentoo.org>, 
	Jonathan Corbet <corbet@lwn.net>, man-pages-maintainers@fedoraproject.org, 
	Petr Gajdos <pgajdos@suse.cz>
Subject: man-pages-6.9 released
Message-ID: <cpolays26kcjvekvowwik3di3ut66puls47w3gvdfwep66uaul@ka4omfzltwcs>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qtjvb5wmdzcshp4f"
Content-Disposition: inline


--qtjvb5wmdzcshp4f
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
Subject: man-pages-6.9 released
MIME-Version: 1.0

Gidday!

I'm proud to announce:

	man-pages-6.9 - manual pages for GNU/Linux

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

Have a lovely day!

Alex


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in man=
-pages-6.9 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Released: 2024-06-14, Aldaya


New and rewritten pages
-----------------------

man2/
	ioctl_console.2			(split into many small pages)
	ioctl_eventpoll.2
	ioctl_fat.2			(split into many small pages)
	ioctl_fs.2
	ioctl_kd.2
	ioctl_nsfs.2	(split into many small pages; previously, ioctl_ns.2)
	ioctl_tty.2			(split into many small pages)
	ioctl_userfaultfd.2		(split into many small pages)
	ioctl_vt.2
	prctl.2				(split into many small pages)

man2const/
	FAT_IOCTL_GET_VOLUME_ID.2const
	FAT_IOCTL_SET_ATTRIBUTES.2const
	FIONREAD.2const
	NS_GET_NSTYPE.2const
	NS_GET_OWNER_UID.2const
	PR_CAPBSET_DROP.2const
	PR_CAPBSET_READ.2const
	PR_CAP_AMBIENT.2const
	PR_CAP_AMBIENT_CLEAR_ALL.2const
	PR_CAP_AMBIENT_IS_SET.2const
	PR_CAP_AMBIENT_LOWER.2const
	PR_CAP_AMBIENT_RAISE.2const
	PR_GET_AUXV.2const
	PR_GET_CHILD_SUBREAPER.2const
	PR_GET_DUMPABLE.2const
	PR_GET_ENDIAN.2const
	PR_GET_FPEMU.2const
	PR_GET_FPEXC.2const
	PR_GET_FP_MODE.2const
	PR_GET_IO_FLUSHER.2const
	PR_GET_KEEPCAPS.2const
	PR_GET_MDWE.2const
	PR_GET_NO_NEW_PRIVS.2const
	PR_GET_PDEATHSIG.2const
	PR_GET_SECCOMP.2const
	PR_GET_SECUREBITS.2const
	PR_GET_SPECULATION_CTRL.2const
	PR_GET_TAGGED_ADDR_CTRL.2const
	PR_GET_THP_DISABLE.2const
	PR_GET_TID_ADDRESS.2const
	PR_GET_TIMERSLACK.2const
	PR_GET_TIMING.2const
	PR_GET_TSC.2const
	PR_GET_UNALIGN.2const
	PR_MCE_KILL.2const
	PR_MCE_KILL_CLEAR.2const
	PR_MCE_KILL_GET.2const
	PR_MCE_KILL_SET.2const
	PR_MPX_ENABLE_MANAGEMENT.2const
	PR_PAC_RESET_KEYS.2const
	PR_SET_CHILD_SUBREAPER.2const
	PR_SET_DUMPABLE.2const
	PR_SET_ENDIAN.2const
	PR_SET_FPEMU.2const
	PR_SET_FPEXC.2const
	PR_SET_FP_MODE.2const
	PR_SET_IO_FLUSHER.2const
	PR_SET_KEEPCAPS.2const
	PR_SET_MDWE.2const
	PR_SET_MM.2const
	PR_SET_MM_ARG_START.2const
	PR_SET_MM_AUXV.2const
	PR_SET_MM_BRK.2const
	PR_SET_MM_EXE_FILE.2const
	PR_SET_MM_MAP.2const
	PR_SET_MM_START_BRK.2const
	PR_SET_MM_START_CODE.2const
	PR_SET_MM_START_DATA.2const
	PR_SET_MM_START_STACK.2const
	PR_SET_NAME.2const
	PR_SET_NO_NEW_PRIVS.2const
	PR_SET_PDEATHSIG.2const
	PR_SET_PTRACER.2const
	PR_SET_SECCOMP.2const
	PR_SET_SECUREBITS.2const
	PR_SET_SPECULATION_CTRL.2const
	PR_SET_SYSCALL_USER_DISPATCH.2const
	PR_SET_TAGGED_ADDR_CTRL.2const
	PR_SET_THP_DISABLE.2const
	PR_SET_TIMERSLACK.2const
	PR_SET_TIMING.2const
	PR_SET_TSC.2const
	PR_SET_UNALIGN.2const
	PR_SET_VMA.2const
	PR_SVE_GET_VL.2const
	PR_SVE_SET_VL.2const
	PR_TASK_PERF_EVENTS_DISABLE.2const
	TCSBRK.2const
	TCSETS.2const
	TCXONC.2const
	TIOCCONS.2const
	TIOCEXCL.2const
	TIOCLINUX.2const
	TIOCMSET.2const
	TIOCPKT.2const
	TIOCSCTTY.2const
	TIOCSETD.2const
	TIOCSLCKTRMIOS.2const
	TIOCSPGRP.2const
	TIOCSSOFTCAR.2const
	TIOCSTI.2const
	TIOCSWINSZ.2const
	TIOCTTYGSTRUCT.2const
	UFFDIO_API.2const
	UFFDIO_CONTINUE.2const
	UFFDIO_COPY.2const
	UFFDIO_POISON.2const
	UFFDIO_REGISTER.2const
	UFFDIO_UNREGISTER.2const
	UFFDIO_WAKE.2const
	UFFDIO_WRITEPROTECT.2const
	UFFDIO_ZEROPAGE.2const
	VFAT_IOCTL_READDIR_BOTH.2const


Newly documented interfaces in existing pages
---------------------------------------------

man2/
	sched_setattr.2
		struct sched_attr::sched_util_min
		struct sched_attr::sched_util_max


New and changed links
---------------------

man2const/
	EPIOCGPARAMS.2const		(ioctl_eventpoll(2))
	EPIOCSPARAMS.2const		(ioctl_eventpoll(2))
	FAT_IOCTL_GET_ATTRIBUTES.2const	(FAT_IOCTL_SET_ATTRIBUTES(2const))
	FICLONERANGE.2const		(ioctl_ficlone(2))
	FS_IOC_GETFLAGS.2const		(FS_IOC_SETFLAGS(2const))
	FS_IOC_GETFSLABEL.2const	(FS_IOC_SETFSLABEL(2const))
	FS_IOC_GETFSMAP.2const		(ioctl_fsmap(2))
	GIO_CMAP.2const			(ioctl_kd(2))
	GIO_FONT.2const			(ioctl_kd(2))
	GIO_FONTX.2const		(ioctl_kd(2))
	GIO_SCRNMAP.2const		(ioctl_kd(2))
	GIO_UNIMAP.2const		(ioctl_kd(2))
	GIO_UNISCRNMAP.2const		(ioctl_kd(2))
	KDADDIO.2const			(ioctl_kd(2))
	KDDELIO.2const			(ioctl_kd(2))
	KDDISABIO.2const		(ioctl_kd(2))
	KDENABIO.2const			(ioctl_kd(2))
	KDGETKEYCODE.2const		(ioctl_kd(2))
	KDGETLED.2const			(ioctl_kd(2))
	KDGETMODE.2const		(ioctl_kd(2))
	KDGKBDIACR.2const		(ioctl_kd(2))
	KDGKBENT.2const			(ioctl_kd(2))
	KDGKBLED.2const			(ioctl_kd(2))
	KDGKBMETA.2const		(ioctl_kd(2))
	KDGKBMODE.2const		(ioctl_kd(2))
	KDGKBSENT.2const		(ioctl_kd(2))
	KDGKBTYPE.2const		(ioctl_kd(2))
	KDMKTONE.2const			(ioctl_kd(2))
	KDSETKEYCODE.2const		(ioctl_kd(2))
	KDSETLED.2const			(ioctl_kd(2))
	KDSETMODE.2const		(ioctl_kd(2))
	KDSIGACCEPT.2const		(ioctl_kd(2))
	KDSKBENT.2const			(ioctl_kd(2))
	KDSKBLED.2const			(ioctl_kd(2))
	KDSKBMETA.2const		(ioctl_kd(2))
	KDSKBMODE.2const		(ioctl_kd(2))
	KDSKBSENT.2const		(ioctl_kd(2))
	KIOCSOUND.2const		(ioctl_kd(2))
	NS_GET_PARENT.2const		(NS_GET_USERNS(2const))
	PIO_CMAP.2const			(ioctl_kd(2))
	PIO_FONT.2const			(ioctl_kd(2))
	PIO_FONTRESET.2const		(ioctl_kd(2))
	PIO_FONTX.2const		(ioctl_kd(2))
	PIO_SCRNMAP.2const		(ioctl_kd(2))
	PIO_UNIMAP.2const		(ioctl_kd(2))
	PIO_UNIMAPCLR.2const		(ioctl_kd(2))
	PIO_UNISCRNMAP.2const		(ioctl_kd(2))
	PR_GET_NAME.2const		(PR_SET_NAME(2const))
	PR_MPX_DISABLE_MANAGEMENT.2const (PR_MPX_ENABLE_MANAGEMENT(2const))
	PR_SET_MM_ARG_END.2const	(PR_SET_MM_ARG_START(2const))
	PR_SET_MM_END_CODE.2const	(PR_SET_MM_START_CODE(2const))
	PR_SET_MM_END_DATA.2const	(PR_SET_MM_START_DATA(2const))
	PR_SET_MM_ENV_END.2const	(PR_SET_MM_ARG_START(2const))
	PR_SET_MM_ENV_START.2const	(PR_SET_MM_ARG_START(2const))
	PR_SET_MM_MAP_SIZE.2const	(PR_SET_MM_MAP(2const))
	PR_TASK_PERF_EVENTS_ENABLE.2const (PR_TASK_PERF_EVENTS_DISABLE(2const))
	TCFLSH.2const			(FIONREAD(2const))
	TCGETA.2const			(TCSETS(2const))
	TCGETS.2const			(TCSETS(2const))
	TCGETS2.2const			(TCSETS(2const))
	TCSBRKP.2const			(TCSBRK(2const))
	TCSETA.2const			(TCSETS(2const))
	TCSETAF.2const			(TCSETS(2const))
	TCSETAW.2const			(TCSETS(2const))
	TCSETS2.2const			(TCSETS(2const))
	TCSETSF.2const			(TCSETS(2const))
	TCSETSF2.2const			(TCSETS(2const))
	TCSETSW.2const			(TCSETS(2const))
	TCSETSW2.2const			(TCSETS(2const))
	TIOCCBRK.2const			(TCSBRK(2const))
	TIOCGETD.2const			(TIOCSETD(2const))
	TIOCGEXCL.2const		(TIOCEXCL(2const))
	TIOCGICOUNT.2const		(TIOCMSET(2const))
	TIOCGLCKTRMIOS.2const		(TIOCSLCKTRMIOS(2const))
	TIOCGPGRP.2const		(TIOCSPGRP(2const))
	TIOCGPKT.2const			(TIOCPKT(2const))
	TIOCGPTLCK.2const		(TIOCPKT(2const))
	TIOCGPTPEER.2const		(TIOCPKT(2const))
	TIOCGSID.2const			(TIOCSPGRP(2const))
	TIOCGSOFTCAR.2const		(TIOCSSOFTCAR(2const))
	TIOCGWINSZ.2const		(TIOCSWINSZ(2const))
	TIOCINQ.2const			(FIONREAD(2const))
	TIOCMBIC.2const			(TIOCMSET(2const))
	TIOCMBIS.2const			(TIOCMSET(2const))
	TIOCMGET.2const			(TIOCMSET(2const))
	TIOCMIWAIT.2const		(TIOCMSET(2const))
	TIOCNOTTY.2const		(TIOCSCTTY(2const))
	TIOCNXCL.2const			(TIOCEXCL(2const))
	TIOCOUTQ.2const			(FIONREAD(2const))
	TIOCSBRK.2const			(TCSBRK(2const))
	TIOCSERGETLSR.2const		(FIONREAD(2const))
	TIOCSPTLCK.2const		(TIOCPKT(2const))
	VFAT_IOCTL_READDIR_SHORT.2const	(VFAT_IOCTL_READDIR_BOTH(2const))
	VT_ACTIVATE.2const		(ioctl_vt(2))
	VT_DISALLOCATE.2const		(ioctl_vt(2))
	VT_GETMODE.2const		(ioctl_vt(2))
	VT_GETSTATE.2const		(ioctl_vt(2))
	VT_OPENQRY.2const		(ioctl_vt(2))
	VT_RELDISP.2const		(ioctl_vt(2))
	VT_RESIZE.2const		(ioctl_vt(2))
	VT_RESIZEX.2const		(ioctl_vt(2))
	VT_SETMODE.2const		(ioctl_vt(2))
	VT_WAITACTIVE.2const		(ioctl_vt(2))


Removed pages
-------------

man2/
	ioctl_getfsmap.2		(moved to ioctl_fsmap.2)
	ioctl_ns.2			(moved to ioctl_nsfs.2)


Removed links
-------------

None.


Global changes
--------------

-  Split several huge pages into smaller pages.
-  Rename some ioctl_*(2) pages for consistency.


Changes to individual files
---------------------------

The manual pages and other files in the repository have been improved
beyond what this changelog covers.  To learn more about changes applied
to individual pages, or the authors of changes, use git(1).


--=20
<https://www.alejandro-colomar.es/>

--qtjvb5wmdzcshp4f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZspQ4ACgkQnowa+77/
2zJG+BAAnQj1wJ/3TiqjVyT08kYmIge6Yhht5PCILXuCOwMPCeOdA4pDzJik3jwg
Bvb4k085gJqXycgVW31O2x5J5D2MWeYhcIpSqbvJyf4J2GKI9N3iUgBKGmn10Zcc
HLKuFgJH0NVrhWR/0C+V9SuHmZOb70NZMByIWdS7Hr/sSunAAvKx71uvrgCHI8jj
pFN0iENdWCOYJnrpzWLoduOtOG48F51REhfb3vDskD/who8/fApAGtRC/lyE9nfq
SpqhRoGxU60wS6ClJYYDqpdDqvmAf0O7XK9hQi1Odhn6Os67m8PRpoHe8epJmf8a
+FKbjzC1mEcDxOzPpWyLGEqzRlqsRlkZe8glmMlR/pyeFggUoQ+MbrC3amwb6ysj
quYSFa2b11imnoB/Sg9w3iuzhXNXfqf6cn2UJ8kbasl3H6INSdojV27eVs3C63lw
4ShC4Rr6KQ4cDGuB7GBm4rulr++7Q4Caz+1xUx82AirVpmc7SNAFROtn5mZHPPRS
2NJe7njU+8r83e+mDfctqwS7KLFhxRutUOD+vD7LulcVPcSg3e9Pqs/Fdf0ymQV0
kUVgTsBmuvm2zvxvU+5jks68UsjN6O5mmfSWO6ex2vn9r5aWIGlFtXx+uEYY/KfU
v72xVRq3SXLa+ZYIQbE3JpH14RSGmTmWzCSm4C6QXTdWuUBo0BA=
=PSc8
-----END PGP SIGNATURE-----

--qtjvb5wmdzcshp4f--

