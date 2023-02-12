Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D07A69399F
	for <lists+linux-man@lfdr.de>; Sun, 12 Feb 2023 20:15:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbjBLTPW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Feb 2023 14:15:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjBLTPV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Feb 2023 14:15:21 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABD15C14C
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 11:15:20 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id f23-20020a05600c491700b003dff4480a17so7349035wmp.1
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 11:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VzWFC9pKJOXHFtmOewYxlrJRsixG0L0WIv+OQ6PAMgA=;
        b=Sk//whnBq2GsUFxvJZrzMxTjA2DbP47BywbVewmOmglxFsyPGcZ+r75i/ZDQ46obrW
         0HryUNkLXgSuYVCPQY9Q+FyzjNx/IXx1VNIXOmx4q/i4ypDo/2TXohZ1B2ZMxDsO7p6h
         CpAnsT1Zp4rUcoj4eYiZawuVQgyR/lMutBZpfpHAnHk1reCcGqQEzloQl6WjYPyeTk1t
         APHT7GGkVwg5cuAYFSvplvgFm/NLY313v9JsAgGUL49vtomBTV7STshxau/uIYdDjasZ
         NykBJkyx9ORT/SgmJ8yyF/4Ljdpmu+XGRoFrxHtV6MrgxX4fsXT9CiQObZF9HxBs0fOX
         stWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VzWFC9pKJOXHFtmOewYxlrJRsixG0L0WIv+OQ6PAMgA=;
        b=uqgad7ovR1teaOGMKiAEd0zWCvOFE4NyEKadhpvzTGtnSxzRmk41QfuDzja4D/+m7U
         8Kg/1BQNDfYH8pbIaXH2LskLQ8vPNF6PbWDiC6vapl3oSV3xLW/D0CTdc+Ppo76IyhuZ
         KIztScFfEHDk+OXqMMeO1uoVCfQRYuV0LziyjaLwycafFtPbAi4E4aAp1hMwjfrzWXqa
         rUm+Cw1Ly1+4V/qo9Cs8bFNS+daawz/0po5HgCOfs3xhKs9gLrlH225U7rhrBwQNFe+5
         Qkp8QgZrEiBvtagxPsho2Va4nVERfBG4prZze70sfKWSqKTNXmPf3judU9EZ+nTj+OIS
         fxmQ==
X-Gm-Message-State: AO0yUKUuNNODTOXod3y/EwwFA0ek3vPcR5fRqd1CgdNULoyyGDy3vU/Z
        9m0m+j6+sa/s/U/di4AUOwxbS1HSIJc=
X-Google-Smtp-Source: AK7set/7X+SF/n2OjUkdqk+hZmSn3aHdKThBH24EbDj0pmGkWkxlG/+Z6WkZAhwCit/NJnzUXQyskQ==
X-Received: by 2002:a05:600c:181d:b0:3db:9e3:3bf1 with SMTP id n29-20020a05600c181d00b003db09e33bf1mr17017182wmp.31.1676229319311;
        Sun, 12 Feb 2023 11:15:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c63-20020a1c3542000000b003df14531724sm15498554wma.21.2023.02.12.11.15.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Feb 2023 11:15:18 -0800 (PST)
Message-ID: <b5785597-3738-f405-261c-885be5fd9acc@gmail.com>
Date:   Sun, 12 Feb 2023 20:15:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 19/20] adjtimex.2: Drop dead hyperlink.
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20230209181142.6gmv4ygmbxjtj7wu@illithid>
 <0c370824-a968-410c-1c8e-1e650ea21761@gmail.com>
 <20230210170341.k4eyazbvd6xy6phm@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230210170341.k4eyazbvd6xy6phm@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------B7stUnA1hG7eYSE0maKV3qHE"
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URI_DOTEDU autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------B7stUnA1hG7eYSE0maKV3qHE
Content-Type: multipart/mixed; boundary="------------860fK10GaQ8YInJJuOAwz7yP";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <b5785597-3738-f405-261c-885be5fd9acc@gmail.com>
Subject: Re: [PATCH 19/20] adjtimex.2: Drop dead hyperlink.
References: <20230209181142.6gmv4ygmbxjtj7wu@illithid>
 <0c370824-a968-410c-1c8e-1e650ea21761@gmail.com>
 <20230210170341.k4eyazbvd6xy6phm@jwilk.net>
In-Reply-To: <20230210170341.k4eyazbvd6xy6phm@jwilk.net>

--------------860fK10GaQ8YInJJuOAwz7yP
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub!

On 2/10/23 18:03, Jakub Wilk wrote:
> * Alejandro Colomar <alx.manpages@gmail.com>, 2023-02-10 02:44:
>>> "UNIX and Scientific Computing Services Pages
>>>
>>> The information that was previously in this area is out of date.=20
>>> Please refer to the SCS Confluence Page or contact unix-admin."
>=20
>> Do you have any idea of what that link maybe provided,
>=20
> Wayback Machine has an archived copy:
> https://web.archive.org/web/20190729131746/https://www.slac.stanford.ed=
u/comp/unix/package/rtems/src/ssrlApps/ntpNanoclock/api.htm

Thanks!  Branden, could you please replace the link with this one?

Cheers,

Alex

>=20
> BTW, ntp_gettime.3 includes this URL in the SEE ALSO section too.
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------860fK10GaQ8YInJJuOAwz7yP--

--------------B7stUnA1hG7eYSE0maKV3qHE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPpOsUACgkQnowa+77/
2zL6UQ/+Mm23hf/rqIS/Osl/GQiUJ8LHkq//5f8L5OZmqIJn0fTxjC9de+WDq/B9
VDxJWKDybRylBsF7+yUybhHKUrPOJ3nBsJ+gasImAypUOQ+eInoB0Soklu/LfPOo
TF2kPjjeStNATPQwwrO2E39OZ7yllzeiSSCScYZpqOFo/ligTJpJnn1OZ737X0ri
z4X43EIRVIuSSxsbI2/Xm8A5Ec42skQFXqdWIwE9PUcOAFRRwk/bt/hn2V2ean8S
isk9te3RIovhmIjPPSCgPngbnSit3LYPrVxIno59mn5Hzl4HsLgWcgRl6vvtcAPz
9jlSYoh46dSZNI2BZFNQfvWbQyvo2oZGnqzMNDeFviIVmpreIVXjozembcrF3kZu
a94Pi0n+xN6R2OzNA09XkgdOCXAbpc6iUeprBr6yfv/hy5pqZXW9A8iZIAyBZ0Y4
MMH/VZ4SfsZvMWBqdzRBWpXYgS1hYEtXuw0UyD/eREXesXQ7G0hwZHMQM2z9d2rh
Qt+Eyc0HqHd8ikrtYbvgxPMuvFMxkFPRaj0n28QBGqrt6Ex7kG2RLZtZDLcUgXwv
O7qim4QPWiVhaIE6O+tX5VofdQL1AFxm+NsoE7ZGZ8pB9bQxGo8aG33iZSoko9/x
y71ksalcImj/o3La1hEHB9RL8/OZUU8HvXciobZwkHWzQ4I0c4c=
=Dj2C
-----END PGP SIGNATURE-----

--------------B7stUnA1hG7eYSE0maKV3qHE--
