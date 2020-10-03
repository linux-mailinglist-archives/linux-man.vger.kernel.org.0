Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F80F282210
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 09:48:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725763AbgJCHsQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 03:48:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725730AbgJCHsQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 03:48:16 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D17AC0613D0;
        Sat,  3 Oct 2020 00:48:16 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id e10so2500315pfj.1;
        Sat, 03 Oct 2020 00:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3wg7vDGDoSPn36ce9BVY8UU5tlfwOEjnljRYdmgCRis=;
        b=UjnPBEiUGGr8HIuzf+xx5wbjWJiJoHTICvhtydHjaN0P/hauLfacKsRm1GGq+Lb1Oi
         wYwJ+oFwuBC2okNDDbb5NYep42oUxx3Ctt3A4cR4IDP6tsoemb1fditGHaNKNr+D7Jw4
         2tsxp6Wqrbp8PwGHVn8c2TaJqNCrmD/30D4vccJz+tLPRs1rLRg0bI5R0PsTrLn7wlnc
         aB1scNVuunjWcCIvytiZU9XktiJa4kRHF+xnq83sYXVlcYdqqrmsyI8MLy8P8BYOKwQc
         sbWrEBl3okOBlXGBHSAuFgm9eT3+0V2/CL2pQO0ouk5gIh2UwUS1XO05JGpVsgQU1HvT
         ScxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3wg7vDGDoSPn36ce9BVY8UU5tlfwOEjnljRYdmgCRis=;
        b=VvZleWYKTw0jtkIWTcQ9S2gcEI3NEdgR0O2gxu7y+PA4HJsIvMLCBPv0UdEI5Yj7x3
         jn3sFFbzFrKeh/LwG9KUvIpSmBoCBIHM/BSTn6E4q+JPcZyi78uhbSipKk6iWD0vTQgy
         82z8D+QtQwLq3LelGQ/Kl3qhoyOQbXkmxtSBUl/OI9+D28uuUoUklzfcbQGKVANiTcMH
         ygVfyVm44e5HMVPx4IZmSyi+r3QXTxvEhIWy+MND2qFB1sMEyGYjPG/+XviAMZOfkII1
         oiFFBj7YgLLg+J+3fMaIky7pQONj2puKbxnfR3UeO5L09baQF41xovnmSUs3c0PlZQnD
         9S6g==
X-Gm-Message-State: AOAM530vlsGqTNp6ZaMqx0TAiLKMiF2RmbcHhZeNGJ3oTF+hjhY6rOqT
        IhS/PJ9VnpkKdqZ/YByzMaI=
X-Google-Smtp-Source: ABdhPJx0YTtqK1GDMY58LULCRH8vEEEzcMfd47EYZmabLdxW34wdLuuM+dirn/Hxhydgoju0yq/aKQ==
X-Received: by 2002:a63:1d26:: with SMTP id d38mr5827413pgd.0.1601711295732;
        Sat, 03 Oct 2020 00:48:15 -0700 (PDT)
Received: from localhost.localdomain ([1.129.171.185])
        by smtp.gmail.com with ESMTPSA id x20sm4594105pfr.190.2020.10.03.00.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2020 00:48:15 -0700 (PDT)
Date:   Sat, 3 Oct 2020 17:48:09 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        gcc-patches@gcc.gnu.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, jwakely.gcc@gmail.com,
        David.Laight@ACULAB.COM
Subject: Re: [PATCH v4 1/2] system_data_types.7: Add 'void *'
Message-ID: <20201003074807.swdpnwaq2rzigadl@localhost.localdomain>
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
 <20201002151419.32053-2-colomar.6.4.3@gmail.com>
 <3941e130-df05-778b-dc76-90cd58400192@cs.ucla.edu>
 <d794a058-0506-7c3c-6f3e-518a788933af@gmail.com>
 <ff1700df-d383-44e7-24b4-da10000f83fc@cs.ucla.edu>
 <5b01a17e-5819-115f-7972-7f849d4356df@gmail.com>
 <78368866-e848-d208-eef7-f3a93a797853@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rr7offwlvonk753t"
