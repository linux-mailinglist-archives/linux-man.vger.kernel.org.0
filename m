Return-Path: <linux-man+bounces-1406-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 902B792C29B
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 19:36:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B448F1C22CB8
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 17:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CCEB157470;
	Tue,  9 Jul 2024 17:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osbQdZME"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06FB1B86F8
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 17:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720546606; cv=none; b=QYZtBADxx8d0Yn4hZXQUz8oE1sQZmkY0yI8FpSgjYZgoB/t3Fn6UFu/iFUVG7isoIDffPfoXdgNT06qB5pe/e/0oOZVgSvAlagzGRHEsWDTIbpBae8cg+gguxsyw/VvfGjUuTWFRt2Zs+rP6z+vbAHw4pxS8kdOrvqtZ071pU+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720546606; c=relaxed/simple;
	bh=IkhITfaewMovGTC53HhdrG/8oavGRdiWoSg78sPyT1Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rFPkJIkigSkWqnuPaPo2SzEAEubCxVR/AwCWAifsCJW/oSo7q99C/Z9okSLWHMdhR37Txo7dFG+N4C8rBP/7N30icGwCkZimuUsYwU5WqemQKVujOoyQF6zyCHTg9xeeMRjE6Ncdw8ShaF2GaUpjPFC1l57LvcfQxey7uXofV+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osbQdZME; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A78F3C3277B;
	Tue,  9 Jul 2024 17:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720546606;
	bh=IkhITfaewMovGTC53HhdrG/8oavGRdiWoSg78sPyT1Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=osbQdZMEn8LSmaJjQ2HLPlGNCfJ3qFIBCuLBHH9lYq1CD3vI/KDdh4kl8/kfPGxr0
	 xFJX9NyvWVtwAW1YRZL1ZE+JsOLT8zBXoT6FUkRun1yVHd+7eyrSAwn4KogZ0j7k+5
	 H2tmt9eLsnGiqT5bonkbrVw+oN2MuiNeOLsXhFDlIQSptIwlXsk0jUzd6ycFjNGFaj
	 1lhg1tOcfiebhIYudMk+XEL3BxheHjSZXIkRk6/3tzC1dgwwtPV2JT5Ek79UJmISo8
	 cjyNY6Jt+y8mxgIkFtgIvrZuCiABG+KaaS8UMRHF+gaI+4x6DbpZC72LZtVMdzCwp6
	 iS+iw3vLwdsnw==
Date: Tue, 9 Jul 2024 19:36:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, 
	jakub@redhat.com, uecker@tugraz.at, lh_mouse@126.com, jwakely.gcc@gmail.com, 
	Richard.Earnshaw@arm.com, sam@gentoo.org, ben.boeckel@kitware.com, 
	heiko.eissfeldt@siemens.com, dmalcolm@redhat.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <oiaiivwsloyscc2yuldqsbt5ou42cs7tty3irtfoaiilxvbkau@iwrwd4tuaeqk>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <2f2d78d1-0c54-49f4-b08e-bd3640dd491f@cs.ucla.edu>
 <jkxj6u2mwxbza34h344lxrtiavvvmsswqegrvi3ajop67gm54e@dzu74ktwe7bh>
 <8dee29a1-268c-49dc-a9ba-8dc9a4eae77b@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xq7k6johofypyliq"
Content-Disposition: inline
In-Reply-To: <8dee29a1-268c-49dc-a9ba-8dc9a4eae77b@cs.ucla.edu>


--xq7k6johofypyliq
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
 <jkxj6u2mwxbza34h344lxrtiavvvmsswqegrvi3ajop67gm54e@dzu74ktwe7bh>
 <8dee29a1-268c-49dc-a9ba-8dc9a4eae77b@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <8dee29a1-268c-49dc-a9ba-8dc9a4eae77b@cs.ucla.edu>

Hi Paul,

On Tue, Jul 09, 2024 at 02:09:24PM GMT, Paul Eggert wrote:
> On 7/8/24 00:52, Alejandro Colomar wrote:
> > a small set of functions
> > accept pointers that alias each other, but one of them is never
> > accessed; in those few cases, restrict was added to the parameters in
> > ISO C, but I claim it would be better removed.
>=20
> Are these aliasing pointers the nptr and initial *endptr of strtol?

