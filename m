Return-Path: <linux-man+bounces-2225-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB205A10795
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 14:19:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70B0B3A743F
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 13:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FA35236EAA;
	Tue, 14 Jan 2025 13:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXwCs+q0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4E32361E9
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 13:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736860781; cv=none; b=EfrL5O1EtNbq2EK7WfRJQVk/adZ7vgyaQps8ujnVNNdOwWSzBqXe63nBT4ESjLVPho/C0m9kbFZU40P+BqoELPsDRL+wDjY1DJBav83EDJ2ODjpRidaQqZDL6dfzTo91TWVTuYGqkshgbaRghZ1lYv2W3Dze5KFjQX9UTTT0rY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736860781; c=relaxed/simple;
	bh=DjeSdCcTBbq0zs+KRJwkTATLoEo9OpLZrRrJc5SLSM0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WpF5CaXiNl5JZP9sj/2DEo7tJXCbfbt6Tg9C1WvD9UicfFO0otwTXmBqjwKA7awU7aMkA3W53J4JrYPJw7+eR7gby+GR6u/3/rV245MsUvZzBpOHeJKeAXq3dcoXrxmxfbhWF/DyvHuKtVaNKewjpjY6vV7/DpSn5gl8R71Yamo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXwCs+q0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CA51C4CEDD;
	Tue, 14 Jan 2025 13:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736860780;
	bh=DjeSdCcTBbq0zs+KRJwkTATLoEo9OpLZrRrJc5SLSM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XXwCs+q0WPz5LmNOyVr67Dl1ZfJjETe3GkqnNILK/8MPkGaoBnNMYFp4tlcQEQqZG
	 Ape/ABHxV6d0zprPC8Ba/Ky+gy94zWbvZahmW6XWkVWRGhb5kSVYKFzqU4oyiQaraj
	 CETrDBJISCT1CpfBwpqDJpZ5ukgKv48tMh+s3i8N69YZjurKLXowVQJpO1qnkhAtNv
	 1GII5aZXgJItro/4fR9PKkNcHFf6Gc9b92wnDIfsG2Gm3dzfCU1fH3E9vYbPFvmqTN
	 IIKAct5xZiop9II2uCK/vVR6ki1ZkMH/qQ4ts7OLtReE7GgJqKyvadu2hd8Yujisu1
	 czvXa0B5NXnBw==
Date: Tue, 14 Jan 2025 14:19:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/man-pages.7: Tell contributors to write titles
 in lowercase
Message-ID: <mog6nnwzwl2dmlrec5b7l76wbxlsnklvdulok644x6o557trib@3zwtoz47r4x3>
References: <20250114130028.28638-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="azkpxiaklbuupg62"
Content-Disposition: inline
In-Reply-To: <20250114130028.28638-1-jason@jasonyundt.email>


--azkpxiaklbuupg62
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/man-pages.7: Tell contributors to write titles
 in lowercase
References: <20250114130028.28638-1-jason@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <20250114130028.28638-1-jason@jasonyundt.email>

Hi Jason,

On Tue, Jan 14, 2025 at 08:00:27AM -0500, Jason Yundt wrote:
> Recently, I submitted my first patch to the Linux man-pages project.  In
> my patch, I had created a new manual page.  On the manual page=E2=80=99s =
title
> line, I had written the title of my new page in all caps because
> man-pages(7) said that I should write it that way.  It turns out that
> man-pages(7) was wrong and that the title should have been written in
> lowercase [1].  This commit corrects man-pages(7) so that it tells
> contributors to use lowercase when writing titles on title lines.
>=20
> [1]: <https://lore.kernel.org/linux-man/rph24kz36vysoeix4qoxxxcwq3c3fskws=
2vmxkkgcb2lpits3f@ysm7ug66svzh/T/#mc84250a6634d7f776118879021331001cceccbe5>
> ---
>  man/man7/man-pages.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man7/man-pages.7 b/man/man7/man-pages.7
> index dc117662f..49c02d3fd 100644
> --- a/man/man7/man-pages.7
> +++ b/man/man7/man-pages.7
> @@ -95,8 +95,8 @@ .SS Title line
>  The arguments of the command are as follows:
>  .TP
>  .I title
> -The title of the man page, written in all caps (e.g.,
> -.IR MAN-PAGES ).
> +The title of the man page, written in lowercase (e.g.,
> +.IR man-pages ).

Actually, the title should follow the name of the page.  Usually, this
is lowercase, but in some cases it should be sentence case, or upper
case, if the name is something like UTF-8, or something like that.

So, I would instead just remove the ", written in ..." part.

Thanks for the patch!


Cheers,
Alex

>  .TP
>  .I section
>  The section number in which the man page should be placed (e.g.,
> --=20
> 2.47.0
>=20

I should have fixed man-pages(7) when I committed the following commit:

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


--=20
<https://www.alejandro-colomar.es/>

--azkpxiaklbuupg62
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeGZHUACgkQnowa+77/
2zKcuQ//UKH3mOMAa12RBa+Ax06MFGZTvJQcJ3POEN5dE215bpu06CrgjHsldee4
ouiS2UvdF6f7vyULtICcw3xEenHfBM8nbUI1gUCpUnEnXBwdeGU6hZM/di5P9egi
agqBc9Ha4/fshqrl8gJ7wmhkPqdeiiTGIRzHg6vL8eukaCwGmmRRrg8pPQEozfvS
i54TkOaWuVHLo4PFUkxm2JgbI8ywdRUexY5DsRPL4haGxCgRoEWzM/VtBSfNnO/M
icN3uK4v9nCEGhupHV8R+WUllfuTgvQr7uHIcfIz0ftaJmirH8OcBmzZUZ7yMxJO
bim+StFoLENfuaOL9aokxZIIrc/B7IY6MEqGfgMg+u6NyWHCbH/shENc6rA8pAKx
56vAn6+oljB6q3q1o4XbiWfQHJubIUlDT+Zp+FapLc9tMtJ5eW8sXaJJWDUnGRDj
s+5lSXuJtebm8GQF39HvS9HR9CtDWYPrRJ+Mh/g43JGYnUwW/W8ING7tfZx4//Ko
DsyUgN5WPLFH7VJF5HrYQAT31n1QFaGcoOmHKg4FtTqOSXHgnW/HcP24aDa4SrdO
+HxMOnkkFceUfxebX5+2AMNL8oGKI+n3bGRW9O14KHGQ7jJB5XaHay38gRmW9lc6
EYpQY3VsgEWRzD3eq17cvP4o9pWh79ELgpuLNP8G2XXdZFGt0ug=
=L+0I
-----END PGP SIGNATURE-----

--azkpxiaklbuupg62--