Content-Disposition: inline
In-Reply-To: <78368866-e848-d208-eef7-f3a93a797853@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rr7offwlvonk753t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-10-03T09:10:14+0200, Michael Kerrisk (man-pages) wrote:
> On 10/2/20 10:27 PM, Alejandro Colomar wrote:
> > On 2020-10-02 22:14, Paul Eggert wrote:
> >  > On 10/2/20 11:38 AM, Alejandro Colomar wrote:
> >  >
> >  >> .I void *
> >  >>
> >  >> renders with a space in between.
> >  >
> >  > That's odd, as "man(7)" says "All of the arguments will be
> >  > printed next to each other without intervening spaces". I'd play
> >  > it safe and quote the arg anyway.
> >=20
> > Oops, that's a bug in man(7).  Don't worry about it.
>=20
> I'm not sure where that text in man(7) comes from. However, for
> clarity I would normally also use quotes in this case.
>=20
> > Michael, you might want to have a look at it.
> >=20
> > I'll also add Branden, who might have something to say about it.
>=20
> Yes, maybe Branden can add some insight.

The "short" answer[1] is that I think Alex is correct; Paul's caution is
unwarranted and arises from confusion with the font alternation macros
of the man(7) macro package.  Examples of the latter are .BI and .BR.
Those set their even-numbered arguments in one font and odd-numbered
arguments in another, with no space between them.  That suppression of
space is the reason they exist.  With the "single-font" macros like .B
and .I[2], if you don't want space, don't type it.

I could say more, including an annotated explanation of the groff and
Version 7 Unix man(7) implementations of the I macro, if desired.  :)

Regards,
Branden

[1] since as everyone knows, I struggle with brevity
[2] I (and others) discourage use of .SM and .SB because they can't be
distinguished from ordinary roman and bold type, respectively, on
terminals.

--rr7offwlvonk753t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl94LK8ACgkQ0Z6cfXEm
bc5+nw//f6fop8j8PwUtzgiCmcOth3lifScGtsY1u+vE/Xb2ERSkOYCr2NHR4Mpt
/tITo0C2SKUPleEc38EapkiVFWaqJ81nhkaluibs3HxobuvTbocrfMDirAqvykcI
CE6fIdbkfSL770MCHpPcrcBCdjb2QJ7gdUzAUln8Gps+8G+pM3508Yt/YmgYU4uI
d0D+IyT5fCPx1IBUebZVidX7It3DWPVuuu3dQ2zY9zyDbisazO9RVnbckcMYg2tH
M/PvT59gKkBVgpTGsfmVX7oaEgV1UmvW7Oqwq+u/oY9HKMXgcw1BSp3k40DdJs0N
zxcsJcH1njk0Zs20t2SNWNh4WrB8KMHo4ssfouOXBBT+GA+TJIjHKjm+PVUqC9XL
Rvb5Gdn64xSsZjzKH8xm32VqJosw7QXpZ19urQBvamKpZoIknhr2E/2UeiN+MZ9f
6aRnEU9m+iu6jfm62nmrX6bq+0E0oRTmOkypWy702NSgcKgG9OiISGwgxaCoOkRj
Xr2BYst99HKU4W/Y0aReRzrwDZlkoZJi2tl/ibTxO4bJc/pg7Z/UbqcSw61AXH5j
Y8cfODaE4FWRflNhK+0yQ0cECPSmqOR8TBULugUL3b5bFRBm2ciMMBIGe+sthD4o
e0dISavwN4eiD5D26l/5/MmYm5RTETwYltFaYYDh0uAUiBdMVCw=
=xxZ3
-----END PGP SIGNATURE-----

--rr7offwlvonk753t--
