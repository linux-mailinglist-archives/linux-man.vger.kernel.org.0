Return-Path: <linux-man+bounces-421-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFD3850ADE
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 19:50:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88CE62829B2
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 18:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7387741AAB;
	Sun, 11 Feb 2024 18:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXGzIBLQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B15BFC19
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 18:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707677404; cv=none; b=MHqeMTwBBH+ZvO1WOhE3+rFBvAwWeeDFpDnHe+04FUP81NBaVVyZzAoKnqm554dAhfsfxv7D77e70nCjg+kJocxc49/CuwiI11DLRSLXPMKUzafNefp37EE3+VN+KlhJlt7G39yhLhDkFeDpMVluHYVJviVJPVe9N3Mg+iKsMZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707677404; c=relaxed/simple;
	bh=73VHoLUSyrI5oWQZN4dZSxDRXSCxo+SbyXFOtjDh9tc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fg/Zh5qjqHhMsjINJkGBank7kovyZqKqGjTjTJ6IzK7ygnO/L10igILtYPjSgvSQPgKiJpV9ilYMJCFyol7iT1yk6d9MJt/6/VKwRS1RPsxHB9WJsysFGudNIznHL5eDwtFJESPlTjXzL1b9QK4bt/pSz3OfwWsJB35Ken+SgMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXGzIBLQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA198C433F1;
	Sun, 11 Feb 2024 18:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707677403;
	bh=73VHoLUSyrI5oWQZN4dZSxDRXSCxo+SbyXFOtjDh9tc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rXGzIBLQ1uqnAP+KXUU9KPoSkzBBGmgBmBXNgJMGuhEz0J/oonBJ84gVbtPuud1kL
	 P1bKxlJsl2meMXN4AkjhKKpIGBz5iamffuUsdVWwTLX/Sfkw0Qb59g60rigQXV4Dd4
	 eu1cbLtVzU8HYNlXlqE7M5j+EpI3ZQK1WwUT5fb1ewp1Og43C/iKDf0IO6vkCrMeMe
	 Ekao/F4tmbKzG/sWF7vWQpvwqvpYX0L5oXK+h+seiOudpHrymcS53yDkMmD8yddsUp
	 N/ehUtBxng+1Jz3X1p/XyRCRev+DnGQRkHz+/WNMatg3BST4y5eO2UcPrssQz7YcJv
	 zffSnbZlCj26Q==
Date: Sun, 11 Feb 2024 19:49:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Wielaard <mark@klomp.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: [PATCH] close_range.2: Add _GNU_SOURCE and unistd.h to SYNOPSIS
Message-ID: <ZckW2Kpxove_AcyG@debian>
References: <20240207101706.224655-1-mark@klomp.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MF3LwJAMUUhKY6kq"
Content-Disposition: inline
In-Reply-To: <20240207101706.224655-1-mark@klomp.org>


--MF3LwJAMUUhKY6kq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 11 Feb 2024 19:49:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Wielaard <mark@klomp.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: [PATCH] close_range.2: Add _GNU_SOURCE and unistd.h to SYNOPSIS

Hi Mark,

On Wed, Feb 07, 2024 at 11:17:06AM +0100, Mark Wielaard wrote:
> close_range is defined in unistd.h when _GNU_SOURCE is defined.
> The linux/close_range.h include file only defines the (linux specific)
> flags constants.
>=20
> Reported-by: Alexandra H=C3=A1jkov=C3=A1 <ahajkova@redhat.com>
> Signed-off-by: Mark Wielaard <mark@klomp.org>
> ---
>  man2/close_range.2 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/close_range.2 b/man2/close_range.2
> index 380a47365..fd13ba645 100644
> --- a/man2/close_range.2
> +++ b/man2/close_range.2
> @@ -11,7 +11,10 @@ Standard C library
>  .RI ( libc ", " \-lc )
>  .SH SYNOPSIS
>  .nf
> -.B #include <linux/close_range.h>
> +.BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
> +.B #include <unistd.h>
> +.P
> +.BR "#include <linux/close_range.h>" "  /* For the flags constants */"

It seems this page was written when there was still no wrapper in libc.

