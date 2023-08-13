Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6635577A9C4
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 18:21:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231487AbjHMQVV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 12:21:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231161AbjHMQVU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 12:21:20 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18CC5212B
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 09:20:57 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6bc9811558cso3188684a34.0
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 09:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691943607; x=1692548407;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Yz68hFAJBOuBOIKXlvu9vqQmng7JT58ZOEjb9wA4btY=;
        b=IlTWKl5jryFgTYZUIshBVPJT7tmXoTM0a27fBAOQxaBaHQisgTOoKTMib4YlO3icPc
         U7ZA71sFmVr+rMqvacSVcQd6wnTLXmnny8P6awVOwNFBzWIKKrpBC59QeoGx6EvWKNiq
         dABNsyEdisRsqFkSc/3pck+Bi4OCYE97OGfaNRo9Zi/67rRb0rnrdHv61PBSWkBucHGU
         eA7O8OymcKNFIXE7xbHPJPnHc8b2XT4/FyCkmyI30G4vjFW0yCw7NT82yRoERnnSxqXl
         9ZVh9lUBsvXIT1KviCvI7LBjMsnG9/gaknS1llmvnUWrB+VvfKRsO0sffxQMui1/DtJS
         DN6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691943607; x=1692548407;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yz68hFAJBOuBOIKXlvu9vqQmng7JT58ZOEjb9wA4btY=;
        b=DJ+g0adw+GXj1D0QNEsBcVI2cYY11QspO7S3rur9My8qA62VUzorX5fr8wtR72+q5u
         gLQ+tb2FXQW7WDLZD3TJfDZ7e6QctIZUNWLFBAxrwTAHxlF70D6Uc3CJXy5s0G4nQBcf
         gmy7QEnXuAizizzsUf0MG+uHxtqwBamHPjwBOANKu6I5yGt0pJqUbeS72lXYQ/CI9YMY
         S/cHnZsUKEA5uhsOJ7+RWwT2buLPBEiTDeo7Icr6BKgAIkm4niw7uhLUZJDVMadKpycg
         OjHzTfFJ18/uT3RHkemVDanoEVdhZQnqdMIX9fK/j4EtTIdBjcv59iTwlOcxtDnS/9UQ
         sPRw==
X-Gm-Message-State: AOJu0YyFtTeUBSt9GRrwagMAQYBrJI76nF8OCGuLLoh0tNaRk7lrrZ/W
        i/RuTpVzUnTbS7IJO/JiBhMtEVKOjqc=
X-Google-Smtp-Source: AGHT+IEocOAJbC/nZh26pCAzHJSN2g9jk/u3dxCnHyeWjkXFoomfgdCSDK/EEBgG3Z9+dUI5W/HeMg==
X-Received: by 2002:a05:6870:fb8f:b0:1bf:7e94:bba9 with SMTP id kv15-20020a056870fb8f00b001bf7e94bba9mr7496370oab.52.1691943606793;
        Sun, 13 Aug 2023 09:20:06 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id tp11-20020a0568718b8b00b001bbeef974aesm4204945oab.20.2023.08.13.09.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Aug 2023 09:20:06 -0700 (PDT)
Date:   Sun, 13 Aug 2023 11:20:04 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: .sp 1 in strerror.3 (and probably more pages)
Message-ID: <20230813162004.bknsqbfvpewbee7f@illithid>
References: <d499316f-1d85-6a99-456e-191004059bc0@kernel.org>
 <20230813152806.sgbftjs6nqgjjcoy@illithid>
 <60420364-2a68-a6b8-d7ca-7fe6a1384d64@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ympxwbrxud6tt24j"
Content-Disposition: inline
In-Reply-To: <60420364-2a68-a6b8-d7ca-7fe6a1384d64@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ympxwbrxud6tt24j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-08-13T18:06:15+0200, Alejandro Colomar wrote:
> On 2023-08-13 17:28, G. Branden Robinson wrote:
> > At 2023-08-13T17:19:59+0200, Alejandro Colomar wrote:
> >> While trying to apply a patch that touches some table, I found an
> >> '.sp 1' after a table.
> >>
> >> I tried removing it to see what it does, but it seems nothing
> >> changed.
> >>
> >> However, in the PDF version, there's some change (using .sp 1
> >> produces a larger space before the next section heading).
> >>
> >> Should we keep that thing, should we replace it by something else,
> >> or should we remove it?
> >=20
> > I would take it out.
>=20
> Okay.  But I'd like to understand why Michael used it.  Since we already
> have a blank without it, why would have he added it?  Or did 1.22.4 have
> a bug that didn't produce that blank?
>=20
> Here's what Michael's commit says:
>=20
>     # ".sp 1" =3D=3D> ensure a blank line before the next section heading
>=20
> (c466875ecd64 ("Various pages: Improve formatting in ATTRIBUTES"))

Thanks for the context; it helps.

> Yep, it explains the difference, although it doesn't explain why
> Michael added it.

Since the Linux man-pages "ATTRIBUTES" section uses a boxed table, I'm
betting it was working around Savannah #49390.

https://savannah.gnu.org/bugs/index.php?49390

The overprinting was invisible if there was no text on the line after
the table, but it would _look_ like the omission of the space that
normally precedes a subsequent section heading.

Regards,
Branden

--ympxwbrxud6tt24j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTZAqwACgkQ0Z6cfXEm
bc78ag/8D4OG3xDka/Laqu2apjZpi5dpIGpqH/PiDKpdDGx4RHnLBzto+kX1NRzo
ogCVCpkvpWggezb9ka2LCMi5PdzKoA4H9fyQ1wPR1xsHkObQ46V0+5AzL3KLxKZG
jSOIxQge2BVDXvUDgNWRWzO+cz7cjrGp9k/PnzOk25qYgc8aCs6qeib/HUn7G30X
h84tHAvwwUxtufQ5igqRtg1bnVvZXmuDGU0kWkNYvnpUlezfQD853VCg2IIciC6U
1tlM21cTiCXezWyFHn9BFO7GaV25cd5hE2TPd50o4p5HAiHH7VEQoO5l7LoD2Riz
H/yZ+YiWQlaZMB21AM2FJ1Y9Qb2+tCaM2sQV8/YmYPaysLJQ+KmeMSocUoQSLEmu
P67l8DP45bdGseVLZQDTpAkUR//gmqDNUFBZkHaz+qIis8oZ3C0BKdeV31YlOzb3
dr+ViQ/l1dtNf9cInk5QfHnf3/CZS0pi3SOCkDrRAs2LsosgRvQ7fhXl/AWknzP0
15O5n54GcbO4k4mgEbVtY75jbg1kMNzo9YLVBnO6pV5l4UJjwrc3VPi8ijTLILAE
OhaOg5M+usequ9JMLv2lKqHyzbMkyYz3k9ID6t5ogibjy7NikiUGiQavWXfe7476
mOQimCTWeJndUbDjVI8Qla2Y2z4DhvHVjykoey29YqZndTjiu8c=
=aukb
-----END PGP SIGNATURE-----

--ympxwbrxud6tt24j--
