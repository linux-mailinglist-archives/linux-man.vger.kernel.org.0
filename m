Return-Path: <linux-man+bounces-3011-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7EEAC30EA
	for <lists+linux-man@lfdr.de>; Sat, 24 May 2025 20:21:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A02E3A1563
	for <lists+linux-man@lfdr.de>; Sat, 24 May 2025 18:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F40161ACEB0;
	Sat, 24 May 2025 18:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2qr11/A"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A803A7E1
	for <linux-man@vger.kernel.org>; Sat, 24 May 2025 18:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748110884; cv=none; b=LIwGoxY4bLvxiZgpLeJISYlygobDuJlwBIDReZpLZVQW7NqrMbQ6yVcSOb7VA/tcsKRJtnX1e6RttWyc6027xaArewuOHgZyNCmiqb52z4FVRZhVVz2MJnYD56bFKh6DtDd61CVRSEnowNbIQI7MaR/4FLswQWmG4eSHdqPUydw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748110884; c=relaxed/simple;
	bh=YXz5zy6TZiFywfI/bHCuPT1e8A/acG7C/1ex/4Em15M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jfeg/GbYmZS4TkB5P/P7TRsPPgoQS94MIFw0gESXkyc5WezER0ufWf43EdttBLhCFFvaTXugRbvnwTQ4nk3yBjivd9IvrZFqArIt9PTINfRDqk4oUwzgG6+M20J0WLzkOoPWLLWAMSMMXC8FwzwmZhfaaUYnRDGwBX7FtkoY/GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2qr11/A; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 512F6C4CEE4;
	Sat, 24 May 2025 18:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748110884;
	bh=YXz5zy6TZiFywfI/bHCuPT1e8A/acG7C/1ex/4Em15M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H2qr11/AZxfMUoq4+Niu+l8VI9ad9NgihgT8rthdRBCt1RU4jH4rhPOXUpWCPUDzk
	 5/zeDIFyOvjivKnnCxlXZJKpIKsErg9zSyWcpUWwsvJsRj98JdZBRG666d/yS69oJf
	 PbZN4Q2U6BDHjprG76zoya7oUjUC9DjcI2ceXbYLfEtQAbAP+qgAiWPZTdiIhi+qoR
	 xO0yrkGFODmkJxWpfUG/uj5VU9IV03Mc+ry6i7MPfCSpxxepuoJSVSGW9AjECU/ezs
	 MorqsantUFYfx20ka4K9RMECCz/08r1ns/YIV6ozZ1f3V0Pk5okAFpky4PM9X5eSPW
	 dq5uBRd3XiS4Q==
Date: Sat, 24 May 2025 20:21:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Nhat Pham <nphamcs@gmail.com>, 
	Johannes Weiner <hannes@cmpxchg.org>, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH] man/man2/cachestat.2: add a man page for cachestat()
Message-ID: <e6zqaqt4di2lxri3fn77mdgyl2jsjyzlh66worzuk3vnzzydrx@lufsycrz26kd>
References: <20250522212149.36049-1-technoboy85@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5zvpgdlwn25k775t"
Content-Disposition: inline
In-Reply-To: <20250522212149.36049-1-technoboy85@gmail.com>


--5zvpgdlwn25k775t
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Nhat Pham <nphamcs@gmail.com>, 
	Johannes Weiner <hannes@cmpxchg.org>, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH] man/man2/cachestat.2: add a man page for cachestat()
References: <20250522212149.36049-1-technoboy85@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250522212149.36049-1-technoboy85@gmail.com>

Hi Matteo,

On Thu, May 22, 2025 at 05:21:49PM -0400, Matteo Croce wrote:
> From: Matteo Croce <teknoraver@meta.com>
>=20
> Add a missing man page for cachestat().
> The text was converted from the commit message:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Dcf264e1329fb0307e044f7675849f9f38b44c11a
>=20
> Signed-off-by: Nhat Pham <nphamcs@gmail.com>
> Signed-off-by: Matteo Croce <teknoraver@meta.com>
> ---
>  man/man2/cachestat.2 | 109 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 109 insertions(+)
>  create mode 100644 man/man2/cachestat.2
>=20
> diff --git a/man/man2/cachestat.2 b/man/man2/cachestat.2
> new file mode 100644
> index 000000000..f741e3695
> --- /dev/null
> +++ b/man/man2/cachestat.2
> @@ -0,0 +1,109 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH CACHESTAT 2 (date) "Linux man-pages (unreleased)"

Please use lowercase, since the API uses lowercase.

See:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D4=
c1c52748a06141996fccbf23fb8d9e15cba11e8>

