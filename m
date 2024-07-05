Return-Path: <linux-man+bounces-1317-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D787928AD2
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 16:37:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 27C901F224A5
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 14:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A66915FA60;
	Fri,  5 Jul 2024 14:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HflcD/BN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6491465B3
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 14:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720190252; cv=none; b=XJOpAOck6c2CZYljNC5g9vUNltIJLMeBsRsT2vFoJkdh/93+eJvSYPirB7buKig5rDbmWWLBD6KSJLrH+hluFAMTzlCDUpa1XLlleClGFbHCDr708kpo+mI4DU3FqVEppDiOs5iqGJbwq6wgETntFTXhbfxM+3V46FDYmkODHis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720190252; c=relaxed/simple;
	bh=1G9kHIt4icdZHJ3iK2Kb21HxvtbgG0b4dXNbOMXADhk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WfSHCcl3JE0VOSZ8/V8EWXzjiQSRCMviHImbigPnQdbTUuaFV9sGrs5UZVEOWFp98pHO3n/Ye7BzdYjhvU+aSPUbaKrYwdV7v8VdInOCEDTR67dkPee66Ul1Q0BBTfA12PZ4zp6iAlESIk7u7sTfKL+bCwn0/f+cEnzS6JilacI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HflcD/BN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8396EC116B1;
	Fri,  5 Jul 2024 14:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720190251;
	bh=1G9kHIt4icdZHJ3iK2Kb21HxvtbgG0b4dXNbOMXADhk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HflcD/BNeStcJT8DQmKRXOeZBdJGfKosZ5C5VXPPuiDsjzIq5xasoDBb8nTIbckvP
	 SfMQXvTy3/4bBv6KRWjZWaX6cSAnpe7A2WqGYp7vG1VLnbfgd9vIMV0UrGFL3qGo64
	 bV0nv9rqubFmUDt+jkMrUJGtyJ5szECGNypFxy9gFx3DyPCJ6i4sCmYA0HE3/h32RU
	 X3hiEWb+o7gkRSNZWlpJgDnoPKb8CZSKM+rzJ7yqvSrLJIBX299/1DHAoGPsrSimLr
	 TfhSVMUMTjj1oiBfZ3vE0JVLNJvUzSVOioO79v+bE5XjqancRkXazcI4uKITpwP+kX
	 4tmQ09a7n2npw==
Date: Fri, 5 Jul 2024 16:37:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>
Cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rzgivmgtoeae54ne"
Content-Disposition: inline
In-Reply-To: <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>


--rzgivmgtoeae54ne
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>
Cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
MIME-Version: 1.0
In-Reply-To: <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>

[CC +=3D linux-man@, since we're discussing an API documented there, and
 the manual page would also need to be updated]

Hi Xi,  Jakub,

On Fri, Jul 05, 2024 at 09:38:21PM GMT, Xi Ruoyao wrote:
> On Fri, 2024-07-05 at 15:03 +0200, Alejandro Colomar wrote:
> > ISO C specifies these APIs as accepting a restricted pointer in their
> > first parameter:
> >=20
> > $ stdc c99 strtol
> > long int strtol(const char *restrict nptr, char **restrict endptr, int =
base);
> > $ stdc c11 strtol
> > long int strtol(const char *restrict nptr, char **restrict endptr, int =
base);
> >=20
> > However, it should be considered a defect in ISO C.=C2=A0 It's common t=
o see
> > code that aliases it:
> >=20
> > 	char str[] =3D "10 20";
> >=20
> > 	p =3D str;
> > 	a =3D strtol(p, &p, 0);=C2=A0 // Let's ignore error handling for
> > 	b =3D strtol(p, &p, 0);=C2=A0 // simplicity.
>=20
> Why this is wrong?
>=20
> During the execution of strtol() the only expression accessing the
> object "p" is *endptr.  When the body of strtol() refers "nptr" it
> accesses a different object, not "p".

<http://port70.net/~nsz/c/c11/n1570.html#6.7.3p8>

Theoretically, 'restrict' is defined in terms of accesses, not just
references, so it's fine for strtol(3) to hold two references of p in
restrict pointers.  That is, the following code is valid:

	int
	dumb(int *restrict a, int *restrict also_a)
	{
		// We don't access the objects
		return a =3D=3D also_a;
	}

	int
	main(void)
	{
		int x =3D 3;

		return dumb(&x, &x);
	}

