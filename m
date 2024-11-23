Return-Path: <linux-man+bounces-2057-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5B29D6B9E
	for <lists+linux-man@lfdr.de>; Sat, 23 Nov 2024 22:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24F971619A0
	for <lists+linux-man@lfdr.de>; Sat, 23 Nov 2024 21:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 508C319CCF4;
	Sat, 23 Nov 2024 21:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+0wEiMx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0581613B288;
	Sat, 23 Nov 2024 21:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732397356; cv=none; b=sRptkTLq1Jgi0XByrXB+mXowp1i98VwCHgX+uV5bZ4I0TkyS/gu10jODl5yz1HeVxjjFiZhFeZ/Ne97AS77HyFVCTbgBERHy3ZuNudzUmOV6XtCI5MQ3LT+S0ieNukLCs1kwV6Se4znUOpBsrWfikVVbrSIijER+JixbgUN9PdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732397356; c=relaxed/simple;
	bh=PTwERjgygIA7LX618qzOJbGfSA3CjamE/iXMi4e4UDs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XLP1j2iIKW+p83jvDj3AVcDRAr92Rtq2r05XS5gQ7ggS6zNnD8yCoWZYlwh+tmFDAwgxVbjHIKrpJC9L8+6x4ZgVgXuSmdk8uoPm8kvgMt47kbPnBngx4XyTa2A+FRlgMRr+ximiq2x9KNJgw0F2ckkxQaPD1rMGMgyjpgGz7ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+0wEiMx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6125C4CECD;
	Sat, 23 Nov 2024 21:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732397355;
	bh=PTwERjgygIA7LX618qzOJbGfSA3CjamE/iXMi4e4UDs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d+0wEiMxYQhLXlP9yc76/rRgiG5fWjKQGrwvCM9MxnEoPgivmciDHNlYhb8OZN/2m
	 bWnyLoY9GTTC7YEbeId7sHLozaIHcsFJb1uQA6KtSEJxfWBR4cUX6Xxuze7MirlB5+
	 TiZ1yqHXpFjepZ6lNnTz9bqZd766AWaGvqXiy/nzxoiB4LwMWkFZOpsEtpnX8qooZX
	 l8GsuaQy2U6w87Btdm/VxjAcxQB6VMJEzOAS8nne7ySTDkZIQcjpDrpAD0OJXob0q5
	 VCAryesJUdEnmSoWYbcbIo38/zaOxL75QWF8oskEIyghGIE44c6LuwafFb9QEWO0TT
	 LnmZgmeYuMCiQ==
Date: Sat, 23 Nov 2024 22:29:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Cc: linux-man@vger.kernel.org, linux-perf-users@vger.kernel.org
Subject: Re: perf_event_open.2: mmap ring buffer requirement for receiving
 overflow notifications
Message-ID: <20241123212912.dyxnou6rbns7xqu7@devuan>
References: <CAHGiy68y37n-y_b0gR-dArxFRzYOAr93dCw_6bvkNReNWQ37Hw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="laoimxkcyt2mzmka"
Content-Disposition: inline
In-Reply-To: <CAHGiy68y37n-y_b0gR-dArxFRzYOAr93dCw_6bvkNReNWQ37Hw@mail.gmail.com>


--laoimxkcyt2mzmka
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: perf_event_open.2: mmap ring buffer requirement for receiving
 overflow notifications
MIME-Version: 1.0

Hi Miko=C5=82aj,

On Sat, Nov 23, 2024 at 09:49:40PM +0100, Miko=C5=82aj Ko=C5=82ek wrote:
> I have found that when monitoring a file descriptor returned by
> perf_event_open() with poll(), it is required to allocate an mmap ring
> buffer to properly receive overflow notifications. If this is not
> done, poll() keeps continuously returning POLLHUP, even when an
> overflow notification should not be raised. Notably, this behavior is
> different from listening for overflow notifications by setting the
> O_ASYNC flag on the file descriptor - in that case, creating the mmap
> ring buffer is not required to receive the SIGIO signal delivered
> after the file descriptor becomes available for reading. I attach code
> showcasing this behavior (the functionality is explained in the
> comments).
>=20
> This behavior by itself is not a problem, however, in the current
> state of the perf_event_open man page, it's not documented, and in
> fact, there are confusing statements that seem to contradict my
> findings. In the MMAP layout section of the page, you can find this
> sentence:
> Before Linux 2.6.39, there is a bug that means you must allocate
> an mmap ring buffer when sampling even if you do not plan to
> access it.
> Unless I'm somehow misunderstanding it, this statement does not seem
> to be well worded, or alternatively this bug does not seem to be
> fixed. I would not call simply using poll() on the file descriptor
> intent to access the ring buffer (unless it's meant to be understood
> that way, in which case, in my opinion, it's quite confusing).
> Additionally, I cannot find any change in Linux 2.6.39 that would fit
> this description (however, that is likely just due to my lack of
> experience searching through the kernel changelogs and commits).
>=20
> I would like to receive clarification on whether this current behavior
> of perf_event_open is intentional and desired (that is why I cc'd
> linux-perf-users). If it is, I could also create a patch to the man
> page that lays out the requirements more clearly. In that case, it
> would also be helpful to further clarify the wording of the sentence
> mentioning the Linux 2.6.39 change, however I don't know if I'm
> qualified to do that, because as I have previously stated, I am unable
> to find what changes that sentence actually refers to.

I don't know.  Kernel maintainers may be able to respond much better
than me.  I see you've CCed their list, so they'll hopefully answer.

Have a lovely night!
Alex



--=20
<https://www.alejandro-colomar.es/>

--laoimxkcyt2mzmka
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdCSSgACgkQnowa+77/
2zL12g/9Egi1aAjqXE5qJDyPcNBfU10R0cLkz2sFXseSsXTJchb5sJV8m0HUcoS9
UYDzhzX1x6FBzESLDT2VdERUvfuxrNQs9W3FrpAd/h2ZQUNsG2DY3TpWa7k+kis7
5YSAuXw1urK9IZc9CuithTwnl08b7OKe2g3jWnQ3jkGc2jrCRNGkgG9DEEIhLih2
5F4wC7qemwlBVN/ZzYoKf7Cktw1WYZoKuiana5gA4QTVmuZML9ICwsAio88lFF8y
O7p8ZdM4EGcApX0eanWGGPVKujtbliIhzDdP3ggSLaAP8zQTYf83oNe8k6LwzRNi
XwLtQ5UOO0aNC/jvoTfFsRVUnI93Kw81WWGz6c+YLQH30zNbr8bJZ3IRgr6Hohnu
SZ2fhSmaI8fYy8hVCz0jtvKreyPYnfdhm0S9Xl8ZvAReVwxbqq9EjBJQAMvry8xY
mhQAz2KN1EhwOXBPEnGRMbP0lNtFwwTqXjaxFZtFdvLfyCsSv0Iza7wZyIo/TPqH
3mihFVn+cQGUDw1E0t01dC2NaKLntyhSla+iZeg+SZxk0N16ni6bq5ecM5eFjdW0
grfP8wU10lyVZUQ+km5J50lpY0x0yTs5EXmJKtAoeeMJ9KBIFk9E2I7AM2INqYNj
UI0kA29Y+j0f2w1ZPRsppS2DB/n24FPipflJ9HiKg0ya6ymcmUk=
=qH3Q
-----END PGP SIGNATURE-----

--laoimxkcyt2mzmka--

