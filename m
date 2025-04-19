Return-Path: <linux-man+bounces-2783-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE3AA9456E
	for <lists+linux-man@lfdr.de>; Sat, 19 Apr 2025 22:45:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0577C3BBAC1
	for <lists+linux-man@lfdr.de>; Sat, 19 Apr 2025 20:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 343F91DE8BF;
	Sat, 19 Apr 2025 20:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3aCaYPr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E59194A45
	for <linux-man@vger.kernel.org>; Sat, 19 Apr 2025 20:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745095540; cv=none; b=Z5HrdN0OfHnHHd2WzY8v+7eJxlCwFOi3GWSRvKCIPdo5JmfVMn0OT4Cz+PhQdxAxzaC4Mi3wTOWPJ3R6e7wcRVLGk0irNwyqHEfGTSJrdLHDsPQcTKpYvXmfgWpZEoJXtAI9JCqn41i06DwE9YLiKrafpmzrSHvYLqtrtYmsvic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745095540; c=relaxed/simple;
	bh=/rqvXLn3C80QpHxSXOOiA67J9TuMZTTdunMClRxysRk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DNgaxXHCh/xjobnsrLynDGOsKeUSrK1tNCOzMHDBxe5JnGAo4bim345Li29m3CINApXz2N6mxskZVfXv3EIx4gJwtbYcA3CZHKr9FlYmWf67dW917VqxJcj780kYkSR/i8D9eiapsbg5vFQnxc/xczY4PjZErI+jprLICtY7Erg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3aCaYPr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80648C4CEE7;
	Sat, 19 Apr 2025 20:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745095539;
	bh=/rqvXLn3C80QpHxSXOOiA67J9TuMZTTdunMClRxysRk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K3aCaYPrYPJT7eL5rnoWbLebmP68AlKlU8cWkAzUcXK+6hjzmz2OYJxHT1bpR9Kr9
	 eRLvymdq62ixlYm10KF+c2HJViQ7OSCFHeE7elVZreBT+sVdYhieUafI17gd6/WkoB
	 2jvFntDD9SPU+twe5Ra7qUyOuPqyrQuHoliatvvsIQC6R1bWnWjycdg40GkrNDe4gG
	 QGgIZojksrw+koBJjNtLGuUU23ZNqfQyw4b8BH1V1y3kbKHMqGUb4O7S9G5PAh7WPA
	 1PvaZ3LiYc83eIYEGXL/dmf9+bf51+a5AHPZ8W5Osuu6olTSFwpZDBOKgls6LGBdtQ
	 JAX5p+10fQiQQ==
Date: Sat, 19 Apr 2025 22:45:34 +0200
From: Alejandro Colomar <alx@kernel.org>
To: hoodit dev <devhoodit@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: Cc: clone(2) man page CLONE_NEWPID and CLONE_PARENT can be
 specified at the same time, also CLONE_NEWUSER and CLONE_PARENT
Message-ID: <ffkhjv32cz6ci5f7nzvk76awb4p4ilyrhqm2fkdgfzhic3gddv@sjizvp6gqfh4>
References: <CAFvyz31Em4f7AQRDNJ6gtVBoUj1kQA8WZCGcs0EZngCZosf_0w@mail.gmail.com>
 <06febfb3-e2e2-4363-bc34-83a07692144f@redhat.com>
 <CAFvyz32q1Uc4t5RjWWOMf3NiNWsyYjXeZ6xqdd8Tj8P-z6XBzQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jngtdugxzs6rvmq6"
Content-Disposition: inline
In-Reply-To: <CAFvyz32q1Uc4t5RjWWOMf3NiNWsyYjXeZ6xqdd8Tj8P-z6XBzQ@mail.gmail.com>


--jngtdugxzs6rvmq6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: hoodit dev <devhoodit@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: Cc: clone(2) man page CLONE_NEWPID and CLONE_PARENT can be
 specified at the same time, also CLONE_NEWUSER and CLONE_PARENT
References: <CAFvyz31Em4f7AQRDNJ6gtVBoUj1kQA8WZCGcs0EZngCZosf_0w@mail.gmail.com>
 <06febfb3-e2e2-4363-bc34-83a07692144f@redhat.com>
 <CAFvyz32q1Uc4t5RjWWOMf3NiNWsyYjXeZ6xqdd8Tj8P-z6XBzQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFvyz32q1Uc4t5RjWWOMf3NiNWsyYjXeZ6xqdd8Tj8P-z6XBzQ@mail.gmail.com>

Hi Hoodit, Carlos,

On Sun, Apr 20, 2025 at 04:54:20AM +0900, hoodit dev wrote:
> I missed cc=E2=80=99ing earlier. Here=E2=80=99s a summary of what=E2=80=
=99s been discussed.

