Return-Path: <linux-man+bounces-2610-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4ED2A65B26
	for <lists+linux-man@lfdr.de>; Mon, 17 Mar 2025 18:43:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 208B5173C88
	for <lists+linux-man@lfdr.de>; Mon, 17 Mar 2025 17:43:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B007192D8A;
	Mon, 17 Mar 2025 17:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e6nW1L2f"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79251E52D
	for <linux-man@vger.kernel.org>; Mon, 17 Mar 2025 17:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742233427; cv=none; b=OoiqVfqR1+/1YLn8aZ2pO//T1Wc/NHJtrzn2rlCgjffYmCeexwkUBdda/pfoSUwvcEN0+bj0DSF4VZ8U0fMAQxQEhVWqewAyerf3uyIcBKoL6r9Ys2nr2Q+WrJYS64MhRNgjl7/ocuSIVFYZGukCFIeL7OqTTSuQR2vsjyfXOgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742233427; c=relaxed/simple;
	bh=MMOSApVGRAAmNg507WQexzGnow7xneeQNBNnC3eDyWA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=paUN1pNOFZFVfiLklipqvkMAwIw6+jRp1liwh9FjdexPNoI1Mrjxdn+AvFWA1tBh6ybub1vyrM3aZluTzH8sCgYK+mpIbGuKv++WnUfiYxu10mKj8Yc5MV+ph9EDFvI/TwoNTl/3nGN25sM9SKyNqlGxe00cC9okcxT9SKKv400=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e6nW1L2f; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-2a88c7fabdeso3243149fac.1
        for <linux-man@vger.kernel.org>; Mon, 17 Mar 2025 10:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742233425; x=1742838225; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NdaYJeMF+0eXJGT9JnAMSXpUcO1fk3ahl03sMz5QeYU=;
        b=e6nW1L2fuYvUvN143vU6+zn4ebE6WGsczgH2OGCu/Df33uODnowUelKAIecuNcy4LX
         SpjuANNHz9YvTpQoI7riTfarykR8hq4cPATPJkUp7xweUhb1F5PRXn6cT2bQ401rY/Bl
         DmcA3LYRfjO8clHjmeMCd9j2wQvSgF8a2gKPgzkKpZ7QsaGKoayYUFEjxq2AmGvBpIY/
         UwUFxF0rWija14MKzV8Qx+FP/ptisRTwdiQnMIpQ9p1LTl0sKX5aEpHjISEn+TuxcQM6
         dT0xhXM+P6esUofESgLgl6pnpqjeB8OwzMDoHPMXwhpG7H30BEjuIyhVW9xiTufo6Cjn
         ICHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742233425; x=1742838225;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NdaYJeMF+0eXJGT9JnAMSXpUcO1fk3ahl03sMz5QeYU=;
        b=v5Yx/7eH6Kj6mMT5orFDmxaU4kOV9eKAnv5FvA49cud0d3ggN4RX4mn774NzZL7F+k
         /AoC5VZ9N+1ypQY1KW3e4NJd3S/N/UMnB5Vp2z1ZbnS+RI7zg0YRj/D0vwRpzuNyCiQO
         wNUGijlrfl8pQzhAbgNjoo28Gs4EfgRIJ6k1cbqknwOaDPrdeuvZxJjgMMpER0V72Dgr
         h/P0P1z38qxpnhqm2jbsnxjPFj4I8YBpU+btNW78nsOveOTyqMxr7kMDG8NAnLZ6Mvcp
         r+NLwUFjZBHU+LYHCLqVHZTawwA5tnw5hv1ikLLrwMqMtgQEvZpdfAnZR3PV2NGdKQT9
         zapg==
X-Forwarded-Encrypted: i=1; AJvYcCU0n5GpRxzzD3E/izOCS5xLIFmbf7Z0B+JBQ7NxRiA0j3yG5Xl2YCiOveA5WYMoprV7/la2C58Ibqo=@vger.kernel.org
X-Gm-Message-State: AOJu0YyO3C/nyNhB1hREeal7OrQD8zWIIIYL5dJXBpMS0zbvy6DdVb9N
	g/8Bf4hKhP5fbItwxyCKEbSw/qVy23BSRNkz5Eh7uBPVpknOGfL+
