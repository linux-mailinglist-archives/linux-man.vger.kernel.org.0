Return-Path: <linux-man+bounces-2447-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6276FA373B7
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 11:00:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DA4F3AE45B
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 10:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D14DF189BB0;
	Sun, 16 Feb 2025 10:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JT4k3iSK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9243317E015
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 10:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739700013; cv=none; b=dXxGqFhSEbeV/YL8DoTCxeJ2HoroW2UrwXDxYN9S5FUM8BMy5Gv0HvGarIxf19E7CwNFSZxkROsuJuxoxDufjHzVH/RBkApJETGgBeWYd0OMix4K6s9fLBcJAu3UBL9Fg1spg9thDOjV5q5Nif6iO74p2bCeQkneIKqNwbdGFeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739700013; c=relaxed/simple;
	bh=M/khjO01lryOKnYqGdfmnVxCf/z3KMRZMRrfvTuGll0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I9tXY7tS1fa85Op9P+gdwF7j4LDDCwNBS9muiu7nC4nSSyFtT3+vHRT8uVtQOlmP5Q899idS8RLxaAlnud3lgUNry9BoTIVqP8wI1PHy++DykZYvhTBPKIkyQOaf+zVoJf76rlouKr7vsBwIQRaVMjUmL4ngRonJ5XI+8wIoFRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JT4k3iSK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A005C4CEDD;
	Sun, 16 Feb 2025 10:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739700013;
	bh=M/khjO01lryOKnYqGdfmnVxCf/z3KMRZMRrfvTuGll0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JT4k3iSKlZkZw/OJkJ9NYGC8UWlXNYoiVzyAupbvSw0xW21avzpBnLn2v88ull0M1
	 3dvccbTZ2WWs1oZtupJ6qFFy4KxJv7BXDBl3Bl2tMUxZjHREypqkllmZgR/2L1pz/b
	 BpEIXplgNrjBdtxlVpkwpSNTfZUblwYMu69Cwq3BPVTAHDFDPk5FkuwrR0d4Cy2oEQ
	 2Rjm4tIsdxEf33pWEk0GwtXcg1YtZFHVfhGEwMoiiIzpIw9CAkU3i6gDnGmHlQ0uq2
	 gp8IyvKZgoJW5zkEg7ghnlStRwu0dkaRzFMlR269j1X1TJs82QbeI2CIwU1mVKgG4J
	 2DEtLXsAqFuXg==
Date: Sun, 16 Feb 2025 11:00:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getcwd.3: say more clear that syscall can
 return "(unreachable)", but modern glibc wrapper cannot
Message-ID: <ddabfiggfra3fb2bxwkms4wiwp764m3nzp3g6cdzaja4b3nkvw@jzcn4kgc7ltx>
References: <20250214125023.2798287-1-safinaskar@zohomail.com>
 <20250216061828.2277971-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qgw5fvgmjiopob7u"
Content-Disposition: inline
In-Reply-To: <20250216061828.2277971-1-safinaskar@zohomail.com>


--qgw5fvgmjiopob7u
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getcwd.3: say more clear that syscall can
 return "(unreachable)", but modern glibc wrapper cannot
References: <20250214125023.2798287-1-safinaskar@zohomail.com>
 <20250216061828.2277971-1-safinaskar@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <20250216061828.2277971-1-safinaskar@zohomail.com>

Hi Askar, Carlos,

On Sun, Feb 16, 2025 at 06:18:28AM +0000, Askar Safin wrote:
> I verified using expirement that modern glibc wrapper getcwd actually nev=
er returns "(unreachable)".
> Also I have read modern glibc sources for all 3 functions documented here.
> All they don't return "(unreachable)".
> Also I changed "pathname" to "pathnames".
>=20
> Now let me describe my expirement. I compiled this C source:
>=20
> =3D=3D=3D
> #include <sys/syscall.h>
> #include <unistd.h>
> #include <stdio.h>
>=20
> int
> main (void)
> {
>   char buf[1000];
>   if(syscall(SYS_getcwd, buf, sizeof(buf)) =3D=3D -1)
>     {
>       perror ("SYS_getcwd");
>     }
>   else
>     {
>       printf ("SYS_getcwd: %s\n", buf);
>     }
>   if(getcwd(buf, sizeof(buf)) =3D=3D NULL)
>     {
>       perror ("getcwd");
>     }
>   else
>     {
>       printf ("getcwd: %s\n", buf);
>     }
>   return 0;
> }
> =3D=3D=3D
>=20
> to a binary /tmp/a and run the following command:
>=20
> $ sudo unshare --mount bash -c 'set -e; mkdir /tmp/dir; mount -t tmpfs tm=
pfs /tmp/dir; cd /tmp/dir; umount -l .; /tmp/a'
>=20
> The output was:
>=20
> SYS_getcwd: (unreachable)/
> getcwd: No such file or directory