But I see that Michael and I did mention there's now a wrapper in glibc:

	commit 71a62d6c3c56b2cec56858f19b8b419c1355db17
	Author: Alejandro Colomar <alx.manpages@gmail.com>
	Date:   Sun Aug 8 10:41:33 2021 +0200

	    close_range.2: Glibc added a wrapper recently
	   =20
	    Fixes: c2356ba085ed4f748b81c0ceeba1811b4a549e1c
	    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
	    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

	 man2/close_range.2 | 5 -----
	 1 file changed, 5 deletions(-)

	commit c2356ba085ed4f748b81c0ceeba1811b4a549e1c
	Author: Michael Kerrisk <mtk.manpages@gmail.com>
	Date:   Mon Jul 12 03:23:46 2021 +0200

	    close_range.2: Glibc 2.34 has added a close_range() wrapper
	   =20
	    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

	 man2/close_range.2 | 1 +
	 1 file changed, 1 insertion(+)

Both of those commits forgot to update the SYNOPSIS.  So, please add the
following tags to your commit message:

Fixes: 71a62d6c3c56 ("close_range.2: Glibc added a wrapper recently")
Fixes: c2356ba085ed ("close_range.2: Glibc 2.34 has added a close_range() w=
rapper")

>  .P
>  .BI "int close_range(unsigned int " first ", unsigned int " last ,
>  .BI "                unsigned int " flags );

And I notice the glibc wrapper is slightly different from the Linux
kernel system call:

	$ grepc close_range /usr/include/
	/usr/include/unistd.h:extern int close_range (unsigned int __fd, unsigned =
int __max_fd,
				int __flags) __THROW;


	$ grepc -tfl close_range ~/src/linux/linux/master/
	/home/alx/src/linux/linux/master/include/linux/syscalls.h:asmlinkage long =
sys_close_range(unsigned int fd, unsigned int max_fd,
					unsigned int flags);
	/home/alx/src/linux/linux/master/fs/open.c:SYSCALL_DEFINE3(close_range, un=
signed int, fd, unsigned int, max_fd,
			unsigned int, flags)
	{
		return __close_range(fd, max_fd, flags);
	}

The third parameter is an 'int' in glibc.  Please also update that.

Thanks for the patch.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--MF3LwJAMUUhKY6kq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXJFtIACgkQnowa+77/
2zKl2xAAomBBwnKrrLSBFUhszciainVf/6nPdalo+ZVMX1IZeIS7+UHxRNC2nZec
ETOvYUmSBBVtGLG2qBTt9CkQPPcL23gaxTNkC292vyhRt/HXZII3JS0Z/Z9amWKW
K7/9/19m7XmvMwMJD+G7uj1Nruqv+6RA2AmjrhpARnaNhRrRocF/yvzwutCZ/pbc
MbEd10KZmLcV3xLm0l+S8ert4ARdhVo/WVQ+s4s/17JqQM4UeqxZcIUHmMEoPKJ/
mTyEtd7XP3TXcqQS5cZrs+kBbT6SFsHzXErVi0FR/SYOJtKyvc5uKx6Cdynn91u6
R/l5TV/XZHfQZ3qYG/MN48ZPE2PiesAyPUEaCPVCxxrzYo0Chx5uSYt/rqpoESUQ
jQau2ZV7hFFiasBK8zwVS0uvwv+CshwVBeqfo0W/HErXpz1ZmY8pCkYiipsoW1wt
pQ/ne8W1hIYeVKa4/7rleSzjHrBnjfyvbACGA39amGM/dQcjttWL0i/zztHT1JXc
mAY6glX/g2hON+hRCOGTaZvyTHcFrPJIAoPHtokn0S8GPXE8u2F4blE7ZJ2iUNrM
kesDcBZUghPJf5h7C48WoJZB7ArpNkqxdzurWeuCDZhDE3BkFv/LhPc2BbdzhHnW
xWG17O/U2K3jICrKuR7CogaxIkHjh+pFiKOMzF3i2ZloMQAlnxk=
=ka7w
-----END PGP SIGNATURE-----

--MF3LwJAMUUhKY6kq--

