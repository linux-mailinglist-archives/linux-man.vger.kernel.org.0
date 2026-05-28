Return-Path: <linux-man+bounces-5626-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMq7DrLIGGqZnQgAu9opvQ
	(envelope-from <linux-man+bounces-5626-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 00:58:58 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB065FB247
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 00:58:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CDA63021B2A
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 22:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9868367F45;
	Thu, 28 May 2026 22:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6SeIxw1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBCA36A36D
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 22:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780009000; cv=none; b=bCt5Yo7h5cpO3j5oAYlTEiW42VTyyGHG5IB5mBejGy9UYLkcCCUM4zzWZJ/+IXlLfNTflkr5T58pS8hreqIIUbUFa59YmF9OmLt7Ko9kUreBP0GfuA/EOvpFKD+pX7NaQQu2l5tvolijHweDhzUord0KVhXC4v0s00fsOnVpX9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780009000; c=relaxed/simple;
	bh=olCQUW7Z6/YRc5nG0onXjF/AIV+1tizaxlLLs7zeBgk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ryOF3e9JabjnACWe+bDtd/+e+nep3B4KTAawux78Bp4SEi/E58mmioTjmx6b70HXFj7zQfSgXwVSgypxujBvFekGMa4CwAXB3Ocl8eFfot5M2SCge7TcpWlkX3/ZpGwsyvclCVnSfHFpw7orxGIQmaB3KELheqI9SgYjDTIuwQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6SeIxw1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 549D21F000E9;
	Thu, 28 May 2026 22:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780008999;
	bh=AN2er2R/oQ8toTl22E8AYhj14ZI5m+j3gTqzZib83KM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=X6SeIxw1ZLNOnKKdneeeD3g4rlIINZiphJukYhUdliIC3Rj54ZL6pgR0UmnKDOQyP
	 Co6/E6+YnnV/CuR6pu2vSj8GxzEX/8Kxf2H2JvM7pxbL26578A/qSVyzZR7tjKt/Jf
	 xlKkxmcNN/29ulTe+jBUGetN3JrN+9KiUotlpGOGCtBDBQ6iAifvvwdLbNvXzvKUhz
	 nOD2R3vkVP6UQ7EZdk0CblMoSU1mClUX99+wshzv7i/zauPGz40phPB+am0gwQXGWb
	 c6R8x/MR9DdF64ndCC8JoGj/EYPgnENpa1bjbYN05e1KaSSoefUGzOkBwXDatC/3T5
	 EwOIetj+lSjNg==
Date: Fri, 29 May 2026 00:56:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: "Michael Kerrisk (man7.org)" <mtk@man7.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: Mangled function prototypes (phantom arguments)
Message-ID: <ahjGLWkhne6VItJf@devuan>
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan>
 <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
 <ahcvtYzeadqmhk62@devuan>
 <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
 <23a5740a-5de6-487d-b976-71e16205b1cf@redhat.com>
 <ahisWSsAtm8J19RX@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yrcy7awas6aa2tqj"
Content-Disposition: inline
In-Reply-To: <ahisWSsAtm8J19RX@devuan>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-5626-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 8CB065FB247
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--yrcy7awas6aa2tqj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: "Michael Kerrisk (man7.org)" <mtk@man7.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: Mangled function prototypes (phantom arguments)
Message-ID: <ahjGLWkhne6VItJf@devuan>
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan>
 <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
 <ahcvtYzeadqmhk62@devuan>
 <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
 <23a5740a-5de6-487d-b976-71e16205b1cf@redhat.com>
 <ahisWSsAtm8J19RX@devuan>
MIME-Version: 1.0
In-Reply-To: <ahisWSsAtm8J19RX@devuan>

On 2026-05-28T23:24:06+0200, Alejandro Colomar wrote:
> Hi Carlos,
>=20
> On 2026-05-28T14:39:15-0400, Carlos O'Donell wrote:
> > On 5/28/26 9:06 AM, Michael Kerrisk (man7.org) wrote:
> > > I don't think the Linux system call and C library manual pages are a
> > > good place to promote this obscure GNU feature. It is confusing
> > > people, including me. (I came to making this report because several
> > > people have reported this "bug" on various pages rendered at
> > > man7.org.)
> > >=20
> > > Please consider reverting these changes. These markings use
> > > little-understood, nonportable syntax. The manual page synopses should
> > > be in standard, portable C that is *easy* to understand.
> >=20
> > I agree with Michael.
> >=20
> > I think these changes should be reverted, but it's a question of
> > goals and values for the project, and the purpose of the SYNOPSIS.
> >=20
> > My view was always that they were the simplest expression of the
> > interface that the widest possible audience could understand, and
> > that seems to align with Michael's view.
>=20
> That doesn't provide much value, IMHO.  My opinion of the SYNOPSIS is
> that it's a quick reminder of how a function should be used.
>=20
> Let's take a real example:
>=20
>      long mbind(void *addr, unsigned long len, int mode,
>                 const unsigned long *nodemask, unsigned long maxnode,
>                 unsigned int flags);
>=20
> I honestly don't know anything from the prototype above.  Apart from the
> types, there's no useful information.  There are the names which will
> later be described in the description, but so far they're not useful.
>=20
>      long mbind(unsigned long size, unsigned long maxnode;
>                 void addr[size], unsigned long size, int mode,
>                 const unsigned long nodemask[(maxnode + ULONG_WIDTH - 1)
>                                              / ULONG_WIDTH],
>                 unsigned long maxnode, unsigned int flags);
>=20
> This already introduces me the function quite well.  The description
> will of course clarify details, but I can already see some things.
>=20
> > It certainly isn't for me as a C library author...
>=20
> The SYNOPSIS is for everyone.  I read the synopses regularly while
> programming.  In fact, I read it quite more than the descriptions, which
> I only read seldom, when interested in some rare details.
>=20
> > it's for
> > someone just learning or refreshing knowledge, and what makes
> > it easiest for a new person or someone less familiar to consume?
>=20
> Speaking of myself as a new programmer not so long ago, I would have
> appreciated these synopses.
>=20
> > It seems like we've drifted toward describing the interface *and*
> > the constraints in a compact form (like N3433). Is that in line
> > with the goals of the project?
>=20
> I think it is.  At least with how I see it.
>=20
> I also don't see much difference between the interface and its
> constraints.  They are deeply related (array parameters are part of the
> type system, after all).  If we wanted to know the names of the
> arguments and their order, we could have something much simpler:
>=20
> 	mbind(addr, size, mode, nodemask, maxnode, flags);

BTW, FWIW, this resembles quite a lot the documentation from the times
of V7 Unix.  Here's how functions were documented back then.

	SYNOPSIS
	     char *ttyname(fildes)

	     isatty(fildes)

	     ttyslot()

AFAICS, 4.4BSD is the first BSD that used function prototypes (both in
the source code and documentation).  You could similarly argue that that
was unnecessarily confusing programmers back then (most programmers of
the time might not be aware of the innovation of function prototypes,
and why one would care about parameter types, especially when being
introduced to a function).  However, we'll probably agree that that was
a good change.  I would find a prototype without types to be quite
uninformative.


Cheers,
Alex

>=20
> But of course we don't want that.
>=20
> > It's not like these are the *real* prototypes in your C library,
>=20
> Implementation details are unimportant.
>=20
> > since those are much much more complicated and difficult to
> > understand. It's also not like they match the GNU C Library
> > manual's description via `info libc mmap` that are presented
> > to users of the library.
>=20
> I don't see why both documentations should agree in the details.  Of
> course, I'd like the libc manual to be more detailed, but there's no
> inherent reason why both should be exact matches, as long as they're
> compatible.
>=20
> > What is the intent of the SYNOPSIS field and the prototypes
> > therein? What are the goals or values of the project around
> > that information?
>=20
> That information should introduce the API, giving enough details to
> understand a decent amount of it.  It should also remind quickly of
> some details such as whether an argument may be null, or which sizes
> correspond to which arrays, so that programmers can quickly check those.
>=20
> > There is certainly some syntax that is valuable for compilers
> > enforcing constraints and providing warnings, but is that
> > valuable for man pages readers?
>=20
> For me, as a frequent reader, it is very valuable.  YMMV.
>=20
> > For manual pages overall I think the forward declarations
> > are a net negative change in readability. I would continue
> > to express the constraints in plain prose.
>=20
> I tend to disagree.  For example, let's consider the addition of
> 'restrict' (I added it a few years ago, when Michael was still around,
> IIRC).
>=20
> 	$ find man -type f | xargs grep -rl '[[*]restrict' | wc -l;
> 	137
>=20
> Here's the prose in memcpy(3), which I haven't removed yet (because it's
> historically more relevant in memcpy(3)):
>=20
> CAVEATS
>      Failure  to  observe  the requirement that the memory areas do not o=
verlap
>      has been the source of significant bugs.  (POSIX and the C  standard=
s  are
>      explicit that employing memcpy() with overlapping areas produces und=
efined
>      behavior.)  Most notably, in glibc 2.13 a performance optimization o=
f mem=E2=80=90
>      cpy()  on some platforms (including x86=E2=80=9064) included changin=
g the order in
>      which bytes were copied from src to dest.
>=20
> If we had to replicate this paragraph in 137 pages, we'd be adding walls
> of text unnecessarily.  And it would be a problem for maintaining that
> text.  Now that we use 'restrict', it's just a few keywords in the
> SYNOPSIS, and it's all well documented (but you need to know what that
> keyword means, of course; there's a trade-off).  (Another matter is that
> 'restrict' is utterly broken as a keyword for source code; but for
> documentation purposes it's relatively fine.  The same thing happens
> with Clang's _Nullable, which has never really worked in source code.)
>=20
>=20
> Have a lovely night!
> Alex
>=20
> >=20
> > $0.02.
> >=20
> > --=20
> > Cheers,
> > Carlos.
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--yrcy7awas6aa2tqj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoYyCMACgkQ64mZXMKQ
wqnPcBAAomxGECK+D6KNjufhnRiCVYtmC37hWFEm71eV8IjZN2qH18+179ysurD8
HJxAuvG6DxIAldwdPfe+232ZRfp10AVKAZmMIqSIz63oDsxfmVpgpqGkDfAChlbn
lOeAW4EQoEa9Kp8aud4gSIlDOZcPz73Qc0jPbH5SZ8PjyxqfcGasz0nLn9X251eB
96Uj4KwOlT9EvpjbI59P9is9oKnfD6Y88/j7uiJvkIrhhbbJUFqHmM+NUZvMm3e0
BvNCE74MwmKb4G9c0AD9/5t1xxRc3n9TRBH3mTRivLzqZLOJlMTV3QMOrClXRYp9
FP76HdwNCmGvYLcjeeHjJPb2sfp8PvuxqIcG0LmIZoCpj9egOEXGwkpDr1ZAPHGd
SHdAtNAeH/fnxvxFUPeuLancPKdgBHJvDduuG6TCiVzhujcw42a9/64axSU9HH+d
JstCoDSGFx17you6FanotQMdvfcRaB4eqe2zv8BE+HGEfzF3BosK73TtlE+Y/3DD
Y4kMIstjAJ7LwuGlNDg0t5crOBGY362vPOrzqRXP5nyxkZhnsqrsiygm4f2YFWLS
9twfGrugrm62MwmFpn8KFQ9ggRYrm47BVpNC54qbSmpDi8anmvLmdBPhi9HPkQTj
ePDacaS2uBJL+kh3OH88eGjFnKWe3dqpbK6bcoFRnQQnmei0V9Q=
=YlQo
-----END PGP SIGNATURE-----

--yrcy7awas6aa2tqj--

