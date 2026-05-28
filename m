Return-Path: <linux-man+bounces-5620-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBMkJD5SGGqwiwgAu9opvQ
	(envelope-from <linux-man+bounces-5620-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 16:33:34 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0000C5F3BD0
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 16:33:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1F2FF309D38E
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 14:25:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C9113BB680;
	Thu, 28 May 2026 14:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzIhiha7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC1B3CE4AD
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 14:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779978344; cv=none; b=O3RVcgFcNvwxIUY9QX/WUY0GsQHO30rgQ1OIsBogumUL0XwF8uA77aShKb6ZDTwtAyBzqSBEA7sJ2HZOWbbld2zMzXOeZ9zO0Xd1tvUxSuY6/6W5BKver5IliwmDqG6c/aDqjg1Iv7/73An+iSIzL+c3Gy3nXPCkoaryq/a6xTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779978344; c=relaxed/simple;
	bh=drJrb9ttcTNduVt3RxqO7WFMoiLp24casvj7KQUMg7A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qHOQSmvsuVvhpkzqh95bBSCaMP66ZQFxPlkMq4v+Nw3k5LLPn0eicgmSapoGYSdoS9251OtTnrnhacks29Hz5C/iht3yNYk7eK4kjG0Q1O9GrGyCzWzYQa78R6vRGZ/rBDfvzUsLrKMHXEDTJbY3sBjV3ZAf1cHnPlYzG7W+GK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzIhiha7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52C231F000E9;
	Thu, 28 May 2026 14:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779978343;
	bh=f+dSSTH6iIi2fcqLxMW3MI4U+Z3NdvEdoTEk2VRjcWk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UzIhiha7eA/3OkxzkIL+PikfS3Dcar33U6LicsHQY6R/z9E6J/E17SFoBha6UXNZ1
	 edHzTHr5QztCZccVqR3/8c8Mwfi1gxLph1tWusdew9M/2cBUHjdEsp+0TEW/f1Pfmq
	 Vbm6VsGua28n40LlMq5fTeWx/Iz0dAlKVTa0qC5lyxCbeVK7LR+fSJe03S9MzDDYF9
	 Ee3xOA57kgj2n0n9RMVZ4Syo/4U9w770fg5Ns0W6NoiDFBE6wyBTl4odmkiqkCnrGi
	 6B25v1BrgvmV0o2I1KKfKutBpkfBaxIp5iVK0qLOfcF7E4iC91N703KeT0bWBIfeLx
	 BgVnVGwmBFOzA==
Date: Thu, 28 May 2026 16:25:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Michael Kerrisk (man7.org)" <mtk@man7.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Mangled function prototypes (phantom arguments)
Message-ID: <ahhJNnIgFN0YMANw@devuan>
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan>
 <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
 <ahcvtYzeadqmhk62@devuan>
 <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q3fdfytiu2kgvg7y"
Content-Disposition: inline
In-Reply-To: <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-5620-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 0000C5F3BD0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--q3fdfytiu2kgvg7y
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Michael Kerrisk (man7.org)" <mtk@man7.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Mangled function prototypes (phantom arguments)
Message-ID: <ahhJNnIgFN0YMANw@devuan>
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan>
 <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
 <ahcvtYzeadqmhk62@devuan>
 <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>

Hi Michael,

On 2026-05-28T15:06:10+0200, Michael Kerrisk (man7.org) wrote:
> > > > > The problems have all resulted in prototypes adding a phantom fir=
st
> > > > > argument. See for example this prototype from read.2:
> > > > >
> > > > >        ssize_t read(size_t count;
> > > > >                     int fd, void buf[count], size_t count);
> > > >
> > > > This is valid C (except for the array of void, but that's a separate
> > > > topic).
> > >
> > > As we see, I'm not keeping up with my C :-).
> >
> > To be fair, this is a very little-known feature (even though it's a very
> > old one).  I (and a few others) are trying to make it more well known,
> > as it's quite interesting.
>=20
> I don't think the Linux system call and C library manual pages are a
> good place to promote this obscure GNU feature. It is confusing
> people, including me. (I came to making this report because several
> people have reported this "bug" on various pages rendered at
> man7.org.)

I understand the initial confusion, but I believe once an initial period
is overcome, the extra information will be very helpful to the reader.

> Please consider reverting these changes.

I've been thinking about this topic for some time already, and I will
keep these changes.

> These markings use
> little-understood, nonportable syntax.

While they're little understood, and certainly not portable, they're
also easy to learn.

On the other hand, manual pages have --for a long time-- lacked a lot
of information about parameters that could be expressed in the synopses
easily.  This includes nullability of arguments, lenghts of arrays, and
overlapping of pointers.  Those are now documented with Clang's
_Nullable, GNU forward declarations of function parameters, and
'restrict'.  Of those, only 'restrict' is portable.

Having to document that information in the description would be (was)
counter-productive, as the information is difficult to find,
inconsistent across pages, and adds to the wall of text.  Having that
information in a consistent and concise way specified in the synopsis
allows reducing the wall of text, and is significantly less ambiguous.

This change has significantly improved my own reading of manual pages,
where I can now reasonably understand most APIs by just looking at the
synopsis.  I've also --like you-- received many reports of people
surprised by this syntax, but most of them seem to be okay with it once
I explain it to them and point them to GCC's documentation of the
feature.  And then there are several other users that have reported very
positive feedback regarding the array and nullability annotations in the
synopses, claiming that they're now much more informative, and thanking
me for the change.

I think it's overall a positive change.

> The manual page synopses should
> be in standard, portable C that is *easy* to understand.

This has never been fully true; we've always had exceptions to the rule.
We have counter-examples:

-  The old version of open(2) had two prototypes, which is not valid C
   (it's valid C++, though):

	int open(const char *pathname, int flags);
	int open(const char *pathname, int flags, mode_t mode);

   We agreed to change it to the real prototype some years ago:

	int open(const char *path, int flags, ...
	         /* mode_t mode */ );

   BTW, I'll soon have to start using this C++ notation for string
   functions, since ISO C23 has changed the API of things like
   strchr(3), to preserve the const qualifier in the return value.  This
   has been implemented in glibc 2.43.  Now, strchr(3) is specified (and
   implemented) as if:

	char *strchr(char *s, int c);
	const char *strchr(const char *s, int c);

   The actual ISO C specification uses 'QChar' to make it more compact:

	QChar *strchr(QChar *s, int c);

   However, 'QChar' is less known by the general public, so C++ syntax
   seems better for manual pages.  That is, we'll recover this
   exception that was once used in open(2).

   This is a breaking change that some users have noticed and reported.

-  We have pages where we mix constants with the prototype.  There are
   old examples of this, although the most common is the system calls
   that don't have a wrapper.

	int syscall(SYS_membarrier, int cmd, unsigned int flags, int cpu_id);

-  The assert(3) macro was specified as taking a scalar (which is not
   a type):

	void assert(scalar expression);

   I've changed it to take a C99 'bool', which has the same effect.

	void assert(bool expression);


About being easy to understand, I believe you'll understand it forever
since now, since it's not inherently complex.  I hope the same is true
of other readers.


>=20
> Thanks,
>=20
> Michael

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--q3fdfytiu2kgvg7y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoYUF4ACgkQ64mZXMKQ
wqlulA//Uxg7/dW24ag3G+n3j5Zk/iDz4xL5oGO1B+B6PdSCZttDFCR5Ap/4u66t
JnHg8YyiywUmRXoypCEw2YCEHB1QF34Z+Y2/ISNaqnB+2zhzOugSyonlyXt1i0Bm
EK7aPT+0bUMUJdEA2yDSEsXru9PXSL4YW6syewViisON7jgFgv6i+N10G1qKWTBU
jgAn5WjyDXoYaSkwtAyfYEPdBkYEK83NrpbKU4TfA15g4OjJe8TjX+kjQXuJ1TlT
isXAkMtBEMWOUf0W3eust+daV69JsE4o65OSRLoOHGBKvl5JggmgrlgI+N1U9lVR
arhPylGGlIs2BtJirUEBPDx7OQt1Lie91r+gzIdmSU9zDqNGUkVHX8bRj7Ey3J9n
Po0gqT/OWwlX2kMHAfuS2hcHh+g8Q+LbJyzNEutfOB9aipnneKGaSrU/MJy07qNp
uKfAmOXYbfJvtj9nZ1Ww9e340LIb59yJDU7okBe0mbdQqnRkJOUXXBtysyWxHcfi
psHmAOU4OhzmNp2chbNOOgQcnWPO1hP/ZhejY1Irnw/3htEk64Ryyne9XZchLFHO
nMfyenqHHRcqogvP0M00YG+cFnJ3OUXFpZmn9+WJR48AVe2JI4Z3EO5wKDUGiK/n
S6/5YLRddG/THvPVsT+QY8pj5yKwEe7HxncC5O4k9Ve3q7AcTIQ=
=fQr3
-----END PGP SIGNATURE-----

--q3fdfytiu2kgvg7y--

