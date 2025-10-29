Return-Path: <linux-man+bounces-4217-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5C4C194DD
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 10:09:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD2D91AA1E7A
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 09:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C62231E115;
	Wed, 29 Oct 2025 09:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YZHHX13U"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0554311978
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 09:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761728845; cv=none; b=RcEwBmltsfRo1hbJjAN0FFvwwrUrLgoekyg2034zNVC15TaVqS5Q9cqBNTVx+O807a0IAd3gOz3hSxqalxK9YyUmFRwlJZNm+0h5fF6+J7G98HGkIpMwDfG9dvD1iNV/YBDIhgMh/HsbkByAqNkk9zXywt/H9nL7TK7/cF1P7+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761728845; c=relaxed/simple;
	bh=1txVME3ng5Gd2DCrYv0RwrWb4URVUt/ti/HgG8Kfxfg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kKUKNOBVhNCkINDLHhmQaNt/Hv2xaLSqfaHIf0LPx8+TtGJLM97EooZow4n5+jRuyTprG1nGVUr2kLaAAw5DLPmKDX6/xvvdzvtnTqJ0yAiS2CshYKCkUaDHXc8JUVcDGjwUtue61aheVJedc+P+5ATPXDpJaY8TnwEpv3wPEY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YZHHX13U; arc=none smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-63e393c4a8aso8191450d50.2
        for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 02:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761728842; x=1762333642; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mP9dNzXMt+ontptqoBbTI8ltxgJAjLoDMAeajzutyG0=;
        b=YZHHX13UiHBQWguXFdp7cpieNmZrzW+AAyGrrcPPwY5ItAHm2XaIFIxBYEN7AWXgUE
         j1O+6SaOBt0w5mO+JdueoCDrOTu2zKDttTRAZBnAKhltF9lhfVnmgvrBZV/qZs6P9qrp
         mn/qLuR7JjUxEL+/vWoAsXSP7fxDSIYWuJ/e5lUF+xyQF+kFNpoPtYDmKkz9vMGq2guM
         DQzmby8ATaRUiD5bDEI+Ulb3mgsP2j0SYLSD90DoWs8O28AfDqRVawTzw93/TYedCVF5
         oHsK88MQ6istVls6NziCh/RVMpmSzHSWV1K+jBJoaBhjC7GGxaqqXjL3BQuSJok3H6Kx
         HnzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761728842; x=1762333642;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mP9dNzXMt+ontptqoBbTI8ltxgJAjLoDMAeajzutyG0=;
        b=c5PBFsVDbj9KrwjsPL7Rq9I6HK+gVll2I+kO124xF9AfU0P3Lf1CM7ibW3Uvzup+s7
         XOdkfjrYZAsaMp+9Aid1MioqB+DX3dVKxs2wQcsNqOf/UAbBTPOyRXnGtB8nTWbDS6O3
         EaSoSaGHvLwQWFRFDqG712bJnZTWYlGpPgPPg5TFZTuQ2OydNKD/BX57AYSRuxwzH1UC
         ofII4zf3av1Bl8OvbqXnPjd0XOeZTyMXODlEP8r93Ec9SDAcpwauUWtUAHXQr/s5o4nD
         yOtk3SQJQXV54X+KazXNbK/y3mB10LKut/uiZ2qKA265rSR+XyQZmJqu8gi2F6Yd9eXH
         q7LQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAtu5ovHiHvMOJUtDM28oewXXM+8Lc+GceMWJa+ljmwWxpalhRawxC224WP/xlg4eCHB2uFQM7xJg=@vger.kernel.org
X-Gm-Message-State: AOJu0YxLebDHgmexEETuYhJlXKb3Oc6JBP73EFTufpgMf9PsoRM0THNb
	TLLKeWkiBYNwUqG/vXPAsf65wdpKWKEQjwFPZUbjOMk6BTRKJc/np6zg
X-Gm-Gg: ASbGncvjcbIFHE7eR0/EpHmmHMyZ8FlPz5uy7nv1D8Hcdj/cBc1ijX0/z54OEPauwuv
	opC5IWEwMwkBmreMIYPkRwLuYswp/rbCwloY3m+8mlNITybCMKuvMIuWTUkZGjqUUE6PyEPq45u
	o6IPUYdCfnWuCUP+Er5hZ9q6p3MJi9CEMn4Wqugw9/GG90lC+MZ+b1HFDMsNuWPAJFslf4SJLCD
	XlvBXes7PXC2GVgSJM6bCtaVaJCVLeOPjbNwV/cqS7iE4Ew7Tzk1yI7AsCn36hwtVYQUyBM5YPi
	4SnQgAScV0ctTdbtuZGfT9iaqKNuokKcYpsCIq6uVSDY67Zpx37PbAy2CWeMeioRNAdPL81DE4w
	LaTW6wsPln9aliXZIaB0TvvRAJaYz8dcTPjnwakH9FoapJL5nnkL3GmFRTE7KGuGxdQ==
X-Google-Smtp-Source: AGHT+IEw4GnjVCta2MFf3zfTQ8N1SGb/7GocOKxcncpMghOfk4y/2P18gcAHLzLG+UACGle1LgH3Gw==
X-Received: by 2002:a05:690e:158d:20b0:63c:e90c:a6d3 with SMTP id 956f58d0204a3-63f76cf6311mr1623292d50.4.1761728842377;
        Wed, 29 Oct 2025 02:07:22 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-63f4c4535basm3973844d50.19.2025.10.29.02.07.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 02:07:21 -0700 (PDT)
