Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 974F75505F2
	for <lists+linux-man@lfdr.de>; Sat, 18 Jun 2022 17:58:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231992AbiFRP6J (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Jun 2022 11:58:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbiFRP6J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Jun 2022 11:58:09 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7666A13E1D
        for <linux-man@vger.kernel.org>; Sat, 18 Jun 2022 08:58:08 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id v143so8792295oie.13
        for <linux-man@vger.kernel.org>; Sat, 18 Jun 2022 08:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Oy7ciIe8yf432ehDutrXkm9h8HUUfUweKBDTsZSAh28=;
        b=hEwZPSJH1H8ooMzDBki5Uwf9cc0+gtEiIR71B/Ic8+pYBk8q9AOiSXCPOC8ZvUEXyJ
         /YJAkf7Qo/py3ZTyEAf/PQZmM3GdHA+mU0le+oYKPaXbLUhj/2vJQlaSn89rCGFEbFHX
         zD/+xN/iyOHUiiXMuo8frQPvGEmkXZJIow4x/PxJGmhXO1uxfy22hsQ9zsjviyfxW26S
         RnLeZQyS61uRv10/GazLx79K00krC0fzzAerhyVPJJrdxr8p3grwzJhlqR1EG+RhDneO
         pPKsv0SYYDQnwwDiHy+a8IDbJuANSeKQ5O5VG4VF/iZP8egpoVBfyYZsAFt0hcSkA1dw
         V74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Oy7ciIe8yf432ehDutrXkm9h8HUUfUweKBDTsZSAh28=;
        b=B5+3n+i9fAJOTlMEToxp3CMN4tmkQPsDRUhWikH0Jx15wbGj5sNpIEq4GZN1Cmc8gK
         Q4Ux4DAhWvqOw6ZFcxJUT99yuMpuhN0/TVHcYVMkQ8CxMZ+SM+KpXUwXys/9F3382nOz
         GTrJ4jHE6+JdKWBgh66qMJm+oed+0Dy2OlEflp+OM1cYUCWFyl+v6mSutUXAXXHzmyjA
         T2TROZ4X3kbEosjUASm5D+MZZHLBcxG3XkXXYaHEq6PT9iZhiwO1nCMI+W3PZi1rHeWR
         CHkHrdBUhbqLBTC1rcJjxQEdUS30GaBxfbMcMdfbgvJGK1fhg00u71/BqZj9Phn0atGl
         L7zg==
X-Gm-Message-State: AJIora8WrvvtQ8pLhxiJOF+79rP7s4fQlN+aSXAGNyYCxG45ru+8+aSS
        h0nDYv1BbiageuKHvBvCu4HZ5/744ug=
X-Google-Smtp-Source: AGRyM1svnmaNh4scV0n+rzL7nDU76nltoFItVDGjcXb4xbs51XSkyseukZhsTlv6l+CXBSVJACEJxQ==
X-Received: by 2002:a05:6808:e86:b0:2f7:5228:5e52 with SMTP id k6-20020a0568080e8600b002f752285e52mr7888954oil.70.1655567887805;
        Sat, 18 Jun 2022 08:58:07 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id i2-20020a9d6102000000b0060bf670dd35sm4571059otj.49.2022.06.18.08.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 08:58:07 -0700 (PDT)
Date:   Sat, 18 Jun 2022 10:58:03 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH] man-pages.7: STYLE GUIDE: Mention UNIX for Beginners
Message-ID: <20220618155803.pvmpv3t3c4v2ygzo@illithid>
References: <20220610105141.16649-1-alx.manpages@gmail.com>
 <20220610122111.2k5jkzgo2k5odpbf@illithid>
 <75b9d903-74ce-9bbc-45d9-4e890cefeff2@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pel6hvoymxtkqm2j"
Content-Disposition: inline
In-Reply-To: <75b9d903-74ce-9bbc-45d9-4e890cefeff2@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pel6hvoymxtkqm2j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2022-06-10T16:37:18+0200, Alejandro Colomar wrote:
> BTW, is the [2nd ed., BWK] thingy correct?  I did it from memory.

Yes.  The origin of this document is the Unix Programmer's Manual for
the Version 7 release (1979).  The manual was published in two volumes:
volume 1 was a compilation of all the man pages, and volume 2 was a
compilation of whitepapers (all, or nearly all, composed using the "ms"
macro package).

"UNIX for Beginners--Second Edition" appeared early in volume 2.  (AT&T
lawyers insisted on the full capitalization, but several Murray Hill
Bell Labs veterans have gone on record as preferring "Unix" to be
spelled in mixed case as an ordinary proper noun.)

Some copies of this document on the Internet have been re-typeset, and
some of them have misleading dates due to a technical detail of ms(7)
usage.  The date on the copy that was typeset for the published manual
is "October 2, 1978".

Regards,
Branden

--pel6hvoymxtkqm2j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmKt9f4ACgkQ0Z6cfXEm
bc5xqhAAnKnCXtcVRZixDOZhAmQYJI5N5nv9DO+G1f48WxjUOYBdDZ0xcdZDKgqW
EYKDPZL0DWyxElfCycWAdu/RidZ/DbsUcf77AnJd5Ivw9K82hB/ZZZirqXrXQ+qx
zetEXyQnXXqq6CTXNFlMvo61HK1Ebh4jIIilfu9C1EKwDCKmlnb6nibO56icR7OB
hYCKniESEYFyJrMEt/hwNr7X0ayQ4jyxztSmbL1RVGsXDX/fjveUH/95tdOTGMkL
kIglPFPRIpUtNh64xYOhneM0twyTXGV6UJ2z4Yu8ueIQogEpwSRlnNr6gTF1zH+V
v/NeFYW9Yi415sgoG/CRE6nJLPVJF2X7fJWd2n77icDlWeI62/CBEO17XbfKyc8c
EU0z394Pf9LcEJ+oNqN/LgWddb8fsIGxZFhVTLMao2tmIaaWQu3q8opcGTuge8pX
XP5txdG4F6gE2/iQW6ZRQsAo25gza/gPtNEu2MLTNWN4onrZ+nKbnNX8alErnAqt
F9HmjH6DAqOoeVQpuCp7RVQhfCKa1YsHIoMExK1HC1j/Esd05CJ4G83BrzZpXa9G
KsbU3j4i3cl2t8HiAPtfc+D4c1JADaSIl7+sBw4i1ln/07NzNDwhObHTTDcJYvmS
GoCQKGWcCaGRCHwXe+C4Xhu8Mgj9TcB/9dA7N0Cr+7dFT2aZjrk=
=gPwo
-----END PGP SIGNATURE-----

--pel6hvoymxtkqm2j--
