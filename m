Return-Path: <linux-man+bounces-2240-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA4CA129AB
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 18:20:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FDB3188A072
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 17:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55DD01A8F61;
	Wed, 15 Jan 2025 17:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noygGa1r"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B86199EA3
	for <linux-man@vger.kernel.org>; Wed, 15 Jan 2025 17:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736961637; cv=none; b=Z3bvTJJzVftUDUiY0dDCy5qv+NLDh70fFmlUF5zAfQClJnt6SH2BvlxPurYWaCii2jaWc0qrncDPLpEKol/mOaCTwapsZmjmQ4Usq4vOy2I/pMwU+b5vV1RCcAWAizBMkqLafkX8wpIIAbuqdi63IBddZYcMQ4hfYmNcP8HwSXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736961637; c=relaxed/simple;
	bh=p+N+I1EnJinWQmpDxyinyMij3Dym2pwcP/Z2k+YZbYA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ghLQCZdB97uOD9GGA73ZdgXm4zb+6s23epyrEKeaIMFCcawTZ5H/imKHYLM7k9bD3eARQWZQXr6BtILX7bgEgoBXM2xb0sRt1yI7kauzkRxS8eXt5cPakidNCphZq4PbpaVGTUHuu4RnZ1Rgne/gPU/ESYZI8zxQ3HYEKYWmGHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noygGa1r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBE80C4CEE1;
	Wed, 15 Jan 2025 17:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736961636;
	bh=p+N+I1EnJinWQmpDxyinyMij3Dym2pwcP/Z2k+YZbYA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=noygGa1rfSNzqA539yNqKjxd7hy9KI4DNwjaRKXTR4xf8YSUYyfvDkGVFs6pYxo9c
	 zMLN69vIU7DAke6LayJlDsnosxdNody+AlWmazlFlHAOHj95RCeB1dklOo83kwqFei
	 XED4LugDR1i+CodnWccDISSNOVhUvzK2+dRKs34iQLcp4WYi/AqtwGLAS6KgHsa8CJ
	 YlE4wJmZK4EBokoLAG8LsHi+cw7xHSf/2cSlb13tu3nzRpZnoMQkgq/L2BwcrnlzFf
	 oPxOn2Ip1hEKtmvjfYCycROkRhvENiPOt6aEcxbWoy17g8Il5Bry4eU7YXQXzL5TlF
	 LypZt9zTKNcKQ==
Date: Wed, 15 Jan 2025 18:20:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v4] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <amh6nfzqelqqarrvldjujgsx5l7drdiprxi3x34zinngrvppcc@wxreyfabxlgg>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250115162052.131794-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m72guqpsak2h7otc"
Content-Disposition: inline
In-Reply-To: <20250115162052.131794-1-jason@jasonyundt.email>


--m72guqpsak2h7otc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v4] man/man7/pathname.7: Add file documenting format of
 pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250115162052.131794-1-jason@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <20250115162052.131794-1-jason@jasonyundt.email>

Hi Jason,

On Wed, Jan 15, 2025 at 11:20:51AM -0500, Jason Yundt wrote:
> The goal of this new manual page is to help people create programs that
> do the right thing even in the face of unusual paths.  The information
> that I used to create this new manual page came from these sources:
>=20
> =E2=80=A2 <https://unix.stackexchange.com/a/39179/316181>
> =E2=80=A2 <https://sourceware.org/pipermail/libc-help/2024-August/006737.=
html>
> =E2=80=A2 <https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.g=
it/tree/include/uapi/linux/limits.h?h=3Dv6.12.9#n12>
> =E2=80=A2 <https://docs.kernel.org/filesystems/affs.html#mount-options-fo=
r-the-affs>
> =E2=80=A2 <man:unix(7)>
>=20
> Signed-off-by: Jason Yundt <jason@jasonyundt.email>
> ---
> Here=E2=80=99s what I changed from the previous version:

Thanks!  The page starts looking good.  I'll make some minor comments
below.

> =E2=80=A2 The title of the page is now =E2=80=9Cpathname(7)=E2=80=9D.
> =E2=80=A2 The list of kernel rules now mentions that paths can=E2=80=99t =
be longer than
>   4,096 bytes (Thanks for mentioning this, Florian).
> =E2=80=A2 The list of kernel rules now mentions that filenames can=E2=80=
=99t be longer
>   than 255 bytes.
> =E2=80=A2 I replaced the ext4 filename limitation example with a Amiga fi=
lename
>   limitation example.  It no longer made sense to say that ext4 limited
>   filenames to 255 bytes now we=E2=80=99re saying that all filenames are =
limited
>   to 255 bytes.
> =E2=80=A2 I added UNIX domain sockets=E2=80=99s sun_path as an example of=
 a situation
>   where the kernel puts additional limitations on paths (Thanks for
>   mentioning this, Florian).
> =E2=80=A2 I added additional sources to the commit message in order to ac=
count
>   for the new information added by this version.
>=20
>  man/man7/pathname.7 | 61 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 man/man7/pathname.7
>=20
> diff --git a/man/man7/pathname.7 b/man/man7/pathname.7
> new file mode 100644
> index 000000000..15ff98e15
> --- /dev/null
> +++ b/man/man7/pathname.7
> @@ -0,0 +1,61 @@
> +.\" Copyright (C) 2025 Jason Yundt (jason@jasonyundt.email)
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH pathname 7 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +pathname \- how pathnames are encoded and interpreted

Maybe, since this also discusses filenames, we should use both names:

	.SH NAME
	filename,
	pathname
	\-
	...

