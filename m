Return-Path: <linux-man+bounces-1730-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF2796539F
	for <lists+linux-man@lfdr.de>; Fri, 30 Aug 2024 01:44:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AEECD1F2462D
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 23:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7CAD18F2C3;
	Thu, 29 Aug 2024 23:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLnep2z6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7CCC187843
	for <linux-man@vger.kernel.org>; Thu, 29 Aug 2024 23:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724975090; cv=none; b=RASLJUcpLdJxLrJFJg2Bv94ZQqHCLPWeaEALeprWquw/JP4qYMSalJd3sRbfZEDk1t5uVgzg9kuYntcVK/U9NVeI/Z91vTe5lizaGPsigo4V9wUJFDzcUWAvetblj05HpslIywyl2NlGxBl9nQTdBaelOV7onPLmfBV9mL3l69A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724975090; c=relaxed/simple;
	bh=NixjuPf1ir5wTWsaBqmqsfl5CqiY/LEhEB5OLAnu248=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SNXQzwTFerFdblZKUGWbs7fHuOr2mZ1fGr3AP2d0VNmKfkDip3hoxP0Jym6JGhTWWRkXZ7mdfKKu2QzFkWhdf1dsilRDMpPlqkofKjXSGbONq0er0g1Zw6thOa/a3X1Jlw7hF7ThpnCpuqo+Gvi06x1LqmCtnm5sEIvRM5gT22s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLnep2z6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97E1DC4CEC1;
	Thu, 29 Aug 2024 23:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724975090;
	bh=NixjuPf1ir5wTWsaBqmqsfl5CqiY/LEhEB5OLAnu248=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rLnep2z6NifAOlkxUZN7aZ0Qeg9pj8gbZBO4eh2Lvu/Yqd+llVaLaNznVGknvvigb
	 CoUVoY/yIR6MTwBlY0AC4dE1R84JKFBcKvSBqiDWsqqwq56DCwH3HdEs8Jf9UXZBE0
	 LggyuksqbGUjr3L+gs+oqcENQ/pin2tqD8cY9unSa3Q5yUVo3h8Wg/Ygtxd85pAfw/
	 3x6t4j4wCQko8GAwGroedli4Dkz02oKDz+kmgUbcXQva66kiskSBM5pLsI4jZDbECF
	 RThoXJw3SQSs0C2/Hg7lH6rQivj4RdbyYxym7xbd5Tn1aHbSvj9EApJvJTt3fFHICk
	 VedrF+21szGvg==
Date: Fri, 30 Aug 2024 01:44:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
Message-ID: <5lvpbbvk7azxadhlfalfssera5hmxadpce7c22e7eyis6ra3tv@mikedqdtx7en>
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
 <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
 <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
 <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
 <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dktfyrgozm5zq5sv"
Content-Disposition: inline
In-Reply-To: <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>


--dktfyrgozm5zq5sv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
 <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
 <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
 <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
 <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>

Hi Elliott,

On Tue, Aug 27, 2024 at 03:07:54PM GMT, enh wrote:
> oh, i can definitely make a start...
>=20
> (i was going to at least send you the easiest patch, but then i
> realized even there there's a bit of a bikeshed opportunity, so i'll
> just give you all the pieces and let you decide what to do with them!)

Thanks!

>=20
> so i think we have these things to say:
>=20
> 1. AT_SYMLINK_NOFOLLOW _is_ supported for fchmodat(2).
> 2. but only since Linux 6.6 (except see 4).
> 3. there's no mention of lchmod().
> 4. that function is very old, but it doesn't actually work on glibc
> until 2.32 (https://sourceware.org/bugzilla/show_bug.cgi?id=3D14578#c16)
> where it uses the O_PATH trick that musl and bionic also use (and so
> doesn't need Linux 6.6).
>=20
> heh, actually trying to write the bits down is probably easiest done
> as a diff anyway...
>=20
> diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
> index ae53fe3c9..c6c54eeca 100644
> --- a/man/man2/chmod.2
> +++ b/man/man2/chmod.2
> @@ -11,7 +11,7 @@
>  .\"
>  .TH chmod 2 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -chmod, fchmod, fchmodat \- change permissions of a file
> +chmod, fchmod, lchown, fchmodat \- change permissions of a file
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> @@ -21,6 +21,7 @@ Standard C library
>  .P
>  .BI "int chmod(const char *" pathname ", mode_t " mode );
>  .BI "int fchmod(int " fd ", mode_t " mode );
> +.BI "int lchmod(const char *" pathname ", mode_t " mode );

Does lchmod() need any feature test macros?

