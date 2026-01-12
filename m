Return-Path: <linux-man+bounces-4792-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 801E0D13368
	for <lists+linux-man@lfdr.de>; Mon, 12 Jan 2026 15:39:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC29730BFB8D
	for <lists+linux-man@lfdr.de>; Mon, 12 Jan 2026 14:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F01D2E0904;
	Mon, 12 Jan 2026 14:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n21TJItv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020782561AA
	for <linux-man@vger.kernel.org>; Mon, 12 Jan 2026 14:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768228087; cv=none; b=LWN6AQXTGeWJDWcbni4kYiErp/V65hNQRTYTylMyfrov7XFa+/+bVUJiANu9zwYLFe4syocWkZUaPt/LAOJym9V4QzYWtQlfy5hh7Nl6IKRcTXCvzdoTV0PVgq9dHEuOl8IW/uwo4wJkV+5TS8DBL8wWFkHKidH+jxfsSUTnzO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768228087; c=relaxed/simple;
	bh=4SSoriwt6VBwL3Df6u2xDrux9TXlry+j7wrB71m0oz8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZYqJw4uMMGwyxzs7dm/HYLDRKhy2p/Sl/4yHXUUx85nt86s5dNCOe0gzE2THx0tfFpcmtwOqkREEDRoOYFkbWG24pZOiGO4wbdTlXJYyA1HXKeKF/jb9yeuYHfuQ7ypC69HjBuXsLAFKieZ2iXyRipdggXsYR4J0nzfj5AoGHI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n21TJItv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0AB4C16AAE;
	Mon, 12 Jan 2026 14:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768228086;
	bh=4SSoriwt6VBwL3Df6u2xDrux9TXlry+j7wrB71m0oz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n21TJItv1/vXCsN2ISy2FTe7W1q0crRUmmOHk/c900nNR9CS7pwdEVllOHvg5LZAF
	 ZwT4wXgCb0QfUssGUtRVBJT3qvdfvzjNwcpT1Vp3HjDHQvNl8151Z5PxGeNoeBaLLq
	 zTv4IpzzOW7kqR+khZS7Mt5Z8xmT/ZhpQNxv/OwffRLVigJCkfS9UI1xQkKn5YkyZq
	 LmoEC+0sh4qoxHle4aQigEBAzn0tmQwlZ2AnuVp26ulzImVVvKUK/2HJsHBtCvb2P6
	 8fqFTrgK5tNcGNAt0h+jH0TZrmdJmThfZKTV5f0dQtX9SMPUutZ2fsqQnD5lBau3fH
	 lJ0XN+L4NsrEA==
Date: Mon, 12 Jan 2026 15:28:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Adam Sampson <ats@offog.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 19/25] man/man3type/void.3type: HISTORY: Update first
 POSIX appearance of void(3type)
Message-ID: <aWUAXoVyRpanc-sF@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
 <aWDZFvDvb-hAXQMJ@devuan>
 <y2abjj1cd4x.fsf@offog.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m24imj2vgsy4rrnf"
Content-Disposition: inline
In-Reply-To: <y2abjj1cd4x.fsf@offog.org>


--m24imj2vgsy4rrnf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Adam Sampson <ats@offog.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 19/25] man/man3type/void.3type: HISTORY: Update first
 POSIX appearance of void(3type)
Message-ID: <aWUAXoVyRpanc-sF@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
 <aWDZFvDvb-hAXQMJ@devuan>
 <y2abjj1cd4x.fsf@offog.org>
MIME-Version: 1.0
In-Reply-To: <y2abjj1cd4x.fsf@offog.org>

Hi Adam,

On Sat, Jan 10, 2026 at 10:32:30PM +0000, Adam Sampson wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > I think 'void*' is important enough that it would be useful to dig in
> > its history further.  Was it an invention of C89?  Or was it an
> > extension in some existing compilers?  If the latter, it would be
> > interesting to document which systems had it before C89.
>=20
> From evidence in the utzoo Usenet archive, the idea was around before
> the ANSI C effort.
>=20
> The first mention of "void *" is in November 1982, where Ken Dalka
> (ihuxe!dalka) observed in net.lang.c that void * was accepted as a type.
> He didn't say which compiler was being used, but an earlier post said
> ihuxe "runs USG 4.0 UN*X".

