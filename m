Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED01C69BB5A
	for <lists+linux-man@lfdr.de>; Sat, 18 Feb 2023 19:08:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbjBRSII (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Feb 2023 13:08:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjBRSIH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Feb 2023 13:08:07 -0500
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7F4E12591
        for <linux-man@vger.kernel.org>; Sat, 18 Feb 2023 10:08:05 -0800 (PST)
Received: by mail-oi1-x22b.google.com with SMTP id bk33so562110oib.10
        for <linux-man@vger.kernel.org>; Sat, 18 Feb 2023 10:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zkEwVina518uBxxeAvXI2ooRCg5yC5CHu3y0+n8Knjw=;
        b=U0v9XoY0Q5Czd3CAMzjpr4L54RLV0r7LgOEeCxVEO6+pgISPtNOa3rG7/ZDGX/z6V9
         pQVpp++TT4rMB3yFUDixTO970qrH9qYyroxAC4sKBx+tSmYJvD/VMmxO3A7oMIFb9Mbb
         wDRsn3REcJr1nMZh4CCVSpPaZ/f5anoPLYMsKrz8TiG+T5EKI56vzgp+KZxhFfdihDVY
         0nm7RyvHVxtWsQul061CYExRiwRcUCapOs8QL/AfE8TvCBpA0wWsR9S3Zt+MBg6T8MHm
         jYQ7nP0neRQxlutgAmzNEhyPkPrQ6wo5WHSn1RXd154Y0zqNqM0ntmBmZoO5sZ8xfqIz
         guZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zkEwVina518uBxxeAvXI2ooRCg5yC5CHu3y0+n8Knjw=;
        b=mVyEukdJbHIkhZAx4fS1zyMD1RTuzEBw6ZEL5GUDLfvKxXrSkSWVF7mz6Hmht1pRNc
         3q96AAiqqyDKEyWpHZivh2ILGS4hPvulbuEcOf2lWhOEvqERHffanJFT2Q6QzInI/4PQ
         +cEbQJ2bHrraR2td5y8BhdDcuRhotcALBsPaOIaB8+lgr0vwDgCx//mYW/j79IM4VSNI
         jHJGDV4di/f2QIZKASIV/cDcJEAsnvlY/zgm0hHFK+5jmxS/tMB01BPKzU6cfLS/lEjd
         YMWqfFqF24ZetSfRqOojVUQizb6Cm3QHF6kV4oDTYNWo4FdnrQNoxGhUDrlUBO1MEgxn
         AoeQ==
X-Gm-Message-State: AO0yUKW/X39tsJYRgkjPJ6/M1dE2JMJV/CjiJcv0FSJWwMVmFz4gWWTv
        fy0o0wURDpIS7oh5k0976JUZSYnDB4A=
X-Google-Smtp-Source: AK7set+xXK9DBFfhC7v4nB6IserRWBuUGREcXu6u+qcW3zAYypGJtF2NGvA+7L13ftdbEQCpJvcPsg==
X-Received: by 2002:a05:6808:a9c:b0:37f:b48c:a9c1 with SMTP id q28-20020a0568080a9c00b0037fb48ca9c1mr2712781oij.20.1676743685166;
        Sat, 18 Feb 2023 10:08:05 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id m17-20020a9d6ad1000000b006865f605ce3sm3225672otq.54.2023.02.18.10.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Feb 2023 10:08:04 -0800 (PST)
Date:   Sat, 18 Feb 2023 12:08:03 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Tom Schwindl <schwindl@posteo.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>
Subject: Re: [PATCH v3 5/6] man2/chmod.2: add C digit separators to clarify
 POSIX feature release dates and long numeric digit strings
Message-ID: <20230218180803.be44sughf62klrjw@illithid>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca>
 <804a2b6d-e1d7-3d23-7768-d0ee4933dd68@gmail.com>
 <CQLVH6DLAYFQ.T4VQOGPPW8CP@morphine>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="xy6m6grve45ho323"
Content-Disposition: inline
In-Reply-To: <CQLVH6DLAYFQ.T4VQOGPPW8CP@morphine>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--xy6m6grve45ho323
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Tom,

At 2023-02-18T17:42:05+0000, Tom Schwindl wrote:
> > > diff --git a/man2/chmod.2 b/man2/chmod.2
> > > index 8b5db74ed7e3..674b54368314 100644
> > > --- a/man2/chmod.2
> > > +++ b/man2/chmod.2
> > > @@ -37,7 +37,7 @@ Feature Test Macro Requirements for glibc (see
> > >  .nf
> > >  .BR fchmod ():
> > >      Since glibc 2.24:
> > > -        _POSIX_C_SOURCE >= 199309L
> > > +        _POSIX_C_SOURCE >= 1993\[aq]09L
[...]
> As long as I'm not completely lost, those values are often passed on
> the command line via `-D`. Wouldn't a random \[aq] interfere with
> shell quoting and result in hard to find bugs and unexpected bahavior?
> So is it really a good idea to present those values in such a way in
> the manpage? Or am I simply underestimating the intelligence of the
> readers? :-)

Do you expect C programmers to be more likely to copy and paste from the
man page source document or from the rendered page (probably in a
terminal window, but possibly from a PDF)?

The answer to the questions you posed depends on your answer to mine.

Regards,
Branden

--xy6m6grve45ho323
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPxE/kACgkQ0Z6cfXEm
bc47Hw//fRblqGHe1rDCv/VfK0a0RowKv1XJY2JIhGed1FZaSLVVHebOc0DsQhmh
lW56FzX4r6w0u3NEGZ6GMJNNWcLJuRblnWtlIBfUi4hKYQQhwdDEjV12GVUvn1gZ
IJ8wNPmtVnrs/kMH1NGVhfFzTK9MFHhYLfedxLieb8N+chKlw0jlMzs5oJroMj4T
N0Yng2oKY4ZH3CJO2oUvPA84ZbLx0WDHucVaYG9kxHUjX0Tji3ZEwnAC58OGAsi5
ksaaxEdt0u/U00WV2EHXDikpt25LtSAnlGtZyUF1cvgLbMhYPOKWy1Cbi6xynIpk
NJQAFCkaXRPeseXOgUQskEeF/d0wRBrKaExZmuEvxRlYbSazR6Mn1UfnLwoZXzbE
q/M0YfylPHZA+FIz7f4M2OzNO1WRlxt4lPkQCq0nRhRc3zyq5oTu4ckQYbrtxgzH
C+GVvz18gDh0dvC5Zo7BC3YUVPXLDihyfJ6aGQ9E2OWihNZMQ/ErCFlZFn1pS0wM
MJONxmeiNXHcc8HREl49EdI+TNDMl5VxbcQOD8SaanAD+UE3gNQuEu0EB6apQZer
Yl96w/+lM+UmgjoDZo/SY65Gosf7J1I8UhdXHCRVAnSRKrMKXal+ARAHH9hNMyTl
PqP7MaHTs33mDLYiFsubdH/SUrNLJMF2C+uGz6rpbZyqH6i/Uag=
=j2Dt
-----END PGP SIGNATURE-----

--xy6m6grve45ho323--
