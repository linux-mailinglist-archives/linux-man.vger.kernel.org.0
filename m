Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EDB058564F
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 22:58:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233332AbiG2U61 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 16:58:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbiG2U61 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 16:58:27 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5636576958
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 13:58:26 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id w72so2669693oiw.6
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 13:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=kddo09EgeABrUN8cxRnLPOt1JVIdmxr7U11QFoE+jtw=;
        b=ovG7QdYAQU3ehRVRLTrUFX75CM+4gpnKgXLgHotLYeSmXpjjezitSY1IuhBJObO+xF
         rcWnrWpxmb6b8SHCEe8LMTPuTMIJKo9y/FK0Wbcriz9SYWFaRj5gekkyAuFm9zPqygK7
         sxsY10MCeO+PSyOue6HE7e/dnzjoyvJiYWiHPs4BGxryb9PzBNPIqKqRROMhLe0q0QEI
         3VJglGU814Rc/0VgArEqyLxwsiiAx/rcSad2ltolKg9PZtqba8wxw22RLXydT5IIjdzF
         nZCrNqPD7xHYRwGICPbMvsCA7gaLis4Ewh+vw4sOQFewXrjanoIh2JJPEB9bNGY0f1Oo
         ip6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=kddo09EgeABrUN8cxRnLPOt1JVIdmxr7U11QFoE+jtw=;
        b=L3JRgXwxPMBcPwZg2t+SduIC4XL98aXyue9a+S4o/w9jd+QPdrSKHgQmTOK1PrBTJf
         0IS6AGrndDtLt1n0rhfGTA+dmnB+cD9MxvW74jizg7wAY0s+H0pjokVIzcsZb17UmI8C
         0SYiQ87dk0oytCKmM/O+ntAE6sKPiTPE9amRm6nAmcpFbZLfEB1/Q9If8TRFRaqJUYLU
         OPypNgPv3LPJfp7QfHI9wdd6NgfHnWeF90QsFzbga8SxeIeyqtl7ixW1nmNthxOHenHD
         gfoiHMY6QzAOAn/knQ2ihPwIyHrz5skm3uFG4WTJd3DxO/aqgKMhvYy4C1ZZH8q6ICBG
         Y5HA==
X-Gm-Message-State: AJIora9JMjLOIy/XSrSAetmn49lhzo30c7rQrr92nOQOqdWbrRY5Plcv
        vlfc6Jl4nwPOTTGtoJb1+jYcdjkl7jw=
X-Google-Smtp-Source: AGRyM1uBSbIzgN6ZQvGbL0qlPe/RcV8YMPtU0ZF8PML33+nCT87/ILf4EB86k7NkNXhoJW+2vrkkHQ==
X-Received: by 2002:a05:6808:1b20:b0:33a:b7bc:943f with SMTP id bx32-20020a0568081b2000b0033ab7bc943fmr2479503oib.130.1659128305685;
        Fri, 29 Jul 2022 13:58:25 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id u10-20020a056870304a00b0010d910ffc3asm1656127oau.18.2022.07.29.13.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 13:58:25 -0700 (PDT)
Date:   Fri, 29 Jul 2022 15:58:23 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 4/6] xattr.7: wfix
Message-ID: <20220729205823.lcy4fbezlw32owgu@illithid>
References: <20220729114506.1669153-4-stepnem@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ydxwo5lfhkjiyxkk"
Content-Disposition: inline
In-Reply-To: <20220729114506.1669153-4-stepnem@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ydxwo5lfhkjiyxkk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi =C5=A0t=C4=9Bp=C3=A1n,

At 2022-07-29T13:45:04+0200, =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec wrote:
> (My original intention was to just fix the grammar ("an attribute
> names is"), but, on second thought, the whole sentence didn't read
> very well.)
[...]
> -The VFS imposes limitations that an attribute names is limited to 255 by=
tes
> -and an attribute value is limited to 64\ kB.
> +The VFS-imposed limits on attribute names and values are 255 bytes
> +and 64\ kB, respectively.

While you're tidying this up, I would convert the `\ ` escape sequence
to `\~`.  Both are non-breaking spaces, but the latter is adjustable.

groff_man(7) from groff 1.22.4 says:

 \~     Adjustable, non-breaking space character.  Use  this  escape  to
        prevent  a  break  inside  a short phrase or between a numerical
        quantity and its corresponding unit(s).

               Before starting the motor, set the output speed to\~1.
               There are 1,024\~bytes in 1\~kiB.
               CSTR\~#8 documents the B language.

Regards,
Branden

--ydxwo5lfhkjiyxkk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLkSe8ACgkQ0Z6cfXEm
bc7vdRAAlz2g7f6yFyqJxRYR6y18wq+mKBP6viPwKAFqur+jXyAYfLyn5Tp8fWXw
c6p+79MQUuAgdtpAAvubkP07kTgF/PznUWuI/b05vEj8hK6sXMU4tzkwJUDKGzo/
i+eJtBEh4MkmLifq2KpFzcPumIitF9mxG2IkDpwykqf1GwJjM/p+Hq/rBfmTjesR
X1HyjK+CtCJAbLW8CsPRaSd4wyKNqrbVRQ87/kqMncYvMBGa3EVyAbEZ5YKZ9Vhd
SvI9xSSVLT1kALkYNey2QuJBIhHFPz1k557R4D+joJ5cinhWAlvZcS/ghqlAbI0h
SNY3cs7G09a0yo7pfHixfkPYrTFWVSbyYNoBMUc0uXVz8284Bc1JCr/Whb34DWck
uhCUygUSLBGsP/kHyQ1+NHN88biyga3o3KhjqgCxWyJdm8FtcxNar9ZM6qLxpfBa
gvLTnCrf6OE1d5VQrEx8viFgK2M6WfqfdX4Tl6vhZD02jGpvZeAySD8GnSUF6k8y
6S0CQhI5l9xPhtn0RLH/8z/8wFhT6n2VWVOlYgpMwD6tSlXzXo3IRMCtt7v7SMCi
39QJPWB/CTi2hvyTrDH6YRynLPj0NlX4xYoziIvEhwOKl2rxb+Kk1k02CTOE+YEW
BEzxez2B9rrmvJrtbxAvYFcAc6PrrsRNxzCmgbM2uU/T7HlOVbw=
=rP73
-----END PGP SIGNATURE-----

--ydxwo5lfhkjiyxkk--
