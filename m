Return-Path: <linux-man+bounces-2224-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F744A10780
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 14:14:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1917A7A06A3
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 13:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EAC7234CF4;
	Tue, 14 Jan 2025 13:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZ+l/Jk5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C89D236A91
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 13:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736860474; cv=none; b=the9b9aWd5X9NfLzlcNK2+erijeInlTCcV8nC9bhMneVjRBnv+bqpfEQkwmRpM+bhS8Tf0M/JGafCUABWcWuwxZs5i6bQTx7KKvZpHA7xfEsqW2e3+1xfHB0ZFzBzyoPbxG9brPEo1S6xvArW648+vZ1lLo543qFkGCA+IlWTYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736860474; c=relaxed/simple;
	bh=Kw+aidXm6McuP2hJDf2XhLGealWrTtOqAfoH0ccS778=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lmnFj4MetyKJ4+vjCQpx2CI1T7pTRy40KYYvyoYhDjw0IwGSEn9xV6bq5y23r1CcT648LB76025/3SpqRKqKumlVpJcyVxEf9VhJEpzVoPXvpRECJaFJEw2epgE9+05Zob+hDHVvHmhI7ClclGz/f3bbqbg6OrNXluYINI7zBRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZ+l/Jk5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 191B7C4CEDD;
	Tue, 14 Jan 2025 13:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736860473;
	bh=Kw+aidXm6McuP2hJDf2XhLGealWrTtOqAfoH0ccS778=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HZ+l/Jk5MNspb+VcyRXXtlcC2H/K5DwgAPXC9lTapoYCzBiq6+euN5s0RFKPSu9WD
	 SjzPR6gBHp9vyOXDqP0xisq/ftl+76j83/vCD9y4mmQqhtk2wyedCUlLYSm2UKhOh3
	 zZkKf+wVwQfhO/o+DQhqu6PwdzFuwnHqZKSDhW6VPg7//4XNZJ9lPfHROKEBpzxUeD
	 hCqBJKH1DqdDvtXHhXU8ZDygqfPp5rN9fZbyFthNVwhnOHE/jZRWY0++efyLFt5+hD
	 Ww/rU3gyt1U/upPcpxlZiG4YKIxCGZ0yidtXwDAdOLU+ArRoV7GDe1Q1hoVgPpExP8
	 umZ7tr0uNCKXQ==
Date: Tue, 14 Jan 2025 14:14:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v2] man/man7/path-format.7: Add file documenting format
 of pathnames
Message-ID: <4hr3zjbop6w5bsvcm4op32akjibwt4vkz52itcdjsdjpsvp7cs@nfahhxnwzlsk>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250114125453.27520-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4lpes7skbsf7rf3s"
Content-Disposition: inline
In-Reply-To: <20250114125453.27520-1-jason@jasonyundt.email>


--4lpes7skbsf7rf3s
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v2] man/man7/path-format.7: Add file documenting format
 of pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250114125453.27520-1-jason@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <20250114125453.27520-1-jason@jasonyundt.email>

[CC +=3D Florian]

Hi Jason, Florian,

On Tue, Jan 14, 2025 at 07:54:45AM -0500, Jason Yundt wrote:
> The goal of this new manual page is to help people create programs that
> do the right thing even in the face of unusual paths.  The information
> that I used to create this new manual page came from this Unix & Linux
> Stack Exchange answer [1], this Libc-help mailing list post [2] and this
> line of code from the kernel [3].
>=20
> [1]: <https://unix.stackexchange.com/a/39179/316181>
> [2]: <https://sourceware.org/pipermail/libc-help/2024-August/006737.html>
> [3]: <https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tr=
ee/fs/ext4/ext4.h?h=3Dv6.12.9#n2288>
>=20
> Signed-off-by: Jason Yundt <jason@jasonyundt.email>
> ---
> Here=E2=80=99s what I changed from the previous version:
>=20
> =E2=80=A2 The title of the page is now =E2=80=9Cpath_format=E2=80=9D. It=
=E2=80=99s now always written in all lowercase.
> =E2=80=A2 The second kernel rule now uses the suggested phrase =E2=80=9C=
=E2=80=A6need to be non-null bytes=E2=80=9D.
> =E2=80=A2 The manual page now recommends self-limiting to the POSIX Porta=
ble Filename Character Set.
> =E2=80=A2 A missing word (byte) was added to the first kernel rule.
> =E2=80=A2 I added a missing source to the commit message.
>=20
>  man/man7/path_format.7 | 47 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 man/man7/path_format.7
>=20
> diff --git a/man/man7/path_format.7 b/man/man7/path_format.7
> new file mode 100644
> index 000000000..0a129eeba
> --- /dev/null
> +++ b/man/man7/path_format.7
> @@ -0,0 +1,47 @@
> +.\" Copyright (C) 2025 Jason Yundt (jason@jasonyundt.email)
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH path_format 7 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +path_format \- how pathnames are encoded and interpreted
> +.SH DESCRIPTION
> +Some system calls allow you to pass a pathname as a parameter.