Yes.

> That is,
> are you saying that last line in the following example, which is currently
> invalid, should become valid and should be implementable as =E2=80=98end =
=3D s; long l
> =3D 0;=E2=80=99?

No.  I don't think this is a consequence of the previous statement.

>=20
>    char *end;
>    char *s =3D (char *) &end;
>    *s =3D '\0';
>    long l =3D strtol (s, &end, 0);
>=20
> If so, I fail to see the motivation for the proposed change, as nobody
> writes (or should write) code like that. And if not, evidently I
> misunderstand the proposal.

My proposal is:

	 long int
	-strtol(const char *restrict nptr, char **restrict endptr, int base);
	+strtol(const char *nptr, char **restrict endptr, int base);

My proposal doesn't make valid the example above.  To make that example
valid, you'd need:

	long int
	strtol(const char *nptr, char **endptr, int base);

Because in the example above, you're aliasing nptr with endptr, not with
*endptr.  Thus, endptr cannot be a restricted pointer for that example
to be valid.

[... snip ...]

I'm not sure I understood that part, but it's probably a consequence of
the misuderstanding from above.  Let's ignore it for now, and please
resend if you think it's still a concern.

>=20
> > Maybe I should use abstract names for the objects, to avoid confusing
> > them with the pointer variables that are used to pass them?
>=20
> That might help, yes, since v0.2 is unclear on this point.

Ok; will do.

> > this formal
> > definition is quite unreadable, though.  The more I read it, the less
> > sure I am about it.
>=20
> Yes, it=E2=80=99s lovely isn=E2=80=99t it? One must understand what the C=
 committee
> intended in order to read and understand that part of the standard.

:-)

> > 	If L is used to access the value of the object X that it
> > 	designates, and X is also modified (by any means), then the
> > 	following requirements apply: T shall not be const-qualified
> >
> > This reads to me as "const variables are not writable when they are
> > accessed via a restricted pointer; casting away is not enough".  Am I
> > reading this correctly?
>=20
> In that quoted statement, the restricted pointer is not allowed to be
> pointer-to-const. However, I=E2=80=99m not quite sure what your question =
means, as
> the phrase =E2=80=9Cconst variables=E2=80=9D does not appear in the stand=
ard. Perhaps give
> an example to clarify the question?

I should have said

"An object pointed to by a pointer-to-const cannot be written if the
pointer is a restricted one; casting const away is not enough."

Is this interpretation of restrict correct?

> >> an implementation is allowed to set errno =3D EINVAL first thing, and =
then
> set
> >> errno to some other nonzero value if it determines that the arguments =
are
> >> valid. I wouldn't implement strtol that way, but I can see where someo=
ne
> >> else might do that.
> >
> > In any case an implementation is not obliged to pessimize strtol(3).  It
> > is only allowed to.  Should we not allow them to do so?
>=20
> Of course the standard should allow suboptimal implementations. However, =
I=E2=80=99m
> not sure what the point of the question is. The =E2=80=9Cerrno =3D EINVAL=
 first thing=E2=80=9D
> comment says that removing =E2=80=98restrict=E2=80=99 obliges the impleme=
ntation to support
> obviously-bogus calls like strtol(&errno, ...), which might make the
> implementation less efficient.

See for example how musl implements strtol(3):

$ grepc strtox src/stdlib/strtol.c
src/stdlib/strtol.c:static unsigned long long strtox(const char *s, char **=
p, int base, unsigned long long lim)
{
	FILE f;
	sh_fromstring(&f, s);
	shlim(&f, 0);
	unsigned long long y =3D __intscan(&f, base, 1, lim);
	if (p) {
		size_t cnt =3D shcnt(&f);
		*p =3D (char *)s + cnt;
	}
	return y;
}

The work is done within __intscan(), which could be prototyped as

	hidden unsigned long long
	__intscan(FILE *restrict, unsigned, int, unsigned long long);

And now you're able to optimize internally, since thanks to that helper
function you know it doesn't alias errno, regardless of the external
API.


BTW, now I remember that strtol(3) says:

ERRORS
     This function does not modify errno on success.