However, in practice that's dumb.  The caller cannot know that the
function doesn't access the object, so it must be cautious and enable
-Wrestrict, which should be paranoid and do not allow passing references
to the same object in different arguments, just in case the function
decides to access to objects.  Of course, GCC reports a diagnostic for
the previous code:

	$ cc -Wall -Wextra dumb.c=20
	dumb.c: In function =E2=80=98main=E2=80=99:
	dumb.c:13:21: warning: passing argument 1 to =E2=80=98restrict=E2=80=99-qu=
alified parameter aliases with argument 2 [-Wrestrict]
	   13 |         return dumb(&x, &x);
	      |                     ^~  ~~

=2E.. even when there's no UB, since the object is not being accessed.

But when the thing gets non-trivial, as in strtol(3), GCC misses the
-Wrestrict diagnostic, as reported in
<https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D112833>.

Let's write a reproducer by altering the dumb.c program from above, with
just another reference:

	int
	dumb2(int *restrict a, int *restrict *restrict ap)
	{
		// We don't access the objects
		return a =3D=3D *ap;
	}

	int
	main(void)
	{
		int x =3D 3;
		int *xp =3D &x;

		return dumb2(&x, &xp);
	}

GCC doesn't report anything bad here, even though it's basically the
same as the program from above:

	$ cc -Wall -Wextra dumb2.c
	$

Again, there's no UB, but we really want to be cautious and get a
diagnostic as callers, just in case the callee decides to access the
object; we never know.

So, GCC should be patched to report a warning in the program above.
That will also cause strtol(3) to start issuing warnings in use cases
like the one I showed.

Even further, let's try something really weird: inequality comparison,
which is only defined for pointers to the same array object:

	int
	dumb3(int *restrict a, int *restrict *restrict ap)
	{
		// We don't access the objects
		return a > *ap;
	}

	int
	main(void)
	{
		int x =3D 3;
		int *xp =3D &x;

		return dumb3(&x, &xp);
	}

The behavior is still defined, since the obnjects are not accessed, but
the compiler should really warn, on both sides:

-  The caller is passing references to the same object in restricted
   parameters, which is a red flag.

-  The callee is comparing for inequality pointers that should, under
   normal circumstances, cause Undefined Behavior.


> And if this is really wrong you should report it to WG14 before changing
> glibc.

Well, I don't know how to report that defect to WG14.  If you help me,
I'll be pleased to do so.  Do they have a public mailing list or
anything like that?


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--rzgivmgtoeae54ne
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaIBSIACgkQnowa+77/
2zK70BAAgTLjA7h7OyneHmW87w0hS+T7HLY+ojMG6oYutz2xX7Fni4T6JfPGvaF4
09OBjUALqEtkEm5Qp8mi4LrTOAp5U7962Y9t7cIReCppnOMzSFZonEOePIckek0W
csqN7kxZjJ7kM6TK7bnefG5KkHdSsRKGEz2mGLaAUpJ2+DCjWJVmZvC62QxgRnLi
Cxgt8GTqb3xA5MMMMNHTTWdyDbSgsWsyXdZL+YCgUrc1/uf7z+iDd8MzF/gcDKBE
YmD8wGBd3UoiielaE2DA95m9sM1lvArNiXdNqvFpuT/CNR1JvOrd5xRaZnNPwe3j
KNMMc7i0nE7NFZD4tNXrw5jgtrGwxUJFhPHJOcczeIBpwawS1lyrN/4iGqA45YV6
wZTzWtep96dAdhZLChKU2b1Tc+NFE937lhjPmqoOCEN5KiQQto5qEOvVT/PPG6wJ
/Y59f1jYMAQhS4/Ohhfp7UmvuP2FTE4VRAK3aYaArwRPS8Ji5Sp2q0ovQWwxLRHq
TP4x1AmLTni8BrNOzSXDRw6VUPLgL46QOCI8w/cQMVsDAshyz0HCbmMreIwAJimr
gm9qEiPffCC8I+39dqdM2kA0eH9Tp0Kg3DCot+oJ1qUKyJJGClXMvMSgohuwMVXp
kxm9QJYd5/bNp8foOPB4S3eSwm+ASKetigY9TQqh+NvENOWeoS8=
=uw0a
-----END PGP SIGNATURE-----

--rzgivmgtoeae54ne--

