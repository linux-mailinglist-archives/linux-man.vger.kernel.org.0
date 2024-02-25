Return-Path: <linux-man+bounces-471-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C9B862A0D
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 12:13:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF4D21F21510
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 11:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D9CFC0A;
	Sun, 25 Feb 2024 11:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pv4KoeX+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A581BDDDF
	for <linux-man@vger.kernel.org>; Sun, 25 Feb 2024 11:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708859629; cv=none; b=WtT90HfW0OfWvspk2P4K1m0+ew1ppmvJahA7FIWMkUh3Ap0Uh+P7M08M0LKdxMrQDgcI6CGb/iSmWTuy8nMQIvdIHOqBql28FOF0Ln1Pva9IQehgJmjKSUWPeeEb+lUYLU9ErdnDBXtmVEfCunIXUmHg3bk+/L1oWHVH14q7a6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708859629; c=relaxed/simple;
	bh=NYek1FWL25dSy78Mc2qYLvrpX1ZOHh+uiOC32U0XiYk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YNY1LfD1Zkg4XR0OQk2PSl1Av6+RhP+SDAuSN9lWt+ewq7EbmknKFVV91NRRfDodXYQwEkfDAdYL2L2XehE0CYfLqMY+AGI8qEW0WY/HnGuOdrpKlCtgJTwIvoA9diwV/gm1WOKYtiX+TwegsgVglLypP3zw1xpTjtz3gd1J3Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pv4KoeX+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BA28C433C7;
	Sun, 25 Feb 2024 11:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708859629;
	bh=NYek1FWL25dSy78Mc2qYLvrpX1ZOHh+uiOC32U0XiYk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pv4KoeX+QAHdKNJCvWLAeePKlVbZoVZgypGWJD/ZvM2NPJKV/pBhXy+wDyFrbOgsI
	 UiQG8NK7+9MEY7kBe04LVIJDU1nVx6YgpNMwrBQkX0F2FhFBhuXaa/xfyY6XwBmrW2
	 /4QL4+U+xn6TQ9NVA6w4cgYKU+DMY9yf169aBD2ZBy6XXAlwHnEWrgJWL/Etioj4Ju
	 tJ9T/WbdDd4nM63WvVnCmez9yVIi06434JIadojzo4bnP3wLeBfsBzpqTTtTB7Trg4
	 43TX9Si7oVvRRDc7l24q2PaG3w3DMwOWtelk8j4nP673gNu9p+/dgQeAI+qyY4B0sa
	 Vs1MzrSUTktRw==
Date: Sun, 25 Feb 2024 12:13:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?Vmluw61jaXVzIFNjaMO8dHo=?= Piva <vinicius.vsczpv@outlook.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] getdents.2: add note to misleading field "d_off" in
 struct linux_dirent64
Message-ID: <Zdsg6k_m_2qWJj4E@debian>
References: <SCZPR80MB71490A2B475CBC153A5B3776FC4F2@SCZPR80MB7149.lamprd80.prod.outlook.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Q31glU/0spYb6LgO"
Content-Disposition: inline
In-Reply-To: <SCZPR80MB71490A2B475CBC153A5B3776FC4F2@SCZPR80MB7149.lamprd80.prod.outlook.com>


--Q31glU/0spYb6LgO
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 25 Feb 2024 12:13:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?Vmluw61jaXVzIFNjaMO8dHo=?= Piva <vinicius.vsczpv@outlook.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] getdents.2: add note to misleading field "d_off" in
 struct linux_dirent64

Hi Vin=C3=ADcius!

