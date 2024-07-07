Return-Path: <linux-man+bounces-1359-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B067D9297D4
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 14:43:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 194C01F212B6
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 12:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B2631CD1F;
	Sun,  7 Jul 2024 12:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nziw3vIl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1980D1CD00
	for <linux-man@vger.kernel.org>; Sun,  7 Jul 2024 12:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720356180; cv=none; b=WG2LgAE+Twme59QHnBz3O7otZ1gW2VlP0AdBUWYmu5cBmK4inSsfo4ovBqhFJxwZqk0OTpEmlMIpBy+Ye/weh+tPFbWVGY8hdhMhV1FO8lF5rP87hK9PjVBxa1+DXhv8lh7zyQiVjq/hU5fhOvfe0/dqjEOJeWRloBSJxdv7omo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720356180; c=relaxed/simple;
	bh=b/1BHgpvpiom798TRrpPBSgF4Pd62Adiyx5yiav9MXk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KHyW/1i9OubByJNc7KyOWcJLoKSBMe8F0Nx6KBfbLLm4IHZf51KChvw4z084q+jzwMZ0CDvKW9aBupF+qj2jjFyPRJOGMAy9k1LAJ3T6YXca/MPHVzxdtePZv8xoB0aLfDqdKcWQVykGOqvGl+D0d5Aj/EwD9kj1ZRNnh+jVYKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nziw3vIl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03737C3277B;
	Sun,  7 Jul 2024 12:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720356179;
	bh=b/1BHgpvpiom798TRrpPBSgF4Pd62Adiyx5yiav9MXk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nziw3vIloG+DP7DSJghrAaVgOdVxh4Y5iKDls+euC2ZZ5bNxGCETOQdRyDa04bcT+
	 BIzZMXbfybEaqZDT74Xl1Mmac3acXCvekhJXAGnOCKMLg9UltNFRjVDYKneE02WjiA
	 nlBYwBUzvMSOOABbGl1wRTdcJI/7HUKVkdr5CEDmtpdU6Yj1zkv+nvkFdVEhg9eZXe
	 PHLXEL++jtcG61sFUni2bg2aBtD+ZSSUkgCj8pvJ5NgxCM/FWOzJjOsDqs653PSutW
	 abUXPsuapDoHT66+DA+U4q2hxxfmLBDmz+NpkBddD9ec1GbJkFaeOwIHv3y803+Y94
	 zyjhHOq8UcffQ==
Date: Sun, 7 Jul 2024 14:42:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, 
	jakub@redhat.com, uecker@tugraz.at, lh_mouse@126.com, jwakely.gcc@gmail.com, 
	Richard.Earnshaw@arm.com, sam@gentoo.org, ben.boeckel@kitware.com, 
	heiko.eissfeldt@siemens.com, dmalcolm@redhat.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hmqbruvx5dlqvvby"
Content-Disposition: inline
In-Reply-To: <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>


--hmqbruvx5dlqvvby
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
MIME-Version: 1.0
In-Reply-To: <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>

Hi Paul,

On Sun, Jul 07, 2024 at 12:42:51PM GMT, Paul Eggert wrote:
> On 7/7/24 03:58, Alejandro Colomar wrote:
>=20
> > I've incorporated feedback, and here's a new revision, let's call it
> > v0.2, of the draft for a WG14 paper.
> Although I have not followed the email discussion closely, I read v0.2 and
> think that as stated there is little chance that its proposal will be
> accepted.

Thanks for reading thoroughly, and the feedback!

> Fundamentally the proposal is trying to say that there are two styles X a=
nd
> Y for declaring strtol and similar functions, and that although both styl=
es
> are correct in some sense, style Y is better than style X. However, the
> advantages of Y are not clearly stated and the advantages of style X over=
 Y
> are not admitted, so the proposal is not making the case clearly and fair=
ly.
>=20
> One other thing: to maximize the chance of a proposal being accepted, ple=
ase
> tailor it for its expected readership. The C committee is expert on
> =E2=80=98restrict=E2=80=99, so don=E2=80=99t try to define =E2=80=98restr=
ict=E2=80=99 in your own way. Unless merely
> repeating the language of the standard, any definition given for =E2=80=
=98restrict=E2=80=99
> is likely to cause the committee to quibble with the restatement of the
> standard wording. (It is OK to mention some corollaries of the standard
> definition, so long as the corollaries are not immediately obvious.)
>=20
> Here are some comments about the proposal. At the start these comments are
> detailed; towards the end, as I could see the direction the proposal was
> headed and was convinced it wouldn=E2=80=99t be accepted as stated, the c=
omments are
> less detailed.
>=20
>=20
> "The API may copy"
>=20
> One normally doesn=E2=80=99t think of the application programming interfa=
ce as
> copying. Please replace the phrase =E2=80=9Cthe API=E2=80=9D with =E2=80=
=9Cthe caller=E2=80=9D or =E2=80=9Cthe
> callee=E2=80=9D as appropriate. (Although =E2=80=98restrict=E2=80=99 can =
be used in places other
> than function parameters, I don=E2=80=99t think the proposal is concerned=
 about
> those cases and so it doesn=E2=80=99t need to go into that.)

