Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8924158564A
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 22:52:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230089AbiG2Uwp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 16:52:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbiG2Uwo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 16:52:44 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 647A6645E
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 13:52:41 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id h125so6963857oif.8
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 13:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=wmNxGlDdTkFb1CjTzTTpe03AZsU5Fck5cQoa6gft1ZA=;
        b=h81N5ULXcZVSDsytQgodzfkluz3dVZlmahqUaHzedsEOv5u+DKX32ChCQ+QUxNP9cC
         epl+CqcFU5/Zq05g9pJAvIWBEor+D7heoAe3muYQDhTvrwalOd+oCGIQBvCs+UE4uHFH
         n96aj87ofvQG7UlngldOmvlEz5svU1+CGbjpnr2zXlXxTRD1h8f1daOclOr4gH/hpFqY
         nxxXwgpiwVlvyU6ztQPNDQiUcVbMljYFWVR0OXlfY15SoLkcQ7RAKeHW4v75j666X7Gt
         dwKmSWnoIFpZPQ8ThyWbC2z8YIhQXjhhWPHpIg/E2gmcl7WVIZuxKB36uSjKayBobrG2
         aXgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=wmNxGlDdTkFb1CjTzTTpe03AZsU5Fck5cQoa6gft1ZA=;
        b=qF3EqkzvJ6RHfhVu+0YgNRBhm03gFiFqEhifa0v2iLtRTWCMHxc1sYDPZI8ABZupvV
         e4V8bQgiypWr12CNIUYwKq1+fia8Jy9+d4JEbtQ+EK1YLl0KRVxj8uKHNIrO/eaFEe5+
         PoqRcP9PpgcLhRbw2A9fLe0naxS8/KzxwMq5I+WBE3UaDhZn4ooI2A6zo8QPs8aMSqXP
         Z4Ei7DSiTGDacinCOU4P6kF1YzRGipUVSiaxfcB3ESFJBHYfLXpxbKsGnxwxnstLGIWx
         isqeitoDUbyXEgbhqCt4cCigWCVPMozQRhejB6F8S+HofbKtzMHQ5BMfmkQDkxYXAlQI
         Aiow==
X-Gm-Message-State: AJIora+S9xVYkZIZxY1QQly/hg+gEuRR8fxkO31NrYukBtylFXpjmgSw
        iNoQwGIwikbBkImDlHib27uc/r7DbgA=
X-Google-Smtp-Source: AGRyM1sFtvSH25VGJAaKc8fSsRuXhAs1u16AIPpj7hKOxm47CqyRueq3Lul6ANtezZzHGT2zEiyncg==
X-Received: by 2002:a05:6808:f8f:b0:33a:c75f:8005 with SMTP id o15-20020a0568080f8f00b0033ac75f8005mr2639946oiw.87.1659127960716;
        Fri, 29 Jul 2022 13:52:40 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id t26-20020a0568080b3a00b0033a3e6e7ce9sm1322609oij.10.2022.07.29.13.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 13:52:40 -0700 (PDT)
Date:   Fri, 29 Jul 2022 15:52:38 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     enh <enh@google.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH] getline.3: wfix.
Message-ID: <20220729205238.6yf4c4xc2i5ritp3@illithid>
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="y3jexugrkt7wnjo3"
Content-Disposition: inline
In-Reply-To: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--y3jexugrkt7wnjo3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Elliott,

At 2022-07-29T13:22:22-0700, enh wrote:
> Clarify in the RETURN VALUE section that it's necessary to free the
> buffer, since at least one person missed this up at the start of the
> DESCRIPTION.
[...]
> +If
> +.I "*lineptr"

The quotation marks are unnecessary; macro arguments are space-delimited
and you have none here.  (Even if you had multiple arguments, macros
like `B` and `I` treat them all the same.)

Regards,
Branden

--y3jexugrkt7wnjo3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLkSI0ACgkQ0Z6cfXEm
bc5RtA/+NQjn1uLS2U/aujqzhwQ7Q1foNDxhqSOHrcF2uQ1mhUJ6lB6v1Lg2Q1ij
Y3eBiVVwJjhlqi+ziBY+XaPmhPG6ol0YHwQSgNRk+76PHF8gcyj1QgY6PwYTCcww
5uttQzuGJ4ivJV+Ed5x7OW9/5Dl9LOBMz2J/fBSpm0nhAMJZ2d0+tOroR+Vxd9VT
H06wIBTYDMRXlP4TQhIP3i6fWIkNTmjbdHNWVn0Xb4sXL9GSt4fzGhYbwcbb7fgd
dUwbgrbBNCnoQh4J8ULI2taD1E8qzp+eYlKLKgMbJPP2dwcPAMaEOzX0L4hO1Q0O
5vRvN//vDcjKia85TE0DaXLFNRQllWowHgbaYJXOfm3j9BOOH6Rr11vNFuD3vJS5
m9DwdWGsCEDmSMKzwIZ42Z6U/sETanrwjiag5BHdJgqdOwQ8S5rAs0TlZlVCI5zm
7B2IhCv/Nx+2mwGnQaPvBML5xJCu1B6nlB9dFITXO0uV4KY07CNVvFOXNZbJwzxw
w3MJG3XPbJY4G8Jyajc3nZ3hOQBirDwsOthuOxLWCAQw7tZN3w/20SKya2Jj7cSs
u1wg1TF8zf2qOfjBRryxTYtNXEWS9+M9YQSBZKsmUVVEN5PP9l64ozB0ecCkGk5s
fkz14SXru8X/PIH5b2/1agAWkTrLK3eERrLF+6GShNvF3Cyd5ac=
=pgSt
-----END PGP SIGNATURE-----

--y3jexugrkt7wnjo3--
