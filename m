Return-Path: <linux-man+bounces-67-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 254C67EA138
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 17:23:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE548B20925
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 16:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10472230A;
	Mon, 13 Nov 2023 16:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlH3SCdf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7003821362
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 16:23:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 395E1C433C7;
	Mon, 13 Nov 2023 16:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699892609;
	bh=NbvXLuxgYV8Jvi/1tq3Ns4ElU5BpLlyQv1nzw7zRAac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AlH3SCdfpX2f2w5GJjzT8XAUuGQhXB+JQZNYZLxWf7bICVpvIivjjx8KFAn4CYNVp
	 YPQhpRfuM6LJdaKlHHgKoPsFlMtkedgfarTS/xzVGwFzJOOVY0bu8/km/yAkAbaWNA
	 u140Smk3EKoEvp39m2ZRWdySc5hVQaPQYhM6QPSVSvWnZ1ZpXnDQJZLIJldSq4XqDb
	 EmzTZpk4s/kJUTMXXS5db/1EF8IVecpjxKYzc/edDIIasxlfelFKURx2qyqzTPv0HO
	 c/qy9aLjU4Hed18I1RzDdG9MLICI0VJ1wlGGE+aYKtMFWFkgYRPS18ZlM+M0A+s9uB
	 pJGxX7/YDbxrQ==
Date: Mon, 13 Nov 2023 17:23:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] strncat.3 fixes
Message-ID: <ZVJNfpBUc-zitROZ@debian>
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
 <20231112235218.80195-4-eggert@cs.ucla.edu>
 <ZVF4tHfkfrwFQawd@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Lr1Dor3DOF6GVekF"
Content-Disposition: inline
In-Reply-To: <ZVF4tHfkfrwFQawd@debian>


--Lr1Dor3DOF6GVekF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Nov 2023 17:23:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] strncat.3 fixes

On Mon, Nov 13, 2023 at 02:15:20AM +0100, Alejandro Colomar wrote:
> > and by removing an unnecessary call to 'exit'.
>=20
> This was practice from Michael Kerrisk, which I like: always terminate
> the program with exit(1); don't rely on just ending the scope of main().

D'oh!  I meant exit(3).  Since I need to write this email, I'll take the
opportunity to quote man-pages(7):

STYLE GUIDE
     ...

   Example programs and shell sessions
     Manual  pages  may  include example programs demonstrating how to
     use a system call or library function.  However, note the follow=E2=80=
=90
     ing:

     ...

     =E2=80=A2  For consistency, all example programs should  terminate  us=
ing
        either of:

            exit(EXIT_SUCCESS);
            exit(EXIT_FAILURE);

        Avoid using the following forms to terminate a program:

            exit(0);
            exit(1);
            return n;


Cheers,
Alex

> That way, it's more visual.
>=20

--=20
<https://www.alejandro-colomar.es/>

--Lr1Dor3DOF6GVekF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVSTX4ACgkQnowa+77/
2zJSABAAlL9TB5nF8MzK+62MJutvdJg75ACguWVC5m/RyvnXz5YDd8xObnnacuhY
1xbympwwOYmbCc8WrzxEsLelvmE+x+0wEfDs0Mv/N4UsqCLwmcVMQyV1rMAj6uNF
NtUU295AfCa1v1t/GfwKASNSvyFIZODlxqr53bNoJz8s/Ju18bxaL5OScC03hGgn
KKJGQX2VY9PqAWO1GnVEYCv5jA7PZe03/BkrrGKVWc2GQkQJhwv16xeNnCbR6Y3t
cqFqpSLsYO7CcdYvE9hCSwZqjVY/3MRIX95sJ35+dCDNUrqMhMSwbkKXDxWS/8/q
IkzEyfCDC0qtzbRd4pcRH2R3Id1KbOr4GA/NnaqUvsAJ1XDG4z9cuAeNXDUgKG/Q
u8DjOrpGYE6Ub3VN4vrxQCORTZVXS/IVND83GQWirTgWvmLMATnU3IXP5fjavcY6
6opW8Tr1QSIR2Cs1O1m5edwrtBJT3YKCDD3lZwyeHk7/qJbI7dOu7ZYlOvuHKkCe
qBuLbph90QmzfyuJ9khOws6WOBzYLDHVqzhFnKNKlUG0cfr9k7UVwBbR/6hUH0Cb
/+skVhE+zmuy/8C9WBBGIMyeyM+z98DVAuBVdyAfc8xAxzJwzfgpYtclJcjlq/rs
8A82LdmMhAwtRmgvnzapmz5DrDdn/F/RxvkY6dcFnhUY2ERDT9w=
=TK9+
-----END PGP SIGNATURE-----

--Lr1Dor3DOF6GVekF--

