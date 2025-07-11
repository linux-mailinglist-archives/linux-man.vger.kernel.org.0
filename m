Return-Path: <linux-man+bounces-3255-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C5036B01C21
	for <lists+linux-man@lfdr.de>; Fri, 11 Jul 2025 14:35:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 858D33A83F1
	for <lists+linux-man@lfdr.de>; Fri, 11 Jul 2025 12:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BA0C28B3F6;
	Fri, 11 Jul 2025 12:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UB5SBp4b"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B49D4A24
	for <linux-man@vger.kernel.org>; Fri, 11 Jul 2025 12:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752237328; cv=none; b=eVHCAgI1D6wxx2k3Q9pbChK9C8e+4IuW1io4iz0eNm5ZQObygT2nOXRjFR1gzeQ1moppm6TJEmtU/wbNmUqbwqCtZRuCj0SjjnwOlVdew/rf4Dq1bCwms+royYWCvevpVQ8tiieS1R4qCc5VhTxKiSZQsKr2Qs9BWxrFYX73ph0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752237328; c=relaxed/simple;
	bh=gOizkzca55JM0cFppTPg/xgiwGl6EZimKuoZ9pXfq5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TG7lY2406etNV2J+8JVr6Uvmv9v5MlCkVzTha3Jl6jRNXkogyJWiXcUIQx4Mp5s6nN8UzhKE3pSHexj1Np7pUVq1qY5TH2P1GtHmLvURUxgDNLakycn0RUGtXqlMixQ+xLXpChUjBKBJ7k8QaFLhKarGb9FFQegr/vaMr1lKUq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UB5SBp4b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40B49C4CEED;
	Fri, 11 Jul 2025 12:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752237327;
	bh=gOizkzca55JM0cFppTPg/xgiwGl6EZimKuoZ9pXfq5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UB5SBp4b60wcvhjVzp3Y8MpiN1Zz2uiu7Wf3mSsl24hTVwzGMTJdTSxi3OkSczf3C
	 tIRljoilyFz2TWETNjLmgHgYFF6FphhaQdl3MpxdGM2r+/qu9XNH/7Uc+7tlKav0oo
	 eci61cVwHXALAO/NB09doeREoG8IPICPw6qMTwcRDDa4JCFi0uCkmUrVheiX0EpS1B
	 iaeqhwt6IaVbJWhZEfmlPZP7/xmIsIrDDiKxQpQlb+d2J1pj4iQlped5nrN+BebTsH
	 TJC9/98jw0DUfz9y4Cs+HkdX+/c+z19qukum2cg8C1uHhoiIpSMaZ+J8IjKrGGNLoP
	 V2rjOSMq+i3Hg==
Date: Fri, 11 Jul 2025 14:35:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Terence Kelly <tpkelly@eecs.umich.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: for man seccomp
Message-ID: <4oxc4pfspkqg3v7exajv42lw7s6tgy7xcji2yjyx2bi6b3pcya@sl7bllkflzcg>
References: <45c2afdf-729d-d137-e15a-074123f5c87b@eecs.umich.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jzjphkvahfvyljto"
Content-Disposition: inline
In-Reply-To: <45c2afdf-729d-d137-e15a-074123f5c87b@eecs.umich.edu>


--jzjphkvahfvyljto
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Terence Kelly <tpkelly@eecs.umich.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: for man seccomp
References: <45c2afdf-729d-d137-e15a-074123f5c87b@eecs.umich.edu>
MIME-Version: 1.0
In-Reply-To: <45c2afdf-729d-d137-e15a-074123f5c87b@eecs.umich.edu>

Hi Terence,

On Wed, Jul 09, 2025 at 09:55:50PM -0400, Terence Kelly wrote:
>=20
> [forwarding to linux-man@vger.kernel.org per Alejandro Colomar]
>=20
> I'm writing to recommend that a pointer to a recent paper be added to the
> "SEE ALSO" section of the manpage for seccomp.
>=20
> The paper shows how to construct a MODE_STRICT sandbox for "filter" softw=
are
> such as compression libraries --- a limited but important special case.  =
It
> also describes several potential weaknesses with seccomp-based confinemen=
t.
> Both the paper and its code are permanently archived in the ACM Digital
> Library, and both were reviewed meticulously by experts including a Google
> Android seccomp specialist.
>=20
> https://dl.acm.org/doi/10.1145/3733699

Why is SANDBOX_ERASE_ENVARS defined in such a weird way, when it can be
a normal function?

	char *
	strzero_explicit(char *s)
	{
		return memset_explicit(s, '\0', strlen(s));
	}

	void
	sandbox_erase_envvars(void)
	{
		for (char **p =3D environ; *p !=3D NULL; p++) {
			strzero_explicit(*p);
			*p =3D NULL;
		}
		environ =3D NULL;
	}