commit 4c1c52748a06141996fccbf23fb8d9e15cba11e8
Author: Alejandro Colomar <alx@kernel.org>
Date:   Sun Oct 30 18:59:09 2022 +0100

    Many pages: Use correct letter case in page titles (TH)
   =20
    Scripted change:
   =20
    $ find man* -type f \
      | xargs grep -L '\.so' \
      | while read f; do
          P=3D$(basename $f);
          T=3D$(grep '\.TH ' $f | cut -f2,3 -d' ' | sed 's/ /./');
          p=3D$(echo $P | tr '[:upper:]' '[:lower:]');
          t=3D$(echo $T | tr '[:upper:]' '[:lower:]');
          Tn=3D$(echo $T | sed 's/\.[^.]\+$//')
          Pn=3D$(echo $P | sed 's/\.[^.]\+$//')
   =20
          N=3D$(man_section $f NAME \
          | sed -n '/NAME/,/ - /p' \
          | sed 's/ - .*//' \
          | grep -v '^NAME$' \
          | tr ', ' '\n' \
          | grep -i "^$Pn$" \
          | head -n1)
   =20
          test $P =3D $T \
          && test -n $N \
          && continue;
   =20
          if test "x$p" !=3D "x$t"; then
              echo 1 $P $T $N;
          elif test -z "$N"; then
              echo 2 $P $T $N;
          else
              sed -i "/\.TH /s/$Tn/$N/" $f;
          fi;
      done;
   =20
    On 10/30/22 23:00, G. Branden Robinson wrote:
    > For those to whom this change is coming as an unpleasant surprise, the
    > forthcoming groff 1.23.0 features an option that will reverse this
    > change at rendering time.
    >
    >  From groff_man(7):
    >
    >     -rCT=3D1 Capitalize titles, setting the man page title (the first
    >            argument to .TH) in full capitals in headers and footers.
    >            This transformation is off by default because it discards
    >            case distinction information.
    >
    > This register can also be set in a site-local "man.local" file to for=
ce
    > it on for all pages.  On Debian-based systems, this file is in
    > /etc/groff.  The following line will do the trick.
    >
    > .nr CT 1
    >
    > The groff_man_style(7) man page offers further examples of such
    > rendering customization.
    >
    >     /usr/local/share/groff/site-tmac/man.local
    >            Put site=E2=80=90local changes and customizations into thi=
s file.
    >
    >                   .\" Use narrower indentation on terminals and simil=
ar.
    >                   .if n .nr IN 4n
    >                   .\" Put only one space after the end of a sentence.
    >                   .ss 12 0 \" See groff(7).
    >                   .\" Keep pages narrow even on wide terminals.
    >                   .if n .if \n[LL]>78n .nr LL 78n
    >                   .\" Ensure hyperlinks are enabled for terminals.
    >                   .nr U 1
    >
    >            On multi=E2=80=90user systems, it is more considerate to u=
sers whose
    >            preferences may differ from the administrator=E2=80=99s to=
 be less
    >            aggressive with such settings, or to permit their override
    >            with a user=E2=80=90specific man.local file.  This can be =
achieved by
    >            placing one or both of following requests at the end of the
    >            site=E2=80=90local file.
    >                   .soquiet \V[XDG_CONFIG_HOME]/man.local
    >                   .soquiet \V[HOME]/.man.local
    >            However, a security=E2=80=90sandboxed man(1) program may l=
ack
    >            permission to open such files.
   =20
    Cc: Ingo Schwarze <schwarze@openbsd.org>
    Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

> +.SH NAME
> +cachestat \- query the page cache statistics of a file
> +.SH SYNOPSIS

You forgot to enclose most of the SYNOPSIS in '.nf'/'.fi'.  Please have
a look at ioctl_eventpoll(2) for a page that has both functions and
structures in the SYNOPSIS.

> +.B #include <sys/mman.h>
> +.PP
> +.B struct cachestat_range {
> +.br
> +.RS
> +__u64 off;
> +.br
> +__u64 len;
> +.RE

Nah, we keep it simpler.  See ioctl_eventpoll(2)

> +.B };
> +.PP
> +.B struct cachestat {
> +.br
> +.RS
> +__u64 nr_cache;
> +.br
> +__u64 nr_dirty;
> +.br
> +__u64 nr_writeback;
> +.br
> +__u64 nr_evicted;
> +.br
> +__u64 nr_recently_evicted;
> +.RE
> +.B };
> +.PP
> +.BI "int cachestat(unsigned int " fd ", struct cachestat_range *" cstat_=
range ","
> +.br
> +.BI "              struct cachestat *" cstat ", unsigned int " flags ");"
> +.SH DESCRIPTION
> +.B cachestat()
> +queries the number of cached pages, dirty pages, pages marked for writeb=
ack, evicted pages, and recently evicted pages in the byte range specified =
by

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p';
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.