Maybe we should call the page pathname(7)?

> +When writing code that deals with paths,
> +there are kernel space requirements that you must comply with
> +and userspace requirements that you should comply with.
> +.P
> +The kernel stores paths as null-terminated byte sequences.

There's a specific term for this: string.

Which means you don't need to explain so much about the null byte.
It is understood that a string cannot contain null bytes (except for the
terminator itself).

> +As far as the kernel is concerned, there are only three rules for paths:
> +.IP \[bu]
> +The last byte in the sequence needs to be a null byte.
> +.IP \[bu]
> +Any other bytes in the sequence need to be non-null bytes.
> +.IP \[bu]
> +A 0x2F byte is always interpreted as a directory separator (/).
> +.P
> +This means that programs can technically do weird things
> +like create paths using random character encodings
> +or create paths without using any character encoding at all.

I think I would skip this.  It is implicit by the fact that the only
forbidden character in a filename is '/'.

> +Filesystems may impose additional restrictions on paths, though.
> +For example, if you want to store a file on an ext4 filesystem,
> +then its filename can=E2=80=99t be longer than 255 bytes.

It might be good to mention that some filesystems restrict the valid
characters in a filename.

> +.P
> +Userspace treats paths differently.
> +Userspace applications typically expect paths to use
> +a consistent character encoding.
> +For maximum interoperability, programs should use
> +.BR nl_langinfo (3)
> +to determine the current locale=E2=80=99s codeset.

Do we want to recommend that?  IMHO, for maximum portability, programs
should assume the Portable Filename Character Set (or at most some
subset of ASCII), and fail hard outside of that, which will itself favor
that users self-restrict to portable file names.


Cheers,
Alex

> +Paths should be encoded and decoded using the current locale=E2=80=99s c=
odeset
> +in order to help prevent mojibake.
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
> --=20
> 2.47.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--4lpes7skbsf7rf3s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeGYzwACgkQnowa+77/
2zJ7hhAAlwCTSE80qsdX4gUN5lhKbBgl4BTYFngBQnAm38lp2ppdI2G60yScUYvw
bNqghJcDgMk5zXjAqdKFGkt1pxTrE33rWr7erPcevAyGXxzVUG1Ofoj6Nf5cH9u0
+z2v2LkJMSqyr9vOPv/gah9BqIPpdpt7hLIC1iW+YyPecxg6oN/yvC5KmhtWJliO
vi4BGYMAZTQDgHqla00o+Mkon4dxYDN5snEtieZ4Z/U7S34R1OfuWd0jvYwH04FP
iiewD6CYJ+lDA7YF/qn+adPsf7wRMCeFmSkZq/7vJ1P+9QUWA+z5Rjwmyqwsqp0p
Wa10x+Z79ENDpTXMCtPdlQACnPzZ6juBZFtU/VS8BNaP0XDcP3SCE0PqNMnnw4XW
TFPwtOMGObkcRKUDW37i5qjznptrbPq+pqEK7MOIdAuv9V/hUopi57FRkiNkXcwl
8GbR8HeecWbUNkfgKBqJY7B+y9/zRGK9wh5vkiKtoky+J4ZiVzaa7uwR0B2I78ec
5zrnYgdGgmwpXpZyudlj3TSdAljMd8FZgMRW9g5rjsPie6rlNUxpQWmqVN0Mp7dP
5JPOXRJav1MybzAFEXso8pggH/aXPRHSxx5ANsazxywsyS7d0S+Np9mAlkEYF8MK
pIU8pZj+WZSjB63FwaPjLQZkptyMa+OO5ypTp8lSVd8TskzV9K0=
=5IQG
-----END PGP SIGNATURE-----

--4lpes7skbsf7rf3s--

