Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1C3C77D94B
	for <lists+linux-man@lfdr.de>; Wed, 16 Aug 2023 05:56:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241663AbjHPDzw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Aug 2023 23:55:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241720AbjHPDzk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Aug 2023 23:55:40 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8F431FEC
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 20:55:25 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3a80e665410so1662490b6e.2
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 20:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692158125; x=1692762925;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=K2jyIgYy8BCPt2/ByxfPNIHBhbek52EyQLbvNmjWlRg=;
        b=ckmRbuKiaxT/DGscqC+Zs+Fm/RN7rASn6IgtWsLnNpfiaKVaGs/ZMAcQUw7QMJ718x
         nDveh//EjjnFXEDC4FVNdq1iZS6W6WB9KJinawxHg/Tj9SYV2pQMP0tULRNYdva4DnQ0
         4EffHc0R71h96SbCY9aNCcrEyFlP0Rt0EnI0uNANgZMXmLSscKP1fM1mXLbnQvYJsDMR
         wiCpoVUHpul36czxcFWq6ngVtMmNA6F3GGjuwT+A6AJwCg+a03pSKVofV9WrakycmhJi
         SBmHF2t5U+5+5ulN5gunf5CU4lNQ44RIRRAdASWt5aPJvG5WdKQrzMo30y0AWZbsbYKn
         5E7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692158125; x=1692762925;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K2jyIgYy8BCPt2/ByxfPNIHBhbek52EyQLbvNmjWlRg=;
        b=TM7ye/nm/d2fE8+1SEsZWIwSMAA2sEus6cdzx3XRKsRTGDirpPFq8C/dKX1H2CPtca
         ZvC/3L4E1IAQLJjnV93S+Bkv+oeZvrxqV40PGtKl8LHJltuj7R4azwLQ83rqiiEVAJhk
         3ZDOs3sDxAR4wr10KS8UshvQnH+n0nlkKi27qRVCdmWYEmGNlaiiLnNFgP+2tPB6H4q8
         ayAoHIMF+csblJHp93NL99xsfIkov7DnBgY0OavX6Ay3z8PQ7pAXJkjz5VrDlsf950Nf
         G1ewpRgiRtewGw05hKVXU+CuX0jR9TwSLSTijW3r+3UPLaEcY/LQ6V777F4mTYMELgu0
         Qvrg==
X-Gm-Message-State: AOJu0Yzdl9P7U1rKvPk1GdFbMooOxKFpSnRNpZJJBDEfRb8eaS0JIGuQ
        hgyr4/x1jn/YKdjcSblkGPtfniITWUU=
X-Google-Smtp-Source: AGHT+IE5ib6vmn6EGs4qhXzeAHNLoNElSVzyynTvDfDSRxlyNRhUla31KCsdkI/lCbjc2w5HOw+mfA==
X-Received: by 2002:a05:6808:2883:b0:3a7:3988:87ee with SMTP id eu3-20020a056808288300b003a7398887eemr672401oib.58.1692158125127;
        Tue, 15 Aug 2023 20:55:25 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id a10-20020a05680802ca00b003a05ba0ccb2sm6100762oid.39.2023.08.15.20.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Aug 2023 20:55:24 -0700 (PDT)
Date:   Tue, 15 Aug 2023 22:55:22 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, groff <groff@gnu.org>
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
Message-ID: <20230816035522.fhfkciclx4dvxpzk@illithid>
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
 <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
 <20230801141248.bo5sujjwjfob6pgj@illithid>
 <fe34c908-f441-e256-2f23-1dba764be905@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rtpc37wi4dp3gzff"
Content-Disposition: inline
In-Reply-To: <fe34c908-f441-e256-2f23-1dba764be905@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rtpc37wi4dp3gzff
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[dropped Ingo, Jakub]

Hi Alex,