We try to never (with some exceptions) go past the 80-col right margin;
neither in the source code, nor in the rendered output.

> +.I off
> +and
> +.I len

Please refer to structure members as '.off' and '.len' instead of 'off'
and 'len'.  I'm working on a global change to do that in all of the
pages.  I think that will make it more readable, and obvious at first
glance that they're structure members.

> +in the
> +.B cachestat_range
> +structure.
> +.PP

We now use .P instead of .PP (they are synonyms, but .PP generates a
diagnostic in groff(1) when turning on style diagnostics, and writing
one less byte per paragraph was nice).  :)

> +An evicted page is one that was previously in the page cache but has sin=
ce been evicted.
> +A page is considered recently evicted if its reentry into the cache woul=
d indicate active usage under memory pressure.
> +.PP
> +The results are returned in a
> +.B cachestat
> +structure, pointed to by the
> +.I cstat
> +argument.
> +.PP
> +The
> +.I off
> +and
> +.I len
> +fields must be non-negative. If
> +.I len > 0
> +, the queried range is
> +.B [off, off + len]

The '[', ',', and ']' should be in roman.  'off', and 'off + len' should
be in italics (just like in the rest of the page).  So:

	.RI [ off ,\~ off+len ]

> +. If
> +.I len =3D=3D 0

The comma should go in this line.  Otherwise, you'll see a spurious
space before the comma.

	.IR len\~=3D=3D\~0 ,

> +, the range is from
> +.I off
> +to the end of the file.
> +.PP
> +The
> +.I flags
> +argument is reserved for future use and must be set to
> +.B 0
> +.

	.BR 0 .

> +.PP
> +Currently,
> +.B hugetlbfs
> +files are not supported.
> +.PP
> +Note that the status of a page may change after
> +.B cachestat()
> +retrieves it but before the values are returned to the application; thus=
, the values may be slightly outdated.
> +.SH RETURN VALUE
> +On success,
> +.B cachestat()
> +returns 0. On error, \-1 is returned and
> +.I errno
> +is set appropriately.
> +.SH ERRORS
> +.TP
> +.B EFAULT
> +.I cstat
> +or
> +.I cstat_range
> +points to an invalid address.

s/points/point/

> +.TP
> +.B EINVAL
> +Invalid
> +.I flags
> +value.
> +.TP
> +.B EBADF
> +Invalid file descriptor.
> +.TP
> +.B EOPNOTSUPP
> +The file descriptor refers to a
> +.B hugetlbfs
> +file, which is unsupported.
> --=20
> 2.49.0

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--5zvpgdlwn25k775t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgyDhoACgkQ64mZXMKQ
wqm/MQ//eiKWiKsarF4hm0+0PcmRaeoPhpxTWwLKd1GdwH0+uwztfFw15/1oIZUI
QxFX0CZjx4ZaAtp/ZmyqE9z6926zrqXE1pJUb1g8j5ObcaUy4LQgm/Zr95W7W+Dj
fdQ/ZxXtyWE8FNHewBIxYcESH1cj1NkfSF0V1rNnD48IbIFc7lZbEUR7PlEarhFi
EEZlCeJOsweN0qhfUo3lobmqib9jvG3liopB0ljs7fHS6vztcd1AMMfsr8RLMS+V
6V9EdOxUstQV5CKMq9+rVOZYE2BrRaSKkFKjhDvOYvDLm7DTPnkM/pZto58mvpGo
zabUI4Eap1ZajCDN303+nRr1Dx1Wsmv7iRLuliuDs6Pkpc6Xkl/kuWWMtkpbDLg3
eVMhbS5u39ap5bKNbFIhluXzrL/EJ6Zvgoc+r4UKdbSyUYRsldBewlpXvkvznaDZ
aI7i0/ZeM7GLZYIZpT5vas3yvteOTxPqHBf7v4BXk05bIJ1wE2Ij3adE13k+7q4K
XRcf4RjdaMOrLWwG0O6l0ecgfLrM6A1q74u0yo9Pk3HYRS41HrlLPLcCIl1eQQgW
Lr0Tf3GlZFZ4epLphRQfDbzDmN4G528ge6K5d07gETLy5i172j7tvynzrrezliPi
uYhVBiWmoeRaFZ7Y6XyOpJsgjwAnuGZRv3NL22rPUMxLH5LhlCg=
=9cg8
-----END PGP SIGNATURE-----

--5zvpgdlwn25k775t--

