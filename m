Return-Path: <linux-man+bounces-3706-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE61BB332D8
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 23:18:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 828C6482BCA
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 21:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 977EC221299;
	Sun, 24 Aug 2025 21:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZlwZuBjD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72E413AA2F
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 21:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756070309; cv=none; b=MgvtoLRX04v6dwreG8xw0OEIVGmcadhH6aDRpefa660USbM7RYad/D7rX1eBiosNxmiHYzkIDHnpoqMdmSH/YOLk7XU2IM6RLrLuh3/I/PkO7v+mBKHhmEZBZqk/o7SQyFOs4GIMDrtqTRw/VeORISnSQSPPzkhzor7f4yCFHfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756070309; c=relaxed/simple;
	bh=aGhAUkbjFqUege/wpuZB+0pkAwbDReTaNzg7n7pQ42s=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=FC1Appzx56Rz0+HLj+qKif+h+wUs5w4nXg+n+3wMNXNjRiRUMn8ZsuBwvUCmrZGMp/nLdtvYzIG8gjcKDtrRY9pDlGeendrM4Hlzuwa3IlmVbFeyUq8INSe75xHERQ87PVUsqrV/+3U8s5crVwUn5C5P3uC4uKtfZvUEM70mcWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZlwZuBjD; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-3254e80ba08so1680800a91.1
        for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756070307; x=1756675107; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rfLhuGaMlWhYVKi+vrctegfnMmWk2YPa94e/CQF4FT4=;
        b=ZlwZuBjDKFaVOWzaLDaRFMiQhjU/W1cIeiMM84nCoFIyB2eKArRnzAFGw05ztTNJeX
         4RzGwAXDPf2vqqLJlUc2DX/BYg6lbRZ+XJZBpPVy8s5e/98zEFXzPbtyQXj3zJKtE/91
         ING4FwOzk/l5kuj64CI0dTa9GLAMGMlMXXYU9ZF0Z2TeO4rjcX1xtIOLI/7pqBSeDY4m
         ClordhnigKgvRujzBUVZQXdjzZ2mr7/I9qZQROyKSvmHlewOcS3W+t54PaJOCGYwSplJ
         dUsQXpmdVi61HwIa1vVFrWuAEEQTz8XpqwMWwJb64qC0YhbVtV7A/Uo7CmH3gDUkKTPS
         gyNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756070307; x=1756675107;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rfLhuGaMlWhYVKi+vrctegfnMmWk2YPa94e/CQF4FT4=;
        b=HokHAtQYHyYqBd+0Dj7cFLWXHn1N1UxSLkP03vgJRMvTRbkGJ65L3LFYCsUzgTHQ/p
         mzmY9iyZt7rmS6dIIz8Sk3i1Xhcknny5W6VN80lJ4sqaK6PkEzdH4LCancbFVqKvrH07
         2UVgculp1Rl8jHwLfe2OUtxCaD9477CTB681UCdYl9X+W4bUs3B7ShG6URrDOjC/GEaJ
         CM4D4S4ASEv6rKaYlp/uhMWPN9Y+JpZtaNFqinmo7Nx4LLX+wMPCsSDHQqg/qdSGStjo
         62ViIfHuvka+NzHVvfJRGK1SNVIvxFuWsO7fEwzbssRFrodZ89/OLcxZbubkrKeOCvUc
         m1cA==
X-Forwarded-Encrypted: i=1; AJvYcCWHso/aESLqDRwevD79n2u52p3a9+mTlG5y5i14jjKjTNFjsEJ55QWl9rjJwMyz3kpfmAMSSZNleTo=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+TDo9kNV4gT4d0QDCEWtYcBVh57/DcsUmwanrc/BHxKB8j5qm
	sAU+gzaPGG6UXSZjBY7N/wOg2glR1pu1rLbISCXG3s95soUtD6UUVeFlsya8U739
X-Gm-Gg: ASbGncu7gtFf6NzBZVvzIzdr5VaO+ciy2k6DlT8aIDP50p9VbpS9IhDediyA7jG6wEb
	UoL1eFm1QpWFcihSt2FxEYpIvv3xIBaHmYY1aAE0VrhhbIOKQv5+ZXbDLpqPZ3ixhGZoCqE6gnS
	uRpIYvZwsczkuXBzZUDy6TaL48RuOewDyXNz0ua3UruyFFQw+xgz/Qkviop3Ls1XhvPZ+m4P93O
	kdeUZhiFk/0o3rn8mwlnxd1yNiw2hSq9SdPNM88ry6ic5rHUrFpjd26QIRNj1UJUcHujpKiQUul
	Wrf4ht9XU1Cen4HGXeK+v47KECADEq/hsMDotOmjlJRwf3jH75p2oNoTUHVnSn5TUM1KFmCMLG1
	0E/8=