Date: Wed, 29 Oct 2025 04:07:18 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <20251029090718.6xpq6zf6iawjta2j@illithid>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sny5vjceisalonmp"
Content-Disposition: inline
In-Reply-To: <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>


--sny5vjceisalonmp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
MIME-Version: 1.0

Hi Alex,

At 2022-07-19T14:17:15+0200, Alejandro Colomar wrote:
> > +.PP
> > +.I tm_gmtoff
> > +is the difference, in seconds, of the timezone represented by this bro=
ken-down time and UTC
> > +(this is the reverse of
>=20
> Could you come up with a more mathematically precise term for
> "reverse"?  What is reverse?  The additive inverse?  Maybe use
> "additive inverse"?  I think "opposite" also has the meaning of
> additive inverse in maths, and it's maybe a simpler term (although
> additive inverse is more precise, IMHO).  But reverse is definitely
> confusing to me.

I think the idiomatic term is "inverse".

The existing language I see in my man-pages checkout looks fine.

tm(3type):
     tm_gmtoff is the difference, in seconds, of the timezone
     represented by this broken=E2=80=90down time and UTC (this is the addi=
tive
     inverse of timezone(3)).

> > +as a variable, is an XSI extension \(em some systems provide the V7-co=
mpatible
>=20
> I tend to prefer the em dash to be next to (no whitespace) the
> enclosed clause.  That makes it easier to mentally associate (as in a
> set of parentheses) to the clause.  I'm not sure if it's a thing of
> mine, or if it's standard practise?

Practices vary.

"Spacing around an em dash varies. Most newspapers insert a space before
and after the dash, and many popular magazines do the same, but most
books and journals omit spacing, closing whatever comes before and after
the em dash right up next to it. This website prefers the latter, its
style requiring the closely held em dash in running text."

https://www.merriam-webster.com/grammar/em-dash-en-dash-how-to-use

> > +.\" FreeBSD
> > +.BR timezone ()
> > +function.
> > +The
> > +.I tm_gmtoff
> > +fields provides an alternative (with the opposite sign) for those syst=
ems.
> > +.PP
> > +.I tm_zone
> > +points to potentially-constant static storage and may be overriden on =
subsequent calls to
> > +.BR localtime (3)
> > +&a. (this, however, never happens under glibc).
>=20
> What is "&a."?  Is that documented somewhere?  I didn't know that
> abbreviature.

Possibly an abbreviation of "et alli" (Latin: "and others"; modern
abbreviation "et al."), as "&c." used to abbreviate "et cetera" (Latin:
"and the rest").

In English orthography, "&a." is nonstandard, possibly archaic.  ("&c."
is _definitely_ archaic.)

I'm not a Latin scholar, but it's possible that "etc." is better used in
reference to other parts of a whole.

"Dude broke my arms, my legs, my ribs, etc., and laughed in my face."

And "et al." is better used when making collective reference to other
independent entities.

"Art Cohen, et al., brought a class action case against Donald Trump for
fraud."

But if a real classical studies major tells you I'm full of it, listen
to them.

I snipped your advice about avoiding Latin abbreviations altogether,
which I continue to endorse.

> BTW, if the '.' is not a sentence ending, it might be good to mark it
> with the ineffable \& escape :)
>=20
> &a.\& (this ...

I'd avoid use of "&a." altogether as it will confuse English readers,
native and otherwise.

The dummy character escape sequence is not ineffable.  I just effed it.
;-)

groff_man_style(7):
     \&        Dummy character.  Prefix an input line with it to prevent
               a dot or apostrophe from being interpreted as beginning a
               roff control line.  Append \& to an end=E2=80=90of=E2=80=90s=
entence
               punctuation sequence to keep it from being recognized as
               such.

Regards,
Branden

--sny5vjceisalonmp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmkB2T4ACgkQ0Z6cfXEm
bc5Ajg/+MC9Gl8woCrf649VJMGHe7JNNJtkDrNK8jboYKhKjKlBUbZ5fs7uQn8Pk
S0axqk59yrGWxEAdAeI38sT/P0gjx8+RPuNnPrz0d3acJiyIByGJeJyMsghdwUuH
8E2KbgCiRHYc5HnHkUBieDlrRW+hJ1txPUAOqs6tCp4pEr09dek4xCLfh3FLJXB0
p1cuRG9wM/lhP3XDTd46z2CG31jZK2z/DhNjFg6ofD6Y5ep1XzRDI/0gyswQUAku
9CXQ4FAquGMl67WMWq7Bma3kR4D2RHySkdm4Pt4Yy3Ehb8reel43djvhd1KFw9+T
bS6B0UG5SsMokYxChjxdGSPrlV4B5v7QzYLZXNdmC2FL9eLG/Y814WP7RG2dPDX9
U1decHRADsIkBp0UnHnt3pq+eDD4MCuEsXmZRBr+8bbesTG9a73x0UvXkBfTtWbZ
m/USSO0j0ifTQI5nO9JSDsc/aRSkM3sqnEaXSdNM2sa3IRaulc6ygzhs40HN9Oc4
lg2camvkymI27558Y6Uk3T3BLFYEJH5LsBwIrP+Ec7n8inIt37oGNojDYM+mm63F
tsBkKM0aY0pis8to4Sl3m9gn2nqQODLIkvsg4GSpgiBgsDuBXdKrC8bmxhu3Xa3+
+LWU+XyxjbLBGNenWIyvll14lecLBCI0/zWAIuCAeVasQ1MsbcU=
=+GQE
-----END PGP SIGNATURE-----

--sny5vjceisalonmp--