Why do you cast the first argument to syscall(2)?
You're not supposed to do that.

	syscall(SYS_seccomp, SECCOMP_SET_MODE_STRING, 0, NULL);

Why do you call _exit(2) through syscall(2)?  There's _exit(2).

Why is CHK() defined in such a weird way when it can be a normal
do-while(0) macro:

	#define CHK(e)  do                                            \
	{                                                             \
		if (!(e)) {                                           \
			MSG("check failed:  '" #e "'");               \
			_exit(1);                                     \
		}                                                     \
	} while (0)

What is 'erongi'?  Why do you write the output of write(2) to an
undefined variable, if you don't even use that value?

	#define MSG(m)  ((void) write(STDERR_FILENO, Z(m), strlen(Z(m))))

I recommend checking syscall errors as -1.  It's more readable.  It also
avoids multiple evaluation of arguments in DUP2().  Also, we don't need
to check that a=3D=3Db.  dup2(2) succeeds on such case too.

	#define DUP2(a, b)  do                                        \
	{                                                             \
		CHK(dup2((a), (b)) !=3D -1);                            \
		CHK(close(a) !=3D -1);                                  \
	} while (0)

See how dup2(2) succeeds for a=3D=3Db:

	alx@devuan:~/tmp$ cat dup2.c=20
	#include <unistd.h>
	#include <stdio.h>

	int
	main(void)
	{
		int x =3D dup2(1, 1);

		printf("%d\n", x);
		perror("dup2");
	}
	alx@devuan:~/tmp$ gcc -Wall -Wextra dup2.c=20
	alx@devuan:~/tmp$ ./a.out=20
	1
	dup2: Success

Why is SANBOX_DISCOURAGE_CORE_DUMPS defined in such a weird way when it
can be a function-like macro?

	#define SANBOX_DISCOURAGE_CORE_DUMPS()  do                    \
	{                                                             \
		struct rlimit  rlim =3D {};                             \
	                                                              \
		CHK(setrlimit(RLIMIT_CODE, &rlim) !=3D -1);             \
	} while (0)

Why is SANDBOX_CREATE_STRICT defined in such a weird way, when it can be
a function-like macro?

	#define SANDBOX_CREATE_STRICT()  do                           \
	{                                                             \
		CHK(syscall(SYS_seccomp, SECCOMP_SET_MODE_STRICT, 0, NULL) !=3D -1); \
	} while (0)


Have a lovely day!
Alex

>=20
> Enjoy!
>=20
> Terence Kelly
> tpkelly @ { acm.org, cs.princeton.edu, eecs.umich.edu }
> https://dl.acm.org/profile/81100523747
>=20


--=20
<https://www.alejandro-colomar.es/>

--jzjphkvahfvyljto
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhxBQYACgkQ64mZXMKQ
wqmjtQ//TeVtpsKNkJwbJwBm3AAEHhYS6sJCbHfQvvtXyhiqOejL9Sr4YDUyRGsr
55yPS/5O+1jSB9YJ193UlBZ+yKJdIkI/uPYx3mQKyHz5g4NGh/VUAZIDhR1r8lWU
wBlaqRHv/vVYFZtKdUHWM2BS+OQxggkfuKt3uUyRUHQaIgJaz+7is7zjeh89TExj
9pX0Gn4YHRWQ0Nu24EBdq5WsrW+qmuaX8WVaJxBbc5ZlimR7C3XndcHgwHTsxJCp
lJjuNgRlsxohQtuacDCjXea0axXL5t8YKzUgUc1g2b7R19Du3Ov7XCQZ83kNExHp
0dQNb/OBXKMZDOvO2LK6B4eWaEFUyo+GS09P4ot/ycE3tgYVcoOhUfo1wHgO9Fcy
y/cS2N+gwCjjfME+zRbmLKbBs3NFepczW/ZDbXHbjdvOhdJGVc0QgdHtFYhwUNwS
7E2NQIeNUx2Oz2sANbhK6juPSA1ztv+xLrcsTKDlbMeVVaLlGL4N3OGrokjOsoWA
F9BQaKVpp04GcV+3mCt4pHYq+CBiu5oekC00HOaQBrv6Yi+0lVrUMWEtF2UGxtvo
awHOpMmxMDngFEL6tmYPXgOwI73QRq5hdEad6L+fbpHQ7DbeiFl7VRjGr82Poa5c
oQ2XL6cyR6tzL88vAPpeMb6dlsaRvsxPzyLjKhqM8dETcIF+0Q0=
=ZbUC
-----END PGP SIGNATURE-----

--jzjphkvahfvyljto--