Huh, would this be the "System IV" that was never externally released?
The year seems consistent with that.  Interesting!  According to
<https://www.tuhs.org/Archive/Documentation/Manuals/Unix_4.0/README>,
the official name of this would be PWB 4.0. or Unix/TS 4.0.

Should we document it as Unix/TS 4.0?

This predates the C Committee by one year, BTW.

It would also be useful to know when the BSD lineage incorporated void*.

> The next is from Mary Ann Horton (mark@cbosgd.UUCP) in January 1984,
> also in net.lang.c, who suggests using "(void *) 0" as a definition of
> NULL, giving a varargs function with args terminated by NULL as an
> example.
>=20
> Then in March 1984, Doug Gwyn (gwyn@Brl-Vld.ARPA) says, as part of a
> discussion about casting the result of malloc in net.unix-wizards:
>=20
> > The C Language Standards Committee was talking about adding
> > (void *) to the language as a generic pointer type.  Perhaps
> > that will eventually help...
>
> It then shows up in various posts in both of those groups throughout
> 1984, including a summary by Henry Spencer in June 1984 of Larry
> Rosler's presentation on the ANSI C project at Usenix saying:
>=20
> > II.  "void *" is a new kind of pointer, which cannot be dereferenced but
> > 	can be assigned to any other type of pointer without a cast.  The
> > 	idea here is that "char *" is no longer required to be the
> > 	"universal" pointer type which can point to anything.  So for
> >	example, the declaration of fread earlier really should go:
> >
> >		extern int fread(void *, int, int, FILE *);
> >
> >	(People who have machines where all pointers have the same
> >	representation, don't complain.  You are lucky.  Others aren't.)
>=20
> Thanks,

Thanks a lot!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--m24imj2vgsy4rrnf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmllBO0ACgkQ64mZXMKQ
wqnXVg/9Er05bE2SAv5BRxx73SS3qOqbkjPVIV1/nYPmF+pwzS0Q+Mr0w0KIVoE2
XRynWDyfjzNLep/7++f56qtyjtvbFj27qaLPQCPycMiTPk+k2dTRC27eCspR4M4e
CN5HfTp8trphkWalC6FXk7O20qja1sXt9pbh8w9pM8/LOwr3mht5KfWNTFqXtLfP
rTsErwIFKNZaogSSzAbSfLBD0LuEuzxIMpomJq36yCzu/ByAtMJ79mfrZfmVNvxU
BjEFZPQu7LJrHOl8lOiYxO1Jmn132h1qBUiRzJn30gW8w6mW45+zLjERKvbIr8R5
oSCjBm9dtX/TzgQ/1fVuOP1Pdhn+rC3KbQWK2NxU1mSd+y/F/sA7k/pSUK0KDhmW
t0g3Cf5+0rvrrn2mnfO+niETjsFa6zQuJ/TbXw26nsNNFYC7kVxt8UbhIZ0ixtRW
sv9FBHoWqqcYLp5pLF0/S52+G8dGzCAHY6C6oBeP3mqQusYak33U1UbOyAS8ZVU2
JwU+pA5P+AXL1SaZnchIvIhSuNxTEKRFzrKWF/y4o4ljZng5J5Qoz+hTbP8qqnFb
3kUwn2Wixr9l8m+dzZrNAfEKBUkcmUqFQl3+PGFz+0xIeG99ofeCV4TbBQBwlLE/
Ng2a81nOZ7sKwEPU9U6K3B29SEn3y5E0c+eWippjLsjYGLKr7bk=
=WVhF
-----END PGP SIGNATURE-----

--m24imj2vgsy4rrnf--

