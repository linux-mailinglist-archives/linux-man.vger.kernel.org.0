Return-Path: <linux-man+bounces-1362-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB56E929A19
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 00:52:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 609E828108D
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 22:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8121B57CBE;
	Sun,  7 Jul 2024 22:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rqb9Z5nB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4109E8BEF
	for <linux-man@vger.kernel.org>; Sun,  7 Jul 2024 22:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720392730; cv=none; b=qM5Vrhm0EN62kbyU8xcL5JhViaQqaw6PhWcrt2Ct4hCiVVK3p4jK5R6UHuKOmQX1OksnclC6ola1nOA0wrU2B9Pe5OQ5hy/NMG4mGWQp0zLXOFRAXkppxjYtJbWORSGiptm9TXQCyVWSNTFxqjpTJIqBqns35zI2XJxwJB+slEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720392730; c=relaxed/simple;
	bh=ocdNvQrwxT+NavgRzHdXbYAHbGMuZmIs0tIVAd75JY4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SdE1vYQbrBOuksPS5mMe+xil8rz9XrnW9EO7/8xcHpU2UnJwRXwSpahf0BlBSab+0mx6+EarAugTLX8bE+zgpIcQY957WYyUbaC4PtEdWq6+y91kdgE/FkNdwrim8RtNN6bkKvs9/ao/rR510IBapVgbp7ydu3zX9CXwqr0oHYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rqb9Z5nB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A60DC4AF0A;
	Sun,  7 Jul 2024 22:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720392729;
	bh=ocdNvQrwxT+NavgRzHdXbYAHbGMuZmIs0tIVAd75JY4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rqb9Z5nBC7Fv8RKzWFIKqLXuC+gmOfG0/7YN1qk+q8O74Kc8LYh0Z3lzTplDhppCE
	 nJvUIMIPLgQfrgCaWua5j408gKRP50pJYu/nbWEEoJta2RId6G45VBA4kkHpiSbD2s
	 6ngKFH+q8u+dJrb8lrhMKmSqQuGv3zJ0LlE7VVtFs7nuM+IaAOC/7oWQTtBGwdjjiV
	 Q2PCxEGTKBy10f9WyW0rcO5B8JOKmC2sddW6lsnsGAgULjKLju6ttwVjNSXmL1h/lA
	 kzpP4fXCsKiMVb6itQ72xwancW13X3MEgI39xpwiNIE/B+UYGtIpQhC78Xmo9+xIPk
	 /R/sQNz/GLsMQ==
Date: Mon, 8 Jul 2024 00:52:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, 
	jakub@redhat.com, uecker@tugraz.at, lh_mouse@126.com, jwakely.gcc@gmail.com, 
	Richard.Earnshaw@arm.com, sam@gentoo.org, ben.boeckel@kitware.com, 
	heiko.eissfeldt@siemens.com, dmalcolm@redhat.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <jkxj6u2mwxbza34h344lxrtiavvvmsswqegrvi3ajop67gm54e@dzu74ktwe7bh>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <2f2d78d1-0c54-49f4-b08e-bd3640dd491f@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ymhpitf2kkxpmmfe"
Content-Disposition: inline
In-Reply-To: <2f2d78d1-0c54-49f4-b08e-bd3640dd491f@cs.ucla.edu>


--ymhpitf2kkxpmmfe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, 
	jakub@redhat.com, uecker@tugraz.at, lh_mouse@126.com, jwakely.gcc@gmail.com, 
	Richard.Earnshaw@arm.com, sam@gentoo.org, ben.boeckel@kitware.com, 
	heiko.eissfeldt@siemens.com, dmalcolm@redhat.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <2f2d78d1-0c54-49f4-b08e-bd3640dd491f@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <2f2d78d1-0c54-49f4-b08e-bd3640dd491f@cs.ucla.edu>

Hi Paul,

On Sun, Jul 07, 2024 at 07:30:43PM GMT, Paul Eggert wrote:
> On 7/7/24 14:42, Alejandro Colomar wrote:
> > On Sun, Jul 07, 2024 at 12:42:51PM GMT, Paul Eggert wrote:
> > > Also, =E2=80=9Cglobal variables=E2=80=9D is not
> > > right here. The C standard allows strtol, for example, to read and wr=
ite an
> > > internal static cache. (Yes, that would be weird, but it=E2=80=99s al=
lowed.)
> >=20
> > That's not part of the API.  A user must not access internal static
> > cache
>=20
> Although true in the normal (sane) case, as an extension the implementati=
on
> can make such a static cache visible to the user, and in this case the
> caller must not pass cache addresses as arguments to strtol.
>=20
> For other functions this point is not purely academic. For example, the C
> standard specifies the signature "FILE *fopen(const char *restrict, const
> char *restrict);". If I understand your argument correctly, it says that =
the
> "restrict"s can be omitted there without changing the set of valid progra=
ms.

