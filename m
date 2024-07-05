Return-Path: <linux-man+bounces-1318-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBF7928B95
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 17:23:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60B24281EA1
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 15:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CDE216A94F;
	Fri,  5 Jul 2024 15:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7s+MROu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C4114A62E
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 15:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720193000; cv=none; b=O2ZqweprlLY8Tc5ak1zes+KD/btIbpxJdbWp1kiGtJ+aQGsIimNGlRXihFSoBnWG6unhE32qmBImzOPQ5XZXr9S9bibKeXUtIl8tZ4yrQb2hm8p4RVxNZkMjso7wK1RPu+zmNhkNAxXvXfLPyFdR+mxP1a3qDLnGJl0eWWXIdrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720193000; c=relaxed/simple;
	bh=JOIWHt6ljR5s36R2OUPyraEoePrbQchCKX6y8QZBJDA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tlcoeUsyX1e0K8ydh93amBqfx5oujx9wyiJ1UMAuRf7fFW71wj06ASkhN4Wkqby2iMwxbNu207xf2RBJVcSS3SFgYI95LAVVMWunu2zGAtjmNJdzmCGYPUIG+Ys/5VpqYiaukjgVeq3QhnkjUU22g85p0H7zpodfroPwvve5zio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7s+MROu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D12DFC116B1;
	Fri,  5 Jul 2024 15:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720193000;
	bh=JOIWHt6ljR5s36R2OUPyraEoePrbQchCKX6y8QZBJDA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M7s+MROuxCb5k3druR2Uu2zXsEmpyVtxtRg4YhyQ2yN/Lj2B7KoS+D3YE8ZwgyUwS
	 Uq2sbq2B81TceqrxE2QAuzvzCW+9euIeEtBqbcLR3tbbm9ePQ2ZJJO+ISxgtLbwmPO
	 HBJaL2tTFdcS7yZsrnna7NOPGWvifB22/I9OD5chMznOewWZKJIxnVkymZe2ltsnaC
	 tXBGPd8ivc7IHp11th/BQUzA2zVM9SO3dOUKoGEm8ReePr+1/JImfuVM8/6DKvSfby
	 +mg8GWmcC/VplsEwheR0XCDpqgv94mG1DTkHNY+ep2Gv52eGbyBESlrTTU0lGRMnEu
	 zGajE1eu5p2RQ==
Date: Fri, 5 Jul 2024 17:23:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>, 
	libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5wjrhzfiitqijhp4"
Content-Disposition: inline
In-Reply-To: <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>


--5wjrhzfiitqijhp4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>, 
	libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
MIME-Version: 1.0
In-Reply-To: <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>

Hi Martin,

On Fri, Jul 05, 2024 at 05:02:15PM GMT, Martin Uecker wrote:
> > But when the thing gets non-trivial, as in strtol(3), GCC misses the
> > -Wrestrict diagnostic, as reported in
> > <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D112833>.
> >=20
> > Let's write a reproducer by altering the dumb.c program from above, with
> > just another reference:
> >=20
> > 	int
> > 	dumb2(int *restrict a, int *restrict *restrict ap)
> > 	{
> > 		// We don't access the objects
> > 		return a =3D=3D *ap;
> > 	}
> >=20
> > 	int
> > 	main(void)
> > 	{
> > 		int x =3D 3;
> > 		int *xp =3D &x;
> >=20
> > 		return dumb2(&x, &xp);
> > 	}
> >=20
> > GCC doesn't report anything bad here, even though it's basically the
> > same as the program from above:
> >=20
> > 	$ cc -Wall -Wextra dumb2.c
> > 	$
>=20
> strtol does have  a "char * restrict * restrict" though, so the
> situation is different.   A "char **" and a "const char *"
> shouldn't alias anyway.=20

Pedantically, it is actually declared as 'char **restrict' (the inner
one is not declared as restrict, even though it will be restricted,
since there are no other unrestricted pointers).

I've written functions that more closely resemble strtol(3), to show
that in the end they all share the same issue regarding const-ness:

	$ cat d.c=20
	int d(const char *restrict ca, char *restrict a)
	{
		return ca > a;
	}

	int main(void)
	{
		char x =3D 3;
		char *xp =3D &x;
		d(xp, xp);
	}
	$ cc -Wall -Wextra d.c=20
	d.c: In function =E2=80=98main=E2=80=99:
	d.c:10:9: warning: passing argument 2 to =E2=80=98restrict=E2=80=99-qualif=
ied parameter aliases with argument 1 [-Wrestrict]
	   10 |         d(xp, xp);
	      |         ^

This trivial program causes a diagnostic.  (Although I think the '>'
should also cause a diagnostic!!)

Let's add a reference, to resemble strtol(3):

	$ cat d2.c=20
	int d2(const char *restrict ca, char *restrict *restrict ap)
	{
		return ca > *ap;
	}

	int main(void)
	{
		char x =3D 3;
		char *xp =3D &x;
		d2(xp, &xp);
	}
	$ cc -Wall -Wextra d2.c=20
	$=20

Why does this not cause a -Wrestrict diagnostic, while d.c does?  How
are these programs any different regarding pointer restrict-ness?

> > Well, I don't know how to report that defect to WG14.  If you help me,
> > I'll be pleased to do so.  Do they have a public mailing list or
> > anything like that?
>=20
> One can submit clarification or change requests:
>=20
> https://www.open-std.org/jtc1/sc22/wg14/www/contributing.html

Thanks!  Will do.  Anyway, I think this should be discussed in glibc/gcc
in parallel, since it's clearly a missed diagnostic, and possibly a
dangerous use of restrict if the compiler does any assumptions that
shouldn't be done.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--5wjrhzfiitqijhp4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaID94ACgkQnowa+77/
2zJIyA//R7K25oPYElqCsol3q4BKB1CfAAPosIljN5VkWsQPQXQz3+jOwfW66gQ/
2sFqhvYxpj5EYdSqJmlJu/CcVD0rYS3OZn8ZTgzi5dLorGxGda7rNEx6gOt4BxE9
rGvKd93qcqcsNV7vlNnrMvATETnx2/NVNGeRfW2ewl/tiTlWeElXGwhkmsmCRYkZ
GggJXBa9T5aeN7johkd7ubvGj9wb17O6g0ZgJg2Fj/0tORBMvqIeaj5Q5X/UBaoR
mMe9E44BWPpjsajOOC87rOYkv+OsyaaJ+gKDY5WgNQ5O4mf1xrkpnqchTHkoWaZH
84TO+YBvPDbJM48eNS4wxSml/OE1pd87Ko2yS6hAD9gbUQCx0FRqc1gyF2ftv1xh
LD0Fp1255cub4VfG5EYy7d4tJlgScH0G0ZaRsYqllK+kDH/XCo6lmlfG5Uqs//Tv
IL4WBvrtzTtsphiPQN13RGmHLWiwugiYTykG2Ss+gFkBLw0mVwlEnlvO5V/VSnD9
HPaQPcfbKnuDB8OdwuqiMNjJDVOLGMRk2wjlD9L9597/u3736KmcRz35tBG/msCs
0dZaiuC+mJ3x3FxaH0CMARA94/d/MOXBG6Nmh1J/mrNkZ29YTPMo7dNBjSIgwzIL
LD/oyMxmMyfelJe5bO25cCYH2cwYAv4UKJcqvof0UldHjDyYpoI=
=MsMD
-----END PGP SIGNATURE-----

--5wjrhzfiitqijhp4--

