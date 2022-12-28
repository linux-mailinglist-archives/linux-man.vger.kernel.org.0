Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4806C657BC2
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 16:25:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233747AbiL1PZH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 10:25:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233736AbiL1PZB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 10:25:01 -0500
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EB8D14080
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 07:25:00 -0800 (PST)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-47fc4e98550so83651547b3.13
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 07:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hardenedbsd.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/B1rOCH9HmW+vhDEypyd7tOOp9ZpzuMp1iRK/8e6VVE=;
        b=dZRaLcJt0LA5Sb4x8OsTw5hsUcfVPzPLAtoCa/4ntHT8PwvuRAlD76g80CtcyygsYa
         dCo0hik7AA0m6xY+AeiUqVhR23n9WtVTg7Kw51xF8uWZWA6QGFqCzD8wsH/7eiGIIHQm
         wud3Ghtd73qp89MrwYRwTRtMkJx24SZwmnQO/hWC5rhlkH0FS/O6L8KrTOjsTLZBT9Qd
         dMdnGSbm5PRoj5NlqmEJXr8WgYn4WqdcsySTmyES12faWKFpV7V5bO6FdmF/RAa8aQ6r
         yeeFn/QBhmT+PtTxeOQbRqGexlNjisovgvqBc3Q9xi3fiOhSKcBkFzRQAA4bI5JuDjUl
         35dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/B1rOCH9HmW+vhDEypyd7tOOp9ZpzuMp1iRK/8e6VVE=;
        b=KBE1XeaFHQxu/rae7V5MgvKK6Ymhy6UnoRFOftpcdjoWKTl+LHFqCt7j1OnR5EHfmv
         stao4Ylo/d1cBCqF5Pp/jBYNeVgCPpDBzNeNx+iyssA2gppfTrzRIT/beHWmfJHA6xPb
         MgAra6YxZ/a6+svTdb8ZHy1kv/seo4eHvA3O1XvpAyZBhZ5ptl5cpT0CobUVC+inbZxh
         ldz/+KjfnCB8zIto/PGhFjaTpZw8r3gUjAQtAMin0TdynlMhM2osHuQMRwgogUl035co
         ge387AsJ+O5O6XNGwDRjEUl99SgdknUy4uGX8mcfjEcyWxdo+ht23D0HC1Tl1zoaad5l
         bT1w==
X-Gm-Message-State: AFqh2ko8UUbSSuaXPc0o+II6k4N69MNbbA48ILjyLMcO7xF8uMPzwwZL
        Qww0TANXJczI3p+GyoFmX7V8gQ==
X-Google-Smtp-Source: AMrXdXv4sMiSL7vKKuaChkyg9/yi5j3uuoC3NO91mZj+xIm23uyWN3whKb8odSyXTWfADQZtfdST6Q==
X-Received: by 2002:a0d:d452:0:b0:364:1ba1:4bd2 with SMTP id w79-20020a0dd452000000b003641ba14bd2mr26414420ywd.43.1672241099492;
        Wed, 28 Dec 2022 07:24:59 -0800 (PST)
Received: from mutt-hbsd (pool-100-16-219-215.bltmmd.fios.verizon.net. [100.16.219.215])
        by smtp.gmail.com with ESMTPSA id do55-20020a05620a2b3700b00704d8ad2e11sm9378808qkb.42.2022.12.28.07.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 07:24:58 -0800 (PST)
Date:   Wed, 28 Dec 2022 10:24:58 -0500
From:   Shawn Webb <shawn.webb@hardenedbsd.org>
To:     oss-security@lists.openwall.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly
Message-ID: <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
X-Operating-System: FreeBSD mutt-hbsd 14.0-CURRENT-HBSD FreeBSD
 14.0-CURRENT-HBSD 
X-PGP-Key: https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/blob/master/Shawn_Webb/03A4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc
References: <Y6SJDbKBk471KE4k@p183>
 <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="tq67mwsdswvrgjh4"
Content-Disposition: inline
In-Reply-To: <1a1963aa1036ba07@orthanc.ca>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tq67mwsdswvrgjh4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 27, 2022 at 04:44:49PM -0800, Lyndon Nerenberg (VE7TFX/VE6BBM) =
wrote:
> Dominique Martinet writes:
>=20
> > But, really, I just don't see how this can practically be said to be pa=
rsable...
>=20
> In its current form it never will be.  The solution is to place
> this variable-length field last.  Then you can "cut -d ' ' -f 51-"
> to get the command+args part (assuming I counted all those fields
> correctly ...)
>=20
> Of course, this breaks backwards compatability.

It would also break forwards compatibility in the case new fields
needed to be added.

The only solution would be a libxo-style feature wherein a
machine-parseable format is exposed by virtue of a file extension.

Examples:

1. /proc/pid/stats.json
2. /proc/pid/stats.xml
3. /proc/pid/stats.yaml_shouldnt_be_a_thing

Thanks,

--=20
Shawn Webb
Cofounder / Security Engineer
HardenedBSD

https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/raw/master/Shawn_Webb/03A=
4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc

--tq67mwsdswvrgjh4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEA6TL67gupaZ9nzhT/y5nonf44foFAmOsX7sACgkQ/y5nonf4
4frR+g/9FSG8mCUh/OYcCWgfRUJRi+2bBxoklcCfEcswS60dOe+dAOZ3kfpnmPig
SLm/eY5Bgl1hkHF8+Mz6pFJu9Nlg3+ZmJ4LlWV6L6SZsry0V5NTlwAmUqyqysqYO
e3R6UXGnv5JBYK2fyzk7r2eebzfUtGwCo+vBeq1tJNSPKkqA49fvSVZeGQYPYmAW
FZJHQhKdJ0OBpxNa8JPW+HAsmJInXVBRlZos9yYkaAsvTFH+ymtp8Dn+2h99HL0H
hClUswUv+DD9M/XeBeovg7f07BWUj8kwWjKDfgZCAJKvupFu7hLZemh7+ZDXgXcZ
Wiog9NqztTFJHfZO9YmcEdoBlT1IM9aIwNjOtCjsWNzNINOe//VFuNdc1obx4l32
nnu3FjxLx6kv7rkWfMPB1gloIcKDZmiSVWm8m0UYoVEwIpX0avaGNGg0URVq/Vf1
FukDumq8CSsyb673Z5m4iDJBbKBo2KnMOQcDEdHqkbvXb4Ug/8tGpfq/NRVRjqkB
KV4tDnYZ70paHbJOX6Bb6MEPA4ywyT9Hy4MZv+3SBZkWvLNkpVs+GBWpmzcTQWuO
clxGl1Kz+aHZon4RAnxwU31NBjmvvRvbkGHTjzFFrUxNCrIdu/VSDPFZX4/uWFX2
Qj1SV0/8/pL0CAzLtxiYD9hEWqMEyS0yMZ5zcv2XUMSICItK3/A=
=YDgV
-----END PGP SIGNATURE-----

--tq67mwsdswvrgjh4--
