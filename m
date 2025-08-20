Return-Path: <linux-man+bounces-3509-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2234AB2D5CB
	for <lists+linux-man@lfdr.de>; Wed, 20 Aug 2025 10:13:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ABD577AA593
	for <lists+linux-man@lfdr.de>; Wed, 20 Aug 2025 08:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FE312D8763;
	Wed, 20 Aug 2025 08:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtGFTMP3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3CE2C11E8
	for <linux-man@vger.kernel.org>; Wed, 20 Aug 2025 08:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755677566; cv=none; b=QOIk+9KFUmMj0lB5hu7ktV6BGZtA/yQa8eZvtPZdKAuDr0rGRcIg+oVU3dPHKpK8ifwYv3FEPIftaOpmuuSlHyN0qjlhL1xZCbajN48yiNYtYfIsZmCM/S+cf0gLuYt7HMBt0bjHgdQom8CEwh5r2QABi9Ae7Rd1yWyatxLp3/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755677566; c=relaxed/simple;
	bh=NkfbRo4nP/e1fibwIZdlhfhfMG6QFmnaulbSNYxDwlI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EMFTwxcJgxakpkbh+X5jW6RsPzfkI56aL3Om5c1yykX1Cg/nCsFz+SyHQooUun/9+uBDnefieIe7eMxVeCmW5fevb6mvd3LdSOxa+gD2+ckPT3lmvt1+eDzHptEINYhgXLj0Dqjb9/1PUgZCDBymSy5mfOQlFFw0JReqlvWZBhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtGFTMP3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 972E6C113D0;
	Wed, 20 Aug 2025 08:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755677565;
	bh=NkfbRo4nP/e1fibwIZdlhfhfMG6QFmnaulbSNYxDwlI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LtGFTMP3jjvV2ybksb06zIt70nYwTHMuxGB50EpLCs7PyIFoglBpCUEZF52WI9nfA
	 CMWDZOZmlls0ygTHjblmK0YEE1lBL1/aowet9Gonycpv7Dw1tJ8x9rpKh5hmjW2fsn
	 FPCuMuucjAX51ZNtYdw0hMp7fOtYRV6rfa8cnq2suKOxxbyvLs3OTYh2o3SvHQl1D0
	 aFUUKuxitat00dEj00LPSXOC4tKiLAr5LEYAfLnF1GnAo9KPuI6zlv/0vLBbC1wX7n
	 AuGKJIBs471nJnA1SCljYcF+42q49yPIfM2E9UHESgYV+JJhjoiLOTpkMoxRr39SxY
	 JPbuGgJ+YyhhQ==
Date: Wed, 20 Aug 2025 10:12:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: dave@treblig.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/pthread_attr_init.3: Replace errc
Message-ID: <7r2bs3ccxjzex3atdkcutdn6rzqmjsczqucodyk3rgfsnevqun@i3szklptbqjf>
References: <20250820012725.440625-1-dave@treblig.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tyci4lgr5yurc5md"
Content-Disposition: inline
In-Reply-To: <20250820012725.440625-1-dave@treblig.org>


--tyci4lgr5yurc5md
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: dave@treblig.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/pthread_attr_init.3: Replace errc
References: <20250820012725.440625-1-dave@treblig.org>
MIME-Version: 1.0
In-Reply-To: <20250820012725.440625-1-dave@treblig.org>

Hi Dave,

On Wed, Aug 20, 2025 at 02:27:25AM +0100, dave@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <dave@treblig.org>
>=20
> The pthread_attr_init.3 example uses 'errc' to exit on an error
> printing the error code.  However, 'errc' is a BSDism that Linux
> doesn't (and has never?) have.

Libbsd provides a compatbility layer to provide errc(3bsd) on Linux (and
many POSIX systems).  libbsd is available in many distros (in Debian,
you should install libbsd-dev).  BTW, it would be nice if glibc decided
to pick this API eventually.


Have a lovely day!
Alex

