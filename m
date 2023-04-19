Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 006006E735A
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 08:34:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231128AbjDSGec (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 02:34:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231605AbjDSGeb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 02:34:31 -0400
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 190304EF4
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 23:34:27 -0700 (PDT)
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-541b61d166aso956906eaf.2
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 23:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681886066; x=1684478066;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZZ2grAaVnk4wJ7PZUHvZbJitSg7hgoNWAAzIx5zl3kI=;
        b=M0tIroUL66mCJv8AfmPpjrqPwOs4iK/c+ryYCqLcy9zA0Ch404gHf4w8Qm/qSiw2zP
         rvlK5D8pX9ztZxGcliPjr2OIw8ac0ZPf0djOeNVIoMwW6snslclWURTVBOd3jF1Sdfz+
         SUUDLka9Guno32wy0OqjnvpJ+AVtkd7TFlyhv6+CcyOa2BjxdT2uMbabqI0NFWpZyxG6
         XnHr8MQqraUUUWk693mRDsdGsW74ykZInpnGP8g1a+UnU7OIusWG1cU5jO5gHudeZi61
         sDsNa5iRgJHUiVQruk/+18OrNZGGvYzsI0jfFgM+nhdrkExxKaJV4dzTPjkbg/zhW72g
         HE5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681886066; x=1684478066;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZZ2grAaVnk4wJ7PZUHvZbJitSg7hgoNWAAzIx5zl3kI=;
        b=RciXOdqaOuIqaQwFEfeAqXW+TKWYO/G8sR/mEUeJJMi2D5nnR6s2i1CQAz4bTAMsHK
         3/zDLgvKg7D7ey3dAI2BeQ2yF2DRWVkzhVmhmBljT32M7qVvGyGup2qZDq7/f0a0aUlT
         fqJwjAbTzvfbHcFPTvq8O/C6uP9unVy/fQleR9cgq9BMMVnwmYj6vkbub8qQJmHtQrik
         saGZSO+5aV+EAAjORD/PKo7MmdDHwmBhY+XgpM3gV4SJhCbBuA+qMInR5unmR1Y3MhhH
         vWtqLXwKVcDpVlSS4TL+d+W6EuKbK6dSa8V3b0gzVAUbTbih27ayZW4A2QqscvgBQMnF
         r0+Q==
X-Gm-Message-State: AAQBX9c6V+gleS4oEUuEG1xSJi7F13/+bYhMgizDhm0lalGVO6pqdewO
        yBUFl8njeNH/jf8BjoNI/ChRviMIQKY=
X-Google-Smtp-Source: AKy350ZuQtukPWaRbsjOn6FjLhsrBcLUOIl8amNkOvXL6WbFNW7949DtqMe8tzmykglzN9PRgO5WDA==
X-Received: by 2002:a05:6870:96a6:b0:184:64eb:d688 with SMTP id o38-20020a05687096a600b0018464ebd688mr3228651oaq.22.1681886066339;
        Tue, 18 Apr 2023 23:34:26 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id a4-20020a056830008400b006a1508d348dsm6411392oto.22.2023.04.18.23.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 23:34:25 -0700 (PDT)
Date:   Wed, 19 Apr 2023 01:34:24 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Lennart Jablonka <vol@ljabl.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man*/: ffix
Message-ID: <20230419063424.wdx6gmqvjfedvck4@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="lnfujexnbozjofwk"
Content-Disposition: inline
In-Reply-To: <12c2889f-7f05-8338-b758-5d9b83af536c@gmail.com>
 <ZD7UEaKv9Gvui9ib@beryllium>
 <fe9666d9-a4af-84fb-e709-da5e812ee529@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lnfujexnbozjofwk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-04-18T15:33:43+0200, Alejandro Colomar wrote:
> On 4/17/23 23:10, G. Branden Robinson wrote:
> > At 2023-04-17T20:14:42+0200, Alejandro Colomar wrote:
> >> What do standards say about formatting dates?
> >=20
> > Nothing that I know of.

At 2023-04-18T17:32:01+0000, Lennart Jablonka wrote:
> ISO 8601:2004 (not the newest revision, but the one I found), the
> standard defining the YYYY=E2=80=90MM=E2=80=90DD explicitly calls for a =
=E2=80=9Chyphen,=E2=80=9D
> stating additionally:
>=20
> > In an environment where use is made of a character repertoire based
> > on ISO/IEC 646, =E2=80=9Chyphen=E2=80=9D and =E2=80=9Cminus=E2=80=9D ar=
e both mapped onto
> > =E2=80=9Chyphen-minus=E2=80=9D.
>=20
> This is not the case here.  A hyphen is the character to use; that is,
> an unescaped hyphen-minus in the input.

I thank Lennart for having a standards doc to brandish when I did not.

I'll see if I can scare up a copy of ISO 8601.  It's a shame so many
standards docs are not open-access.

There is only one point I want to further pursue.

> I'm not convinced, because dates are not prose.

A character sequence's status as prose is determined by context, not
content.

who am i

is prose (if somewhat substandard English) in some contexts, and a Unix
shell command in others.

Or it might be part of an e. e. cummings poem.

We cannot solve all of our man page formatting problems with sed, alas.

Regards,
Branden

--lnfujexnbozjofwk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQ/i2gACgkQ0Z6cfXEm
bc4aKQ//UjAMkfmD83zwgC9RW9DV8qEKJvyZRvoPz+fA6SHctM7n0oiMSpU3TKum
cqsrp6V0COiyumPtV06AJsO5Cw6td8dmIjXvqM5oav0Hhmm6H0/4YiHh+46+0Ts9
3wBY7CnDCLuHwCHTeF+dQnENpoV0c2oMQhyyg+y8fr7tX07eI2YeRhPufbiU+IF8
ddZEEx0jgkTJ+p1qtO2SSWnePxZ2qtvcxw2S25SQTZ+2h+GqScJITYGJusmcmNUP
KjuHEdluzJgUZJY/gtzQWagOsemF/+Nn+P9cSR2XAWCls7G2nPUbXjnYy3uH8M4h
UJGtZrl/QKBj4RekUfBQg21I+ATIgMu2h0SrL28lRdadta/pqMx1aJw+Yvw16Hkp
mUDIxtCQdcSg9K+a+0/KN3Fvfcc7lM1S9GSXGbz18m/7ES4TczaWkSEsIklHawhH
aSiaeZ2NvWHhEgFZhg1z4ckYRCQihcHXurTAhVx4b0UGN4zNYhCd+oiooXAB7YTi
momUAyfq+IZ9Y8URTf2JDsF981/1wUjsrjdUggeoDKnBq+AhjQtBYaQi7GjfHoKm
QVHVCb9Qg/xixidFlajjZ7LFLSVX66g/Ve5KBbLMH5eN8w7WZlss7iAhQZlV6RJH
px4ksXZFarG4ZHt+jeVX4LZ2REzqVor1K2vbc16z1wKOx0okZGQ=
=bZyY
-----END PGP SIGNATURE-----

--lnfujexnbozjofwk--
