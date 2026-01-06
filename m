Return-Path: <linux-man+bounces-4699-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C71B7CFB538
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 00:08:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CEB99301EF85
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 23:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C03B42EC081;
	Tue,  6 Jan 2026 23:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="pCzR8u9m"
X-Original-To: linux-man@vger.kernel.org
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com [95.215.58.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E3EE2F5474
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 23:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767740925; cv=none; b=HwVcLe8cpShKdHAbjTvmUXKikv5Qb9XIkBndGYeJgHfb3hENkpZZip1zV0foyGiVDPl8sCSQHttBO+Q7dg9Efc5BIPTvnCuhb/lDtFr9C1Zr/ZDUjpMMxj/ifayKLIY9ISD0Xkl3DzZsmVB8/tXue975w107aAhiN9T5IPZnog8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767740925; c=relaxed/simple;
	bh=hjzXJTNJ9mXuO1XDHMYrY5uAhkSM7B4u6YHEW64Ak08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JcfNaitFdTjSFAEL9wqIEnO9v/wHcuiu8O6xhmJZZFW9r0CcYUZ+Nk/O5+/O7w0gborSSWektw07jmQQuIyA+4lTRdE5Bjs3TQ0txnMGWW/uLrmUq+kw3vB6i5/I0xBv3N29fZhIOv/hBkrxD4Kw9D4nUq/PhhxOeSdmeL6nOk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=pCzR8u9m; arc=none smtp.client-ip=95.215.58.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Wed, 7 Jan 2026 00:08:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1767740920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8QO8BxpvOiToTy3GGUu1fMWy5J+itby8D06LDDNAPcs=;
	b=pCzR8u9mOyKuyttbW1RrF24QF+O8THG4wuZOUB+5inscJMpNP9nEaLRL9puO/QhysMp47n
	AHUyYdmxwLGnL5LjQAWDFAYIDyKhI+KOb7zPABoL8hOBGV8gJa6HSkrEDRht3Y35ibi7cE
	1l3F62fI2o89QGLWauHjM4ReVltEveOPRt1qWiIxQ4wo114N4dcEGP6Q0/GDXw50RispYd
	YOy+73yBpEWJQOLTFvkQMVRXXiP0iPamk4b5fIoTyxJfcKAQNFUHQ7o2//b+QJm48BI0e9
	t+y1RYq3kc0CnJnk1mjP+nfFuhTfO37fQOdKqTIR8ijwn+ULakjJQgiiU6LAMg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Robert Seacord <rcseacord@gmail.com>
Cc: "sc22wg14@open-std. org" <sc22wg14@open-std.org>, 
	Florian Weimer <fweimer@redhat.com>, Carlos O'Donell <carlos@redhat.com>, 
	Aaron Ballman <aaron@aaronballman.com>, libc-alpha@sourceware.org, musl@lists.openwall.com, 
	linux-man@vger.kernel.org
Subject: Re: n3752, alx-0029r8 - Restore the traditional realloc(3)
 specification
Message-ID: <aV2SUysaLtL2MJWf@devuan>
References: <20251223161139.196AB356CF9@www.open-std.org>
 <20251223164349.F0BC5356D1A@www.open-std.org>
 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2btwyrizvzlcamet"
Content-Disposition: inline
In-Reply-To: <20260106214930.A5C8E356D2B@www.open-std.org>
X-Migadu-Flow: FLOW_OUT


--2btwyrizvzlcamet
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Robert Seacord <rcseacord@gmail.com>
Cc: "sc22wg14@open-std. org" <sc22wg14@open-std.org>, 
	Florian Weimer <fweimer@redhat.com>, Carlos O'Donell <carlos@redhat.com>, 
	Aaron Ballman <aaron@aaronballman.com>, libc-alpha@sourceware.org, musl@lists.openwall.com, 
	linux-man@vger.kernel.org
Subject: Re: n3752, alx-0029r8 - Restore the traditional realloc(3)
 specification
Message-ID: <aV2SUysaLtL2MJWf@devuan>
References: <20251223161139.196AB356CF9@www.open-std.org>
 <20251223164349.F0BC5356D1A@www.open-std.org>
 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
MIME-Version: 1.0
In-Reply-To: <20260106214930.A5C8E356D2B@www.open-std.org>

Hi Robert,

On Tue, Jan 06, 2026 at 04:49:18PM -0500, Robert Seacord wrote:
> It's sort of unusual for the committee to pass some sort of statement
> saying we won't change the behavior of something.  Besides your paper,  I
> don't know of any proposals that would affect realloc. Maybe we should he=
ar
> from the UB Study Group as maybe they have some idea to eliminate this UB.

Here are my plans for the next meeting:

A)  Vote the proposal in its entirety.  Ideally, this would pass, which
    would align us with POSIX.

B)  If that doesn't pass, vote the first step (see 'Design decisions'),
    which would be to make realloc(p,s) consistent with free(p) and
    malloc(s), including when p=3D=3DNULL, and including when size=3D=3D0. =
 This
    would be a narrower change that would only affect MS and glibc (and
    compatible implementations).

C)  If that doesn't pass, vote a statement that the committee agrees
    to not remove the UB unless it's for aligning with the traditional
    BSD behavior.

