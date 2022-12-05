Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 303CC642AE7
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 16:01:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230230AbiLEPBS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 10:01:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232343AbiLEPBD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 10:01:03 -0500
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D693D1DA6D
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 07:01:01 -0800 (PST)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-14455716674so7587265fac.7
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 07:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hrmNjcU/2ZOnrxHLUXK5OMGvixXQJ+xkHsabUjodD/I=;
        b=EVZ7Xhb1g3Bvjnz7eELb5ly4B8TMls/FeoF6qilCEpfwMiMdc68NWQOtXMDn2OYMAA
         vty/Ou9ADhOfXQYxD+WmNrZQdLZ4gv6D1ctJap1q/QAbba67GGXNQSXRKH317lkgz7tm
         e3geYB8lBmzZaRr1CD71oUv1OTcUt7Q8vIVUJ4pms60/IzEmIHNCadC6Uet1CdPNEnYx
         CQkEhoe7IOp/BUc5yh8u2F2vR2GS2Kg+kYCb6wd6+3GgPyDQh+2H3suI5t2tzyn5v318
         YZdpa0m29mpRA8eAVEQZzmhmJ951cd6Tw4T9xZuPIFMsITFHMX+xhC1uZh2WqiTnQ8H2
         JH4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hrmNjcU/2ZOnrxHLUXK5OMGvixXQJ+xkHsabUjodD/I=;
        b=pMKgHhzMBuvBKBK8RoywOfDi7xliUzv1C4hxUWeAKP6ZZCmN6SPPerwjJRHN1YzTIP
         Q5yXvWK+x2jE2uR0aQpDuT3AK+nqi8LlA81pu6FSFTA+LAojTchea0ARMFryM3MYaErn
         1/fF3EX0ztj3jiYWmzWYP9jX/C23KSEeaeLGTb4qwHBYlKrf2abi+A4N0M+puAXK+IWB
         EiwaYqFCPJ3RGkATMcb+DDTG/Z5xUSIHbqQcOTy5/cuJFhGNjBpY4baSgAgzWZWBKOXz
         Xos+NK72XQhiIuwtafnXxEu2NraGao9BFdAKD9PhBUBamjyFXHTWok1yTWlv0YEAhi2y
         4xHw==
X-Gm-Message-State: ANoB5plxxFqqv9Sx8PpAF6XEq+FOyaQIVsOObqRSaEgh8lipGjByZ9Hp
        m81tTTWPHOJ/tBZRoFl9i2R5IoFhLUA=
X-Google-Smtp-Source: AA0mqf4864rSEwfuF7SGB80+d9pY/sVbxG2c/1CQ/uLkoreRLCrpaUaBvVqxIFVCux6UiGJy1O7FIw==
X-Received: by 2002:a05:6870:2408:b0:132:1a61:8ed9 with SMTP id n8-20020a056870240800b001321a618ed9mr36185859oap.105.1670252460911;
        Mon, 05 Dec 2022 07:01:00 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 60-20020a9d0dc2000000b0066e84574c48sm4866238ots.75.2022.12.05.07.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 07:01:00 -0800 (PST)
Date:   Mon, 5 Dec 2022 09:00:58 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page wcscspn.3
Message-ID: <20221205150058.enbfwn52waftdlbk@illithid>
References: <20221204090723.GA1178@Debian-50-lenny-64-minimal>
 <0cfe8177-6671-c006-efb8-7634bd3b2cd7@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ernp74kt6ke2fash"
Content-Disposition: inline
In-Reply-To: <0cfe8177-6671-c006-efb8-7634bd3b2cd7@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ernp74kt6ke2fash
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex & Helge,

At 2022-12-04T21:27:05+0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Issue:    longest initial =E2=86=92 initial
>=20
> Why?  I believe "longest initial" is fine.

I agree.  POSIX says:

"The wcscspn() function shall compute the length (in wide characters) of
the *maximum initial segment* of the wide-character string pointed to by
ws1 which consists entirely of wide-character codes _not_ from the
wide-character string."[1]

[* emphasis added, _ emphasis in original]

This distinction is important for those who have learned, often the hard
way, the difference between greedy and stingy pattern matches.[2]

Regards,
Branden

[1] https://pubs.opengroup.org/onlinepubs/9699919799/functions/wcscspn.html
[2] https://www.aivosto.com/regexpr/help/greedy-stingy.html

--ernp74kt6ke2fash
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOOB6MACgkQ0Z6cfXEm
bc4INA//eYFMNpn/QNrln0CLUevFQarvpsi38bPbn3jHOyKHyDBprHaPjBiLxneR
0CbY6pnA9wvBy9HU75NswWJsxX4llJJWpimQEcgceY7yb9ONCSr+q/tzTN8rvG36
dgrNhnzfz6hHPKihWe4H9PCAbGvvi8gVUKizmuabunaMcNxkR4NvhR2EkXBuRnvb
TyF7cT85ATE0jQVvQm0V2HFrBUnpucQYNNvIgck9txEAqoXKkHXwXRaXRS92aPNw
XVr6IRfDd9ArOw3mGXz9Vt7ROlpcRm9rJQBBv38Y48srIA8SRb9GdTUplsoXTN61
4ybik9/nVkGsXTrTFtbAxbPS89OAmGPrAHiDKyYukQMnd/h8WWcnzmvpsUF3fIkP
NgSgsMSUDMX23Ww3CgVHWuk+u03rO021BBLhevdsvTqJQNIupqKQNbZwyebBV85Q
n2mdSw09VtN780eDY5jtsvR9iNIE2qbyHTFBTipWYPJCmtpc2oUKFtYvnjaPkmVu
nSgxxIKtss2JRaCEx7sDM46YUyYzVODy7ty7h+lAMzFEgfz3DLweWm7lpCudmB9D
YSailT2qle/Df0foAQRRTgG8p++iUv5G2dxcFDFm4XefAjPDHvXhMfJT7tobk2nj
uI1bKh4i4nU+X0q/7VkCSGo9e5wE4dJh4rVcQQOIzZKx5VK1h1M=
=KWKE
-----END PGP SIGNATURE-----

--ernp74kt6ke2fash--
