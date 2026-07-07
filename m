Return-Path: <linux-man+bounces-5700-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +vFZJjjlTGrIrgEAu9opvQ
	(envelope-from <linux-man+bounces-5700-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 07 Jul 2026 13:38:32 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E9A71B030
	for <lists+linux-man@lfdr.de>; Tue, 07 Jul 2026 13:38:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GxP2wtaz;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5700-lists+linux-man=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="linux-man+bounces-5700-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 96E9B300089B
	for <lists+linux-man@lfdr.de>; Tue,  7 Jul 2026 11:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B98673F58E6;
	Tue,  7 Jul 2026 11:23:13 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3379A303A35
	for <linux-man@vger.kernel.org>; Tue,  7 Jul 2026 11:23:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783423393; cv=none; b=DOfJdFpXWw2QptK3jWA0IInH+y5gk4jdYqiX4MHkAf/sqaYSz1OjRw6uzf9z7z/0WQ/65Zcv98XjDVMQg/TQG8U9d3VTrqoX2GYNwWYTgxGhvEXkvzmqQ0cBH+5UCSLLSL0snvVzXnOPf2sorFlexwSmGCRyB02dbtoYJ7S3cuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783423393; c=relaxed/simple;
	bh=wrtZ2yP73OO80rwHZYfuDoqzMewwcWWzY6VCOQ0cG24=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZD51x0a7Wc4MIyGCjxjL1q0N2svC3V30QGJ1xvf2u7Lqtdc2SEJPa8nYxyTcaC4UvCOpSb52DNcrdSbsDH7AWPbszRCqnQyv5FFQpq7KUrT4Og2Vwu9R06pisa003p3NWY8+DpwFsVKAXV1VB3fxe9UsJMWQjkNBG5QvjAaXx+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxP2wtaz; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F5551F000E9;
	Tue,  7 Jul 2026 11:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783423391;
	bh=wCscUPr0bvYqmJb1Qyw4GLD8YCeViN0zvzhaPWvf6sU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GxP2wtazFj9Y+fpJv72/ZBIIU9uf8oz/MkmGm1JIbfUbYCXglvauoN7zxnQfASnEw
	 5eiRUCryP70uB1VkOFqXguu1s+wMdL88WVOezfOZ87R8idz6bLSlY/1/RfmPWmfiip
	 D2Too8spwQpVNKQ4vFpxgNiljA4DJJUR4JweOQPTxIE4BR1a1tuh+PlpGx6hbjsydb
	 zqS6CSAoi3/OhFHBODW5CLL85cSlkr10enjZyd7Rt2LP1f/nVKVnPEgkXTaKbPV71p
	 jGWhUPU0xiosXMTCiYQUOKt0ch8qja5EQmGy9ZGOMnd6z7FtSY/Ire/Pspfql3SEzN
	 LpRO9Z46u9V7A==
Date: Tue, 7 Jul 2026 13:23:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man7/environ.7: Fix underspecification of
 "name=value" strings
Message-ID: <akzfCMes6DT-DFDj@devuan>
References: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email>
 <akvEyqpWVMYkkJei@devuan>
 <DJSA85QXGWYK.1D40FPI15883J@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bolminoaxtxrbezs"
Content-Disposition: inline
In-Reply-To: <DJSA85QXGWYK.1D40FPI15883J@jasonyundt.email>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jason@jasonyundt.email,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5700-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,wikipedia.org:url,jasonyundt.email:email,alejandro-colomar.es:url,codeberg.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90E9A71B030


--bolminoaxtxrbezs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man7/environ.7: Fix underspecification of
 "name=value" strings
Message-ID: <akzfCMes6DT-DFDj@devuan>
References: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email>
 <akvEyqpWVMYkkJei@devuan>
 <DJSA85QXGWYK.1D40FPI15883J@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <DJSA85QXGWYK.1D40FPI15883J@jasonyundt.email>

Hi Jason,

On 2026-07-07T06:54:49-0400, Jason Yundt wrote:
> On Mon Jul 6, 2026 at 11:27 AM EDT, Alejandro Colomar wrote:
> > Hi Jason,
> >
> > On 2026-07-06T10:26:20-0400, Jason Yundt wrote:
> >> Before this change, environ(7) said this:
> >>=20
> >> > By convention, the strings in environ have the form "name=3Dvalue". =
 The
> >> > name is case-sensitive and may not contain the character "=3D".  The
> >> > value can be anything that can be represented as a string.  The name
> >> > and the value may not contain an embedded null byte ('\0'), since th=
is
> >> > is assumed to terminate the string.
> >>=20
> >> That description has a few problems:
> >>=20
> >> 1. It talks about =E2=80=98the character "=3D"=E2=80=99, but it doesn=
=E2=80=99t specify what
> >>    character encoding would be used to represent that character.  Two
> >>    different character encodings could represent that same =E2=80=9C=
=3D=E2=80=9D character
> >>    using two different bytes (or even sequences of bytes).
> >
> > POSIX says that '=3D' is part of the portable character set.
>=20
> I don=E2=80=99t really think that '=3D' being a part of the POSIX Portable
> Character Set matters here.  For one thing, environ(7) doesn=E2=80=99t me=
ntion
> the POSIX Portable Character Set at all.  Even if it did, the POSIX
> Portable Character Set does not specify that the character encoding of
> '=3D' is 0x3D so it wouldn=E2=80=99t really help us.

Oh, I thought POSIX required ASCII-compatible encoding, but it seems I
was likely wrong.

> > Do we really need to care about the value of '=3D'?
>=20
> There needs to be a specification somewhere that says what the character
> encoding would be.  You can=E2=80=99t represent any characters on a compu=
ter
> without choosing a character encoding.

After reading the POSIX specification of putenv(3), I have some doubts.
putenv(3) is specified to use '=3D', not 0x3D.  Thus, if working on a
system that uses a different value for '=3D', it seems that the
specification says that environ will still contain '=3D' in that encoding,
regardless of the value it has.  In fact, reading the musl and glibc
implementations, they use '=3D', not 0x3D (maybe those libc
implementations don't support encodings of '=3D' that don't use 0x3D;
I don't know).


Have a lovely day!
Alex

> > Is this really possible?
>=20
> Definitely.  Anyone can create whatever character encoding that they
> want to.  There=E2=80=99s nothing that would force people to always encod=
e the
> =E2=80=9C=3D=E2=80=9D character as 0x3D in every character encoding that =
they create.
> There are already character encodings in existence where =E2=80=9C=3D=E2=
=80=9D is not
> encoded as a 0x3D byte.  For example, =E2=80=9C=3D=E2=80=9D is encoded as=
 a 0x7E byte in
> EBCDIC [1].
>=20
> >
> >> 2. It mentions that =E2=80=98The name is case-sensitive and may not co=
ntain the
> >>    character "=3D".=E2=80=99  It doesn=E2=80=99t clearly say what what=
 is allowed to be in
> >>    a name.  It only says that those two things are explicitly
> >>    disallowed.
> >
> > Anything else is allowed, obviously.
>=20
> I don=E2=80=99t think that the current wording clearly specifies what is =
allowed
> to be in a name.  It=E2=80=99s definitely not obvious to me.
>=20
> >
> >> This change fixes those two problems.  For the first problem, this
> >> change makes it so that the description is all about bytes, not
> >> characters.  Describing the format in terms of bytes allows us to
> >> sidestep the question of character encoding entirely.  Additionally, it
> >> is more accurate to describe strings in environ as being sequences of
> >> bytes instead of sequences of characters.  Both the name and value of =
an
> >> environment variable could be sequences of bytes that don=E2=80=99t co=
ntain any
> >> characters at all.
> >>=20
> >> For the second problem, this change clarifies that the name of an
> >> environment variable can contain any byte except for 0x3D.  It also
> >> clarifies that while it=E2=80=99s OK for environment variable values t=
o be
> >> empty, it=E2=80=99s not OK for environment variable names to be empty.
> >>=20
> >> Additionally, this change replaces "=3D" with '=3D'.  In the C program=
ming
> >> language, "=3D" refers to two bytes: one for the equals character plus=
 one
> >> for the terminating null byte.  In the C programming language, '=3D'
> >> refers to a single byte.  In this particular instance, we=E2=80=99re t=
alking
> >> about a single byte, so it=E2=80=99s better to use '=3D'.  Using '=3D'=
 also makes
> >> environ(7) more internally consistent.  Before this change, environ(7)
> >> used '\0' and "=3D".  This change makes it so that environ(7) uses '\0'
> >> and '=3D'.
> >>=20
> >> I was able to obtain obtain the information that I needed in order to
> >> create this change by writing a test program.  You can find the test
> >> program here [1].  Additionally, I got the information about the seten=
v(3)
> >> and unsetenv(3) functions from their man pages (specifically, the parts
> >> of their man pages that talk about EINVAL).
> >>=20
> >> [1]: <https://codeberg.org/JasonYundt/environ-format-example-program>
> >
> > Please include the C program in the commit message so that it can be
> > compiled and run easily, without having to understand Nix stuff.
>=20
> OK.  I created a shorter version of the test code that=E2=80=99s availabl=
e at
> that link.  I have embedded the new shorter version in the commit
> message for the second version of this patch.
>=20
> >
> >>=20
> >> Signed-off-by: Jason Yundt <jason@jasonyundt.email>
> >> ---
> >>  man/man7/environ.7 | 23 +++++++++++++++++------
> >>  1 file changed, 17 insertions(+), 6 deletions(-)
> >>=20
> >> diff --git a/man/man7/environ.7 b/man/man7/environ.7
> >> index 31a69017cf75..bf5726e32429 100644
> >> --- a/man/man7/environ.7
> >> +++ b/man/man7/environ.7
> >> @@ -28,12 +28,23 @@ .SH DESCRIPTION
> >>  .I environ
> >>  have the form
> >>  .RI \[dq] name\f[B]=3D\f[]value \[dq].
> >> -The name is case-sensitive and may not contain
> >> -the character
> >> -.RB \[dq] =3D \[dq].
> >> -The value can be anything that can be represented as a string.
> >> -The name and the value may not contain an embedded null byte (\[aq]\[=
rs]0\[aq]),
> >> -since this is assumed to terminate the string.
> >
> > I liked the old wording about the terminating null byte more.
>=20
> OK.  In the second version of this patch, I brought back the old wording
> about the terminating null byte.
>=20
> >
> >> +The name is case-sensitive
> >> +and may contain any byte
> >> +other than null (\[aq]\[rs]0\[aq]) and 0x3D (the
> >> +.BR ascii (7)
> >> +.RB \[aq] =3D \[aq]
> >> +character).
> >> +The name must be at least one byte long,
> >> +or else programs will not be able to manipulate it using the
> >> +.BR setenv (3)
> >> +or
> >> +.BR unsetenv (3)
> >> +functions.
> >> +Immediately after the name, there should be a 0x3D byte.
> >
> > What should readers interpret of 'should'?  Is it a recommendation or an
> > obligation?  This is unclear wording.
>=20
> OK.  In the second version of this patch, I replaced the word =E2=80=9Csh=
ould=E2=80=9D
> with the word =E2=80=9Cmust=E2=80=9D.
>=20
> >
> >> +Immediately after the 0x3D byte is the value.
> >
> > This seems redundant with the sentence that shows the format
> > "name=3Dvalue".
>=20
> OK.  In the second version of this patch, I got rid of that sentence.
>=20
> >
> >> +The value may contain any byte except for null.
> >
> > What is the null value?  You mean an empty string?  Or you mean embedded
> > null bytes in the string?  Please clarify.
>=20
> When I wrote =E2=80=9CThe value may contain any byte except for null.=E2=
=80=9D, I meant
> =E2=80=9CThe value may contain any byte except for the null byte.=E2=80=
=9D  That being
> said, I have removed that sentence from the second version of this
> patch.
>=20
> >
> >> +The value may be zero bytes long.
> >
> > That's commonly known as an empty string.
> >
> > I think saying that the value can be anything that can be represented as
> > a string is fine (the old wording).
>=20
> OK.  In the second version of this patch, I got rid of the sentence =E2=
=80=9CThe
> value may be zero bytes long.=E2=80=9D
>=20
> >
> >> +Immediately after the value, there must be a terminating null byte.
> >
> > The fact that it's a string already implied this.
>=20
> OK.  In the second version of this patch, I got rid of the sentence
> =E2=80=9CImmediately after the value, there must be a terminating null by=
te.=E2=80=9D
>=20
> >
> >
> > Have a lovely day!
> > Alex
> >
> >>  .P
> >>  Environment variables may be placed in the shell's environment by the
> >>  .I export
> >>=20
> >> Range-diff against v0:
> >> -:  ------------ > 1:  d5b0d9b86029 man/man7/environ.7: Fix underspeci=
fication of "name=3Dvalue" strings
> >> --=20
> >> 2.54.0
> >>=20
> >>=20
>=20
> [1]: <https://en.wikipedia.org/wiki/Ebcidic#Code_page_layout>

--=20
<https://www.alejandro-colomar.es>

--bolminoaxtxrbezs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpM4ZYACgkQ64mZXMKQ
wqmYKQ//YSDVgPNID2pF/F2xEivzjEHn+lxUl8IKdZ9/Tj5H/MJdGi3HIl7GoVFV
T0GKzrxx8O0xtqLngNSalMd6B9/xRR1+SrsEAVkZhIqr37kZefOpVp+XeXiFsrsg
lScFU4+zCs7lYMiDrR4EvQ6lPTJTDC5fjLwBkV3t8TqQe5XEMc19tnqVEV97jBpG
SRCFHBOuaHabp2vHX07XB4hZ2sOb5DTdD3PPu7QWCiexEwpRb8vVlRpg7DruHMY4
gebYAswgK99KXH8x5Du6g3TePb/nxiNG4bds5NYxozNiKwUxx0jYcGxWYira7R4R
BcTAWGIBsvmQ67uyhjnFautQU9NGNltTT/jbHACAcNpoDaHi3jd8dZOZ0bSqHXK7
8tQfAugi6qssMQ1lHXothxPS7nTOU1NlBM6uxMTFWqqUqHx+c02RafZxQqS2Nk1+
qZnsVauDGkZO4LXSYGlMjTt+QWaT8peX8d4K2+biyD0fser87Ij+snUs8kpRnHYX
quTJQb+AEYeSPGu7x43VTxYFJ875u04AAWef+9fqhNV2LUbj4LAJEYESiA/ORk6p
anix4cPYza3SQbzy1AlBij2yxWDN6U8kh34gZ+mc9imVixwYu1xYyvDyHEYUZfe7
v7w+/X4i7s+AvgFiEOH7m4YOAU43JtNnIhvYk21PZWo0uE5vi04=
=MQe2
-----END PGP SIGNATURE-----

--bolminoaxtxrbezs--