Which means that setting errno at function start wouldn't make much
sense.  Although there's probably a contrived way of doing it and still
be conformant (plus, I think ISO C doesn't say that about errno).

> I don=E2=80=99t see how the question is relevant to
> that comment.
>=20
>=20
> > Let's take a simpler one: rename(2).  Is it allowed to receive &errno?
> > Hopefully not.
>=20
> I agree with that hope, but the current C standard seems to allow it. I
> think we both agree this is a defect in the standard.

Yup.  :)

> >>>> Why is this change worth
> >>>> making? Real-world programs do not make calls like that.
> >>>
> >>> Because it makes analysis of 'restrict' more consistent.  The obvious
> >>> improvement of GCC's analyzer to catch restrict violations will trigg=
er
> >>> false positives in normal uses of strtol(3).
> >>
> >> v0.2 does not support this line of reasoning. On the contrary, v0.2
> suggests
> >> that a compiler should diagnose calls like "strtol(p, &p, 0)", which
> would
> >> be wrong as that call is perfectly reasonable.
> >
> > That call is perfectly, reasonable, which is why I suggest that the
> > standard should modify the prototype so that strtol(p, &p, 0), which is
> > a reasonable call, should not be warned by a compiler that would
> > diagnose such calls.
>=20
> Of course they shouldn=E2=80=99t warn. But where are these compilers?
>=20
> v0.2 asserts that =E2=80=9CAn analyzer more powerful than the current one=
s could
> extend the current -Wrestrict diagnostic to also diagnose this case.=E2=
=80=9D But
> why would an analyzer want to do that? v0.2 doesn=E2=80=99t say.

True.

> The proposal merely asks to change prototypes for the C standard functions
> strtol, strtoul, etc. But if that is the only change needed then why both=
er?
> C compilers already do special-case analysis for functions defined by the=
 C
> standard, and they can suppress undesirable diagnostics for these special
> cases.
>=20
> If you=E2=80=99ve identified a more general problem with =E2=80=98restric=
t=E2=80=99 then welcome to
> the club! The experts already know it=E2=80=99s confusing and limited, an=
d are
> discussing about whether and how to improve things in the next C standard=
=2E I
> am sure you=E2=80=99d be welcome to those discussions.

Thanks!  I'm thinking I'll drop my proposal and redirection it into
replacing restrict by something better.

> > That is, just by reading the prototypes:
> >
> > 	void foo(int *restrict x, int **restrict p);
> >
> > and
> >
> > 	void bar(int *x, int **restrict endp);
> >
> > one should be able to determine that
> >
> > 	foo(p, &p);
> >
> > is probably causing UB (and thus trigger a warning) but
> >
> > 	bar(p, &p);
> >
> > is fine.
>=20
> Sure, but this is a discussion we should be having with the compiler
> writers, no?
>=20
> Is this the main motivation for the proposal?

Yep.

> If so, how would weakening the
> spec for strtol etc. affect that discussion with the compiler writers? v0=
=2E2
> does not make this clear.
>=20
>=20
> >> Another way to put it: v0.2 does not clearly state the advantages of t=
he
> >> proposed change, and in at least one area what it states as an advanta=
ge
> >> would actually be a disadvantage.
> >
> > The advantage is having more information in the caller.  As a caller, I
> > want to distinguish calls where it's ok to pass pointers that alias, and
> > where not.  And I want my compiler to be able to help me there.
>=20
> I=E2=80=99m still not understanding. Removing =E2=80=98restrict=E2=80=99 =
=66rom strtol=E2=80=99s first arg
> gives the caller less information, not more.

Actually, the caller seems to have perfect information about strtol(3),
regardless of restrict.  (As long as strtol(3) uses gnu access attributes.)

However, in this paragraph, I meant not about strtol(3), but in general:
If a caller know if two arguments to a function are allowed to alias
just by seeing the uses of restrict in the prototype, it is allowed to
turn on strict diagnostics about it to catch UB.

> > I'd rather have a simple analyzer, which will provide for
> > less false positives and negatives.
>=20
> The C committee appears to have the opposite opinion, as when they were
> asked about this matter they added Examples 5 through 7 to what is now
> =C2=A76.7.4.2 (Formal definition of restrict). These examples say that Ex=
ample 2
> (which uses =E2=80=98restrict=E2=80=99 on all arguments) is the simplest =
and most effective
> way to use =E2=80=98restrict=E2=80=99, even though a smarter compiler can=
 still make some