X-Gm-Gg: ASbGncsTkJ1TICSz1zI60woZV2utRFtD/XXZ1a7ATLWKcUDaHiHhGpXVhFIwon4WzKq
	R35yh7Ms25nF1xJbvivEUiA/qHr0ACCQHJ3gedYaO/1VaT11yy0dGEupJeksqEkOdLb3bZK2DZr
	F1UtWZDlvQWvDTa/s+3qS1BfBwKfK+iruFZW+CBrEdYUh3t6HimVwKYjySS8T5x5Rs74PwQTk6Y
	Sjky8VQHGhbNFMufqpsy4QpkFGEQbV34bq9QbfeaP1ZPD6EcAe13Cq0gFcv4IGJtZk6BQp6HU+/
	toTIgsrQGeWVrlnLaC8HXdNK2xW/jPDZZe4=
X-Google-Smtp-Source: AGHT+IEkX2pfsUfr3JFR4MJ2dkYl00WlW+d4nnp+e9Vo64nt2bWyx6qYioCt9Pakw0drHy3m1zBfGw==
X-Received: by 2002:a05:6870:d108:b0:2bc:7d30:499a with SMTP id 586e51a60fabf-2c71a0a0cedmr172747fac.15.1742233424795;
        Mon, 17 Mar 2025 10:43:44 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2c67100dd2esm2190205fac.15.2025.03.17.10.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 10:43:43 -0700 (PDT)
Date: Mon, 17 Mar 2025 12:43:40 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>,
	linux-man@vger.kernel.org, Jared Finder <jared@finder.org>,
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
Message-ID: <20250317174340.ig4cavquacmiuxxb@illithid>
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <iv4zzsll7vbdkn7heborockwvxtv5y3ulld7za3hjvwkq2rccv@hj77rb65y355>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="suxbosivcdarl2is"
Content-Disposition: inline
In-Reply-To: <iv4zzsll7vbdkn7heborockwvxtv5y3ulld7za3hjvwkq2rccv@hj77rb65y355>


--suxbosivcdarl2is
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
MIME-Version: 1.0

[somewhat whimsical]

At 2025-03-17T14:23:09+0100, Alejandro Colomar wrote:
> On Sun, Mar 02, 2025 at 08:43:31PM +0100, G=FCnther Noack wrote:
> >      +.TP
> >      +.B TIOCL_SELPOINTER
> >      +Show the pointer at position
> >     -+.RI ( xe ,\~ ye ).
> >     ++.RI ( xs ,\~ ys )
> >     ++or
> >     ++.RI ( xe ,\~ ye ),
> >     ++whichever is greater.
>=20
> Everything else looks good to me.  But,
>=20
> What's "greater" when you have two dimensions?

Since we can model the terminal display as an inner product space,
the terminal driver can compute an orthographic projection of the
plane onto a line and from there use routine arithmetic inequality
operators.

The problem with the Linux kernel's terminal driver's lack of developer
attention over the years is obviously a result of it presenting
insufficient features of interest to the linear algebraist.

;-)

Regards,
Branden

--suxbosivcdarl2is
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmfYX0MACgkQ0Z6cfXEm
bc4jpA//f7lTqGfgz+PtfYdEbuiL7/j8x0Nxt7qVJuBRNzkuk1eadDfgxG/gj1LL
mmTrrgaNslv0YTrhOEEFbhATOkhi7YT7Wv5K083eEBpTGZOFYr37ZKNzNj0IA4Kw
QECjmMSM+ElqDlhq2djU6LXkl7tUFV4voxvC2XVzQBAw1qU79XOMJFjBgnk4ChGM
gLfvgZ8Xz527nkWcJUMOAAD9d8dsflIMrVQJxWbuk+X59VoV3WEhWu+NmGe/jF23
IfMGmg7ss+kq6JrPjTxFZ+TB+I2gUkWkhNNfkLxZ8nrQH+PKyuZ2QcZ1NgEo1TBV
dT3pUHieT84+0RgW1jJeLDyCO5RrLIRmPsZQiPgnlX+5YiFz1WwooArpkeBiDcmM
JaLDiBJoUm+2zxpoJFHDhpT2nODqxOm/uu76yaBwdEhfew/VWgTP347VbdM5dXSf
5xt0XyOvRoy1qXwme0vw6VazdwRJ/2UrE2jl53oundsMi8xrBI0r4p6i2Cn98q8B
2l7hDW7N0llkiwVmn5hQatFHa9nYgQ9Ab6s7NgTQePxPdEtOrF1zepZ8Uo8/3yB7
3SDYFNlCfJ4GME/8AVSYiipt4eA2OO6NPVk5KHu8lQ70rj81j8gFlSrtTCNXcPSR
UKrKZsXtKdhrdoioWd6iJJE36Qw/aAfcMiGYT9xkiY4M1dzEizI=
=ehir
-----END PGP SIGNATURE-----

--suxbosivcdarl2is--

