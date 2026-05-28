Return-Path: <linux-man+bounces-5622-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LqrB3yyGGr9mAgAu9opvQ
	(envelope-from <linux-man+bounces-5622-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 23:24:12 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBEA5FA5E7
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 23:24:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 85CD23025F76
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 21:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF8E3537CC;
	Thu, 28 May 2026 21:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlAia38v"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A11359A65
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 21:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780003447; cv=none; b=Y4Ev3nAn3SB4WtIAlcvkrSdiImeee8L8PJm2wscTEr1NX8buki2IRkQniThLNpv2KzQa5WD3+kmUXY4qgPLgX4mBFCmJazq7pW3rwLal61NIJtIxVD/xV79vV1O7fNanLWzySatCV+C7ewowkF84F+h9IaXqBk2smcApo2jmxb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780003447; c=relaxed/simple;
	bh=UmJVUHdchOMPAO9OkMnv7Y6SQT29WRP1C4cfYYsYUmU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RoRWXE6Gh7Y5xNEe3srsx9ga+Of7jP+fWENCppQ5wluuvf8e8nC/BMJP9LNnc49bSyEpYW2BT5PWxjtkuHVQOG5USo8fYPOCz5cJ08QRPANZf3aRwq/10k2tFnMcci2hW1GBEmQYur0w/B0gjJ7cMsxkZFQdHGBngCtOBObNx8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlAia38v; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 715121F00A3A;
	Thu, 28 May 2026 21:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780003446;
	bh=H5bRArb5MAWIuCEsyEe/jYL5ZrsaNUS54r7xDAleFOQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HlAia38vzAlORXDtFbvaI5lsUipZQi+B2jhsJw87sRqZvKQ2DdsPhNpB6ZLXN3wYP
	 MTijhr8jYImWIlMnHfJdpysHAk2kxwsUBajg8PoLAuTBznHig9iOAOUsb8uySQCaKS
	 MDewrBhZH/Dreu/xUFXJ9TjfrLIovYNgF+W7HAtd1QpC9gS//Z8KHybdOGXAdTPK3i
	 bsB7PLS6mud5plzyHase8PR0XXcj80ng6qwcoIqz0CxCH7hpHAtDp6pQ4/fdzDtTdW
	 miRQMNjRkJU+6kDTItGbo48Xce5Gn2f0e8a8+UAT6LnfFItTkgMH8rWOt+EfKSR8bU
	 +kqJgW07caxBw==
Date: Thu, 28 May 2026 23:24:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: "Michael Kerrisk (man7.org)" <mtk@man7.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: Mangled function prototypes (phantom arguments)
Message-ID: <ahisWSsAtm8J19RX@devuan>
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan>
 <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
 <ahcvtYzeadqmhk62@devuan>
 <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
 <23a5740a-5de6-487d-b976-71e16205b1cf@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5ei7yf6mfhszol52"
Content-Disposition: inline
In-Reply-To: <23a5740a-5de6-487d-b976-71e16205b1cf@redhat.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5622-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~]
X-Rspamd-Queue-Id: 8CBEA5FA5E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--5ei7yf6mfhszol52
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: "Michael Kerrisk (man7.org)" <mtk@man7.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: Mangled function prototypes (phantom arguments)
Message-ID: <ahisWSsAtm8J19RX@devuan>
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan>
 <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
 <ahcvtYzeadqmhk62@devuan>
 <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
 <23a5740a-5de6-487d-b976-71e16205b1cf@redhat.com>
MIME-Version: 1.0
In-Reply-To: <23a5740a-5de6-487d-b976-71e16205b1cf@redhat.com>

Hi Carlos,

On 2026-05-28T14:39:15-0400, Carlos O'Donell wrote:
> On 5/28/26 9:06 AM, Michael Kerrisk (man7.org) wrote:
> > I don't think the Linux system call and C library manual pages are a
> > good place to promote this obscure GNU feature. It is confusing
> > people, including me. (I came to making this report because several
> > people have reported this "bug" on various pages rendered at
> > man7.org.)
> >=20
> > Please consider reverting these changes. These markings use
> > little-understood, nonportable syntax. The manual page synopses should
> > be in standard, portable C that is *easy* to understand.
>=20
> I agree with Michael.
>=20
> I think these changes should be reverted, but it's a question of
> goals and values for the project, and the purpose of the SYNOPSIS.
>=20
> My view was always that they were the simplest expression of the
> interface that the widest possible audience could understand, and
> that seems to align with Michael's view.

That doesn't provide much value, IMHO.  My opinion of the SYNOPSIS is
that it's a quick reminder of how a function should be used.

Let's take a real example:

     long mbind(void *addr, unsigned long len, int mode,
                const unsigned long *nodemask, unsigned long maxnode,
                unsigned int flags);

I honestly don't know anything from the prototype above.  Apart from the
types, there's no useful information.  There are the names which will
later be described in the description, but so far they're not useful.

     long mbind(unsigned long size, unsigned long maxnode;
                void addr[size], unsigned long size, int mode,
                const unsigned long nodemask[(maxnode + ULONG_WIDTH - 1)
                                             / ULONG_WIDTH],
                unsigned long maxnode, unsigned int flags);

