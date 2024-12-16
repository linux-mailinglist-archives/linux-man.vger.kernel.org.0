Return-Path: <linux-man+bounces-2163-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C0E9F3311
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 15:23:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCFD116AF6B
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 14:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B803205E05;
	Mon, 16 Dec 2024 14:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSpAsd1T"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09426203D5E
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 14:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734358772; cv=none; b=cZ+nbmeFoSh/cPlLQV2/2tRMswxO3lfMcVcrmja46OvlqbGoRS6Fo7y2kzG9yUkTRrfXitQGlO8ZM2ANNH3zkR/qoKRjZ1J9t4ECtxx4dvWfo4OzwT5UIp7ji5bHOM9+v5SJySQPaElkWiM1k08inyIzQiisCUbBdid97Nn5Z54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734358772; c=relaxed/simple;
	bh=mIqwhmHbc6ZmXpw+k7eSZuomfZmyOuMbC4EQB12AQrk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lROTnB2zQILA1QlFaQrRpJN5+kMy+04xgxwwsW33uaeeFbEs9nvqvw8zHF1LrlHDpCHJvDuPipCSg37rZHY6154aaH+Clo5JhTSueixPfBxTFzPUnl/+BRifQvJ8Zz330I7/sdPq+KWFtF5tWHAPh+c/Tjh8lwxBmFL4uQjvsmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSpAsd1T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0CC1C4CED0;
	Mon, 16 Dec 2024 14:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734358771;
	bh=mIqwhmHbc6ZmXpw+k7eSZuomfZmyOuMbC4EQB12AQrk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZSpAsd1TtJEju3lSaup6SyDvSq6F++OEcqp58tgEcjV0jc2wE13BCZ+OWwwdUWVTR
	 CGmIyxzUpWMOPujtd9cmK8cVbtbQl2jmLNibYd3uDRSWiKbe0ipPesYIYmw6E1MDR5
	 b+Gr9LJ+jjxRdpK7nmoVPCmwlEcxuvyVX9yaxMN59dJK4GsgsbV7WoAYmxo9lFdrTV
	 7Nk/NGJFMlXaqnz/f8tdxoicBXolC+9vdVfF1gRDDx0Kp2VbDliWv8pn5iexLPmRNc
	 qOV5/tsNW+XJklUvQ1ft7vOa0Fy1iglAYLqBwm+GXpYitJ+YKnr1SdfihOAm3qcZXv
	 rb9P7gRe7+74w==
Date: Mon, 16 Dec 2024 15:19:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
Message-ID: <nihkb5t42ntlv277n4xiqzpy7rfz3qkxt7rohfd2no47x4qatt@mpiqy5ykxmyc>
References: <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
 <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
 <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
 <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>
 <5lvpbbvk7azxadhlfalfssera5hmxadpce7c22e7eyis6ra3tv@mikedqdtx7en>
 <CAJgzZopVMJ4NOLSVpjPgOZ1EJgz=ygVc4Fue_AGUJ3LOoKEruQ@mail.gmail.com>
 <qwsphfj22qtmb3g4ldorx4thzwzf3jo5ibhfdcig5bizw5yma4@ujxlvm7pebug>
 <CAJgzZoqMtJyyiYpJ+e=Rp000z1W5p4kcjYzrS8TbqijMzRmqQg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fs3ldv3weyf5m3et"
Content-Disposition: inline
In-Reply-To: <CAJgzZoqMtJyyiYpJ+e=Rp000z1W5p4kcjYzrS8TbqijMzRmqQg@mail.gmail.com>


--fs3ldv3weyf5m3et
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
References: <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
 <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
 <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
 <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>
 <5lvpbbvk7azxadhlfalfssera5hmxadpce7c22e7eyis6ra3tv@mikedqdtx7en>
 <CAJgzZopVMJ4NOLSVpjPgOZ1EJgz=ygVc4Fue_AGUJ3LOoKEruQ@mail.gmail.com>
 <qwsphfj22qtmb3g4ldorx4thzwzf3jo5ibhfdcig5bizw5yma4@ujxlvm7pebug>
 <CAJgzZoqMtJyyiYpJ+e=Rp000z1W5p4kcjYzrS8TbqijMzRmqQg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZoqMtJyyiYpJ+e=Rp000z1W5p4kcjYzrS8TbqijMzRmqQg@mail.gmail.com>

Hi Elliott,