No, I didn't say that restrict can be removed from fopen(3).

What I say is that in functions that accept pointers that alias each
other, those aliasing pointers should not be restrict.  Usually,
pointers that alias are accessed, and thus they are not specified as
restrict, such as in memmove(3).  However, a small set of functions
accept pointers that alias each other, but one of them is never
accessed; in those few cases, restrict was added to the parameters in
ISO C, but I claim it would be better removed.  We're lucky, and the
small set of functions where this happens don't seem to use any state,
so we don't need to care about implementations using internal buffers
that are passed somehow to the user..

=46rom ISO C, IIRC, the only examples are strtol(3) et al.  Another
example is Plan9's seprint(3) family of functions.  However, Plan9
doesn't use restrict, so it doesn't have it.

> But that can't be right, as omitting the "restrict"s would make the
> following code be valid in any platform where sizeof(int)>1:
>=20
>    char *p =3D (char *) &errno;
>    p[0] =3D 'r';
>    p[1] =3D 0;
>    FILE *f =3D fopen (p, p);
>=20
> even though the current standard says this code is invalid.

No, I wouldn't remove any of the restrict qualifiers in fopen(3).

Only from pointers that alias an access(none) pointer.

> > > =E2=80=9Cendptr	access(write_only) ... *endptr access(none)=E2=80=9D
> > >=20
> > > This is true for glibc, but it=E2=80=99s not necessarily true for all=
 conforming
> > > strtol implementations. If endptr is non-null, a conforming strtol
> > > implementation can both read and write *endptr;
> >=20
> > It can't, I think.  It's perfectly valid to pass an uninitialized
> > endptr, which means the callee must not read the original value.
>=20
> Sure, but the callee can do something silly like "*endptr =3D p + 1; *end=
ptr =3D
> *endptr - 1;". That is, it can read *endptr after writing it, without any
> undefined behavior. (And if the callee is written in assembly language it
> can read *endptr even before writing it - but I digress.)

But once you modify the pointer provenance, you don't care anymore about
it.  We need to consider the pointers that a function receives, which
are the ones the callee needs to know their provenance.  Of course, a
callee knows what it does, and so doesn't need restrict in local
variables.

C23/N3220::6.7.4.1p9 says:

	An object that is accessed through a restrict-qualified pointer
	has a special association with that pointer.  This association,
	defined in 6.7.4.2, requires that all accesses to that object
	use, directly or indirectly, the value of that pointer.

When you set *endptr =3D nptr + x, and use the lvalue **endptr, you're
still accessing the object indirectly using the value of nptr.

So, strtol(3) gets 4 objects, let's call them A, B, C, and D.

A is gotten via its pointer nptr.
B is gotten via its pointer endptr.
C is gotten via its pointer *endptr.
D is gotten via the global variable errno.

Object A may be the same as object C.
Object B is unique inside the callee.  Its pointer endptr must be
restrict-qualified to denote its uniqueness.
Object D is unique, but there's no way to specify that.

Object C must NOT be read or written.  The function is of course allowed
to set *endptr to whatever it likes, and then access it however it
likes, but object C must still NOT be accessed, since its pointer may be
uninitialized, and thus point to no object at all.


Maybe I should use abstract names for the objects, to avoid confusing
them with the pointer variables that are used to pass them?

The formal definition of restrict refers to the "object into which it
formerly [in the list of parameter declarations of a function
definition] pointed".  I'm not 100% certain, because this formal
definition is quite unreadable, though.  The more I read it, the less
sure I am about it.

BTW, I noticed something I didn't know:

	If L is used to access the value of the object X that it
	designates, and X is also modified (by any means), then the
	following requirements apply: T shall not be const-qualified

This reads to me as "const variables are not writable when they are
accessed via a restricted pointer; casting away is not enough".  Am I
reading this correctly?

> The point is that it is not correct to say that *endptr cannot be read fr=
om;
> it can. Similarly for **endptr.

Some better wording: the object pointed-to by *endptr at function entry
cannot be accessed.