X-Google-Smtp-Source: AGHT+IHz6cwD+7xOjb4P1gmuJzEfSjat37+jWYRji3vtsa0I42H4HEpvwsZCkWAx3bIkgi0kGPJEgw==
X-Received: by 2002:a17:90b:2f47:b0:321:9628:ebf5 with SMTP id 98e67ed59e1d1-32517d1ffbcmr12569345a91.30.1756070307016;
        Sun, 24 Aug 2025 14:18:27 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::9f4a])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-770401b17dfsm5445123b3a.68.2025.08.24.14.18.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Aug 2025 14:18:26 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>,  mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org
Subject: Re: Issue in man page ioctl.2
In-Reply-To: <hmtszsu3j37hc33jkafbc45s32zgdz2twvd6aerwtuvmenuzrx@vr2nhsfciuvr>
References: <aKsmStw-BIV8ppku@meinfjell.helgefjelltest.de>
	<hmtszsu3j37hc33jkafbc45s32zgdz2twvd6aerwtuvmenuzrx@vr2nhsfciuvr>
Date: Sun, 24 Aug 2025 14:18:23 -0700
Message-ID: <871pp0l8ps.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Alejandro Colomar <alx@kernel.org> writes:

> Hi Helge,
>
> On Sun, Aug 24, 2025 at 02:48:42PM +0000, Helge Kreutzmann wrote:
>> Without further ado, the following was found:
>>=20
>> Issue:    What is fildes?
>
> It seems a weird way of saying file descriptor.  I'll change it to fd.
>
> Also present in close(2), where it's a bug, because nothing else calls
> it 'fildes':
>
> 	$ grep -rn \\bfildes\\b
> 	man2/close.2:219:.I fildes
> 	man2/ioctl.2:102:.BI "ioctl(int " fildes ", int " op ", struct sgttyb *"=
 argp );
> 	man2/ioctl.2:139:.BI "int ioctl(int " fildes ", int " op ", ... /* " arg=
 " */);"

Not really a bug, IMO. It is just a common way that POSIX refers to file
descriptors in function prototypes. See the old ioctl page, close, or
many others [1] [2].

Or the aio_fildes field of struct aiocb required by POSIX [3].

Collin

[1] https://pubs.opengroup.org/onlinepubs/9699919799/functions/ioctl.html
[2] https://pubs.opengroup.org/onlinepubs/9799919799/functions/close.html
[3] https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/aio.h.html

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmirgZ8ACgkQjOZJGuMN
fXWG5hAAm3NKjojGNZ1QelC/NFdO/9Ysyh2EJATCqaQPq1t0o+WRKP2JanAJDqbl
U4/bmXGLgAwuj4SygNO6ZmLspdiEhIxAompI75zoKrLg+9zyPQwXZpHu9J2YUzmb
MkrHUm+LgWFT0ZLzyqDOICqKuNlw1peT84Su16KWBTBeDJLmj5FJNffjvk7VJEFc
Z9awR2FFZ16nGf77sJjmmvoqAt60vg+ristUtYKDC1enkm9c8fMTzAFu4O5UqCe3
mqb52nnce9YkI0o5wWFrxLA2PhA2kmL6ZrOedR3rl6Zl4ZzjQwkncQBJnyIsT12F
CmOKkH0NYe8tAXmmgGFKIlKgy0DiWq++umBbkvS1ucDxi3NrZ0dyrv8KwXe+fQcC
2rhmUmUehfluxyWzJ6oFO5tlJ7pABQxD8csUXLJGYp6SttONLNOMjmu7OfYghmyK
Fy6t5JtHLIwMLoLeGoRdud7R1cQXUgc5/XjLxXqswWukITzFMwIN8fOrON1Qi72V
BhGw1EZMvSr0JG7pnZZIwC7HPEB5vRQ29Ly2VfCvEn0/ode+T9BxBT1yv47xIVkb
4nQjgAg/16MObdc1mm7FEujfzSDfKX9+1SpphQKXhz2UWSb0/7kkuQs/3aOvs1Bg
TfsYgmwUdordjhCk7NN1tXfDdYVwrtlwLPY3VxVbLODQhwdXFps=
=BVrj
-----END PGP SIGNATURE-----
--=-=-=--

