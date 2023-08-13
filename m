Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37AC777AE23
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 00:08:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231204AbjHMWI2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 18:08:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231376AbjHMWIP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 18:08:15 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 740FB172B
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 14:55:47 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-1c4cd0f6cb2so690990fac.0
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 14:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691963747; x=1692568547;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J9tyu1QELdppt8SZIPws7BPp9G2BK+aooX7zbf1NQcA=;
        b=UFaqj/CjSCCKbVA9kXY5hWmESf1FMrd2uj/Q9ynkHPliYXbKw8CbdFdJ/bgVVqxejJ
         gCI8aYLYeAxei0gB5i8KSdzmqATJdipaAXn5TiSQNXzjHkIn2Y0KgJKJayzOUiYXmsAI
         jXUD9vHRiT+TrnnpUvr3aZyeU6Ft60KuSl9kSEHjXYILLISLOIkV1/7gVg+cV+0OfVm6
         WOQKHDW9w4hg3FzA2GvPpWdpfv4TsoHFI9Z1lI6+5wMmTNdms6ZBL/caLh6QoSZvm2Ou
         Cu8OV9LA3jBnS/UtP+utygqJOYjBC9CFdSgFHj9wmuFYvIMufuYIFEIk/7Kw3Mb8v8V3
         2x0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691963747; x=1692568547;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J9tyu1QELdppt8SZIPws7BPp9G2BK+aooX7zbf1NQcA=;
        b=MmEIksppeBsgbg4jyU3sUdnm9pgEIxDmDHyyCBzxAvkoWc/IzLcHliUb5pXi8cMaNV
         qf/IwuTuyXOSQL6FE5t+JGsi2dVkczJDgYj+csrnhXamMJu1sm+iIYW88YV8h/WIOC4d
         XB3hLSYuhLVngvQ7jhMTPHwnBaauoeGnmzbVBlElvXFdN2b6FFXY2j8LFczVKX9Yel18
         qt8TP9rUBNt4Xp9xyRVTrw8NoyEIwe5hc9SKKycGhyHGKh48exLgQ1novb8867wxHPXi
         uvHkJmxan93oT9nvSQ9FPjfxLKz96ozuqSA1GC2+cGXDRv/KSPcAXkPA6MSFQfkeK2DZ
         +plw==
X-Gm-Message-State: AOJu0Yz2RK6U4w0rrqkpj3yOnURT+lCHHPrFTAZiS74A63xD6HmGeJ2T
        mWF4A3te/y+fn6caF/TYcBE=
X-Google-Smtp-Source: AGHT+IEmjwxUq0PEQF78vi3Ce8fayYVgF2bJYBSOP2xdIj6HXjJizGeXg1dzAI0ctJw8yAIa1OAYtA==
X-Received: by 2002:a05:6870:c109:b0:1c4:edef:f2d8 with SMTP id f9-20020a056870c10900b001c4edeff2d8mr1118853oad.24.1691963746679;
        Sun, 13 Aug 2023 14:55:46 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id du15-20020a0568716e0f00b001beeaa10924sm4506810oac.0.2023.08.13.14.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Aug 2023 14:55:46 -0700 (PDT)
Date:   Sun, 13 Aug 2023 16:55:44 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org,
        Deri <deri@chuzzlewit.myzen.co.uk>,
        Ralph Corderoy <ralph@inputplus.co.uk>
Subject: Re: No 6.05/.01 pdf book available
Message-ID: <20230813215544.xtejrxxeygzxgz7e@illithid>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21975186.EfDdHjke4D@pip>
 <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
 <3258129.44csPzL39Z@pip>
 <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
 <54c962ab-28df-b2c9-923e-c47db004aaba@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2sdruv6uqeikzedm"
Content-Disposition: inline
In-Reply-To: <54c962ab-28df-b2c9-923e-c47db004aaba@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2sdruv6uqeikzedm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-08-13T22:47:34+0200, Alejandro Colomar wrote:
> > Aha - Alex says .set:
[...]
> > 	https://lists.gnu.org/archive/html/groff/2023-04/msg00213.html
>=20
> We might as well make it official in suffixes(7).
>=20
> 	.set	troff(1) typeset output

I don't think this convention is very widely used.  troff(1) output is
so seldom dealt with by users that it is little wonder to me that no
convention has arisen here.

As noted earlier somewhere, I prefer ".trout" for AT&T-compatible
troff(1) output, and ".grout" for GNU troff(1) output. Strictly, the
latter suffix would only be necessary if the syntax extension for
multi-line device control commands is used, and I don't know for sure
that late-vintage DWB troff or Research Unix troff didn't support it.
Things got very murky with AT&T troff after the company decided it to
try using it as a cash cow.

> Which made me realize .roff is not documented.  Branden, as the
> maintainer of groff(1), would you mind checking that page and adding
> all the groff(1)-related suffixes you find (or actually, that you
> don't find)?

Sure, but I've got other things on the burner right now and might need a
reminder.

Regards,
Branden

--2sdruv6uqeikzedm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTZUWAACgkQ0Z6cfXEm
bc60PQ/+KU3a8Un7Dxc80VVnPM/PDNcx4f7Qr5/Gvcupek+tbaUh6b0Zh+M6DQmP
gDoXu750p0j802om15P7HFMFbI+uv5i13k5PGyu5/CvJ9qUdQaIjuNHw4k9vwtt6
L9yNGhkif845PtGvHjYGgr2LLIXPGxvRkSHEDWUDH2WyF+DpiMlHQolH2wWHsQix
c/ycefxWNnInfdY8Do0vaAHbopUlnGajia9A30tJHS8mXXkI7BFTr05amhi57ar2
ctfi7QG9c2BcD8XoUjVW82R2rbZ182+uxMMO7Vp3xABK6N4WN1apY2Y/k4XFOAhS
CMbfOiZ+ZUeQDkY2bz9DJ0vU4Au3N9pH/EA9Rba8ZQIQhspiUEJxSWjX918qnt4C
m/yhDtdt0FKztCvoeBhIJMJqZ3iRVCjH2ZXhiDEwv1aOn26geLleIgE3Huev74QP
RSnMIq8K9rcmkebDDt3NRjx0puydV1U41JuW0xsxrWL6qER/gXzB+jM6dC2HFOMx
pE1SBMpEo47DiqsL3w5qcPNPe2SPbYi/l48CAmAM2pyzIXrlUVsdF4pXkzYVhnbL
Hor6whs0rgocKKOJwuvn3z6mi+sPlv4eAYQVhsv50gEWZN+w18qUev1O3tkcTW07
Uv5vJiDfWj+djdiZYPpWGxZucvievvTl/39OAvbwFG9uNV918x4=
=ZATQ
-----END PGP SIGNATURE-----

--2sdruv6uqeikzedm--