Ok.

> "To avoid violations of for example C11::6.5.16.1p3,"
>=20
> Code that violates C11::6.5.16.1p3 will do so regardless of whether
> =E2=80=98restrict=E2=80=99 is present. I would not mention C11::6.5.16.1p=
3 as it=E2=80=99s a red
> herring. Fundamentally, =E2=80=98restrict=E2=80=99 is not about the conse=
quences of caching
> when one does overlapping moves; it=E2=80=99s about caching in a more gen=
eral sense.

The violations are UB regardless of restrict, but consistent use of
restrict allows the caller to have a rough model of what the callee will
do with the objects, and prevent those violations via compiler
diagnostics.  I've reworded that part to make it more clear why I'm
mentioning that.

> =E2=80=9CAs long as an object is only accessed via one restricted pointer=
, other
> restricted pointers are allowed to point to the same object.=E2=80=9D
>=20
> =E2=80=9Conly accessed=E2=80=9D =E2=86=92 =E2=80=9Caccessed only=E2=80=9D

Ok.

> =E2=80=9CThis is less strict than I think it should be, but this proposal=
 doesn=E2=80=99t
> attempt to change that definition.=E2=80=9D
>=20
> I would omit this sentence and all similar sentences. Don=E2=80=99t distr=
act the
> reader with other potential proposals. The proposal as it stands is
> complicated enough.

Ok.

> =E2=80=9Creturn ca > a;=E2=80=9D
> =E2=80=9Creturn ca > *ap;=E2=80=9D
>=20
> I fail to understand why these examples are present. It=E2=80=99s not sim=
ply that
> nobody writes code like that: the examples are not on point. I would remo=
ve
> the entire programs containing them, along with the sections that discuss
> them. When writing to the C committee one can assume the reader is expert=
 in
> =E2=80=98restrict=E2=80=99, there is no need for examples such as these.

Those are examples of how consistent use of restrict can --or could, in
the case of g()-- detect, via compiler diagnostics, (likely) violations
of seemingly unrelated parts of the standard, such as the referenced
C11::6.5.16.1p3, or in this case, C11::6.5.8p5. =20

> =E2=80=9Cstrtol(3) accepts 4 objects via pointer parameters and global va=
riables.=E2=80=9D
>=20
> Omit the =E2=80=9C(3)=E2=80=9D, here and elsewhere, as the audience is th=
e C standard
> committee.

The C standard committee doesn't know about historic use of (3)?  That
predates the standard, and they built on top of that (C originated in
Unix).  While they probably don't care about it anymore, I expect my
paper to be read by other audience, including GCC and glibc, and I
prefer to keep it readable for that audience.  I expect the standard
committee to at least have a rough idea of the existence of this syntax,
and respect it, even if they don't use it or like it.

> =E2=80=9Caccepts=E2=80=9D is a strange word to use here: normally one say=
s =E2=80=9Caccepts=E2=80=9D to talk
> about parameters, not global variables.

The thing is, strtol(3) does not actually access *endptr.  I thought
that might cause more confusion than using "accepts".

> Also, =E2=80=9Cglobal variables=E2=80=9D is not
> right here. The C standard allows strtol, for example, to read and write =
an
> internal static cache. (Yes, that would be weird, but it=E2=80=99s allowe=
d.)

That's not part of the API.  A user must not access internal static
cache, and so the implementation is free to assume that it doesn't,
regardless of the use of restrict in the API, so it is not relevant for
the purpose of this discussion, I think.

> I
> suggest rephrasing this sentence to talk about accessing, not accepting.

I don't want to use accessing, for it would be inconsistent with later
saying that *endptr is not accessed.  However, I'm open to other
suggested terms that might be more appropriate than both.