On Tue, Feb 13, 2024 at 01:23:55PM -0300, Vin=C3=ADcius Sch=C3=BCtz Piva wr=
ote:
> Sorry for the duplicate email; tried sending to myself to doublecheck
> and forget to clear the Cc.
>=20
> The getdents.2 man page details a pair syscalls: getdents() and
> getdents64(), both of which are used to get the entries of a directory.
> The results are populated into a structure, with the difference between
> both syscalls being mostly bitwidth related.
>=20
> However, the behaviour or the 'd_off' field in both struct linux_dirent
> and linux_dirent64 is wrongly documented in this man page.
>=20
> According to the current documentation, 'd_off' is used to store the
> "Offset to the next linux_dirent [...] the distance from the start of
> the directory to the start of the next linux_dirent."
>=20
> This value, thought, is filesystem dependent, and much of the time it
> stores no such offset.
>=20
> According to readdir.3 [1] manpage:
>=20
>  > The value returned in d_off is the same as would be returned by
>  > calling telldir(3) at the current position in the directory stream.
>  > Be aware that despite its type and name, the d_off field is seldom
>  > any kind of directory offset on modern filesystems. Applications
>  > should treat this field as an opaque value, making no assumptions
>  > about its contents; see also telldir(3).
>=20
> Of course, readdir(3) is a glibc function with no ties to
> getdents(2), but it was implemented with such syscall and considering
> that readdir(3) doesn't process the data from getdents(2) my belief is
> that it inherited said behaviour from it [2]. telldir(3) tells a similar
> story.
>=20
> On the example provided at the end of getdents.2, notable is the d_off
> value of the very last entry:
>=20
> --------------- nread=3D120 ---------------
> inode#    file type  d_reclen  d_off   d_name
>        2  directory    16         12  .
>        2  directory    16         24  ..
>       11  directory    24         44  lost+found
>       12  regular      16         56  a
>   228929  directory    16         68  sub
>    16353  directory    16         80  sub2
>   130817  directory    16       4096  sub3
>=20
> which makes a very sudden jump that is obviously not where the entry is
> located.
>=20
> Rerunning this same example but on a ext4 partition gives you garbage
> values:
>=20
> --------------- nread=3D176 ---------------
> inode#    file type  d_reclen  d_off   d_name
>     2050  directory    24 4842312636391754590  sub2
>        2  directory    24 4844777444668968292  ..
>     2051  directory    24 7251781863886579875  sub3
>       12  regular      24 7470722685224223838  a
>     2049  directory    24 7653193867028490235  sub
>       11  directory    32 7925945214358802294  lost+found
>        2  directory    24 9223372036854775807  .
>=20
> In fact, I've had a hard time reproducing nice d_off values on ext2 too,
> so what the filesystem does with d_off must have change since then.
>=20
> On tmpfs it's a count:
>=20
> --------------- nread=3D144 ---------------
> inode#    file type  d_reclen  d_off   d_name
>        1  directory    24          1  .
>        1  directory    24          2  ..
>        5  directory    24          3  sub3
>        4  directory    24          4  sub2
>        3  directory    24          5  sub
>        2  regular      24          6  a
>=20
> I've also not been the first to notice this, as you can see from this
> stackoverflow issue opened last year:
>=20
> https://stackoverflow.com/q/75119224
>=20
> Safe to say, it's a very unreliable field.
>=20
> Below is a patch that adds a warning besides the d_off field in both
> structures, plus a brief explanation on why this field can be mislea-
> ding (while also directing the user towards the readdir.3 man page).
>=20
> [1] https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man3=
/readdir.3
> [2] https://elixir.bootlin.com/glibc/glibc-2.39/source/sysdeps/unix/sysv/=
linux/readdir.c
>=20
> Signed-off-by: Vin=C3=ADcius Sch=C3=BCtz Piva <vinicius.vsczpv@outlook.co=
m>
> ---

Sorry for the late reply!  Thanks!  I've applied your patch, with small
changes:

-  Put line breaks in more appropriate places, according to

$ MANWIDTH=3D72 man 7 man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In  the  source of a manual page, new sentences should be started
     on new lines, long sentences should be split into lines at clause
     breaks (commas, semicolons, colons, and so on), and long  clauses
     should be split at phrase boundaries.  This convention, sometimes
     known  as  "semantic newlines", makes it easier to see the effect
     of patches, which often operate at the level of  individual  sen=E2=80=
=90
     tences, clauses, or phrases.

-  Fix some typos in the commit message, and start the Subject with
   uppercase.  Use 2 spaces after period.  Put the links in a Link:
   field.

-  Bracket URIs, according to

