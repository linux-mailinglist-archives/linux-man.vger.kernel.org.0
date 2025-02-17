Return-Path: <linux-man+bounces-2477-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F499A38F20
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 23:35:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 457ED16AE9E
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 22:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAC291A9B4D;
	Mon, 17 Feb 2025 22:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BA+70Kxo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1672E1A83E2
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 22:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739831743; cv=none; b=qA+9N42rI+3jcPAOWZ1uId/PbbzepzO019iwW2lQHRo7eKy8E1fybkqkabbvs1X4zOF3WVTUCCzwDlvjEM8XqezfhrG51+VJYQYV1AjwirxoQPS1x8aI4yEpjrOyQbz5BvcyUDeOI0x7GANy0QAngQYrln4M0EkvnxXAYmeJx94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739831743; c=relaxed/simple;
	bh=oH45K3kz9AzPWCh72TciYrvwoHXQtJH64tBXauMK8qA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Eax6KqHnkwDBXzEI33HP96xE4t0Y2/KQgiK19r4jep3dywj5KElid3b5BBM8ZPwUr1YlKwKw929qwbYEwAJBDsb0TS2Q/F9Y2HyLg8++pr3K3Hh/6hsuDmz56JvbiJ18KUTWrZ/HRmJl+pE4Zjl3+ITEz+2au6XyEPbfYxtBc+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BA+70Kxo; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5fcef5dc742so79474eaf.1
        for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 14:35:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739831741; x=1740436541; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/GG4pEdkGYnp0pvqr1QgXI7vjugq1xnCwxC8l58RNBE=;
        b=BA+70Kxoxl3wAGsr9/JtrpNetYZE6v5Dkgmne0cc8LaturhN1CixMdYlq1oIk6qE6y
         i+sqfDCvInK/X1F7iEmQRXHhSLkjdhSxWayh9j+Hs7Qc66Uv99WxVv+7cMYVL9ggEOf/
         JDsJplk0C07XrHE5oPWZtQ5ZYR6gpXxq9/3e/d5FIlSAuG+SXZlh5oGzSddTy2PhV3cx
         pEyqmodOa5Q7JGwIid0dsLPsgPKpowS3CET8p3mVA1bLiNQixnHjTOtiuOAymLOv/3Ut
         rC3nJ6X6UuMP0Zt2KvLTyJnVqNWrOUNhROY6OEyzyBUIoAZ9XQF1T36BZfVP9GWFctMO
         ar4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739831741; x=1740436541;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/GG4pEdkGYnp0pvqr1QgXI7vjugq1xnCwxC8l58RNBE=;
        b=RXUyAcKEvCra1lBHREwdP1QmtREG+zgrUtDxC4TPduO9Gm/dKwdLt41gk1izCDmvbI
         /IxfFulIjHoeag5TSsvwaO6CqOXChZJ1rHY7LmG7K9B8hudGygVgJAmmyT25zn5M1Pbk
         aQviTFKaKsIRw+KidtvA+nzfcxZQ2xaMh4H7707kKfhEKzgZbCyEgJYO85FyLEXTgvF/
         dynKdGauFrWfcF0MVLGCb6eqmvnM23SXb/0f79B+BpMXqj+T6fB3z5vgKGlVX8S0C1N1
         bROm0Vyekw61sUQcS6LHDaFvy8KNrce/aqkyW+szP1vYXnibkiT/LYI7rC2LirLqJYBI
         T1dw==
X-Forwarded-Encrypted: i=1; AJvYcCXUTYLmkGeovRLylEQBOobF2TrG/m0kLIe99h/yAzznG4vc3SZCtgAGQ2ltySmrbtDaXRtRkF09iJM=@vger.kernel.org
X-Gm-Message-State: AOJu0Yza+GdLh3psp/GIjru1YTE0q0C06cII0wkuNhkKzxpiqhCrn8i3
	rKUssFhR6JEPewortuWU4WgkBteeDzAYG3cFWcj8ixysx3tatC3w/CP1tQ==
X-Gm-Gg: ASbGncs8/wX/ZFRjCdMuCY4vDO9g3oqUqK24Dq+1nF29Wwnlxa88rFwfRAJ3lMAGJlu
	aYLHSk24Y6UKqAVpCzt+2qbNJakTmd8W6bjWMXorMbTYpgLPaFIk2X304AFitSLsbRJzaCZ8MMP
	IKt8Ce5EhBxeE/F90uovI9jlwgRcXW+SNRbbKqgOejG29IGqw8075+EKVhAWv9hH1tqOy7/LKP5
	e4FJSoBi4XrYFJ1fV+YmxeXnhD17Dr0wOzVWwZbjbfcrY30ncmWXZUnqHo+ufr3ETvsvn+91/er
	TieT+w==