> =E2=80=9Cendptr	access(write_only) ... *endptr access(none)=E2=80=9D
>=20
> This is true for glibc, but it=E2=80=99s not necessarily true for all con=
forming
> strtol implementations. If endptr is non-null, a conforming strtol
> implementation can both read and write *endptr;

It can't, I think.  It's perfectly valid to pass an uninitialized
endptr, which means the callee must not read the original value.

	char *end;
	strtol("0", &end, 0);

If strtol(3) would be allowed to read it, the user would need to
initialize it.

> it can also both read and
> write **endptr. (Although it would need to write before reading, reading =
is
> allowed.)

Here, we need to consider two separate objects.  The object pointed-to
by *endptr _before_ the object pointed to by endptr is written to, and
the object pointed-to by *endptr _after_ the object pointed to by endptr
is written to.

For the former (the original *endptr):

	Since *endptr might be uninitialized, strtol(3) must NOT access
	the object pointed to by an uninitialized pointer.

For the latter (the final *endptr):

	The callee cannot write to it, since the specification of the
	function is that the string will not be modified.  And in any
	case, such an access is ultimately derived from nptr, not from
	*endptr, so it does not matter for the discussion of *endptr.

Of course, that's derived from the specification of the function, and
not from its prototype, since ISO C doesn't provide such detailed
prototypes (since it doesn't have the [[gnu::access()]] attribute).  But
the standard must abide by its own specification of functions, anyway.

> =E2=80=9CThis qualifier helps catch obvious bugs such as strtol(p, p, 0) =
and
> strtol(&p, &p, 0) .=E2=80=9D
>=20
> No it doesn=E2=80=99t. Ordinary type checking catches those obvious bugs,=
 and
> =E2=80=98restrict=E2=80=99 provides no additional help there. Please comp=
licate the examples
> to make the point more clearly.

To be pedantic, I didn't specify the type of p, so it might be (void *),
and thus avoid type checking at all.  However, to avoid second guessing
=66rom the standards committee, I'll add casts, to make it more obvious
that restrict is catching those.

> =E2=80=9CThe caller knows that errno doesn=E2=80=99t alias any of the fun=
ction arguments.=E2=80=9D
>=20
> Only because all args are declared with =E2=80=98restrict=E2=80=99. So if=
 the proposal is
> accepted, the caller doesn=E2=80=99t necessarily know that.

Not really.  The caller has created the string (or has received it via a
restricted pointer), and so it knows it's not derived from errno.

	char buf[LINE_MAX + 1];

	fgets(...);
	n =3D strtol(buf, ...);

This caller knows with certainty that errno does not alias buf.  Of
course, in some complex cases, it might not know, but I ommitted that
for simplicity.  And in any case, I don't think any optimizations are
affected by that in the caller.

>=20
>=20
> =E2=80=9CThe callee knows that *endptr is not accessed.=E2=80=9D
>=20
> This is true for glibc, but not necessarily true for every conforming str=
tol
> implementation.

The original *endptr may be uninitialized, and so must not be accessed.

> =E2=80=9CIt might seem that it=E2=80=99s a problem that the callee doesn=
=E2=80=99t know if nptr can
> alias errno or not. However, the callee will not write to the latter
> directly until it knows it has failed,=E2=80=9D
>=20
> Again this is true for glibc, but not necessarily true for every conformi=
ng
> strtol implementation.

An implementation is free to set errno =3D EDEADLK in the middle of it, as
long as it later removes that.  However, I don't see how it would make
any sense.

If that's done, it's probably done via a helper internal function, which
as said below, can use restrict for nptr, and thus know with certainty
that nptr is distinct from errno.

If that's done directly in the body of strtol(3) (the only place where
it's not known that nptr is distinct from errno) we can probably agree
that the implementation is doing that just for fun, and doesn't care
about optimization, and thus we can safely ignore it.

> To my mind this is the most serious objection. The current standard
> prohibits calls like strtol((char *) &errno, 0, 0). The proposal would re=
lax
> the standard to allow such calls. In other words, the proposal would
> constrain implementations to support such calls.

I don't think it does.  ISO C specifies that strtol(3) takes a string as
its first parameter, and errno is not (unless you do this:).

	(char *)&errno =3D "111";

Okay, let's assume you're allowed to do that, since a char* can alias
anything.

I still don't think ISO C constrains implementations to allow passing
(char *)&errno as a char*, just because it's not restrict.  Let's find
an ISO C function that accepts a non-restrict string:

	int system(const char *string);

Does ISO C constrain implementations to support system((char *)&errno)?
I don't think so.  Maybe it does implicitly because of a defect in the
wording, but even then it's widely understood that it doesn't.

> Why is this change worth
> making? Real-world programs do not make calls like that.

Because it makes analysis of 'restrict' more consistent.  The obvious
improvement of GCC's analyzer to catch restrict violations will trigger
false positives in normal uses of strtol(3).

> =E2=80=9CBut nothing prohibits those internal helper functions to specify=
 that nptr
> is restrict and thus distinct from errno.=E2=80=9D
>=20
> Although true, it=E2=80=99s also the case that the C standard does not *r=
equire*
> internal helper functions to use =E2=80=98restrict=E2=80=99. All that mat=
ters is the
> accesses. So I=E2=80=99m not sure what the point of this statement is.

If an implementation wants to optimize, it should be careful and use
restrict.  If it doesn't, then it can't complain that ISO C doesn't
allow it to.  It's actually allowed to optimize, but it has to do some
work for it.

> =E2=80=9Cm =3D strtol(p, &p, 0); An analyzer more powerful than the curre=
nt ones
> could extend the current -Wrestrict diagnostic to also diagnose this case=
=2E=E2=80=9D
>=20
> Why would an analyzer want to do that? This case is a perfectly normal th=
ing
> to do and it has well-defined behavior.

Because without an analyzer, restrict cannot emit many useful
diagnostics.  It's a qualifier that's all about data flow analysis, and
normal diagnostics aren't able to do that.

A qualifier that enables optimizations but doesn't enable diagnostics is
quite dangerous, and probably better not used.  If however, the analyzer
emits advanced diagnostics for misuses of it, then it's a good
qualifier.

Have a lovely day!
Alex

>=20
> =E2=80=9CTo prevent triggering diagnostics in a powerful analyzer that wo=
uld be
> smart enough to diagnose the example function g(), the prototype of
> strtol(3) should be changed to =E2=80=98long int strtol(const char *nptr,=
 char
> **restrict endptr, int base);=E2=80=99=E2=80=9D
>=20
> Sorry, but the case has not been made to make any such change to strtol=
=E2=80=99s
> prototype. On the contrary, what I=E2=80=99m mostly gathering from the di=
scussion is
> that =E2=80=98restrict=E2=80=99 can be confusing, which is not news.
>=20
> n3220 =C2=A76.7.4.2 examples 5 through 7 demonstrate that the C committee=
 has
> thought through the points you=E2=80=99re making. (These examples were no=
t present
> in C11.) This may help to explain why the standard specifies strtol with
> =E2=80=98restrict=E2=80=99 on both arguments.
>=20

--=20
<https://www.alejandro-colomar.es/>

--hmqbruvx5dlqvvby
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaKjUgACgkQnowa+77/
2zKAZQ//ZfrZBNIvxFA5YOdbULxOEPt7V9iOUBF6KceS6cpQ32SJC+zZcf6SmSJL
x0jhYrNcKMQv3CnE7x32vLeQC3AlXk5vHJIDOg96kPzJ1lYar0fjHg+PG17lnLSu
dnPMntnht6qPa+YBlpMJtIYAh36m2rxNzrr5eJrHUTuF3w3IXDKUxRIdyB/yx6SS
Cw7NsV7EJwmHHSUuorbFA5OLSl+iinMalee09TqVR+1SXV31CxmJKIXwG/0Hf32j
y/5GeJ8H9s7QugE9bhwur0tyozC71B0pGkb9HTi2AYWDF0Qp+M+NeSZGyBIdKEdS
huOaypFjyFYvWU7M/HfhG0/I25AQCwYMSnHaqBrp0R570UqXvgxo7SxwahUTTZyn
BygX2Ypmc7r7HFeTpIQpxDfleKdHOfwKlgH+VNlRb6npsC7p2urNc/t3hlZKQBX7
GRKld5VGRx1k+y6+3FxmLjIsKAl3b9eDk4pExuS5/LZ9xpn++3jYwCNxRMj12G3f
il4FDXRDz7qXr2/9/I0hsEGD7gKMk57YNP4+0tUi++Sx1zujdzwuydR3y0E1HUCM
tgc3DhFhTynsNcNrvLH8UvMvpmS+zYV7j1ia04CqqtkBS+0+uiPjJs46AKJRceoP
RN7f8Rpd04+1qZAnirGw+UXmvMi/tlY9mbts6+1tz9o/wv4TSWE=
=2Gyf
-----END PGP SIGNATURE-----

--hmqbruvx5dlqvvby--

