Return-Path: <linux-man+bounces-5608-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBl0NIf3FmrUywcAu9opvQ
	(envelope-from <linux-man+bounces-5608-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 15:54:15 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DFA5E55EE
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 15:54:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6908F30158B6
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 13:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1923C5DBA;
	Wed, 27 May 2026 13:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3gy7o+x"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BCC39903B
	for <linux-man@vger.kernel.org>; Wed, 27 May 2026 13:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779889626; cv=none; b=BJ5rqRG3IOmTCXB+XPeqwQSQBSMXQ8Uk1JUX/srqlQnJj2Ka2zNX4A1hIp/Agty4q0Nigruca5wygi5EAwTjMxMhwTFCdHjEyyX+8i3o1MB9kuGHZRmQKerqb4QNAmi7jlJar+JeAhjpNw6NwbGv1r47+9/urPaQsTXhdkN6rZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779889626; c=relaxed/simple;
	bh=WQhjxwk76kBOsxgRSso1KDBPrH4p5KXAwK5rHLpN+Lo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AHqHXdgfjjQ24A/WmX9JtoyzsBC4sg+86Cu07pV0/NVwrE6GOpEUfm4h0bE6HmiDOZxIYh6Vxda/BuE/fKJmtTXjZB7JKvB2DkG9byTF+ppp53JSMI1f4qijaIDVR7G9Djb2y/Z6wDQMbIKR45++8olhQAV3T2XqdqfUkhsLE1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3gy7o+x; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C39E1F000E9;
	Wed, 27 May 2026 13:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779889624;
	bh=BUZeVWBwWyLYy1/3TGyJ81GVxLOB2fyj49SCZuwwDL0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=I3gy7o+xJowLTwhQs6QpFFICUni8s6iPx1EFJYt38TKZbvUWof5t37i+J37bLYDf5
	 LEMTpJ5yDUyUuG7ayYmbFgIXwrqwKKHoOfvYvoncKdGClRDfYH3xbkTtVtQ4qNiAyf
	 Ei1oe/flo7LbRMzK7gChnllUznvRVPg72rx6aYBTa7pXkPU+l3vu8LvUI794eh847g
	 71oavnkU9sPHpxXqyTPhVIqKRcIO3gUkD2lF5kR4elTLs1G4sSfbUDT82b400kMU+T
	 dpxF9fgQWPex0Mxx/YshtPCn5I9fY/3JmvF2HhVWBL7X7Y8jRj5j7tDOf0Uwai6Qh8
	 BG6vUoyFZEonQ==
Date: Wed, 27 May 2026 15:47:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Michael Kerrisk (man7.org)" <mtk@man7.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Mangled function prototypes (phantom arguments)
Message-ID: <ahbxJGIK8Qf4AqVl@devuan>
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nvn5bankrxw4bptj"
Content-Disposition: inline
In-Reply-To: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5608-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gnu.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devuan:email]
X-Rspamd-Queue-Id: 41DFA5E55EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--nvn5bankrxw4bptj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Michael Kerrisk (man7.org)" <mtk@man7.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Mangled function prototypes (phantom arguments)
Message-ID: <ahbxJGIK8Qf4AqVl@devuan>
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>

Hi Michael,

On 2026-05-27T14:14:39+0200, Michael Kerrisk (man7.org) wrote:
> Hello Alex,
>=20
> It looks like some scripted changes have mangled the call signatures
> in multiple SYSNOPIS sections in section 2. (In some cases, multiple
> call signatures in the same SYNOPSIS have the problem.)