X-Google-Smtp-Source: AGHT+IFw8FlCMfuNcNndjRD2N71LHe/6HV4knVXlGRzrpRQjsFsrw7SDMyt9J5pCtA9a00iIdjMakQ==
X-Received: by 2002:a05:6808:2f16:b0:3f3:e974:ebf7 with SMTP id 5614622812f47-3f3eb08d5fcmr8361835b6e.7.1739831740938;
        Mon, 17 Feb 2025 14:35:40 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f3daa19799sm3522462b6e.47.2025.02.17.14.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 14:35:39 -0800 (PST)
Date: Mon, 17 Feb 2025 16:35:37 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>,
	linux-man@vger.kernel.org, branden@debian.org,
	Jason Yundt <jason@jasonyundt.email>
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
Message-ID: <20250217223537.rt4xhln6lip4kpaa@illithid>
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
 <20250217.157b556c3b77@gnoack.org>
 <eawtdhfhbikpqnqygk6sisjb4drhzp6szneea2cajved6rwfkh@uf6ai7rjom4l>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="i4kpgl4slbh6s466"
Content-Disposition: inline
In-Reply-To: <eawtdhfhbikpqnqygk6sisjb4drhzp6szneea2cajved6rwfkh@uf6ai7rjom4l>


--i4kpgl4slbh6s466
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
MIME-Version: 1.0

At 2025-02-17T23:16:59+0100, Alejandro Colomar wrote:
> On Mon, Feb 17, 2025 at 09:24:11PM +0100, G=FCnther Noack wrote:
> > > +Name
> > > +       style/c - C coding style
> >=20
> > "...for code examples in man pages"?
>=20
> I didn't specify, because it also applies to programs written in commit
> messages (for example to prove that a patch is correct).  It applies to
> every C program that I have to look at as maintainer of this project
> (and actually, of any project that I comaintain too).

Maybe you need a name for this class/category.

"Colomar C coding style guide"?

> The definitions go all after main().  The prototypes go all before
> main().  The benefit is that you can get an overview of what is
> defined without having to look at the implementation.

My understanding is that function prototypes were added to the C
language to permit type-checking of function call arguments (and return
values) _across_ translation units--specifically.  So if a function is
static, or has no callers outside of its translation unit,[1] the
compiler can be expected to exercise whatever type-checking facilities
it has within that translation unit.  (I admit not knowing whether the
pre-ANSI Ritchie compiler or pcc were this careful.  I'll brace myself.)

Regards,
Branden

[1] ...in which case the correct thing to do is _declare it static_, but
    hey, this is C, man, we're "terse".  More modern languages like Go
    and Rust have started to recognize that having symbols be public
    and/or mutable by default are worse choices for modularity and
    concurrency.  Even Ada was not quite this careful.

--i4kpgl4slbh6s466
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmezubEACgkQ0Z6cfXEm
bc6VOA//dk9GryGcjNRBrZtiGqFXcJFWRhoKuWFzXovpJxrsOSKlwKcTM2Em0opU
yUu/0/CzwQXNE44fgp9mEI7/J2uvB2uE7vRDlQWJTV787g6OL5zL98GOrgW2tax/
RjQrkNABEfdj6oPTJl3KGBgHBUU2ZhzRJph6Uya5Qqz7//gWD2eAksubC8MOMclN
e6v0HyCXOl7AKd/nvmyHdcgRjje6UvnajY2xn7dbi6rCk4rUJkl0sxgsUUkCGXAf
dNena3V+rjYBn5ivTjAczBBqPzqSZJoEpyWkUnuJn5MHdB4sEdgQ9T/UjvmAoi6l
FhwLefYcQOwH15t1iQDzrAs6CasNtXPG83dCjMt7dJdZMeMVEAXA4QJK1aQccow0
XiCXfaD85FUXO7/bI4+Z0pVuowB7R1+4kiHGiexPUF8ZCj9wHlEzji1Mxha2Kuq2
gpO6dCG3cugMUqEKg4Ck4SWTBBJoYnoznv/y63mKAnWEnGXFsLZQGpdVsbLU/8MB
IyoohLCcRpYV9Dg1MNFBoTjjcma+YEHl/oTL8UYBswuOMjLcN7whapzhaoy2LTCg
QQQHcJwXL6ZFIZZEkmX0YadR1X/d3ijf2XM2hkB44VAHLo9g0wtRRSxP1HVohO2D
LhGHzLLKHJfC9bM02n7svmNOGNR35yk12nnzDRDB9QOTLvVEQbk=
=Iran
-----END PGP SIGNATURE-----

--i4kpgl4slbh6s466--

