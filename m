Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E14216E8EC5
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 12:01:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233972AbjDTKBI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 06:01:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbjDTKBD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 06:01:03 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47ADF1707
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 03:01:02 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-18777914805so3865478fac.1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 03:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681984861; x=1684576861;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e9kzfrLycCfBiDP8emTCIc4Gz8efidw6YF2iefdrAXg=;
        b=ljEVxXm01TOE2G5ANBT5tnirJgrg3LY4grYar/YcaRZpEUcBe059zS/Zg6FK3IAWXO
         XCmcpXi/Ti8ew38P9iGH7nf2k9VPpQ53ZSpnSq6ApjkFUDbmBw1R0d0UUyQNCOD65SxZ
         gJAelxZ/en/XbNxxVuIJPrLr+PB4sSZqtb24NlZfp2dPGsshErARDvTdkGKWEKWPg9YE
         P61QH9RsRGxcx1OAXeYhqbdfa0SkyNfv+4MEs5wkm8fx8+hgCGPUx40v5FSJ5vpXnpm2
         5srKHlYF6yzO6+2ACoEL/x3/2S50kW40NZJuJ3tGsYRrW4tD60WOaOoQ5fsgc4c2e+32
         ljbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681984861; x=1684576861;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e9kzfrLycCfBiDP8emTCIc4Gz8efidw6YF2iefdrAXg=;
        b=JbPmW4PkJKdlKnAc3FgcfTiQmFikEmu6i4l710XAHYBEbFuZ13D+NVPGV9MnbJ7ufb
         mtWsgOTuGPxpHN7Upi3IT+rC4yLP/heUhdUnPHGjEbeZ7VxljMV4FPYGppkWerUvjiG+
         jqT3p8mluf42qggde0rO3fPaLkAEjk7OFRwAGQ317QbYlfML5k3l0sYdOLtCpjxigBaV
         JY6kOH0XO7A46uWTAxrx8u6tgm1sfVY+IUFllq4Bh9IftirhxVNNQWqLgSBJy7m+lMAU
         2W8Tl2tcSNyPoNLdznn6as2q23KGLiQHKAWXUb3fov/JakMt0jIk9zNi5vGPaGZOmHR8
         U24g==
X-Gm-Message-State: AAQBX9f2GHyvfW2iofVdh83Kf+DXfMQHmuY9SIepU/K0TuOpAWKzUe5M
        WJKiEMTrAyaHeL2zg6ocfW4=
X-Google-Smtp-Source: AKy350bnlSNWOKmb66V5VaYAuoyYm2nvX4yvAAcaNj3JOQWE5yb3RjtQ7+ke+poTf+z5P7d3EEge2A==
X-Received: by 2002:a05:6870:559e:b0:177:b3dd:6139 with SMTP id n30-20020a056870559e00b00177b3dd6139mr485848oao.27.1681984861522;
        Thu, 20 Apr 2023 03:01:01 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id eb3-20020a056870a88300b001777244e3f9sm575644oab.8.2023.04.20.03.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 03:01:00 -0700 (PDT)
Date:   Thu, 20 Apr 2023 05:00:59 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
Message-ID: <20230420100059.hdtey45vpaytjcvg@illithid>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2clnwxyprl7szqng"
Content-Disposition: inline
In-Reply-To: <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2clnwxyprl7szqng
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1,

At 2023-04-20T01:23:14+0200, =D0=BD=D0=B0=D0=B1 wrote:
> +> 0), they overwrite
> +.I pmatch
> +as usual, and the
> +.B Byte offsets
> +remain relative to
> +.IR string
> +(not
> +.IR string " + " pmatch->rm_so ).

I don't think "byte" needs to be captialized here.

Regards,
Branden

--2clnwxyprl7szqng
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmRBDVIACgkQ0Z6cfXEm
bc4+eBAAkA6PEM9o6rlvBJM42PIa+apR9OXmits1wBFLKbB7fRdV0BSjAe8FHFwz
5KwSi5pJvmLllYIpSa8pLO7f6ipch01kNGxjQM6b9qZ3O9D6M7Mfiz8hbwkHYgEI
58i+wawAc0zLzNY0n3Buu2Dy6AF+iLwIcxyvUVD0thly09lziAwetq6I4EJrtOmN
S3gaWuu1c0oreQBk2dRjjucAt7L0W77cvMHI5oUq6NeYTgm7G+6qDkjIOO0hITzZ
jHCHyqK8fybG8xOINNKXlKj4jBzqXT65vl5cCQYRSVAzZsxONJb6leixico11Gyj
5PcV7yUIgXHNkbWtpT8CU/F6+Dthbtuq3dGyRqtTHYGrKS8br/7mq9g+m6shhAaP
1WfcxMpJWJnctAQPq4hbWnN6ysDQbYd75dIS1Mnq2wehwoQzhgwXZ+xnSj16uqny
nOf0UtSGki9V1pXAz5oYkCKsra3MoUSMMeNXoUS3uD/G5ozj1u1gNYjiT3naDelX
ou4RJ7y8iA/+ayIWL3FdudtRR91Nu97d1LFf9J90ZVfzNb9Migez+DWuzRKTqTc1
A8gZteeGIWrb4Xb0J13oL0D+gQzc7MCy+lFTa5Ro9VOV+8PpkqjQ+Ol+fcGIZd6P
61IMBINUbMlBPHAKJDD5izzqxWfbFEEJuwJVW6DjcN4+yJB8NhI=
=nChX
-----END PGP SIGNATURE-----

--2clnwxyprl7szqng--
