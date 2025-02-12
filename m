Return-Path: <linux-man+bounces-2399-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA385A31A33
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 01:09:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8EA0A1883E46
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 00:09:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86A57184F;
	Wed, 12 Feb 2025 00:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHgju3FN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4351FA31
	for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 00:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739318970; cv=none; b=He/IrS8eDsceaOVWhkwuqLOdzaKDldrab2LZC5uoGwG5FWkOsnLBei2DgMkGUuCLKMEafeXixPmzz/FENCe0HzlJmMpjT5/YQ32tx0S8W8QgOqhlf0a00Ltb5aAiH7tPKsM+r7C+xRT70gbK1i20U1EWoPVWEHspeub1gwd4jo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739318970; c=relaxed/simple;
	bh=O9UBMlGRQYXJQKFlPX42Spix5KTHeqNLB0lXTl3HjD0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JyVlhxEEtrbh1xm2u8l0tqI2PjC1GdtB5VM93Hqw8/4/Fklv33MSQoP+RUyLBU3rKJ8fJFd+7QV9boQ7uvgfdvVmvf2Q3I2WV9gS2viTfNMCi9ytuIYz6J3QVpjMPPHWfKE0C9pQtku0pk46GiYi8Ty5WHJbH9r/HaoCXWobKps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHgju3FN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E20FC4CEDD;
	Wed, 12 Feb 2025 00:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739318969;
	bh=O9UBMlGRQYXJQKFlPX42Spix5KTHeqNLB0lXTl3HjD0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lHgju3FNcRL5m7j9y2kwatQ6FXX7ulNtlpzHw02H/caYhTGrPo99FJaVt69kY8fUz
	 EHPLJwI1+Q7I9gsTVkuutfdO5fpfNowZkSRPUZ6iYt8eAS7NquUiLMmJbYzxrHEbb5
	 fO06mp0E29QZxA2nQZhLzc7gJrqSpB6W1rTyid8p5X+dBThsb5/ReqHXD8HfJHVfMT
	 hixNvYhFXQfZKBF9YDfAAcefDx4l8f0sOVLCeLtUhEUu60vRpQktzhpM/H9ESyZ1Ud
	 tbiA8kcpEfa27e7IVfMRffWAsI0OJMBHQzfXC7Dw/783q/iNjxWWwMRv+ejudtUfnh
	 FbbgvUT9G+Qkg==
Date: Wed, 12 Feb 2025 01:10:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Amit Pinhas <amitpinhass@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Wording issue in kill(2) with sig=0
Message-ID: <cgagaczm73j6i2ergudwdigwxdiurrfxesz2b5dmsagata4tgs@7by2urnkzqp7>
References: <CAFOwVBLo+FQDzHagO1OqFoukHTMYHbGzfrvc3gDLRBtbOd8ggg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mi3umhkunjwykmr7"
Content-Disposition: inline
In-Reply-To: <CAFOwVBLo+FQDzHagO1OqFoukHTMYHbGzfrvc3gDLRBtbOd8ggg@mail.gmail.com>


--mi3umhkunjwykmr7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amit Pinhas <amitpinhass@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Wording issue in kill(2) with sig=0
References: <CAFOwVBLo+FQDzHagO1OqFoukHTMYHbGzfrvc3gDLRBtbOd8ggg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFOwVBLo+FQDzHagO1OqFoukHTMYHbGzfrvc3gDLRBtbOd8ggg@mail.gmail.com>

Hello Amit,

Please CC the mailing list.  (I've added it now.)

On Tue, Feb 11, 2025 at 09:43:43PM +0200, Amit Pinhas wrote:
> Hello!
> My name is Amit, and I started getting deep into both linux kernel and us=
er
> space programming in the last few years.
> During my journey, I stumbled upon a small mistake, or rather a misphrasi=
ng
> in `man 2 kill`.
>=20
> At my scenario, I was looking to check an existence of a certain process,
> and so i have seen that kill will check it for me, as mentioned:
> ```
>=20
> If *sig* is 0, then no signal is sent, but existence and permission
> checks are still performed; this can be used to check for the
> existence of a process ID...
>=20
> ```
> Which is great! I was trying it and it worked just as I expected.
> When the process did exist, I would get 0 as a success, and if not, then
> the call failed, as I expected.
>=20
> On the other hand, when I read the `RETURN VALUE` section, I saw a small
> misphrasing:
> ```
>=20
> On success (at least one signal was sent), zero is returned.  On
> error, -1 is returned...
>=20
> ```
> Which seemed rational.
>=20
> But wait! How can I get 0 when providing sig=3D0, if no signal was actual=
ly
> sent, which is the criteria for success of this call???
>=20
> If i understand correctly, there should be a disclaimer, something like:
> ```
>=20
> On success (at least one signal was sent *or if sig=3D0 and the checks
> done were successful*), zero is returned.  On
> error, -1 is returned...

You're correct.  I'd maybe rephrase it differently:

	On success, zero is returned.  If signals were sent to a process
	group, success means that at least one signal was delivered.

	On error, -1 is returned...

This helps clarify what the sentence really meant.

>=20
> ```
>=20
> If you read my thoughts this far, thank you for your time! I love your wo=
rk
> and keep it going!

Thanks!  :)

> I would like to know how and if I could fix the man page if needed :)

Sure, you can send a patch!  Here are the contributing guidelines:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/>

You'll first need to clone the repository with git(1), and edit the file
<man/man2/kill.2>.  Then do a commit.  Then format a patch, and then
send it.  Sending it is the most difficult part, if you're not used to
it, but we can help with that.  Feel free to ask if you have any doubts!
It may be difficult to write the first patch, so ask as much as you
need.

> Have a nice day guys!
> Much love from Israel :)

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--mi3umhkunjwykmr7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmer5tgACgkQnowa+77/
2zJx1BAAoyZKpRecJ/EBfVPdJT+b8r6FevNpO0EN8pXalFF5Y+Q9zhsYbtHtDe0c
OxvEFlvwCzLOZTgsYaNUpyI/nrGxXVkqQTUgg1Y5PAVZ7ru9ZPgqz5zuWMfoU+WA
b00qwKefo0vTv2DamXBjkq+N2eVNXvfWPGiwZ/ZkLn0Mi6I+YBdSSimzap5F6F8s
X9OOxTXb9FROG/Fxken+2D1aIaoderCtbqP7bD3qTm6L9j/d7JBcb2ku5D/gJHEN
dIoOxvybhRuRkJf3XcB643+MBIIr1COs3Q6gv0WKGKelap36bBk4bDxTlnt/LLYP
8nUDLpahp3eB5L4kbK2x68mOlJKnR9jYJ2cZ6TzZHDB4CN41ibLcSRy0Ei9z3BFa
WOVp5cpFfZcXDVJyJ8wo1t1cTzDIW01XI27jPOjkO6aqxzpOWb7N+4FqWba/1Mvl
N2i1JyJjUPQpXl8J6YIexehLQs7lfDaQdAUhfzZz7Z/rYWFYyb/wz/1z9npxct4B
bu1HX4eNb1J8v+KOWWo9IlVG2OHB2eahbqQLH1hxY7qb1eJ0koTEI3gqvphNQT6T
g6peXxma1cFw50Z6eOSgPgOd6x+KP8hHHG87ug0Pmos2XqIA8arOs5A7UUtpdiI0
g/QaF0P8ZCHooIMwXkPy0n7229O/7dozfhY0pmTb6ahUkhGiVXs=
=lhgW
-----END PGP SIGNATURE-----

--mi3umhkunjwykmr7--