This already introduces me the function quite well.  The description
will of course clarify details, but I can already see some things.

> It certainly isn't for me as a C library author...

The SYNOPSIS is for everyone.  I read the synopses regularly while
programming.  In fact, I read it quite more than the descriptions, which
I only read seldom, when interested in some rare details.

> it's for
> someone just learning or refreshing knowledge, and what makes
> it easiest for a new person or someone less familiar to consume?

Speaking of myself as a new programmer not so long ago, I would have
appreciated these synopses.

> It seems like we've drifted toward describing the interface *and*
> the constraints in a compact form (like N3433). Is that in line
> with the goals of the project?

I think it is.  At least with how I see it.

I also don't see much difference between the interface and its
constraints.  They are deeply related (array parameters are part of the
type system, after all).  If we wanted to know the names of the
arguments and their order, we could have something much simpler:

	mbind(addr, size, mode, nodemask, maxnode, flags);

But of course we don't want that.

> It's not like these are the *real* prototypes in your C library,

Implementation details are unimportant.

> since those are much much more complicated and difficult to
> understand. It's also not like they match the GNU C Library
> manual's description via `info libc mmap` that are presented
> to users of the library.

I don't see why both documentations should agree in the details.  Of
course, I'd like the libc manual to be more detailed, but there's no
inherent reason why both should be exact matches, as long as they're
compatible.

> What is the intent of the SYNOPSIS field and the prototypes
> therein? What are the goals or values of the project around
> that information?

That information should introduce the API, giving enough details to
understand a decent amount of it.  It should also remind quickly of
some details such as whether an argument may be null, or which sizes
correspond to which arrays, so that programmers can quickly check those.

> There is certainly some syntax that is valuable for compilers
> enforcing constraints and providing warnings, but is that
> valuable for man pages readers?

For me, as a frequent reader, it is very valuable.  YMMV.

> For manual pages overall I think the forward declarations
> are a net negative change in readability. I would continue
> to express the constraints in plain prose.

I tend to disagree.  For example, let's consider the addition of
'restrict' (I added it a few years ago, when Michael was still around,
IIRC).

	$ find man -type f | xargs grep -rl '[[*]restrict' | wc -l;
	137

Here's the prose in memcpy(3), which I haven't removed yet (because it's
historically more relevant in memcpy(3)):

CAVEATS
     Failure  to  observe  the requirement that the memory areas do not ove=
rlap
     has been the source of significant bugs.  (POSIX and the C  standards =
 are
     explicit that employing memcpy() with overlapping areas produces undef=
ined
     behavior.)  Most notably, in glibc 2.13 a performance optimization of =
mem=E2=80=90
     cpy()  on some platforms (including x86=E2=80=9064) included changing =
the order in
     which bytes were copied from src to dest.

If we had to replicate this paragraph in 137 pages, we'd be adding walls
of text unnecessarily.  And it would be a problem for maintaining that
text.  Now that we use 'restrict', it's just a few keywords in the
SYNOPSIS, and it's all well documented (but you need to know what that
keyword means, of course; there's a trade-off).  (Another matter is that
'restrict' is utterly broken as a keyword for source code; but for
documentation purposes it's relatively fine.  The same thing happens
with Clang's _Nullable, which has never really worked in source code.)


Have a lovely night!
Alex

>=20
> $0.02.
>=20
> --=20
> Cheers,
> Carlos.
>=20

--=20
<https://www.alejandro-colomar.es>

--5ei7yf6mfhszol52
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoYsmwACgkQ64mZXMKQ
wqm6lQ//fioexlfaT41k+hwcmdsXl9NH2MX2TU3OTutLFc3/ZucA49+rZ4Ki/DPO
HX8PynwoReeZEFhU0nbf+TvqUJ3EoZS/sztz9oIt/1GXRhh9n7apSqFyu1ViS5Jr
rC7WHabvYyXhyuUD47JrPEjru2FeC9D0O4YvOPuUw5ZN9W2+xu2EgMw3kOlZaxY8
Kbi6m5qf7dwIhRpRDb0hQWKcI4689e7NvM0Z6ezALOdBtRIN8KqEY5pRNSRtptMi
hBmhBYiTRR1j2cj4JQw22uPCDNk9h+JofUOj4QH6jjMnHgbwKY1j15kEk4DNqqlX
//q6vb68hBqImrmQk9aljw90qA2GYBvBz8B828we1xQz3rmcC23BUrirRBvz9IoU
wly+V6D6JQMSQGiJD9JDWx6yn2MBTVuB/khiPWM88EndBaYcO8GS6/4ANACnGUvV
G3qnntfRlJuD/tsGx5xAZhjZrkPnbtG9AGowexE3Undq2NCqydJbblKKn5HsqIAX
JMKDiFiBfXt3WgR/LLY29MYI+YKhXZF6W23Nwo2c8ZVniVoV2TMakErFPRMc2xZh
0DRgisE+RrqUFuMIJogR0NEEHlpfnj4rLlVOjkE3OpFusHt8O5mEp6Wm4mPk3/Ep
U3Vjb7EnLTglnbvv3EisrfiWGgjXJE/4+lApEasHI/VG/O3db9Y=
=09IQ
-----END PGP SIGNATURE-----

--5ei7yf6mfhszol52--

