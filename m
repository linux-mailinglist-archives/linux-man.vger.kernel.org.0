Return-Path: <linux-man+bounces-2962-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3A6ABAE99
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 10:01:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5F31175D17
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 08:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05CAF1D79BE;
	Sun, 18 May 2025 08:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="in1WpbyG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B911F17A2F0
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 08:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747555249; cv=none; b=tfEWwlPkT+SbpnT8DdbEwSRm8L7rltIDd1/VrwWwGVpnFsh+4LabnE+q/X9MnOcHzNzoUqh9hSqekCn3pJCbV5MnEz1PZYKVkzfYv4XhOqjZOSqjKy40dNCuKINV9gLiF+ipacW3lbPwVVykXRobHPRjv7jd8oxvAeDn+FsBDJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747555249; c=relaxed/simple;
	bh=+trDd51wF64fM0EA9uBFeFEbuL8SeDgg+IMjP11c+Ys=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FHujSGEd7Nrm/ua17G9nWqFKBdHTAzYhzBwKovdlWuxa5H5udADADuDZSCCpV4Cclaz0zcmvyZvLpYgcZKIsSVKAZwuPvQzshwyAXCQ6HEEIBQdmyomZ9xYx0DSzS6xP/loJpltB+MYV9PFdcD6RufQ9ETWWh4ZESQJA9bR63qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=in1WpbyG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33CBBC4CEE7;
	Sun, 18 May 2025 08:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747555249;
	bh=+trDd51wF64fM0EA9uBFeFEbuL8SeDgg+IMjP11c+Ys=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=in1WpbyGDX8c5Te58r+Nk86FupTPEHPcS52T3TehSfcd7dtoKLxnM2AF4TxaYrHFr
	 oiWcrcR3ruBk5YWPji61ISSfAClV29Ldwn1Dfg0Ik/Ik1vB2GmmadLrX6htsm28VWV
	 DQLRU+6wHR/VnYaBEuk6b4aTBAZls/eC6rQsToi5Rq/wdIwk/iiIbucnEg/5SoSJ2u
	 TppSJUpxzVazPe8UAcHnMuoH/zKibCMmcGL5jgE+y/qwJrZD5X/cnll3j5YXR9vH8Y
	 RaI1A2M2aZXDuIeeNrvabRSiQgzA/A42zO1WbwJ0bOq0EprB7CoEJsmSL4JKr7gkI3
	 4WhPMBVLyBK1w==
Date: Sun, 18 May 2025 10:00:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] man/man7/signal.7: Mention SIGWINCH was
 standardized in POSIX-1.2024
Message-ID: <rthrdn5wweceeo627fe6ihdcdlsuyo4hlk5mk3wth4lk4lgaxz@gfsmcnsfjxjm>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <bae6bc16f9ab6bd3e5c30dc8e11bd83566b06a6f.1747519811.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ehzo3xb4qvcuxzsq"
Content-Disposition: inline
In-Reply-To: <bae6bc16f9ab6bd3e5c30dc8e11bd83566b06a6f.1747519811.git.collin.funk1@gmail.com>


--ehzo3xb4qvcuxzsq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] man/man7/signal.7: Mention SIGWINCH was
 standardized in POSIX-1.2024
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <bae6bc16f9ab6bd3e5c30dc8e11bd83566b06a6f.1747519811.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <bae6bc16f9ab6bd3e5c30dc8e11bd83566b06a6f.1747519811.git.collin.funk1@gmail.com>

Hi Collin,

On Sat, May 17, 2025 at 03:10:40PM -0700, Collin Funk wrote:
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>

Thanks!  I've applied the patch.


Cheers,
Alex

> ---
>  man/man7/signal.7 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man7/signal.7 b/man/man7/signal.7
> index 72d4aae47..3e21286ed 100644
> --- a/man/man7/signal.7
> +++ b/man/man7/signal.7
> @@ -342,6 +342,8 @@ .SS Standard signals
>  in the original POSIX.1-1990 standard;
>  "P2001" indicates that the signal was added or its definition changed
>  in SUSv2 and POSIX.1-2001.
> +"P2024" indicates that the signal was added or its definition changed in
> +POSIX.1-2024.
>  .TS
>  l c c l
>  ____
> @@ -390,7 +392,7 @@ .SS Standard signals
>  			see \f[B]setrlimit\f[](2)
>  SIGXFSZ	P2001	Core	File size limit exceeded (4.2BSD);
>  			see \f[B]setrlimit\f[](2)
> -SIGWINCH	\-	Ign	Window resize signal (4.3BSD, Sun)
> +SIGWINCH	P2024	Ign	Window resize signal (4.3BSD, Sun)
>  .TE
>  .P
>  The signals
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--ehzo3xb4qvcuxzsq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgpk60ACgkQ64mZXMKQ
wqmHGg/9FwA2OZ3NmC44uE4o2n4NjWWaMfNkiFLQlfLnM7F1mhjk3c9YY8+2k4yA
GtkakzITVh9DvvaHeebPvXdONbiVru1S43H3kiVU3F63NXnruYKjsEAhqmA4NOGp
D5OMsfQgzIYKUeV7F4CWs4DfSRvSzC4qa8Ox3tC50D/hhepzr4wfvAzsvscsVfKp
senDqXLAujEyRgRTfqPpvpp4Pmukti/NZeb1wqCspm1pd72qNfUMbbbf1Kic4Qm6
4sdjTO6GBp4PUPYlmQh5lkyfhKZIae6cGoJnpYBSUyC4fjlXWXkJXkrDK2+M7itU
p79h29lUa0JwuGCQncB/N978aaymHCpwlcjhxAl+aPevlHFH4TpvU0ZDLhG6snlL
hfsmOIQL1CVb6MtlQ55iwu0dJAiZVDnilgX1I5CANqG/kttkBRhHYJoT0vj+58O5
Vvmx7Ks3JRgiOkObVkv58nu4c6oaszfM49kzuJqSHUojsR4Ge/DtEXqhDmItorNz
YBUZi0Wh1fIU9xhxnYUgtKHpYok4GJGbthSHZtuNf/q0/cQyrRI6wyWD/4WhQNkC
a7mMKhXEo5Fe1WjeufmeVZ833zleMRci7GQZgU1oawUK7M2RM64k9zdClBAptmIM
EuM9v0ikzGSzwYZtC4pL37Fu3XXO6KgxORs2Dzz6fJ86HrUaqCo=
=HyAb
-----END PGP SIGNATURE-----

--ehzo3xb4qvcuxzsq--