Thanks!

[...]

> --------
>=20
> From: hoodit dev
> To: Carlos O'Donell
>=20
> Thank you for your precise content arrangement.
>=20
> As far as I checked, it has nothing to do with the flag part in the
> code, but it is not accurate. Therefore, I think this part needs to be
> checked.
>=20
> > To discover those we would need to ask upstream and gather broader
> > consensus.
>=20
> How should I handle this?

If you (Hoodit and Carlos) have agreed to at least part of a
documentation change, you can send a patch, CCing me, the list, and
Carlos.

For the part that you need more consensus, I guess you'd need to find
out who the maintainers of the kernel system call are, and CC them.

The clone(2) system call is defined here:

	alx@debian:~/src/linux/linux/master$ find -type f \
		| grep '\.c$' \
		| xargs grepc -l -tfld clone;
	./kernel/fork.c

And while that doesn't seem to appear in the MAINTAINERS file, from the
git-log(1), I think you want to talk to at least Andrew Morton and the
<linux-kernel@vger.kernel.org> mailing list.

alx@debian:~/src/linux/linux/master$ git log --pretty=3Dfuller -- kernel/fo=
rk.c \
	| grep -e Commit: -e Signed-off-by: \
	| head -n100 \
	| sort \
	| uniq -c \
	| sort \
	| tac \
	| head -n10;
     13 Commit:     Linus Torvalds <torvalds@linux-foundation.org>
     12 Commit:     Andrew Morton <akpm@linux-foundation.org>
     12     Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
     10 Commit:     Christian Brauner <brauner@kernel.org>
     10     Signed-off-by: Christian Brauner <brauner@kernel.org>
      6     Signed-off-by: Oleg Nesterov <oleg@redhat.com>
      2 Commit:     Kent Overstreet <kent.overstreet@linux.dev>
      2     Signed-off-by: Wei Yang <richard.weiyang@gmail.com>
      2     Signed-off-by: Kent Overstreet <kent.overstreet@linux.dev>
      2     Signed-off-by: Heiko Carstens <hca@linux.ibm.com>

Since this is about APIs, also CC <linux-api@vger.kernel.org>.  Of
course, please keep Carlos, me, and <linux-man@vger.kernel.org> in CC
too.

> Also, I wasn't referring to these email replies in Alejandro Colomar
> and linux-man@vger.kernel.org , how can I solve this?

Carlos (or Hoodit), if you are comfortable with mutt(1)/neomutt(1), you
could do the following:

	-  Edit your local copy of the email to add the linux-man@ list
	   in a To: header field.  (Otherwise, the list will ignore the
	   mail received in the following step.)

	-  Bounce the mail to both me and the list.

Or you can just do nothing; we got here a resume of what you talked, so
I guess that's okay.  Just remember to CC the list next time.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--jngtdugxzs6rvmq6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgEC2AACgkQ64mZXMKQ
wqkKNRAAtwH6aION6OpeFnQVDy9HIDabXHbjh1Fk19CfuJS50V0izsHYuyNze9H5
wpRAmTO/mpYlTPbraKbVervoYtr+XieAMLMwsg6IFwXCojvgOuv24O5XL4prhT2e
vAZ7qZUiLd23qLLRk3p5fDyhc0UH4NTvJv24+SA8eEmwJEabKhAb+P8Y1VZ0imf/
s4Z2EQ5mtuKZwfOtNinJ25HhIVYUONsqr+3s4VwLTd+Px1IRyeHtIeAXTqmZMATY
iAixxcZzZHgWP9vru9EAlIHOKM8A2AfxiinJFhv1XUMYy6N0w2QI5xcxr6eCaoSS
AEkr0Iy5OmvOk5M42YRm9GhXFOApaY3DYZSKGdDPeaYdoqeCNseJsZeVzTsIrGFW
1yjNpFQEohjIocMd2m0qPyw3S2w8ZaGGA16iMgJkbwEkX8UCPK1OF8mGE4iYf9R8
0O+8iBUxcAvDfEfE2AwS/JxK7bEMMOrLRJTnfYjCcfUjvsGcY1M5806vkodM/Wx6
YWE48G7ergcp1p52iX6V336roSEQIwgEnWGu3ysd86pfiC+JiJT5C8WKkU9LEHVx
6qTClHY3IEarQioENhINppl2Yx7NX/cCJ88ow32txcl8HeURIrQtd71ZGmfWdggN
TMjkYeu+2EgBf621xpjnHRg9qY2uykSr074va8Dh44lQtxnUIYg=
=XXzP
-----END PGP SIGNATURE-----

--jngtdugxzs6rvmq6--

