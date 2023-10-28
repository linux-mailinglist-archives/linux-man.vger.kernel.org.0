Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D0BB7DA734
	for <lists+linux-man@lfdr.de>; Sat, 28 Oct 2023 15:22:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229848AbjJ1NWF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Oct 2023 09:22:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjJ1NWE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Oct 2023 09:22:04 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43F8DE1
        for <linux-man@vger.kernel.org>; Sat, 28 Oct 2023 06:22:02 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6ce322b62aeso1846674a34.3
        for <linux-man@vger.kernel.org>; Sat, 28 Oct 2023 06:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698499321; x=1699104121; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ojqQgyN7Ck7eQND/hLRtAHWPo5dyybSuWT0gsv3Afz4=;
        b=EJqqJ+VPMsicQjNAsCQVqrZJ5W30PmC5PYR26wVh1SqKn8riWiAhQi9h4Ock8Mgwbh
         IaOFiqsB+a4vWo7kyYiURkvfIjYRiER2+FfLfuzRf9pkyM/XgPGVDVVZ8ZCi7DRizejt
         20cgz4j1HW/0DDPFVqfcd3nH5pKpP4D68pzzas/DJ1so7E6WOkAZDWVYfOTwm5VUk/Yz
         nrU4rvUEMeRFLVl9KVC4KlZ0585RnB1Cgl1A+mP9Vmj+sS/UegG4CbjuK6Ezgz04Zd9r
         We4t46knLZRDFkDKdRRk9FOXkYinwBbTTnIlnjkOnK89Pl+LFuHDvnjIpndJToKZxxKo
         lzmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698499321; x=1699104121;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ojqQgyN7Ck7eQND/hLRtAHWPo5dyybSuWT0gsv3Afz4=;
        b=v7j2y4b2btKekcu1iziyazkeASnXJVNjDxTTKdbwj43SKpAnuZnQl4wR0FaHM/6pbu
         64n5pHBptfKKKa+IEcS9pZZTnDCfhEwSklyOjoijf9ILmBDYNhnFScS3UYKxL1G36N8o
         FlaeA1OZBTFZ5pUYPomHb63//MAfn0I3qIaQ3qimkaOGe7/WKUOpzzU9bnr2pH0Y18Jb
         sle2jXQJsMnHxzluEZBnTkZuVyn1omca4zbZfYrmNPzVrnFFfjaJrfnxV3JTOYDIUVf6
         BFaJeFQoL+L/+1LmutfvmbViINmoCRxoJdrXQsS51w3kgUISEEEX8q8Md+Ti92kdnC9X
         Ezbw==
X-Gm-Message-State: AOJu0YwGUW9dqXtMs05KJhaQyhZk8dh4gTOK9Gj4neUtOH7l4fOkJAUx
        K446Pizg6nZcKD+Ov0A0IiRRt3leml8=
X-Google-Smtp-Source: AGHT+IEMuWm2CpPphlZQDLqNK0Yf/vp0UygjkXBmzBsuL7LcZHRMWhzXQhzfzy0oUx2r/8eYxDMyQg==
X-Received: by 2002:a9d:65d4:0:b0:6b7:5687:8a9e with SMTP id z20-20020a9d65d4000000b006b756878a9emr5662620oth.15.1698499321521;
        Sat, 28 Oct 2023 06:22:01 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id k5-20020a0568301be500b006cd2c236b8csm658813otb.3.2023.10.28.06.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 06:22:00 -0700 (PDT)
Date:   Sat, 28 Oct 2023 08:21:59 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: `\c`, mdoc(7), and man(7) extension macros (was: [PATCH 1/2]
 man*/: srcfix)
Message-ID: <20231028132159.zkf6fh34mmfjzu37@illithid>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
 <ZTpz3A0yijoxDvip@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2ztqc5cbn7glsi4t"
Content-Disposition: inline
In-Reply-To: <ZTpz3A0yijoxDvip@debian>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2ztqc5cbn7glsi4t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-10-26T16:12:36+0200, Alejandro Colomar wrote:
> Yup.  I have similar feelings about C++, BTW.  I have a hard time
> understanding complex languages.  I prefer simpler languages.  Most
> features can be implemented as library code, without complicating the
> language.

Just know that following this road will take you to Lisp.  Or Scheme.

Or Forth.  ;-)

(Personally, I wish regular C _had_ put memcpy and memset (or bzero :P )
in the language.)

> Yep, I have 2/2 locally.  Maybe reply to the mail CCing vger, keeping
> only the commit message, so that readers of the list can get a notice
> of what MR.sed is.

Okay.  I'll aim for that for v5.

> I always make the mistake of writing MS instead of MT, out of inertia
> of having an 'S' for the start!  :D

Yes, that's what Doug McIlroy thought might happen.

> The others have nicer mnemonics that work for me; I wouldn't change
> them.  And well, just for changing MT, I wouldn't do it.
>=20
> > 	SY -> NS (syNopsis start)
> > 	YS -> NE (syNopsis end)
>=20
> Hmmm, no; I don't like it.

Fair enough.  I venture these things on the off chance that they're
brilliant strokes that will greatly increase the appeal of learning
man(7).

> Regarding PP, LP, and P, what's the history of them?  Why do we have
> the 3?  I'm willing to reduce them to just one.

We covered this in another thread, but as Ingo noted, there is no hope
of actually _retiring_ any of these.  At most they can be documentarily
deprecated and a high "-rCHECKSTYLE" setting can gripe about them.

groff man(7) formats every Seventh Edition Unix (1979) man page
correctly as far as I can tell, and I don't want to ever give that up.

(This is a slightly different objective from preserving perfect
compatibility with 7th edition's tmac.an.  I have no qualms about
discarding compatibility with details of macro package behavior that no
one relied upon for practical purposes.)

Regards,
Branden

--2ztqc5cbn7glsi4t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmU9CvcACgkQ0Z6cfXEm
bc4Y9g//UTnmfH72MjqJKQrwB7Y/lJkUh13+0LBgbFwIzwXawZaASbm3P/V0Eoul
E+RUxgg4HcX2xyVZhTTDUlOpaFThqeD1caqXR9i934wfHvM4TDMKmSkPXzoZQFJl
3caQ0aopDcQ6DTHSjzy7CNCoEFoPef86s/eQMUv3w9A5TRE/MXrphQsP//PXRGn4
rid+i1bpRigSTgAn5874loGJLwGLLVeZzEkFjYXAtk1cl7FVx/xpYwFTDiLhUgyn
5j3942An5WUQ2nKw4Yxu1nMXqQUizU0UwEKaWwGU/4a+FPYD5x/dk+2Ig/K3+aN+
ecaLOvacLzg/ugQq/H/V3utSSL+4q6wceFXgiad12xSzcJd3PjiSG2db//Q1obDo
tGZBFCtr6VpZnOsWWbx8IOujM7ZJ/38ngEdSriV0DsQd7WdNEIZpLjErm7rezDaQ
galxk5Ww5PhnPR+ToLmG33POhMSxVLBKlhF/A8Y/3Z7pHATpm38YhDqkTkrSR2xb
udR3UxteMYaTmvJPRZquSwHvjakAhmJGbuRsIwNOEvUgRMEiSjZdFemzl3EjZ8cO
qEzk1K0sDRwRlD7eNMsIlKr6nV/YygS3VsqxzfCCMCvUerO9CN62h8qAliUS21oW
5Dw3MXEVI8j3gn1CUR+UZIAXuuqcfVrczkZHPlggeKEmy1bHzyU=
=Bggo
-----END PGP SIGNATURE-----

--2ztqc5cbn7glsi4t--