On Mon, Dec 16, 2024 at 09:03:47AM GMT, enh wrote:
> On Mon, Dec 16, 2024 at 8:57=E2=80=AFAM Alejandro Colomar <alx@kernel.org=
> wrote:
>=20
> > Hi Elliott,
> >
> > On Mon, Dec 16, 2024 at 08:44:59AM GMT, enh wrote:
> > > On Thu, Aug 29, 2024 at 7:44=E2=80=AFPM Alejandro Colomar <alx@kernel=
=2Eorg>
> > wrote:
> > > > > @@ -285,6 +293,7 @@ is a file descriptor referring to a file other
> > > >
> > > > Would you mind checking this?:
> > > >
> > > >         $ head -n11 <CONTRIBUTING.d/git
> > > >         Name
> > > >                Git - instructions for configuring git(1)
> > > >
> > > >         Description
> > > >            git-diff(1), gitattributes(5)
> > > >                To produce useful hunk contexts in manual pages, we
> > need to
> > > > hack
> > > >                git(1)'s idea of a function name, and also to tell g=
it
> > what
> > > > is a
> > > >                manual page.
> > > >
> > > >                    $ git config --global diff.man.xfuncname '^\.S[S=
Hsh]
> > > > .*$';
> > > >                    $ echo '*.[0-9]* diff=3Dman'
> > >>~/.config/git/attributes;
> > > >
> > > > It helps reviewing diffs for manual pages.  :)
> > > >
> > >
> > > ~/man-pages$ echo '*.[0-9]* diff=3Dman' >>~/.git/attributes;
> >
> > You mistyped.  It should be
> >
> >         >>~/.config/git/attributes;
> >
> > not
> >
> >         >>~/.git/attributes;
> >
>=20
> well, i edited that line because the copy & pasted command with .config
> didn't work.

Fixed.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Da43746817db68129448e09b2d356fa12f7da6764>

>=20
>=20
> > > -bash: /usr/local/google/home/enh/.git/attributes: No such file or
> > directory
> >
> > Hmmm, I should mkdir(1) first.
> >
> > > i assume this is meant to be
> > >
> > > ~/man-pages$ echo '*.[0-9]* diff=3Dman' >>~/.gitattributes;
> > >
> > > instead?
> >
> > Nope; I think that won't work (per your patch, it seems it didn't).
> >
> > Would you mind creating the directories as appropriate, re-running that
> > command, and resending the patch?  (That will also help check that you
> > ran it correctly.)
> >
>=20
> attached...

Thanks!

> diff --git a/man/man2/chmod.2 b/man/man2/chmod.2

Would you mind adding a commit message?

> index ae53fe3c9..3085840a2 100644
> --- a/man/man2/chmod.2
> +++ b/man/man2/chmod.2
> @@ -11,7 +11,7 @@
>  .\"
>  .TH chmod 2 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -chmod, fchmod, fchmodat \- change permissions of a file
> +chmod, fchmod, lchown, fchmodat \- change permissions of a file

s/lchown/lchmod/?

>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> @@ -21,6 +21,7 @@ .SH SYNOPSIS
>  .P
>  .BI "int chmod(const char *" pathname ", mode_t " mode );
>  .BI "int fchmod(int " fd ", mode_t " mode );
> +.BI "int lchmod(const char *" pathname ", mode_t " mode );

Ok.

>  .P
>  .BR "#include <fcntl.h>" "           /* Definition of AT_* constants */"
>  .B #include <sys/stat.h>
> @@ -51,6 +52,12 @@ .SH SYNOPSIS
>  .\"        || (_XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED)
>  .fi
>  .P
> +.BR lchmod ():
> +.nf
> +    Since glibc 2.5:
> +        _DEFAULT_SOURCE
> +.fi
> +.P

Ok.

>  .BR fchmodat ():
>  .nf
>      Since glibc 2.10:
> @@ -60,9 +67,10 @@ .SH SYNOPSIS
>  .fi
>  .SH DESCRIPTION
>  The
> -.BR chmod ()
> +.BR chmod (),
> +.BR fchmod (),
>  and
> -.BR fchmod ()
> +.BR lchmod ()

Ok.

>  system calls change a file's mode bits.
>  (The file mode consists of the file permission bits plus the set-user-ID,
>  set-group-ID, and sticky bits.)
> @@ -76,6 +84,11 @@ .SH DESCRIPTION
>  .BR fchmod ()
>  changes the mode of the file referred to by the open file descriptor
>  .IR fd .
> +.IP \[bu]
> +.BR lchmod ()
> +is like
> +.BR chmod (),
> +but does not dereference symbolic links.