At 2023-08-12T17:35:32+0200, Alejandro Colomar wrote:
> On 2023-08-01 16:12, G. Branden Robinson wrote:
> > At 2023-08-01T15:35:10+0200, Alejandro Colomar wrote:
> >> Still I think this should be documented in our commit.  Would you
> >> please send a paragraph (and the position at which you'd place it)
> >> with which I can amend the commit?
> >=20
> > Yes.  That was on oversight on my part; I was scrubbing out all font
> > changes (with "-P -cbou") because my concern was with unexpected
> > changes to adjustment and hyphenation.  The style change for man
> > page topics (from bold to italics) was a "known factor" (to me).
>=20
> Would you mind sending an updated commit message?

I did, but you found a fresh problem, this time with part 1, so I guess
we'll be going to v4!  :-O  Also I'm going to make an attempt to drive
the part 1 change with sed as well.  Just to see if I can, and to see
what happens.

> Heh, I noticed some weirdness about it, but it happened to be after a
> -rCHECKSTYLE, so it seemed like it could be some improvements that you
> had applied upstream to CHECKSTYLE.  =3D3 definitely made sense to that
> register.

GNU troff(1) does not raise a diagnostic if a register assignment is
followed by garbage.  That's disappointing.

Filed.  https://savannah.gnu.org/bugs/?64559

> > Please double-check for that before pushing to kernel.org.
>=20
> Please send one that I don't need to modify.  I don't like modifying
> other's stuff, in case I break it.  :)

Did v3 2/2 show up for you without quoted-printable damage?

> >>>> and against man-pages(7) recommendations.
> >>
> >> Well, we should update those to use MR.
> >=20
> > And man(7) too, I guess.  What do you think?
>=20
> I want to kill that page.  Please have a look at it, take anything
> good that it has for groff_man{,_style}(7), and ping me when I
> should sharpen the scythe.  ;)

Ok, will do.

If the page is withdrawn, I expect distributors will need to manage the
man.7 page using Debian's "alternatives" mechanism or similar; if
groff_man.7 is installed, man.7 should be a symlink to it.  If
mandoc_man.7 is installed, likewise.  If both are installed, the
distributor needs to select a default preference.

I expect you will want to emphasize this in the release announcement,
when the time comes.

This already needs to happen with soelim(1) and roff(7), but it doesn't,
exactly; Debian renames mandoc's versions of the former to msoelim(1)
and the latter to mandoc_roff(1).  Termux simply throws groff's versions
away and installs mandoc's versions as soelim(1) and roff(7).

I also use Termux.  Imagine my surprise when I upgraded to groff 1.23.0
on my tablet and brought up roff(7).  I was expecting to see myself in
the mirror, and what should greet me but the visage of Ingo Schwarze!

Unnerving, no?

Regards,
Branden

--rtpc37wi4dp3gzff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTcSKIACgkQ0Z6cfXEm
bc4trg//SfNAiso8Gw4EEJYCdSrpvJQBnsc1W9b6DgrHu8rIfgflqXEhW4/igdQ9
WhV7SWT624Dez4xQZBWpGaz4J6ARkWMKiZPedQtAgKRToGK7Kuha9gAuNh5zVJye
RTmR79jZjAqdWxYYZs1c0nvPGZ5v7rmuuOHyQrWneaiwWpNH2IJnDLuN409LXF2y
7pCR5P/UKeUK/p/cNkB6LVx19lBgx6OrCo3OS6/aRtJXvHTTSopd+T5DqnYk8DoQ
zdLTIBFPoAkwwfRHfKbuaLl4plrj0UOKpboivc9/yp7ymtWgcClvLRmJpn2aardT
yOk4QHjcjBRpedUxbi3FAPE/1CU3bo/a3usdu2P4xDbw5trBZ7fIHrmWD6PlcFaf
KnJfb56YQDA7QCkUujOv71Iqce51RAjiTq7vCqWbzLOJJA4pKoFWC2Hp7bXiB3gw
9HA87/BvVkizTS8iqSk/IuUBpMU9FlIjZdCCDrET5q0rd2Inf9lTYfaTC1cir4Mk
6hc9EX1bU1eds2yMYXjalko2dTxZbgI8ybWtC7QEP8Ov2vnrRXT9y/cvzE73vu+P
tITchYXYYHeUYmsbMEsdkw1oX/OOCHCGiHq0X8VkrK16MwKc93TQpaFt1/U9sflS
lSeH06KCqrwu4cMvWdSByrSCNFdGOqQsNqXvOuj3H3R+xcmwGzo=
=XVsC
-----END PGP SIGNATURE-----

--rtpc37wi4dp3gzff--
