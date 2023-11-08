Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 035657E5043
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 07:18:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbjKHGSU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 01:18:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbjKHGST (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 01:18:19 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B30813A
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 22:18:17 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9dd5879a126so742893766b.3
        for <linux-man@vger.kernel.org>; Tue, 07 Nov 2023 22:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699424296; x=1700029096; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m/N0lbM0NPY99LfHA7C7SmfD4ZIP/W30Bi5M7g9FzSY=;
        b=e6qJf5FOGeb2bmmggL7Dbk8KHN3dc3WYWSu3uxX1QBt22Qm19HVnI5gH7kkTBeL1Em
         lCQPAwWEjrq34ESqwM2IzFNIP64KqYhgOhWxJ2h/OXhG+Kj8GPJPqqCKeT5W4tN/jmRi
         DiI/PcO6JWAT5g3i8hQVOt4shoXPcItCQi9m/h+iKYAgrOqTIqaNeNf5Ks8D0sVTF72S
         vnjuajsGL5ToEEmqu8MZbXCzVtF+FKB7eFSFJM2jtu6oJhCbQ0rMI1Af7PEDeIO2/HBa
         HU9gKv13/XdCgnIPa9xGHXNkjvhARisC+G00gaZ26DZ9AOQyyTnU5zyFJAmP1Numo+Ak
         1ALw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699424296; x=1700029096;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m/N0lbM0NPY99LfHA7C7SmfD4ZIP/W30Bi5M7g9FzSY=;
        b=bsoBui+UkeO6fw9/lNOKvyBSst9UwTYM9F66BcMxHDkSk8gRFMevzY+/rUpU4WIZbR
         A2mBXjpr8ayjT67f7tTIRbtgLPwZVEQX/SLvy2fI1Yf6494xLx9UJE6DfB4d7SC6GqWv
         0qqvlIvxZdChFuzYTgAlLZ3PXxtPmRsNXNMQg2t3vQ5w7l6+iiTu8/Rps/vPo2TPUU16
         pDNMw+JXvA9SvO0frpSNZAYB2aSs2iTcGrFKlLB+xh066vEYEy6nqWhd+8fqo7uWNyd6
         Q+UbG6Hmmizlz6nyUWs2ILzMilfQQ1Rzqwbc8p5EuJhVXHFKSXsMji72pr+MD1y98VMG
         +gMA==
X-Gm-Message-State: AOJu0Yx7l2JKMaXIS3VUWFOV/wi5DMCUpx6HJ08971ZN3bTvbMfWJJF3
        /6Ov/+VmEkhkaUZFE5GZR44NC6W2eJo=
X-Google-Smtp-Source: AGHT+IH1wxlafnFkD0vsaVvBwI37Y/SXKR4ffRqpoEKwicNPDfcaXoUozWKXYZ8wIB4myK8QCIvTHw==
X-Received: by 2002:a17:907:96a0:b0:9dd:8603:ce with SMTP id hd32-20020a17090796a000b009dd860300cemr594172ejc.9.1699424295569;
        Tue, 07 Nov 2023 22:18:15 -0800 (PST)
Received: from dj3ntoo (223.sub-72-107-196.myvzw.com. [72.107.196.223])
        by smtp.gmail.com with ESMTPSA id f4-20020a170906048400b00988e953a586sm506688eja.61.2023.11.07.22.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 22:18:15 -0800 (PST)
Date:   Wed, 8 Nov 2023 00:18:09 -0600
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUsoIbhrJar6ojux@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
        Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2CVt/DEatHOhrS2Y"
Content-Disposition: inline
In-Reply-To: <ZUpjI1AHNOMOjdFk@devuan>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2CVt/DEatHOhrS2Y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 07, 2023 at 17:17:29 +0100, Alejandro Colomar wrote:
>=20
> I would love to find this API useless, and in that case, I'd go further
> and add [[deprecated]] in the synopsis, and write a heavy statement in a
> BUGS section.  But I can't do that while it's still a good function in
> some cases (even if those cases are bad design, such as utmp(5)).
>=20
> On the other hand, utmp(5) has other issues, like Y2038, and AFAIR it's
> being deprecated, so maybe we could consider deprecating strncpy(3).
>=20
> If I see enough proof that all APIs that require this function are
> deprecated, I'll happily declare the function deprecated as well.
> (in fact I already did some time ago, but then found this use with
> utmp(5), which is why I removed the deprecation; see
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man3/=
strncpy.3?id=3D30d458d1a6261221bad15e58f1862e0dda24f4a0>).
>=20

If you ask me, I'd not mark libc functions as deprecated without some
kind of consesnsus from the libc maintainers too. They may not go so far
as to add the `deprecated` attribute in their own headers, at least not
yet at that point in time, but some kind of written "Yes, please don't
use this function" would be nice to have before marking them in the man
pages.

- Oskari

--2CVt/DEatHOhrS2Y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZUsoHQAKCRCp8he9GGIf
EcXwAP0Tja6tdbqOZ65EfldqT6acKrZujDdMPTTnOwy6M13s1gEArakRw3QM1pTL
zg3/1N/oUiYJeGDaCr50BxeTBMY5sgM=
=iYNq
-----END PGP SIGNATURE-----

--2CVt/DEatHOhrS2Y--
