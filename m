Return-Path: <linux-man+bounces-127-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 069477F2BF4
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 12:41:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36F811C217E9
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 11:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFDAE487A5;
	Tue, 21 Nov 2023 11:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AOkhi2+n"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5007710F
	for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 03:41:45 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1ce675e45f9so19689935ad.3
        for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 03:41:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700566905; x=1701171705; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5XdT8oGhVp3BjevQN2sPgeBxpImdjBC5MfI/vwwv3C8=;
        b=AOkhi2+nZCl9F/rsyXSzBVf6oqKW7FQQm9+qhHOa9n1lEiDb8ww/pHawo4onQp5IYs
         Q/tQXl6r7DldmGcnTR7hxXRwYIsW8QZRcxUcCkAWe9b59RmOM59OkL+vm0Niu2mQVHVU
         XQoO5gx97dz5leL0k3a4C0vDgThMdaFz7zvDVDjud5Xqui0fr9Y5fZ9XF8djEdIb8mZg
         g7QSPz8uQSu2ux0qaScA7PAqTc8eslXxpV9D+Dpllptc75FOYoTfAa1xDHzMNFVZ9nvz
         3Z6TbzyMbulJpRssPga72YQLtey8AVJRKLz+nFLSUW8I0ec8Qd1pu7+ufCYAFeJ1cWHb
         D2pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700566905; x=1701171705;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5XdT8oGhVp3BjevQN2sPgeBxpImdjBC5MfI/vwwv3C8=;
        b=JihCkdQVGQ36eeOkkFzuX3Cz+4GFXoYCqhaYZ5D7oxW/6QsbWbTSvXA9IchQwCJiRb
         chaYQKdn+K5H2rsFoqepZHhsxYYGTJ+kfC+6aMqoSt/KEPNCOjaOSPZ5KIS4oyhHTGPq
         xBKX7ypar1Y4oB5F3ZOg6ft+aGUOAi11zHKV3EBQmM2TgV4PmX0h4MrEjzNYGe84OsEA
         mBU8SA8gjAwV87knKOxOfBdmFV4Q2k3Bkde6fJ+nP2cSV94uDM4dLYF4SoH3Y6N5A3jk
         AFC/Dnh/ttwMWbEkHsMpEUgKQ3UaLRnlfdzq+BN7q+wLi3pqxpTB3Ye9VlH05lGfMKXz
         Zwxw==
X-Gm-Message-State: AOJu0YzwngdHQyI7M8WJ17R0vAHtOAxR5jx/1wGiyB53xHaWiSn/SU3D
	SZDrq42g9N/Mj01X+kAcd1Q=
X-Google-Smtp-Source: AGHT+IE+Rb22gneSfhvlnuqE2TAfG+2xCgaNlIAXoW1ypd96nLT1f90JuGSoi7J21mF3wd0Ms2v36w==
X-Received: by 2002:a17:902:d4c4:b0:1cc:5920:1d2a with SMTP id o4-20020a170902d4c400b001cc59201d2amr10209883plg.13.1700566904637;
        Tue, 21 Nov 2023 03:41:44 -0800 (PST)
Received: from archie.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id l9-20020a170902d34900b001cc3098c9f8sm530525plk.275.2023.11.21.03.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 03:41:43 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id EF51C102106CB; Tue, 21 Nov 2023 18:41:41 +0700 (WIB)
Date: Tue, 21 Nov 2023 18:41:41 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seamus de Mora <seamusdemora@gmail.com>,
	Linux Manual Pages <linux-man@vger.kernel.org>
Subject: Re: Add sub-topic on 'exFAT' in man mount
Message-ID: <ZVyXdZ0MYBFyr1xG@archie.me>
References: <CAJ8C1XPdyVKuq=cL4CqOi2+ag-=tEbaC=0a3Zro9ZZU5Xw1cjw@mail.gmail.com>
 <ZVvs3fgkANj9BSYh@devuan>
 <CAJ8C1XOZqA=T0z5eHTSdXvpMzBZKUmYs-9=bBUfy_Ok5wSUN5Q@mail.gmail.com>
 <ZVxSrmdVkalf3FL9@archie.me>
 <ZVyBmFI_TvmJkaN1@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dnkgpTpkFn7BZz/k"
Content-Disposition: inline
In-Reply-To: <ZVyBmFI_TvmJkaN1@devuan>


--dnkgpTpkFn7BZz/k
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 21, 2023 at 11:08:17AM +0100, Alejandro Colomar wrote:
> Hi Seamus, Bagas,
>=20
> [I'm reordering to better reply.]
>=20
> On Tue, Nov 21, 2023 at 01:48:14PM +0700, Bagas Sanjaya wrote:
> > Please don't top-post, reply inline with appropriate context instead.
>=20
> And the mandatory example.  :)
>=20
> A: Because it messes up the order in which people normally read text.
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?

Thanks for the pro tip! I was adapting my above message from broonie [1].

>=20
> > On Mon, Nov 20, 2023 at 05:44:40PM -0600, Seamus de Mora wrote:
> > > Uh, OK... stupid question first: Where is ./CONTRIBUTING?
> >=20
> > It is in man-pages.git tree [1].
> >=20
> > Thanks.
> >=20
> > [1]: https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/C=
ONTRIBUTING
>=20
> Yes, it is in the root of the source code repository.  Since you sent
> the mail to the correct addresses (alx@ and linux-man@), I assumed you
> had read at least the head(1) of that file, since it's the only place I
> know that documents that.  I'm now curious: how did you know the
> addresses to write to?

Observing the mailing list [2] AND read that file in man-page.git tree.
For the kernel proper, I always look in MAINTAINERS.

Thanks.

[1]: https://lore.kernel.org/all/ZI2jhXUMv9QYmL94@finisterre.sirena.org.uk/
[2]: https://lore.kernel.org/linux-man

--=20
An old man doll... just what I always wanted! - Clara

--dnkgpTpkFn7BZz/k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZVyXawAKCRD2uYlJVVFO
o9cwAQCtvDSIN+cHyxybKcdLS92NQ/Vb5AmE+awz8u7KuwpkWAD+M0v+B8x/erry
Ha1WVBIoNmvw0tXlCSnyIhYfoZkwWAc=
=Nldo
-----END PGP SIGNATURE-----

--dnkgpTpkFn7BZz/k--