> Replace it by 'errx' with a strerror() call.
>=20
> Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> ---
>  man/man3/pthread_attr_init.3 | 31 ++++++++++++++++---------------
>  1 file changed, 16 insertions(+), 15 deletions(-)
>=20
> diff --git a/man/man3/pthread_attr_init.3 b/man/man3/pthread_attr_init.3
> index e9058b8fe..9d0783e54 100644
> --- a/man/man3/pthread_attr_init.3
> +++ b/man/man3/pthread_attr_init.3
> @@ -153,6 +153,7 @@ .SS Program source
>  #include <pthread.h>
>  #include <stdio.h>
>  #include <stdlib.h>
> +#include <string.h>
>  #include <unistd.h>
>  \&
>  static void
> @@ -165,7 +166,7 @@ .SS Program source
>  \&
>      s =3D pthread_attr_getdetachstate(attr, &i);
>      if (s !=3D 0)
> -        errc(EXIT_FAILURE, s, "pthread_attr_getdetachstate");
> +        errx(EXIT_FAILURE, "pthread_attr_getdetachstate: %s", strerror(s=
));
>      printf("%sDetach state        =3D %s\[rs]n", prefix,
>             (i =3D=3D PTHREAD_CREATE_DETACHED) ? "PTHREAD_CREATE_DETACHED=
" :
>             (i =3D=3D PTHREAD_CREATE_JOINABLE) ? "PTHREAD_CREATE_JOINABLE=
" :
> @@ -173,7 +174,7 @@ .SS Program source
>  \&
>      s =3D pthread_attr_getscope(attr, &i);
>      if (s !=3D 0)
> -        errc(EXIT_FAILURE, s, "pthread_attr_getscope");
> +        errx(EXIT_FAILURE, "pthread_attr_getscope: %s", strerror(s));
>      printf("%sScope               =3D %s\[rs]n", prefix,
>             (i =3D=3D PTHREAD_SCOPE_SYSTEM)  ? "PTHREAD_SCOPE_SYSTEM" :
>             (i =3D=3D PTHREAD_SCOPE_PROCESS) ? "PTHREAD_SCOPE_PROCESS" :
> @@ -181,7 +182,7 @@ .SS Program source
>  \&
>      s =3D pthread_attr_getinheritsched(attr, &i);
>      if (s !=3D 0)
> -        errc(EXIT_FAILURE, s, "pthread_attr_getinheritsched");
> +        errx(EXIT_FAILURE, "pthread_attr_getinheritsched: %s", strerror(=
s));
>      printf("%sInherit scheduler   =3D %s\[rs]n", prefix,
>             (i =3D=3D PTHREAD_INHERIT_SCHED)  ? "PTHREAD_INHERIT_SCHED" :
>             (i =3D=3D PTHREAD_EXPLICIT_SCHED) ? "PTHREAD_EXPLICIT_SCHED" :
> @@ -189,7 +190,7 @@ .SS Program source
>  \&
>      s =3D pthread_attr_getschedpolicy(attr, &i);
>      if (s !=3D 0)
> -        errc(EXIT_FAILURE, s, "pthread_attr_getschedpolicy");
> +        errx(EXIT_FAILURE, "pthread_attr_getschedpolicy: %s", strerror(s=
));
>      printf("%sScheduling policy   =3D %s\[rs]n", prefix,
>             (i =3D=3D SCHED_OTHER) ? "SCHED_OTHER" :
>             (i =3D=3D SCHED_FIFO)  ? "SCHED_FIFO" :
> @@ -198,17 +199,17 @@ .SS Program source
>  \&
>      s =3D pthread_attr_getschedparam(attr, &sp);
>      if (s !=3D 0)
> -        errc(EXIT_FAILURE, s, "pthread_attr_getschedparam");
> +        errx(EXIT_FAILURE, "pthread_attr_getschedparam: %s", strerror(s)=
);
>      printf("%sScheduling priority =3D %d\[rs]n", prefix, sp.sched_priori=
ty);
>  \&
>      s =3D pthread_attr_getguardsize(attr, &v);
>      if (s !=3D 0)
> -        errc(EXIT_FAILURE, s, "pthread_attr_getguardsize");
> +        errx(EXIT_FAILURE, "pthread_attr_getguardsize: %s", strerror(s));
>      printf("%sGuard size          =3D %zu bytes\[rs]n", prefix, v);
>  \&
>      s =3D pthread_attr_getstack(attr, &stkaddr, &v);
>      if (s !=3D 0)
> -        errc(EXIT_FAILURE, s, "pthread_attr_getstack");
> +        errx(EXIT_FAILURE, "pthread_attr_getstack: %s", strerror(s));
>      printf("%sStack address       =3D %p\[rs]n", prefix, stkaddr);
>      printf("%sStack size          =3D %#zx bytes\[rs]n", prefix, v);
>  }
> @@ -225,7 +226,7 @@ .SS Program source
>  \&
>      s =3D pthread_getattr_np(pthread_self(), &gattr);
>      if (s !=3D 0)
> -        errc(EXIT_FAILURE, s, "pthread_getattr_np");
> +        errx(EXIT_FAILURE, "pthread_getattr_np: %s", strerror(s));
>  \&
>      printf("Thread attributes:\[rs]n");
>      display_pthread_attr(&gattr, "\[rs]t");
> @@ -255,37 +256,37 @@ .SS Program source
>  \&
>          s =3D pthread_attr_init(&attr);
>          if (s !=3D 0)
> -            errc(EXIT_FAILURE, s, "pthread_attr_init");
> +            errx(EXIT_FAILURE, "pthread_attr_init: %s", strerror(s));
>  \&
>          s =3D pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED=
);
>          if (s !=3D 0)
> -            errc(EXIT_FAILURE, s, "pthread_attr_setdetachstate");
> +            errx(EXIT_FAILURE, "pthread_attr_setdetachstate: %s", strerr=
or(s));
>  \&
>          s =3D pthread_attr_setinheritsched(&attr, PTHREAD_EXPLICIT_SCHED=
);
>          if (s !=3D 0)
> -            errc(EXIT_FAILURE, s, "pthread_attr_setinheritsched");
> +            errx(EXIT_FAILURE, "pthread_attr_setinheritsched: %s", strer=
ror(s));
>  \&
>          stack_size =3D strtoul(argv[1], NULL, 0);
>  \&
>          s =3D posix_memalign(&sp, sysconf(_SC_PAGESIZE), stack_size);
>          if (s !=3D 0)
> -            errc(EXIT_FAILURE, s, "posix_memalign");
> +            errx(EXIT_FAILURE, "posix_memalign: %s", strerror(s));
>  \&
>          printf("posix_memalign() allocated at %p\[rs]n", sp);
>  \&
>          s =3D pthread_attr_setstack(&attr, sp, stack_size);
>          if (s !=3D 0)
> -            errc(EXIT_FAILURE, s, "pthread_attr_setstack");
> +            errx(EXIT_FAILURE, "pthread_attr_setstack: %s", strerror(s));
>      }
>  \&
>      s =3D pthread_create(&thr, attrp, &thread_start, NULL);
>      if (s !=3D 0)
> -        errc(EXIT_FAILURE, s, "pthread_create");
> +        errx(EXIT_FAILURE, "pthread_create: %s", strerror(s));
>  \&
>      if (attrp !=3D NULL) {
>          s =3D pthread_attr_destroy(attrp);
>          if (s !=3D 0)
> -            errc(EXIT_FAILURE, s, "pthread_attr_destroy");
> +            errx(EXIT_FAILURE, "pthread_attr_destroy: %s", strerror(s));
>      }
>  \&
>      pause();    /* Terminates when other thread calls exit() */
> --=20
> 2.50.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--tyci4lgr5yurc5md
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmilg3MACgkQ64mZXMKQ
wqlf2Q/+OIphEhXsLGuX+JlGIjTZ4fh0SooOFg9ZVqWykkxZNXs/yggkXw5bcj7j
V5pvCffaqSXkqDn4QuxtFbT3FcXIWTMJVClcICkv7N9uzgbTG52mlOsOlvpPK5z7
Pq/1KW3vJnjBUwibVWHpQrEv3mmLsjQSUdMkamOEWrvUu5BTd4u5IhPBPvvvPQ9J
MXBf7dHTqdO+WDS0gs/8Evm4YAloHT3M2oK3XYCUHe/G+WCF7uglkXNWEX0+UtTF
7XX+4R10xeVx8TmK4zt4oj3Xkhns1rqJQ2IyCwPP3bTgXUFZRqqYlZRcL9eytErz
wvFi3uQ+Q15TFcNWL7Eg4OsEIH/fZydG/Fan3iAEMUj/DZCnjkEDNHHqKYXPtKIl
dxR9d3CjEvDP8hQpEr52qFIgm8p4FL2cGnGBEmPz3KVFvaClDFCxl/RxmA2Ir2JS
V69G3Q7xJipHtbVTTW6ZwZnU5jkqSP84+MDe5Zn4iNJS4fVEjC4QboIZ8rRpNXk2
hsvEBD2hddMZxoyWwkMsUgP6Xz4QKSFL1YPwvtqRfMLVRpPw8y5YZtuYZxiy2cHK
MVhtE3VDsdM3OLgQECTlAF6NMRlWdi+fb55jN44BJ/MUPTlsR8Er8qyfVoKXlRiW
IfPifTOMQRdu8Tp6hBZ59P2IfBZbXuKY8G1Fbhxg1a+x72DTVqk=
=pJ70
-----END PGP SIGNATURE-----

--tyci4lgr5yurc5md--