>=20
> I think my preference (and I think the consensus of WG14 in Brno) is to
> provide a replacement function with well-defined behavior and deprecate t=
he
> existing function.

Again, this is dead on arrival.

-  The BSDs and musl have a perfect realloc(3), and they won't change
   it.  Programs work well with their realloc(3), so what incentive
   would they have to change the world?

-  POSIX has also already agreed to fix realloc(3), so the above extends
   to all POSIX systems: once realloc(3) is fixed in their systems, what
   would be the incentive to use a new realloc variant that works in the
   same exact way?

Also, the consensus reached in Brno is flawed, as several members told
me they'd change their vote just a few hours later.  They admitted not
having read the proposal prior to the vote, and that after when they
understood the proposal, they agreed with it.

Plus, it was just a non-binding direction poll, so the interpretation is
up to me, and I consider the direction is now to insist, per the quick
change of mind of several committee members, and the recent POSIX
agreement.


Have a lovely night!
Alex

>=20
> Thanks,
> rCs
>=20
> On Tue, Jan 6, 2026, 4:05=E2=80=AFPM Alejandro Colomar <une+c@alejandro-c=
olomar.es>
> wrote:
>=20
> > Hi Robert,
> >
> > On Tue, Jan 06, 2026 at 03:12:36PM -0500, Robert Seacord wrote:
> > > I'm still waiting to hear from GCC that they plan to change the behav=
ior
> > of
> > > realloc and break their existing code.
> >
> > realloc(3) is part of glibc, not GCC.
> >
> > From glibc, I can quote Florian Weimer:
> >
> > <
> > https://inbox.sourceware.org/libc-alpha/8734kl1pim.fsf@oldenburg.str.re=
dhat.com/
> > >
> >
> > | I'm open to looking at this again once the C standard fully specifies
> > | the behavior of zero-sized objects, the return value of malloc (0), a=
nd
> > | so on.  Getting aligned behavior between implementations on these
> > | fundamental interfaces seems quite valuable to programmers.  But
> > | addressing one zero-object-size case and leaving all the others as
> > | unclear as before doesn't seem to be useful, especially given that a
> > | ffuture standard may require different behavior anyway.  A
> > | piece-by-piece transition to the newly required behaviors is also more
> > | onerous on programmers than one well-defined transition in a single
> > | glibc release.
> >
> > He's CCd, in case he wants to comment further.
> >
> > >  If GCC plans to do this, it could
> > > well change my vote.
> > > Better still, they should just change it now.
> >
> > I agree with you.  But they are worried that the committee might later
> > "require different behavior anyway".  That's why a statement from the
> > committee saying "we agree to not change this UB to something different
> > than the traditional behavior" would be useful.
> >
> > >  It's currently UB so they
> > > can make your proposed changes without breaking compatibility with the
> > > standard.
> >
> > They worry about compatibility to future standards, which is reasonable
> > given how volatile the C Committee has been historically regarding these
> > APIs.
> >
> > > FWIW, the reason we got here is because we didn't want to force compi=
lers
> > > to break their existing code to remain compliant.
> > >
> > > Thanks,
> > > rCs
> >
> > Have a lovely night!
> > Alex
> >
> > --
> > <https://www.alejandro-colomar.es>
> >

--=20
<https://www.alejandro-colomar.es>

--2btwyrizvzlcamet
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldle8ACgkQ64mZXMKQ
wqnTNQ/7BrGS+BXz6bz0LMdSpE0sfyolbGcNKFq8N9u3qIjJLPIS6HGXmIYum2nC
bhKIuwjqQ1Lc4wKNoNDdzRPVgMYfsAxQ+qrngIbKbk1bAcgh0PFHdJ91k+qof9V+
9ixuhywqGPaiXJwbDmBKD3v8N4kAX87R3p5DFvNH2COWQ0maAMLXxJx13MEEJeoE
h08Qk+WYx1MralN4ANQmnepR/ILZg+5gYFFS9ZTfX5/a2Nv71Rf9QeyAVwkMk+IF
t4sbVoRqxuoCvIDIkwG15wycLkFwCG3fgEgLJTjChYQh+HTb9pBv5aLo3Vj9QlEU
PWt0PEOifAhXVr1ZGl3yGIaSc8TMHGpE3NTjnO7zgk0qJLdn2ZypcJNTkvFAaOXN
4CIU2QjjLQezVO0HauLN0bSd+QPDFXAVYJMBxPUhxCjL3Uv3vIrPJZgkAsb/zwaI
l2kd8jbfa3/peFatN2SmPzA7DLptQCvIRuOzU2tpLRjOhYEJGT2HjrzXk+06Dqfz
vlPr6Vp+DFYT5LXvF24h8+fTrJ1HERHSJzfs7b4GAujQ9kTl0B7xghD6GEj1Q9Eu
jwGSgz/p264L44r5NVasHyeFQlVwwfDALEworWUWaFR1fF9G63tDyGSkgoRr90F+
kloMKSy7UQyILqbvsY9ayPmTWO5d3pd1mm7Xk82LBAMYFMuykhs=
=czlI
-----END PGP SIGNATURE-----

--2btwyrizvzlcamet--