Ok.

>  .P
>  The new file mode is specified in
>  .IR mode ,
> @@ -203,8 +216,9 @@ .SS fchmodat()
>  If
>  .I pathname
>  is a symbolic link, do not dereference it:
> -instead operate on the link itself.
> -This flag is not currently implemented.
> +instead operate on the link itself,
> +like
> +.BR lchmod ().

Ok.

>  .P
>  See
>  .BR openat (2)
> @@ -285,6 +299,7 @@ .SH ERRORS
>  specified
>  .BR AT_SYMLINK_NOFOLLOW ,
>  which is not supported.
> +(See C library/kernel differences.)

Ok.

>  .TP
>  .B EPERM
>  The effective UID does not match the owner of the file,
> @@ -310,12 +325,22 @@ .SS C library/kernel differences
>  have a
>  .I flags
>  argument.
> +.P
> +Linux 6.6 added the
> +.BR fchmodat2 ()
> +system call with the POSIX flags argument.

This might be better in the HISTORY section.  What do you think?

>  .SS glibc notes
>  On older kernels where
> -.BR fchmodat ()
> +.BR fchmodat2 ()
>  is unavailable, the glibc wrapper function falls back to the use of
> -.BR chmod ().
> -When
> +.BR fchmodat ()
> +when no flags are supplied,
> +or to
> +.BR chmod ()
> +otherwise.
> +In the
> +.BR chmod ()
> +fallback, if

Ok.

>  .I pathname
>  is a relative pathname,
>  glibc constructs a pathname based on the symbolic link in
> @@ -324,7 +349,16 @@ .SS glibc notes
>  .I dirfd
>  argument.
>  .SH STANDARDS
> +.TP
> +.BR chmod ()
> +.TQ
> +.BR fchmod ()
> +.TQ
> +.BR fchmodat ()
>  POSIX.1-2008.
> +.TP
> +.BR lchmod ()
> +Linux.

Ok.  Too bad that OpenBSD lacks it.  The other BSDs have it.  :/

>  .SH HISTORY
>  .TP
>  .BR chmod ()
> @@ -336,6 +370,9 @@ .SH HISTORY
>  POSIX.1-2008.
>  Linux 2.6.16,
>  glibc 2.4.
> +.TP
> +.BR lchmod ()
> +Linux 2.6.16, glibc 2.5.

Ok.

>  .SH SEE ALSO
>  .BR chmod (1),
>  .BR chown (2),

Cheers,
Alex


--=20
<https://www.alejandro-colomar.es/>

--fs3ldv3weyf5m3et
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdgNvAACgkQnowa+77/
2zIaHBAAquUtymu7MXPdoi7hzMgAtufKhEhaG7lug5w4Xih9C3ygWBHOqYvQbZp5
vpuEC8HN83cL5Wbe5Ep2JPvw44WHz7UA7K4xwI2Ea0sIhAuZtPG73qwM2sT7whDv
1vfQPEX12ZABbGFM3K+tf0TQStivecYDqlHQPf16vCNQLps1va1uvljuM3NVfpFM
19eL2xuGpuzxTbzTfTebI6MiY4d5PVqJGgek7C1MvVdAOHXeA1rEXOWV+VqQ8/+q
PAZ0DcaUhg4DZUwh9owxIb4qykQhRV6YF2c+7CZ3d+d5sUkpiZmo9kuKKeibQx36
LXaQRG9+aPyhMYiOygZj2674i0vpDmwR2UDco6ESfJLnMHcjfzfP3Z3IFqXMnT5S
DLpfht+os4/7r+4LS24RvnLB9yYiHwW3904pEc2t1+/tQll4SEn3GB1TJrD/4UWN
0x/fpWZLWMCjaFRekm5s+etrlLsRYPGd/veStmeSx1A/S0uCLSUFJ1bkPqYdeY2Q
Joicfojp1/MdJbR8nuzw9wZI1p6tZFiLO4HzTPk3/NhP9l+ML3nhllf3cUqhO5K3
CwX8RSy5r/H5gNpZl8rHU2scjrwykDFGqV3iigeXbJ5m7yZT5yLV+nlosRlnBADS
J2WTyj8gB3a9dchjMOd9eGHNLv7RTIC3nIBFi1JzIKjWSWU9op8=
=sB1q
-----END PGP SIGNATURE-----

--fs3ldv3weyf5m3et--

