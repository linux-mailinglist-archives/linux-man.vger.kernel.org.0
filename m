Return-Path: <linux-man+bounces-621-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2394587D795
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 01:27:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B716A1F2203A
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 00:27:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0027236C;
	Sat, 16 Mar 2024 00:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/6YbxNb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B619E4689
	for <linux-man@vger.kernel.org>; Sat, 16 Mar 2024 00:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710548837; cv=none; b=omi2e9S4CnZVtM9CJmsQCHmIAr0qeuVDEiAce3GIJd8X/vp48TGr3QpGqk05ypvWU/BV3KXRfhLnCaLg3kHDYp5nIEgeGaUvSUSJykGQKmifEXnLEVBx51nBZe13Bu6wF8iPfYx+BzcX1v8GEPDymzgkbA35b8LeqbS3Xer5ezA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710548837; c=relaxed/simple;
	bh=RYRRmnmryrs6NUXPkgnTd+98tRVtFJA1L34+wNX4fR4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E1YfZS7SFK06M9OmZgNhs3uxUPgB+DhFW07UOqfSdQgEDqyNuUYZRw9L67Ggl72FKg/TSJ7SP/yRIwQ0t51zp4hvTPOEdMtYMw0H9k2FX3IBVL3ZHPeZ+3hxhpdXAgvbh9ckHmupC3BN5iHlSQLKAZlAg6d4rG/JM9P7w0si9/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/6YbxNb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F579C433F1;
	Sat, 16 Mar 2024 00:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710548837;
	bh=RYRRmnmryrs6NUXPkgnTd+98tRVtFJA1L34+wNX4fR4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K/6YbxNbsVmVrfSPcYS0k21eX5+akJgxsFi+PHEjTSuDRdEx2WpPF7flEoTevnpvm
	 6p/fqURdL+eFHslumR7qvV5p2RrA9XL7Wm1CY0DBBkm2gJb8F5epzogO29GClkPwo5
	 I5DNo0si7WZcL+tqv4BOzVEEHghPJPy7yeem5ap/ZsfoyEAFWEo30xWZqv79iUUAD+
	 Vn5ISGiSuENex7yr23HG7AXHBViJz7LAWYV3FwtJObyyVHK2/aSGv/I+l7X70cnQc7
	 sRSJH+dTAs2NLqqt+8EWlansSdu+EjTLirHCHCNV+qjeY0tYm3MNpMehm7Ywvongvy
	 E9TZuwMWGYywA==
Date: Sat, 16 Mar 2024 01:27:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Fedor Lapshin <fe.lap.prog@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] getgrouplist.3: tfix in example
Message-ID: <ZfTnYiGBuXUDzWzG@debian>
References: <CAJ_gjBp=_zdy3p3HdWSDD9XHexfNznhwSSCkASe-c71FHA99wg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5oLgiZ27M1FmlYzT"
Content-Disposition: inline
In-Reply-To: <CAJ_gjBp=_zdy3p3HdWSDD9XHexfNznhwSSCkASe-c71FHA99wg@mail.gmail.com>


--5oLgiZ27M1FmlYzT
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 Mar 2024 01:27:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Fedor Lapshin <fe.lap.prog@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] getgrouplist.3: tfix in example

Hi Fedor,

On Wed, Mar 06, 2024 at 07:13:31PM +0300, Fedor Lapshin wrote:
> In example of getgrouplist, if getpwnam returns NULL, the program
> exits. The exit code EXIT_SUCCESS looks like a mistake, since the
> program also calls perror right before.
>=20
> This patch changes the exit code to EXIT_FAILURE.

While your patch seems correct, it's not the only problem I see with
this call to getpwnam(3): it should clear errno before the call, since
a return of NULL doesn't necessarily mean an error.  See getpwnam(3):

$ MANWIDTH=3D72 man getpwnam | sed -n '/^RETURN/,/^$/p'
RETURN VALUE
     The getpwnam() and getpwuid() functions return  a  pointer  to  a
     passwd  structure,  or NULL if the matching entry is not found or
     an error occurs.  If an error occurs, errno is  set  to  indicate
     the error.  If one wants to check errno after the call, it should
     be set to zero before the call.

So I would also add 'errno =3D 0;' before the call, and then name the
commit something like

	getgrouplist.3: EXAMPLES: Fix error handling after getpwnam(3)

>=20
> Best regards, Fedor.

Would you mind signing the patch?  See <./CONTRIBUTING.d/patches>:

       -  Sign your patch with "Signed-off-by:".  Read about the
          "Developer's Certificate of Origin" at
          <https://www.kernel.org/doc/Documentation/process/submitting-patc=
hes.rst>.
          When appropriate, other tags documented in that file, such as
          "Reported-by:", "Reviewed-by:", "Acked-by:", and
          "Suggested-by:" can be added to the patch.  The man-pages
          project also uses a "Cowritten-by:" tag with the obvious
          meaning.  Example:

              Signed-off-by: Alejandro Colomar <alx@kernel.org>


Have a lovely night!
Alex

> ---
>  man3/getgrouplist.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
> index 41389b6c3..239913ce6 100644
> --- a/man3/getgrouplist.3
> +++ b/man3/getgrouplist.3
> @@ -165,7 +165,7 @@ main(int argc, char *argv[])
>      pw =3D getpwnam(argv[1]);
>      if (pw =3D=3D NULL) {
>          perror("getpwnam");
> -        exit(EXIT_SUCCESS);
> +        exit(EXIT_FAILURE);
>      }
>  \&
>      /* Retrieve group list. */
> --=20
> 2.34.1

--=20
<https://www.alejandro-colomar.es/>

--5oLgiZ27M1FmlYzT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX052IACgkQnowa+77/
2zK2QA//feTlqlYCcFkdbefjvYkPmK+G7fRmL0LRlPxJtwqEAZoe8Hy4g4hKp4gu
QoLISmDDo1Jniey7aulTQnVoLQACD+IFVL9dU2yFhF7ZPYDPKBdCW0ZM4FUhIPHw
tMzDIBvnkLE4KtT78L+7NGB4A5aO41mg6hHFRxuCqvGi/dipZtzJImd7b3CYnWlF
dnpx1HuifttDRp5Dxe0+aTf9YHZchPsJTx3bd3wjkr15Yh37jcSd/aLmT4TaqyDS
osPhPw2yWVgZy5dgFzKxOaD+pQlQjMmdhS8zWcUv+yF36ZCOpa4ecCR/+NMK37Ja
Y85KqvoCbrvaVvKoKdDwF/c8AsogDx2XhghYk+ASEElieObu/6oB5sUdTfHHok3s
sfaBfABMHaqG2fqsWIDqTMI4HjpWBsGWJG5uHqgCrPorrP+Eiv5CqUjGvSs2lHCJ
24NtOPhSH47AY3AnpQ35P60+FyleO1Jd3RkZ5PlJbgqan6AYSCZf1Ay7EWxpLRrc
180qtgYz5V68+MuM5tzNLtCmIF0ABIMUOajsDYcK+tyV+E5ZWgqaAbL/Pxjf0szC
zWT93gUocUfJ71NcATqv1jcmKQfrrAbwbF75U/n7lcT6y3ssMVwB8D5By2pbjxtZ
YiH30V3np05gtBdVnkpIBvr1UQMXYEkZ0vazORW/D5T26UxM1c0=
=nfKd
-----END PGP SIGNATURE-----

--5oLgiZ27M1FmlYzT--