$ MANWIDTH=3D72 man 7 uri | sed -n '/Writing a URI/,/^$/p'
   Writing a URI
     When written, URIs should be placed inside double  quotes  (e.g.,
     "http://www.kernel.org"),   enclosed  in  angle  brackets  (e.g.,
     <http://lwn.net>), or placed on a line by themselves.  A  warning
     for  those  who use double=E2=80=90quotes: never move extraneous punct=
ua=E2=80=90
     tion (such as the period ending a sentence  or  the  comma  in  a
     list)  inside a URI, since this will change the value of the URI.
     Instead, use angle brackets instead, or switch to a quoting  sys=E2=80=
=90
     tem  that  never  includes extraneous characters inside quotation
     marks.  This latter system, called the =E2=80=99new=E2=80=99 or =E2=80=
=99logical=E2=80=99 quoting
     system by "Hart=E2=80=99s Rules" and the "Oxford Dictionary  for  Writ=
ers
     and Editors", is preferred practice in Great Britain and in vari=E2=80=
=90
     ous  European languages.  Older documents suggested inserting the
     prefix "URL:" just before the URI, but this form has never caught
     on.

-  In linux_dirent64, in the comment, refer to getdents(), which is in
   the same page, instead of referring to readdir(3) (which is already
   referred to in the getdents() description of d_off, above).

I've temporarily applied the patch in
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3De692a38195c0d011f73ab74589ed7f0797f82230>
and will soon move it to master (tomorrow, likely).


Have a lovely day!
Alex

>  man2/getdents.2 | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>=20
> diff --git a/man2/getdents.2 b/man2/getdents.2
> index 0d4c379..3427f4b 100644
> --- a/man2/getdents.2
> +++ b/man2/getdents.2
> @@ -67,7 +67,7 @@ structure is declared as follows:
>  .EX
>  struct linux_dirent {
>      unsigned long  d_ino;     /* Inode number */
> -    unsigned long  d_off;     /* Offset to next \fIlinux_dirent\fP */
> +    unsigned long  d_off;     /* Not an offset; see below */
>      unsigned short d_reclen;  /* Length of this \fIlinux_dirent\fP */
>      char           d_name[];  /* Filename (null\-terminated) */
>                        /* length is actually (d_reclen \- 2 \-
> @@ -84,8 +84,12 @@ struct linux_dirent {
>  .I d_ino
>  is an inode number.
>  .I d_off
> -is the distance from the start of the directory to the start of the next
> -.IR linux_dirent .
> +is a filesystem specific value with no specific meaning to userspace,=20
> +though on older filesystems it used to be the distance from the start=20
> +of the directory to the start of the next
> +.IR linux_dirent ;=20
> +see
> +.BR readdir (3) .
>  .I d_reclen
>  is the size of this entire
>  .IR linux_dirent .
> @@ -167,7 +171,7 @@ structures of the following type:
>  .EX
>  struct linux_dirent64 {
>      ino64_t        d_ino;    /* 64\-bit inode number */
> -    off64_t        d_off;    /* 64\-bit offset to next structure */
> +    off64_t        d_off;    /* Not an offset; see readdir(3) */
>      unsigned short d_reclen; /* Size of this dirent */
>      unsigned char  d_type;   /* File type */
>      char           d_name[]; /* Filename (null\-terminated) */
> --=20
> 2.39.2
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--Q31glU/0spYb6LgO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXbIOkACgkQnowa+77/
2zKPIg//W4tffptxyNofNg7Kx54xKA4KcqvcUXD5UNr2co/WUP6ywBN+6LF54sS8
Fv/Shb8UfbDCAk4j91DfQxCm0XN4wvOHKSNVM3J21pzsEDSqfD5W15R0i/4Th2Ow
biU+qTIVGiYIWcqwAXZ0CxvF11ps2OJOJ1FXEI43KnYfB45BcDLtInO6uXbUu8mH
Rk2tKNg4xfZ0sbrbfUIDVaQv93aPgcvlKnuiWoaEbmEOjtfqYc324oopFviPVmnm
hcHXYSATLHsHTvkc64ORx3JGxY8F1AIj2Eg5xExXZ44Vx+vDfOB/91UwfQ0v5V3y
Bo+Q49GjnYGZ8rXXGk5ZgiYShFMoiF7S5t0obDfHrNpJsgmakZ95hu4pQ17fCM6k
dN7WO6+3XcHzlZVQcdZyquwwwdoJtep0GBv/rY3QtZIW0FwaF0lSz0bOUkObTRut
smW8HHk1W1PlHPHCR4Kn1y02gKfO/X97ni2ZAMJGChLma0GVhPM/kTRf1ISwFg2M
+dS+lS4astp8em2KJgyW834JgaxDC8MN7T2PrMqNugUrHnNjiY7dWq2+S2sKsjHC
ulyRA47JnQydfj6GGUiIRkE9Q3/1JoHwhOu9jDRNXONtqACXQVRs3VwbkMBOMvH/
4O1FK4JI3X6jTfcZjuRxONzJJsTiAmQ23u22Sk2449117Ex++vk=
=cpkC
-----END PGP SIGNATURE-----

--Q31glU/0spYb6LgO--

