Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08F6F76352C
	for <lists+linux-man@lfdr.de>; Wed, 26 Jul 2023 13:38:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234090AbjGZLim (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Jul 2023 07:38:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234099AbjGZLik (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Jul 2023 07:38:40 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75A9D2115
        for <linux-man@vger.kernel.org>; Wed, 26 Jul 2023 04:38:39 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1bb58b4c513so2636388fac.0
        for <linux-man@vger.kernel.org>; Wed, 26 Jul 2023 04:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690371518; x=1690976318;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4xN+ro7dynPbK7oOw5o5yhrYFjjc7jdgbMD0NNaHuLA=;
        b=qegMc025m+XcAreFQcsgFL9kpVHYOx78XRkpNtJM6krX8n8eSZ1QrTlGJyF72kkWnv
         zPSuIxTtnOgs40KJGmG/99dydJCwFDqJR1pfi1pbNwEVpLVt/f80IKjfZhelz9agnPk1
         QGL+YvdxOa2pWuZbQ2bxOGgKOmFbc8jw1njYE3/tRO+GfYKTUiwmFhKBfaYh1Eb39vsl
         gmvpw5B6pn376LvMMbpsp198oWI+AHDYMadWtzP3ThHey8sQAza72hMQgKR9CM79APVA
         u8ET89JxrUIcGv3SztvFUiIgLpbqdbXw+Mm5CjcvsvJsgC0/EHLChbfSoc5nMz+FJcNN
         Xx8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690371519; x=1690976319;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4xN+ro7dynPbK7oOw5o5yhrYFjjc7jdgbMD0NNaHuLA=;
        b=hTs2N1/NjDDmteHquX4Ocu8e/f1pYBtA3kQ9QaMoLZw2d8jGobbQ1UlrhVLVekvUr2
         LecrQfpcVp0BiQ5yhTBK9QLetFvbG9X0555dAof9hbqMVScPF6fhXnFXBDkSAA53jdHj
         s7rMCwLsP1E8VEy6auAarZvHaG+LfeSpBiwXvnA6fqZNgK/PNN50/lOOcErIUJEhLWJc
         pKbwsUg4tQm5MYlLDFxoSjf9ipwMga5+SI3L2bKaOJH07iy4H1JQ3dIRZgfzY3iVYk20
         PUYMulUH/VI3HugGnyPFGn8zKcs6j2EeQv8d2tATRBqBMJRgtP6GKYgTvVbxrMtQ3Kf0
         s+Kg==
X-Gm-Message-State: ABy/qLYkgWDU4TMr1qFLVffNG5+nlMjp4vyMOXe4NaAhWLDxJJ21HB0K
        AdDsQ6tI+Zgjo3wRS14IfSWZyDCFKKo=
X-Google-Smtp-Source: APBJJlGBIha7eGFYAJZABX5QauXNBEZeqXP9JY/OxRyi+ztiNj1biFdhogm9oOYEHyu0vcu4HBxQrg==
X-Received: by 2002:a05:6870:1cc:b0:1ba:bb13:d007 with SMTP id n12-20020a05687001cc00b001babb13d007mr1985341oad.5.1690371518711;
        Wed, 26 Jul 2023 04:38:38 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id u1-20020a05687004c100b0019e6b96f909sm6351099oam.22.2023.07.26.04.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 04:38:38 -0700 (PDT)
Date:   Wed, 26 Jul 2023 06:38:36 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     =?utf-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Stefan Puiu <stefan.puiu@gmail.com>
Subject: Re: [PATCH v4] abort: clarify consequences of calling abort
Message-ID: <20230726113836.qery7vznhrm4hqdt@illithid>
References: <5c8c0d88151e70a69c8613ad87c4441472d3ad95.1689867426.git.tgolembi@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wme6fidjfeseqohr"
Content-Disposition: inline
In-Reply-To: <5c8c0d88151e70a69c8613ad87c4441472d3ad95.1689867426.git.tgolembi@redhat.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wme6fidjfeseqohr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Tom=C3=A1=C5=A1,

At 2023-07-20T17:38:01+0200, Tom=C3=A1=C5=A1 Golembiovsk=C3=BD wrote:
> Clarify that atexit/on_exit are not called because those are called
> only on normal process termination (as documented on their respective
> manual pages).
>=20
> Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Cc: Stefan Puiu <stefan.puiu@gmail.com>
> Signed-off-by: Tom=C3=A1=C5=A1 Golembiovsk=C3=BD <tgolembi@redhat.com>
[...]
> +.BR atexit "(3) and " on_exit (3)

You might recast this line as:

=2EBR atexit (3)
and
=2EBR on_exit (3)

=2E..because it's (a) a little more readable (no quoted spaces) and (b) it
be easily pattern-matched to migrate the man page cross references to
the new `MR` macro in groff 1.23.0 (released at last), and for which I'm
(slowly) working up a sed script.

There are plenty of special cases to handle, but stemming the influx of
new ones will help.  :)

Regards,
Branden

--wme6fidjfeseqohr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTBBbQACgkQ0Z6cfXEm
bc50jRAAk1KAn7GnAz6w41vcuhFy6MTRUjAMk71xJn27SJTyYsG5InSS2XV6PW9N
s3+v+RF2iapaFFPhFRKkxnMmtcn2UFYftxkQqlrexR/xO3PM2bUjrR7iwcg/Yhho
6hlLHAdDPviQfAotJpPlmUlV3VkyRZHLz8IN5bzRHcPrCoZq0yoBuSddM10UhiJk
kqm5qpVDviW/wckvYHGOjq63rA0dY3clCFzG3cy+G5NAtgcabp5kaSPddbPRiErT
SkqcfOMS0N3rO7X2D/7lB+bOFnhv7G5gL74LS8NWtQsSXRf2TJ5XIIWjycoyRyQ5
K0UizC0HcQl5lx/JBglOYishhD/CLGTTl2eSKVqTEaZUH2nFGzXQa5N7mpswCulc
Wl9+tumhGWGYhZS+dySCPQhW+OMCKjis9dOgP6xRoq/KveVwMjTGgCHmTG/pkuqU
AG72hJYUupKHkcCVe5o1HDOSFb8s1wXDRDZSvZOuObpo7CdY8jO10B6tDjhlPmX7
+yXTmSU+myUc0xgc4Oq6nAO4Wntv/1UdBMifON6YvpC5856iVtiIbudI4/oP3NDj
niUmfGDk8HGkiw0ezVX74DTHEu8Qj/c1lEnZJCvnowCt9uHcbJXQU5xCSI2aOypW
ruWbUoS5RC327UHRdafYtgGxTmNYqhfpXGi2Ddyi3SMOvloVwOo=
=HM0h
-----END PGP SIGNATURE-----

--wme6fidjfeseqohr--
