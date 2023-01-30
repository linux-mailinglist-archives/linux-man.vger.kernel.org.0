Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA557680F58
	for <lists+linux-man@lfdr.de>; Mon, 30 Jan 2023 14:50:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235497AbjA3Nuf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Jan 2023 08:50:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230340AbjA3Nue (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Jan 2023 08:50:34 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E64612941D
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 05:50:33 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id bg12so3444645oib.5
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 05:50:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V9mzXMOIc/jm68oJqIaW1gKPGCBvnBdeav6EN2g1lag=;
        b=KBC0xc3HT34vkGgTaNm2CpGgI0yzNwfx64DQCbE4bHlqYDo86683Bql3lEHTLPQJ31
         iRGXPUFftEJOWcZzk719UouRD7EZnRTpIId1PFE+d3dxIc+pNir9Lhm+5CNqbO5fwZc6
         9wyIvwKlDGxn7ncSWdeJ18noWiJ0RCldi1T4w69R8fwi0ZW5JkYPBp9hQ9nItZ2g1Bmv
         Kn7MrelHU3SxGk5rvpJic5Kte9ms6Exg48n5pfob8L054QewONoU+7SjDHpM2AGqv0PX
         1yQrhjH8mJ+SNT+A4x/XndEofaHn7WH/Q5bWZeSTegYrCG9wW350Wk55Alp23Yqq2tID
         UcnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V9mzXMOIc/jm68oJqIaW1gKPGCBvnBdeav6EN2g1lag=;
        b=6bPtWLSxS38FdhDBUQnIXXJyDlill1DvEGPbYs4aHhHg8YQv+q1RIo2tU5FX7IP5Uk
         0l/YEcmzgUASQN4Ikgyrl4jKEyZwcwuS+7x3tnJgBs5GUP07qcfsV8cJYttwqwXTxubz
         lNfvo+yrIcaswhtnzXz0mb/ffLkDcDUnU7ft2pvPrY8NnWOM6HcIH2vwmzTfS7CkbXVu
         YNLn6H3IhT/A8g9sGM3WP5pcP3bdOFgUOJ6sdI1jIuE00FAdfKt8R8DUlaTeLkSRQ3lu
         s2WuizJC8X32tBhYNQNJQSBuifsGxlJXizmeDsrfO+f+kQlk71gVRGHH3mpmLwmcYACH
         7hSg==
X-Gm-Message-State: AFqh2kraNqLYqLZQ2FyF+RXcZsBgluoNqA50OaY8l68wHS4gDqhZ/Vj2
        uBbyR5B1+aw3dgkbxRevPYJdNbPEcwo=
X-Google-Smtp-Source: AMrXdXtDb15JfQhjvvkZ0iJ3YXHhnbGk39m2yzoqskmZM9qHfpHViUf2yFFMXqMZ6pXCBcA6Cs2rzA==
X-Received: by 2002:aca:d80a:0:b0:368:8773:5fd3 with SMTP id p10-20020acad80a000000b0036887735fd3mr23713492oig.16.1675086633245;
        Mon, 30 Jan 2023 05:50:33 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id i186-20020aca3bc3000000b0035b4b6d1bbfsm4712615oia.28.2023.01.30.05.50.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 05:50:32 -0800 (PST)
Date:   Mon, 30 Jan 2023 07:50:30 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
Message-ID: <20230130135030.yj7dcbcdj35xwap2@illithid>
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
 <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
 <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ec2gk2xfnr4v3eax"
Content-Disposition: inline
In-Reply-To: <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ec2gk2xfnr4v3eax
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-30T14:15:50+0100, Alejandro Colomar wrote:
> On 1/30/23 08:08, Jakub Wilk wrote:
> > * Alejandro Colomar <alx.manpages@gmail.com>, 2023-01-29 16:48:
> > > > +.BR "=C2=A0=C2=A0=C2=A0 /*\(da*/=C2=A0=C2=A0 tv_nsec;" "=C2=A0 /* =
Nanoseconds [" 0 ", " 999999999 "] */"
> > >=20
> > > I'm tempted to merge this patch.=C2=A0 It's sooo qute /*=E2=86=93*/
> >=20
> > I want man pages legible, not cute.
>=20
> I know, I know.
>=20
> > Please make it
> >=20
> >  =C2=A0 /* see below */ tv_nsec
> >=20
> > or maybe
> >=20
> >  =C2=A0 long /* but see below */ tv_nsec
> >=20
> > (given that C23 is not a thing yet).
>=20
> The reason why I seriously considered /*=E2=86=93*/ is that it is a bit
> shocking to the reader, which will prompt it to read the rest of the
> page to see what the hell that is.

Even more shocking will be 'v', which is what it will degrade to on
ASCII, ISO 8859, and code page 1047 terminals.  On top of being
startling, it will look simply like an error.

> I'm worried that if we make it `long` plus a comment to see below,
> many will ignore it.

That's on them.  "/* see below */" means what it says.  A person cannot
reasonably claim they weren't warned.

> /* see below */ with no mentions to `long` might be a reasonable
> alternative. Maybe I'd use /* ... */
>=20
> What do y'all think about it?

I think

long /* see below */ tv_nsec;

meets the requirements at issue.

Regards,
Branden

--ec2gk2xfnr4v3eax
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPXyx0ACgkQ0Z6cfXEm
bc5NVxAAl2tcUhpGtwjLx6r7M+WOwt65ALZOYpLkzcdvB9A2FaZ6teEnMh8cQbNj
mnKdVLvov4z9CgFhRFAuz24R7o8LbF52YrPMNjUwUj0NlDGcbAJAmHmPT6kG1ATG
dyk8zbgTt2CyfMwCuzIamBBIq6t8z3M3yE/iXfO54vC2vBW3wBI5RHa1e95vR7Nb
bfoKC6hsyoI0LFonjUnhZu5oMCkyJ6AF1eP0oF3FCC5AcTzsWqZnxPZgKuu9Ruvl
RLTyRGtuveV7JN3I0CMp4S4g4bwj3RzBfXS3YuSupW9GT7D3/0ML1/CECr45J6gr
/j8msq98hXRBdTNvuQJxOBXLZtf1N7p/cJsUJWtTXGc6jWXJRYRvN6U4kZ2ZFooX
carwe8tNOidxCTUKaVAr2lE9D7scENfDLi797EzRuuhnQsHgwXOA4gI2c4E2WYaJ
iLQa8TaYaaV2GfY3BMGipM0K7dQIiQcLwie/OlA/J8A+nmcN24rxmyVw9D/H5trj
A46sbnD0mcoUlmxwPtf8K2DIQZhudfaN7LU3mIlh+QRQkdXnR07SzUTyBYfCnzxh
mJ79rKCu1giwL+AEAushXuI7NNSkC4e9BahGCIc/yMW8eLZh9znDfb/T4IYQ5fmk
5NoOg+QuuIk4JyA1FhmZWIHzQbnwbH2sQg8SheXeVorrTOAEaH8=
=AytZ
-----END PGP SIGNATURE-----

--ec2gk2xfnr4v3eax--
