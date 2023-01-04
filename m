Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49D0C65D7DA
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 17:06:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234523AbjADQG0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 11:06:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229662AbjADQGY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 11:06:24 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B170718E3D
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 08:06:23 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id v70so29873426oie.3
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 08:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4MQ7tMYmAMArpkOielwDaSIXYI3sZXjFTzu7Tm4U92c=;
        b=hTCV1jYHQq4gWDJ5yG4tz8XwgGZ7TDFn1Se7MwgjVTq1rOqEaDGQB3EVh28SDpGcgT
         y5RwZ8brlICo1EYUNfMan9H+ncHDp3JbwzJx7Vax9Bs+WJqbvLd9KDQxwcVOhr20zeIC
         CFjjCAVJCuhYFKuZkkBdt3eYvlDtcbeDmePvTuEdtNLDZ2cLAZHlrYuaGyAFLPCw0lVW
         zsNOEec+0yR/BbbTYA1l9bSuuWpyTBYkrVR2PNPdRLpddy8JFXsZT/5qwa5GkuYVhTdl
         qJ6qJ2IvBL6+aZ0xmd2zr13RYc7y/u1HraMULjbF+jMwIend50lnTu6toZbKqruNzJzT
         fgEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4MQ7tMYmAMArpkOielwDaSIXYI3sZXjFTzu7Tm4U92c=;
        b=wki3J5DsoPNLiDFUkiXjcART9ubF5pXgFAPIIrO5CbrqFumlj8BGQ9+anxsCreYDVY
         WXOdjG3I+YTsluJ5BugqDIRYKDWPM/Vd9LAqQW1uhtoYwTyV563GpAWTeVuShwC2iEtU
         5yBt17IqlGblDBIJRPSFnUMEK+jNIbb8MC9wtdbhbFgbpNhRWiD5QAeL1467QRnutPdm
         wBW0z2j9MIHI35OO+dLOMbJspeVljjyyy8xxrcCK15ldhUJAkU7Q/3KyuNP3MDWLLN0N
         lnVO/fJdZcHKBX2KCR6qKaVHKds+mj0QuKcpTehS7XmZhhIJlHitI39YfTlDqAQCTlPA
         2/mg==
X-Gm-Message-State: AFqh2kojFlVRmnvHnv/Y1nNWAs9Ou8bYw+q3YRkChcsIuMZY7gOz8F+t
        XL+tADqNUeOePxguo278yBM=
X-Google-Smtp-Source: AMrXdXtTYk6AVhMyHdX5PSc0g2I6qIzPCWJhaJpR4pELs3s2fg8Bl+Ycv15qJR9qzPlAdo2Hue4SVg==
X-Received: by 2002:aca:2109:0:b0:360:de9c:98d2 with SMTP id 9-20020aca2109000000b00360de9c98d2mr24552072oiz.31.1672848383054;
        Wed, 04 Jan 2023 08:06:23 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id cc10-20020a05683061ca00b0067079fc1ac9sm16718993otb.44.2023.01.04.08.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 08:06:22 -0800 (PST)
Date:   Wed, 4 Jan 2023 10:06:21 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/9] ldconfig.8: Fix markup nits
Message-ID: <20230104160621.z25r7oad36vtbzoz@illithid>
References: <20230104073807.gcohk253vopp4ii3@illithid>
 <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
 <100b9e99-ebcf-fcfd-71b8-626448e30485@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="blpwrg5qf5w2b346"
Content-Disposition: inline
In-Reply-To: <100b9e99-ebcf-fcfd-71b8-626448e30485@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--blpwrg5qf5w2b346
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-04T13:36:38+0100, Alejandro Colomar wrote:
> On 1/4/23 13:26, Alejandro Colomar wrote:
> > > * Use `TQ` macro to include multiple tags for options with long synon=
yms
> > > =A0=A0 instead of comma notation.
>=20
> BTW, this would qualify as a style change (in my book, a ffix).  No?

Sure.  I will reclassify it.

Regards,
Branden

--blpwrg5qf5w2b346
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1o/0ACgkQ0Z6cfXEm
bc5RjA//XykfMZKAuwNM18lLUtx1AdZuktbvpGbemEP3htdJry8/LtAHAqvsS9c2
c9ybKoLaWIJxBdUard6oL05bHaHGgrcDbs9mCqPFkeqJTfo4qAjDiSlRgsP7ppoQ
QAKTePfbg0YoD/rF4cUig1QnbSL81NCExMWpk1zA/Gw4cDg5mcvIy6IJcltMRExL
SDWmJF5GUgXvSnS3RM402r9EajBOvoCn5uSA2+3axPTHKnPW2eniZb7qqnaNpUPU
aF5GynSaOCFYCxHypBsyKmk7V4zDhef7SzctFVtf54BQgL017EQ7mk/ha/GUbkK8
6MJ/45WAhYAc+7MVIYgW7X7Ec2NJWP7NPc0SjqM8nHhoiwK96S6eToq8H80ANRnS
M9r78d85Y+z/mENAvBiCwIkMu6eyJ1+7+uBMvR8FdFLDz8Dtc9dtX7xVH2SKfMfJ
w2RPtaBF7/rBBL/tmXSI1VHoMOOgm95s24YowbLvjMNnx/CT90K1i+g2N2ZjLbC1
BxAzvIDn4YijnpgFsZyH3ypxyTfaVaEhhoN6gK1GYnxAhjR5Tnn3RQ63lALSao1E
2gPmTCSKX/3rIFLnPYM/QqLwNtgjoWWxAu5JBCCEBfyGY1U8XHyK/5e/gcjVTkFL
LHEdQAZwCNul4TwOAkp7/RHvj9CTzDnLNT62mxRZwHFuh5Z8cxQ=
=/j4B
-----END PGP SIGNATURE-----

--blpwrg5qf5w2b346--