> > Here, we need to consider two separate objects.  The object pointed-to
> > by *endptr _before_ the object pointed to by endptr is written to, and
> > the object pointed-to by *endptr _after_ the object pointed to by endptr
> > is written to.
>=20
> Those are not the only possibilities. The C standard also permits strtol =
to
> set *endptr to some other pointer value, not pointing anywhere into the
> string being scanned, so long as it sets *endptr correctly before it
> returns.

Let's reword.  The initial object pointed-to by it, and everything else.

> > > =E2=80=9CThe caller knows that errno doesn=E2=80=99t alias any of the=
 function arguments.=E2=80=9D
> > >=20
> > > Only because all args are declared with =E2=80=98restrict=E2=80=99. S=
o if the proposal is
> > > accepted, the caller doesn=E2=80=99t necessarily know that.
> >=20
> > Not really.  The caller has created the string (or has received it via a
> > restricted pointer)
>=20
> v0.2 doesn't state the assumption that the caller either created the stri=
ng
> or received it via a restricted pointer. If this assumption were stated
> clearly, that would address the objection here.

Ok.

> > > =E2=80=9CThe callee knows that *endptr is not accessed.=E2=80=9D
> > >=20
> > > This is true for glibc, but not necessarily true for every conforming=
 strtol
> > > implementation.
> >=20
> > The original *endptr may be uninitialized, and so must not be accessed.
>=20
> **endptr can be read once the callee sets *endptr. **endptr can even be
> written, if the callee temporarily sets *endptr to point to a writable
> buffer; admittedly this would be weird but it's allowed.

The object originally pointed-to by *endptr (C) is what we care about.
Subsequently reusing the same pointer variable for pointing to different
objects is uninteresting for the purposes of knowing which objects are
accessed and in which way.

> > > =E2=80=9CIt might seem that it=E2=80=99s a problem that the callee do=
esn=E2=80=99t know if nptr can
> > > alias errno or not. However, the callee will not write to the latter
> > > directly until it knows it has failed,=E2=80=9D
> > >=20
> > > Again this is true for glibc, but not necessarily true for every conf=
orming
> > > strtol implementation.
> >=20
> > An implementation is free to set errno =3D EDEADLK in the middle of it,=
 as
> > long as it later removes that.  However, I don't see how it would make
> > any sense.
>=20
> It could make sense in some cases. Here the spec is a bit tricky, but an
> implementation is allowed to set errno =3D EINVAL first thing, and then s=
et
> errno to some other nonzero value if it determines that the arguments are
> valid. I wouldn't implement strtol that way, but I can see where someone
> else might do that.

In any case an implementation is not obliged to pessimize strtol(3).  It
is only allowed to.  Should we not allow them to do so?

> > Let's find
> > an ISO C function that accepts a non-restrict string:
> >=20
> > 	int system(const char *string);
> >=20
> > Does ISO C constrain implementations to support system((char *)&errno)?
> > I don't think so.  Maybe it does implicitly because of a defect in the
> > wording, but even then it's widely understood that it doesn't.
>=20
> 'system' is a special case since the C standard says 'system' can do pret=
ty
> much anything it likes. That being said, I agree that implementations
> shouldn't need to support calls like atol((char *) &errno). Certainly the=
 C
> standard's description of atol, which defines atol's behavior in terms of=
 a
> call to strtol, means that atol's argument in practice must follow the
> 'restrict' rules.

Let's take a simpler one: rename(2).  Is it allowed to receive &errno?
Hopefully not.

>=20
> Perhaps we should report this sort of thing as a defect in the standard. =
It
> is odd, for example, that fopen's two arguments are both const char
> *restrict, but system's argument lacks the "restrict".
>=20

Meh, I don't care enough, I think.

> > > Why is this change worth
> > > making? Real-world programs do not make calls like that.
> >=20
> > Because it makes analysis of 'restrict' more consistent.  The obvious
> > improvement of GCC's analyzer to catch restrict violations will trigger
> > false positives in normal uses of strtol(3).
>=20
> v0.2 does not support this line of reasoning. On the contrary, v0.2 sugge=
sts
> that a compiler should diagnose calls like "strtol(p, &p, 0)", which would
> be wrong as that call is perfectly reasonable.

That call is perfectly, reasonable, which is why I suggest that the
standard should modify the prototype so that strtol(p, &p, 0), which is
a reasonable call, should not be warned by a compiler that would
diagnose such calls.

That is, just by reading the prototypes:

	void foo(int *restrict x, int **restrict p);

and

	void bar(int *x, int **restrict endp);

one should be able to determine that

	foo(p, &p);

is probably causing UB (and thus trigger a warning) but

	bar(p, &p);

is fine.