> +.SH DESCRIPTION
> +Some system calls allow you to pass a pathname as a parameter.
> +When writing code that deals with paths,
> +there are kernel space requirements that you must comply with

s/kernel space/kernel-space/

since it works as an adjective.

also, I'd put a comma after that: s/$/,/

> +and userspace requirements that you should comply with.

s/userspace/user-space/

for similar reasons.

> +.P
> +The kernel stores paths as null-terminated byte sequences.
> +The kernel has a few general rules that apply to all paths:
> +.IP \[bu]

See man-pages(7):

   Lists
     There are different kinds of lists:

     [...]

     Bullet lists
            Elements  are preceded by bullet symbols (\[bu]).  Anything
            that doesn=E2=80=99t fit elsewhere is usually covered by this  =
type
            of list.

     [...]

     There should always be exactly 2 spaces between  the  list  symbol
     and  the  elements.   This  doesn=E2=80=99t  apply to "tagged paragrap=
hs",
     which use the default indentation rules.

So, you'll need to use

	.IP \[bu] 3

in the first item (and only there; the following ones inherit the
value).

> +The last byte in the sequence needs to be a null byte.
> +.IP \[bu]
> +Any other bytes in the sequence need to be non-null bytes.
> +.IP \[bu]
> +A 0x2F byte is always interpreted as a directory separator (/).

How about adding this?:

	and cannot be part of a filename.

> +.IP \[bu]
> +A path can be at most 4,096 bytes long.

For self-consistency, let's use the same term all of the time: either
path or pathname.  Otherwise, a reader might think they are different
things.

For consistency with POSIX, let's say pathname, since that's what POSIX
uses:
<https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap03.html#t=
ag_03_254>

> +A path that=E2=80=99s longer than 4,096 bytes can be split into multiple=
 smaller paths
> +and opened piecewise using
> +.BR openat (2).
> +.IP \[bu]
> +Filenames can be at most 255 bytes long.

For consistency with bullet one:

s/Filenames/A filename/

> +.P
> +The kernel also has some rules that only apply in certain situations.
> +Here are some examples:
> +.IP \[bu]
> +If you want to store a file on an Amiga filesystem,
> +then its filename can=E2=80=99t be longer than 30 bytes.

I would simplify and make it more consistent with the bullets above:

	-  Filenames on the Amiga filesystem can be at most 30 bytes long.

> +.IP \[bu]
> +If you want to store a file on a vfat filesystem,
> +then its filename can=E2=80=99t contain a 0x3A byte (: in ASCII)

Is that the only one?  I expect there are several characters that are
not allowed in vfat.

> +unless the filesystem was mounted with iocharset set to something unusua=
l.
> +.IP \[bu]
> +A UNIX domain socket=E2=80=99s sun_path can be at most 108 bytes long (s=
ee
> +.BR unix (7)
> +for details).
> +.P
> +Userspace treats paths differently.

s/Userspace/User space/

> +Userspace applications typically expect paths to use

=2E

> +a consistent character encoding.
> +For maximum interoperability, programs should use
> +.BR nl_langinfo (3)
> +to determine the current locale=E2=80=99s codeset.
> +Paths should be encoded and decoded using the current locale=E2=80=99s c=
odeset
> +in order to help prevent mojibake.

It might be interesting to add an example program.

> +For maximum interoperability,
> +programs and users should also limit
> +the characters that they use for their own paths to characters in
> +.UR https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap03.=
html#tag_03_265
> +the POSIX Portable Filename Character Set
> +.UE .
> +.SH SEE ALSO
> +.BR open (2),
> +.BR nl_langinfo (3),
> +.BR path_resolution (7)

Also interesting:

	.BR mount (8)

(It talks about iocharset.)


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--m72guqpsak2h7otc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeH7mcACgkQnowa+77/
2zJVXxAAiJjtr5BEK9+/fkUZWBvLYElP3RJL7FkwMINiRiFmJu2IGoSUDDgjpKDJ
3szWqUJaNNMY2jIoj1UslNkmxp/AIjhRKW2ty5354WJXgjTpgwOAZn51HY114AFw
FZZ+JYZ5M7f+vVn+hplimz2JSi6d4xxCGxIh+8307HhYIN7EbCx4vYQcOR3JGNzP
f1bL6zqt0WI1C9+zfL2GsaShofuOwSwDUgUNfCMmme2Sdttp5Xl0TV/710OeY2aM
qx8BH8qCkzPQokSFNRMoWPNdvMGhUxg+ACnfpttPtwpuW9Tgts8pOMo/EpWI450S
21Xgl3lpolF8dE7ZsX1j1aUyGXqA2jlrRaNgT4Q1b++Jn/EfWy1lKkyBzizti7cj
u2EAaQLjLyvCTqGAi9J7hySZblehhx3oIWe8oQS/9gs+CYLhkq76jst3KQJkh1G9
tO+w45QLEh9/p7Q15toNCsylxzvsghQ5hDJMExYKuh25hRGAyAMFIONlHZRt9tmT
yBMSgrry3KXUUrmMK7aqLbbZLVNq+9GgPDUn0wQ6Wd3zoxObfHkA7QoMGSFGSSDe
VzLFAVuekhQGSVP+GX68ufjRGjflcMZLw5KtUifjAGrpTV597/JuiT7JcuMrjni8
DX6VysQ6s+R8CmqXC+mOTEVDVUWyZkKUunuu4CweH5d9hZ2dNt4=
=6mCl
-----END PGP SIGNATURE-----

--m72guqpsak2h7otc--