>  .P
>  .BR "#include <fcntl.h>" "           /* Definition of AT_* constants */"
>  .B #include <sys/stat.h>
> @@ -60,9 +61,10 @@ Feature Test Macro Requirements for glibc (see
>  .fi
>  .SH DESCRIPTION
>  The
> -.BR chmod ()
> -and
> +.BR chmod (),
>  .BR fchmod ()

We use Oxford comma.

> +and
> +.BR lchmod ()
>  system calls change a file's mode bits.
>  (The file mode consists of the file permission bits plus the set-user-ID,
>  set-group-ID, and sticky bits.)
> @@ -76,6 +78,11 @@ which is dereferenced if it is a symbolic link.
>  .BR fchmod ()
>  changes the mode of the file referred to by the open file descriptor
>  .IR fd .
> +.IP \[bu]
> +.BR lchmod ()
> +is like
> +.BR chmod (),
> +but does not dereference symbolic links.
>  .P
>  The new file mode is specified in
>  .IR mode ,
> @@ -203,8 +210,9 @@ can either be 0, or include the following flag:
>  If
>  .I pathname
>  is a symbolic link, do not dereference it:
> -instead operate on the link itself.
> -This flag is not currently implemented.
> +instead operate on the link itself,
> +like
> +.BR lchmod ().
>  .P
>  See
>  .BR openat (2)
> @@ -285,6 +293,7 @@ is a file descriptor referring to a file other

Would you mind checking this?:

	$ head -n11 <CONTRIBUTING.d/git
	Name
	       Git - instructions for configuring git(1)

	Description
	   git-diff(1), gitattributes(5)
	       To produce useful hunk contexts in manual pages, we need to hack
	       git(1)'s idea of a function name, and also to tell git what is a
	       manual page.

		   $ git config --global diff.man.xfuncname '^\.S[SHsh] .*$';
		   $ echo '*.[0-9]* diff=3Dman' >>~/.config/git/attributes;

It helps reviewing diffs for manual pages.  :)

> than a directory.
>  specified
>  .BR AT_SYMLINK_NOFOLLOW ,
>  which is not supported.
> +(See C library/kernel differences.)
>  .TP
>  .B EPERM
>  The effective UID does not match the owner of the file,
> @@ -310,12 +319,22 @@ This interface differs from the underlying Linux
> system call, which does
>  have a
>  .I flags
>  argument.
> +.P
> +Linux 6.6 added the
> +.BR fchmodat2 ()
> +system call with the POSIX flags argument.
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
>  .I pathname
>  is a relative pathname,
>  glibc constructs a pathname based on the symbolic link in
>=20
> something along those lines?

Sounds good.  I'd like to also add entries in HISTORY for lchmod() and
fchmodat2().  And STANDARDS should also be updated.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--dktfyrgozm5zq5sv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbRB+kACgkQnowa+77/
2zK6/g/+NeHtxxUgzopF5iQox5f3cbqAN3ZhoA+Ejz5kW9jQuYJxW1zlUegYaiBr
1GCx7xhLqHFpwofFFLtyqU35bvk7iC+Vu7rU3sE4mRcM81YtEsjIE/YAj0bZEU3S
lkm4zlbYp/A9DnxmV/F+l1XS8HrUEKzCKrDpkgLJtF2e9zp9rblLdoQAW6yklXuH
OcrU9xO1RY2oADWuAlEIy2qyEiJUi39ClvJ6RFPzO8bsJKuCoCC9pBXuSgqqMK4V
ZVHFtn9BIXVtVZxW0zTAncM/pqhg1/XTAkU5ZEPHDrY5RlLxyCkYQERVDKpzayGr
L0pRMY3Vs/8yEPWMjSb5lFEJV2yrvW3+1k/37h+K2DUlwY9wgmm/GRdduqCCAEHk
K4YeXK6+9Y/fyyv0mA1zHTY2takZ5Rv+x6IcRsovqCB0tDtaUQMbaKYKtigHWLgF
Op+is3LM5eRMbmpJXdN/qcDdPfnGp8YG1imYKVYdUtfIPg4S7sUid2Tp4OZUSmkw
lZZhLY2pJ/eSoQfOtpYROJA07yB29i0rQTZC6fqa78LXAgzpt/fxbAiYweDAjAja
Z0/10hZROIwtkLtx6AMi65wUz28+7Rqr2ykexQMB43UsXvlHKZRvsQbW3qo4WiyG
uKTwqncRLADyoj29jG3ihv1TsjVbQ/wNWQr31MwjnQm+ITaoYa4=
=fOEC
-----END PGP SIGNATURE-----

--dktfyrgozm5zq5sv--