>=20
> Another way to put it: v0.2 does not clearly state the advantages of the
> proposed change, and in at least one area what it states as an advantage
> would actually be a disadvantage.

The advantage is having more information in the caller.  As a caller, I
want to distinguish calls where it's ok to pass pointers that alias, and
where not.  And I want my compiler to be able to help me there.

If restrict is overapplied, then an analyzer cannot determine that.  Or
as Martin noted, it can, if it takes both the restrict qualifiers _and_
the access attributes into account, and performs some non-trivial
deduction.  I'd rather have a simple analyzer, which will provide for
less false positives and negatives.

> > > =E2=80=9Cm =3D strtol(p, &p, 0); An analyzer more powerful than the c=
urrent ones
> > > could extend the current -Wrestrict diagnostic to also diagnose this =
case.=E2=80=9D
> > >=20
> > > Why would an analyzer want to do that? This case is a perfectly norma=
l thing
> > > to do and it has well-defined behavior.
> >=20
> > Because without an analyzer, restrict cannot emit many useful
> > diagnostics.  It's a qualifier that's all about data flow analysis, and
> > normal diagnostics aren't able to do that.
> >=20
> > A qualifier that enables optimizations but doesn't enable diagnostics is
> > quite dangerous, and probably better not used.  If however, the analyzer
> > emits advanced diagnostics for misuses of it, then it's a good
> > qualifier.
>=20
> Sorry, but I don't understand what you're trying to say here. Really, I
> can't make heads or tails of it. As-is, 'restrict' can be useful both for
> optimization and for generating diagnostics, and GCC does both of these
> things right now even if you don't use -fanalyzer.

GCC can only catch the most obvious violations of restrict.

	#include <string.h>

	typedef struct {
		int x;
	} T;

	[[gnu::access(read_only, 1)]]
	[[gnu::access(read_only, 2)]]
	void
	replace(T *restrict *restrict ls, const T *restrict new, size_t pos)
	{
		memcpy(ls[pos], new, sizeof(T));
	}

	void
	f(T *restrict *restrict ls)
	{
		replace(ls, ls[0], 1);
	}

	$ gcc-14 -Wall -Wextra -fanalyzer replace.c -S
	$

The above program causes UB, and uses an API that is so similar to
strtol(3), that for writing an analyzer that triggers on this code, it
will trigger on strtol(3) too.  Only if it's smart enough to also
consider the GNU access attributes, it will be able to differentiate
the two cases, as Martin suggested.

> Perhaps adding an example or two would help explain your point. But they'd
> need to be better examples than what's in v0.2 because v0.2 is unclear ab=
out
> this quality-of-diagnostics issue, as it relates to strtol.

Maybe the above?

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--ymhpitf2kkxpmmfe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaLHA4ACgkQnowa+77/
2zJDIxAAp3DKNOHO89fVOeKTvj/MUAWpWTIgWeXKPQwza7OTYcX7HxS7S9TKSJ4z
Gq1AJFohDu0nkY6IYOMjwfy2qDmIc9ZNaWf00aBy4BEKAn8becLqZpZFd5br7Kpl
gA1ccmPoSmQWpsr0ZUZYDJou/7gJG4noTSngZk/jG7mNK2NLZoJ0RhWTjjSbe6fs
9OIYP537OmmSQnNVMcrvFxFZXPRiDdHuhzWN6VHlTWgYD6XCWwhUK06PaMnrudrU
S+ZjE7HLQmzLfH4IgD8WVQhN2xZUlXHUxNIzcSzjcoelH8RvR7aDHbEOOkc2COPb
Fa6OQuYy+4Ss7jnMSwuTlZx3aqe7yFr2fcHrhS/9bN7vKPW1Bd1SVTUvOX7ckqJk
nkpoxRz+zv7stLtiBROtQpXxXZXx99EZO6RDPXxXAALu6dVKNI+xP3MwnAwyGAfi
pOjDO4AiqT8DxFxcHCm1+gL4YGDpEItHfwWw/C2ddG5YO657Grvzzb2hndKiJgn3
JQS02ieBX4FXMXpQzEyGJNn4gU6YiB8v9OEixRmB8//h2on0DC4JmYhdChQNH8Wn
kqzLWtKOBjOpkACuFDMoN3VWSBHLt25+uORmNDtal1MLvLQn3hduyfZlrizYcBwU
QrvEp9G/LAEzYO3r/YJ6gR58fpShfIJ4FQdFLOV3XyGQkW/FhnY=
=mZIW
-----END PGP SIGNATURE-----

--ymhpitf2kkxpmmfe--