Thanks!  I prefer if we show a continuous shell session, which is easier
to follow than code mixed with explanations.  So I would add the
following (and indented, to show it's code; that also makes it easier to
keep the #include lines in git(1)):

	alx@devuan:~/tmp$ cat getcwd.c;
	#include <unistd.h>
	#include <stdio.h>
	#include <sys/syscall.h>

	int
	main(void)
	{
		char  buf[1000];

		if (syscall(SYS_getcwd, buf, sizeof(buf)) =3D=3D -1)
			perror("SYS_getcwd");
		else
			printf("SYS_getcwd: %s\n", buf);

		if (getcwd(buf, sizeof(buf)) =3D=3D NULL)
			perror("getcwd");
		else
			printf("getcwd: %s\n", buf);

		return 0;
	}
	alx@devuan:~/tmp$ gcc -Wall -Wextra -o /tmp/getcwd getcwd.c;
	alx@devuan:~/tmp$ sudo unshare --mount bash;
	root@devuan:/home/alx/tmp# set -e;
	root@devuan:/home/alx/tmp# mkdir /tmp/dir;
	root@devuan:/home/alx/tmp# mount -t tmpfs tmpfd /tmp/dir/;
	root@devuan:/home/alx/tmp# cd /tmp/dir/;
	root@devuan:/tmp/dir# umount -l .;
	root@devuan:/tmp/dir# /tmp/getcwd;
	SYS_getcwd: (unreachable)/
	getcwd: No such file or directory
	root@devuan:/tmp/dir# exit;
	exit

I have also adapted the example program to the C coding style of the
project:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/style/c>

>=20
> Signed-off-by: Askar Safin <safinaskar@zohomail.com>

Please add a line for Carlos:

	Cc: Carlos O'Donell <carlos@redhat.com>

> ---
>=20
> Changes since v1:
> - I added that old glibc versions are buggy, too
> - Added sources for my expirement to commit message (and did small tweaks=
 to commit message)
>=20
>  man/man3/getcwd.3 | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
> index 685585a60..97e3c766f 100644
> --- a/man/man3/getcwd.3
> +++ b/man/man3/getcwd.3
> @@ -245,8 +245,11 @@ process (e.g., because the process set a new filesys=
tem root using
>  without changing its current directory into the new root).
>  Such behavior can also be caused by an unprivileged user by changing
>  the current directory into another mount namespace.
> -When dealing with pathname from untrusted sources, callers of the
> -functions described in this page
> +When dealing with pathnames from untrusted sources, callers of the

As Carlos said, I prefer if this patch doesn't include the change
s/pathname/&s/.  That would reduce the diff.

Thanks for the help with this, Carlos!

> +functions described in this page (until glibc 2.27)
> +or raw

I think it would be more appropriate to say 's/or raw/or the raw/'.

> +.BR getcwd ()
> +system call

Other than those minor comments, I think this LGTM.  Please address
those, and I'll take the patch.

Carlos do you have any further comments?


Have a lovely day!
Alex

>  should consider checking whether the returned pathname starts
>  with '/' or '(' to avoid misinterpreting an unreachable path
>  as a relative pathname.
> --=20
> 2.39.5
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--qgw5fvgmjiopob7u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmext04ACgkQ64mZXMKQ
wqnYqg//beZyEWyXlGRYUkVrSbU17nhZ7PXDBsRG/UqX0Epn21NindoeDHF05/JW
oszzfcR7HyR38xGbtUyhF3c6VugmnwnwUzbXJUAbKZqoUbvXX81V7wUwWwc6uWgm
/vrpB/xd5jdcSxVMROYmQ8kc1c2QrJ8DjtmKtykHoJLKpu/WyTeVEuCFRCR2JqAe
OmaJhbPforv3GhPDRqvv4B9J1MR72OCUakqRMmonsB9kblhyEUSPbkUYaGWJO+iu
ZskBMT2gD4tWsrn6vJUihnyiolf0UuuVEx2W5N3Zq0gP1PGq5W3n5MxBirVMHUzE
LA1aFW4JhxvMS9IWNGo8dzGPUL0Duxqvp7CSq/7KDKxZNxO01PAEf2UJNnWEgkv8
SbmGP9IW75C+k7ATsrjCYKoyoZ89dvWk6RlJwqH6zNZHinbFjumPbFUfd8BjBzXB
T9JjvWLaPkUZUdy+uFtdrYOhno00CMKrU3XjUxseaYMwCBWM2/h+8kI9aHroS7lE
xQYNg+EsLCpDvWDgWfpjy+gZ3On2MfUQhP3ZC6TJ6V876hQkomOoK8xn2ULjEjOg
plORXz5NpnFAvDFQpjp0EZ/MjvQoumJ5oDYFYYkXcGqqqGH2wAiQLLWTfDCDcVKv
N5L/aslFSlolwsuzq6bsyMRKWr0H+B4MyAS0+VC2ccjMqHZIG04=
=xOsM
-----END PGP SIGNATURE-----

--qgw5fvgmjiopob7u--