> good inferences when some pointer args are =E2=80=98restrict=E2=80=99 and=
 others are merely
> pointers to const.
>=20
> If the proposal is disagreeing with Examples 5 through 7, this point needs
> to be thoroughly discussed in the proposal.

My proposal is thinking now that restrict is a dead end, and must be
replaced by something better.

> > GCC can only catch the most obvious violations of restrict.
>=20
> Yes, but I fail to see how changing the API for strtol etc. would improve
> that situation.
>=20
>=20
> > 	#include <string.h>
> >
> > 	typedef struct {
> > 		int x;
> > 	} T;
> >
> > 	[[gnu::access(read_only, 1)]]
> > 	[[gnu::access(read_only, 2)]]
> > 	void
> > 	replace(T *restrict *restrict ls, const T *restrict new, size_t pos)
> > 	{
> > 		memcpy(ls[pos], new, sizeof(T));
> > 	}
> >
> > 	void
> > 	f(T *restrict *restrict ls)
> > 	{
> > 		replace(ls, ls[0], 1);
> > 	}
> >
> > 	$ gcc-14 -Wall -Wextra -fanalyzer replace.c -S
> > 	$
> >
> > The above program causes UB,
>=20
> It=E2=80=99s not a complete program and I don=E2=80=99t see the undefined=
 behavior.

I should have said s/program/code/

> If
> behavior is undefined because it violates the [[gnu::access(...)]]
> restrictions,

It does not violate the gnu::access restrictions.  It actually only
reads the objects pointed to by ls and new.  It is the object pointed to
by *ls the one which is written to, but that's fine.

When I wrote it, I was thinking that the behavior was undefined because
the object pointed to by *ls is aliased by the object pointed to by new.
However, it is not UB; I forgot that restrict doesn't care if the
pointer aliases; it only cares if an access does alias, which does not
happen.  Let's s/0/1/ in that code to make it UB.

If you s/0/1/ in my code, it is UB.  I'd like a substitute for restrict
to reject that code because both new and ls are derived from the same
pointer in the caller.  That is, I'd like passing two references to the
same object is UB, via some attribute; regardless of accesses.  More or
less what Rust does, but opt-in in a controlled way.

> that is not the sort of example that would convince the C
> standardization committee; they=E2=80=99d want to see a standard C progra=
m.
>=20
> I tried to write a standard C program to illustrate the issue, and came up
> with the following.

[...]

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--xq7k6johofypyliq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNdSMACgkQnowa+77/
2zKeHw//ewnYEsemTa2/r3fCyFrykdCSrFktAr6LRk0vADwXN5mH+kh9YEzHVzKt
EYVB85gD+0Ywt124IoxL15apE0Znq39koFKtHEhTga3u6Inn+ZpfpQ7P/xJI8uFA
F8MR8mamuDmeXCeDrrmB1Vh2S2NaG0p+pX/9m/VGk/cv6aoblAQpFAtmFsjm5pq9
iv2B9us0DefMYz5VyUi967D9ZSZ18Bs0JB5l4kwvDU7U+tljgwQDhE/EkdzHmCJe
lkKBg/Wc6ALEx+yjziYLlHZQEw83Rw+vVSj8zpOPCuR57Tvt9zScKgQv1/J1vdNU
sidg5kTN/Hsjg3psSd+4ty+FmcFQONZwAKA7uJw/tVIgDoUFfiQTtyHyHbbSC5NN
KQPKSDvq65xOGORqUbgc6sfHNnVZ0yk3bFBJKowLSZVMDESs/22pS6jxiYyZLGHR
qfDyK4LIkeESRVrKp8P25ABeGBpFSAMv54XspZFwzt7AttjvtJA1KZOTI0ERPiYW
n6eZEdhJ7kUwuTqq5zF/qi4hvckL1q8DnwT9tXNIJveEKFkUy2YYwlmU33UsP3Wf
eyMoRkBzd8hAKDCk5kB9hrYPqUkO+9UcKjHRWUwAH2XAPd3pSp6kwxfc1dHpLvuB
0LrxadMd6GxVfy1tK/PtlZyRKYwBCENsfm5qjEA38RDjYfpmp40=
=u5lK
-----END PGP SIGNATURE-----

--xq7k6johofypyliq--