It wasn't scripted changes; they were hand-written.  Here are the
relevant commits:

	d2c2db8830f8 (2025-03-14; "man/: SYNOPSIS: Use GNU forward-declarations of=
 parameters for sizes of array parameters")
	24b307093047 (2025-03-20; "man/man2/get_mempolicy.2: SYNOPSIS: Use GNU fwd=
 declaration of parameters for sizes of array parameters")
	8eea66b827a1 (2025-06-28; "man/: SYNOPSIS: Don't highlight forward declara=
tions of function parameters")
	3d066f79ac04 (2025-08-20; "man/man2/: SYNOPSIS: Use GNU forward-declaratio=
ns of parameters for sizes of array parameters")
	f376c5ad0fa9 (2025-10-29; "bin/grepc: -tfp, -tfd: Add support for forward-=
declarations of parameters")

> The problems have all resulted in prototypes adding a phantom first
> argument. See for example this prototype from read.2:
>=20
>        ssize_t read(size_t count;
>                     int fd, void buf[count], size_t count);

This is valid C (except for the array of void, but that's a separate
topic).

Here's for example the prototype shown in the SYNOPSIS of confstr(3):

     size_t confstr(size_t size;
                    int name, char buf[size], size_t size);

I've chosen this one because it doesn't use void.  If you try compiling
it, it will work:

	alx@devuan:~/tmp$ cat test.c=20
	typedef long  size_t;

	size_t
	confstr(size_t size;
		int name, char buf[size], size_t size);
	alx@devuan:~/tmp$ gcc -Wall -Wextra -S test.c=20
	alx@devuan:~/tmp$=20

And it does the right thing.  The function has 3 parameters.
It's documented in GCC's documentation here:

<https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html>

It's a forward declaration of function parameters.  It allows using
parameters that come later, to be used in array length expressions.  See
at the bottom of the link above.  I'll paste the GCC documentation here
for completeness, anyway:

	If you want to pass the array first and the length afterward,
	you can use a forward declaration in the parameter list=E2=80=94another
	GNU extension.

		struct entry
		tester (int len; char data[len][len], int len)
		{
		  /* =E2=80=A6 */
		}

	The =E2=80=98int len=E2=80=99 before the semicolon is a parameter forward
	declaration, and it serves the purpose of making the name len
	known when the declaration of data is parsed.

	Lists of parameter forward declarations are terminated by
	semicolons, and parameter forward declarations are separated
	within such lists by commas, just like in the regular list of
	parameter declarations.

	You can write any number of lists of parameter forward
	declaration, but using more than one is unnecessary.  The last
	semicolon is followed by the list of parameter declarations.
	Each parameter forward declaration must match a parameter
	declaration in parameter name and data type.  ISO C99 does not
	support parameter forward declarations.=20

> As far as I can see, at least the following pages are affected:

All functions that have an array parameter whose length is specified by
a parameter that goes after the array parameter are affected (unless I
missed some accidentally).  This is intentional.

>=20
> add_key
[...]
> write
>=20
> I did a quick scripted check of section 3 pages, but spotted no problems =
there.

There are quite some, actually.  In fact, more than in man2.

	$ find man2/ -type f \
		| xargs mansectf SYNOPSIS \
		| grep '^[^(]*([^)]*;' \
		| sed 's/(.*//' \
		| sed 's/.* //' \
		| tr -d '*' \
		| wc -l;
	65
	$ find man3/ -type f \
		| xargs mansectf SYNOPSIS \
		| grep '^[^(]*([^)]*;' \
		| sed 's/(.*//' \
		| sed 's/.* //' \
		| tr -d '*' \
		| wc -l;
	156

>=20
> Thanks,
>=20
> Michael

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--nvn5bankrxw4bptj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoW9c8ACgkQ64mZXMKQ
wql/OA//dJWLFusVTfe+Z3GjUaZhjL6RXiMhojC3cLXw+K7Cvxx8nSqNeIPUHOab
yrrY67zp3dHJy9YcyGJrd8etY/ZJ0XkdnBQv0i423fw/969/RzitTLAvB3pqI9ZB
jD86pbWvBq10Ztk1Cxd8XMHw8jr3C/6EVG4FPB1SlRi4Pu1/xXFovufsfFmJtzHe
G29SPWjfUWZKakyUE1ugZnQkoOg4qxKunzM21lSPNSXb0UoF53LJAsQGAG2UJBb8
x8MjyTn+rX1ns0bXFqdhYyrdflvhjiN+Et+57nAsMiw9P5B1Uy9wghs/b+Zv7upU
z0GAPQQkJ78WhV8L71wOA1/8LMpuH0x+Qj+bgNWHA+jfHSepO33/Q5MpbC+VJVjC
4Np0QL3BZCn8ZX38B6Qx7UrSLoZ2JZeBejGyyNg2bQm1aYn/VkUjVy/bHK+QK0Gq
xEH0QhHD2pOdux6OCxZGTyQIu1EQt+YBP2GVnNx4TqRKrxxcRxPuGgiVPDSfpWxC
S2iimyu6VX1BraJaFINEbaE4PjkHTq37hV+/niGzoUipI3DwVIjc7XDKNaDoJzQC
VARSwG0B/O3UXpNHiczdhedo7snuGPtv9YbBf9GC0hECzykFpblhvAwcMBURPP5N
6o3yJE9UwrYdX3MjQw743X5wB5bDzO55N2xNnW9+LznLQZQR298=
=VFmQ
-----END PGP SIGNATURE-----

--nvn5bankrxw4bptj--

