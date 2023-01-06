Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1773465FBCB
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 08:17:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbjAFHRj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 02:17:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229694AbjAFHRb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 02:17:31 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E3306318E
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 23:17:30 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id i127so478215oif.8
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 23:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=67/PB7m7tR8NtgRWhrJArBpMMyALL6kDaNiArF7axkw=;
        b=CG+NpxwQOu5N+9Qpd3zCZFjgB8gxzCiaObgRMjcq5krskojrACi3nHQTINAR43ny+3
         nTvjfDqVyQOhgKjYY6QNxNw6rDdRe90ujlcGRRLGu9/IfPmu2BrDK2fQIF+Eot4tgFA3
         CuafcScfrjMhVivGPP34AnSQuk9vOuWA/IhupUyH7+ijFLzKvl/gCWH6DTOjre9Q8PON
         8mL4CZhJ1DYxwQZcEpOyl/ApMM/lyY8bju0v9+3I052veliH3zw3XGgnMeDDzCxWM9Xy
         8b/GGis5Wd5p0kePC7SVUA8fhNSYsTBd/NI14+bIMVcttuQo8xogdeerGIej78M+pxNq
         9B6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=67/PB7m7tR8NtgRWhrJArBpMMyALL6kDaNiArF7axkw=;
        b=4XZGqBkvQPFp0PA9u+IagRiXrrrs3jYiilvYuTXT6pCni7c0YSYGe9DavQ1gy3SOAA
         1kTjkintYvDlb3lxNYoDPgVm8cJw5Ypg6fP4EG3PT23orHRHIfTUPis7Em6+qbDqHYuE
         fQQYNsxO2Ui9XmBeb68sC2HkEYY3tiRHeup/NYa83JHX7vzXA0uzgGVSBg9dpGGwxfhC
         RwZvkzL8yNmvRH8CGCaadPwfZa0HsafkvDdbdXuoNOEIq3E4o9gVhxyBfn5d4RSFwzid
         QL8Co6khwB7WOpCoAfXgoZCnvGWPlNCdYk4GXD7cyiGtGi7VmPQNFQfC29dD8d6iwKPG
         4IkQ==
X-Gm-Message-State: AFqh2kpwCaSGBCZBK5aUc9NzfrhX6DUvzfpJZjthp0A6nb33vwIhQgkk
        dxQLBMXqM8ZQRqBkr3hxXM9bx6ECm20=
X-Google-Smtp-Source: AMrXdXubYaU8xCXVM36hT187mfWVShRxzEV3LjvpuQRd8tMha6uOW1stGsz9KnfGOw37rRmGvQXQgw==
X-Received: by 2002:a54:4e89:0:b0:35c:152a:940b with SMTP id c9-20020a544e89000000b0035c152a940bmr24077721oiy.43.1672989449700;
        Thu, 05 Jan 2023 23:17:29 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y28-20020a544d9c000000b0035474ff66b3sm116048oix.35.2023.01.05.23.17.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 23:17:29 -0800 (PST)
Date:   Fri, 6 Jan 2023 01:17:28 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3 10/13] intro.3: srcfix
Message-ID: <20230106071728.73bflxm6bewxq4kz@illithid>
References: <20230105225328.tutvqrvewd6knewc@illithid>
 <7cac58e5-19bf-de63-7bc7-2ef22ee6f6f9@gmail.com>
 <20230106001929.n62apcljbzg4j2vu@illithid>
 <61a4275b-f9f9-dbb0-bff7-f6687ab169b4@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4znf2kygak2ff5nk"
Content-Disposition: inline
In-Reply-To: <61a4275b-f9f9-dbb0-bff7-f6687ab169b4@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4znf2kygak2ff5nk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-06T01:40:20+0100, Alejandro Colomar wrote:
> On 1/6/23 01:19, G. Branden Robinson wrote:
> > I regard hyphenation suppression as correct (and harmless) practice
> > with font macros; do you want that change backed out?
>=20
> At least separated.  Could you put it last in the set?

Sure, I'll do that for v4.

Regards,
Branden

--4znf2kygak2ff5nk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3ywcACgkQ0Z6cfXEm
bc5qNxAAr0rQFQ2MjnNkCmP1cQm+r7NQR23cXnQmdKXKeS4cO6LGrOOY6qHS7JLD
KOZcOlAkpFLlPwGQUL+Vf4Z2wDUpnEZYfhyCRIHj5/ti08yhZq9pK/osFdjFQwTo
a5jVOr3fZrAai07TH0J/SBYTH7ROV/G3AYtxDfUvBAfWYBmW0jE5HZF9md5BxosR
Mr1qZYvPVrPOi4ea9opj3rfwYmGJSx2UArrtS35YDSfOv9AV1SlLJR7udxhuEkxC
wkOPay4jsgHygFPIkmV6u0bIsD2XsVkAkMtCUHvSAtKNKUcq3KU4GMGY6DyOd7xC
wQeeX2o/IdUZRwm7gfLKce1fpO31SPYKjn94V8lsa8DV7O4wD6UnIY0R27mhj6l4
tNoZ4ghhI1ha0mAAsKbNWYsyLN8RnRrriFAejkx9B6sv4J43vVCB4QuATS15SylJ
CZQzznh1wPv90en00XLmkUW5/6GSpdmVny/xTvY4TMOuqznvZBZ/FPyf4lX++Z9+
2SxAlyHqUqtQHQX+y30KDD+f5S7QlUOAZ08LGoraaGxhEXVCxeNGZb1Tfa5sPefB
9NkMnpS6Ohrj1DfaGRdiGsWlJz5VAzqBv09BN53hT+4640+SbFuDWPAa5qDwrH+X
LA0KySzsvzIUmQ44BmUFlQZ6F6M7LCYCY8rd0Ji54c1QN+Hkjjo=
=Bzlx
-----END PGP SIGNATURE-----

--4znf2kygak2ff5nk--
