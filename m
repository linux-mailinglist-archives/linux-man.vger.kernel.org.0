Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43EBF6F271B
	for <lists+linux-man@lfdr.de>; Sun, 30 Apr 2023 01:07:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231158AbjD2XHw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Apr 2023 19:07:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbjD2XHv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Apr 2023 19:07:51 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15DB110F9
        for <linux-man@vger.kernel.org>; Sat, 29 Apr 2023 16:07:50 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-187c78c6657so1049822fac.2
        for <linux-man@vger.kernel.org>; Sat, 29 Apr 2023 16:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682809669; x=1685401669;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=O+xPxYY01oxWgxm5V532q2kp9G255vSaJijvqr32QUg=;
        b=XCjLAxdsvmcGIf381kqA8xOYOXE1YdR0OIWn8LqVfmhJucZ0nVDQviqoYhvPbPjPdy
         m61gvjUECmI1ZBOFzsoBW6A9ne/7JBMRAxaEDq8X5ZjgQrHfkO4X7ubc6O9lAMdA7Qg5
         srEEPubvowkE6vpHszS/FSF/ZJVU/DnzYrTckR0Dkvlfw+zNHc+NssNZmUnXE26kGHt2
         vjyzSJRjaYrRpSKW9RZ1GfBn0tJA2GEDXaz7BoDiuGYMF/y70Js5LmxKlQp0WuApYx21
         lTRZcjXOhIt8jlM6jkciiX6FRCWCcVfoMU+UepLRFfqPMZF/lS32MQyIZPqSnpmcHOOa
         X37A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682809669; x=1685401669;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O+xPxYY01oxWgxm5V532q2kp9G255vSaJijvqr32QUg=;
        b=VinyOe8DlsgGZ3LTuoosnsTOKcKzWZOqTURXgZbGZ2M81COrZdylnV7gO+Y4vAWj4i
         wpDrVYZnEATgPF44SL83Vmymuhh3WIWETphkBnTlkXrehrEURLvOCNhtcqXYw2CiijuU
         mTBF9heMl5S8o2vvkynAlSanbOEE3RX283q56j+VUkJ/FCJFhQFDOqgjFyqIQQIpNDjY
         16KUY1rZlNNz0wxhUUu/qof6JDNATdcX8uHIM+TvYnIcBqOcHJHmHFkiO5CbZJ6g8drC
         cQ0kpSYkwarWINg7ycd//QTsfLgzAY1lajncm19xibdKVmmvln2FFJ/y72JbF4mb+hyI
         OD7Q==
X-Gm-Message-State: AC+VfDz5d6NwchgfIMCEHAnqi5hNnGPUeBeyUb71AtnYTRfN7FnkD0AT
        Z/egBjyWnQFMV7ZM83QrAqA=
X-Google-Smtp-Source: ACHHUZ7BfJDdHbeYWsoAxAybX7lkmIpFB3ZYEjdX1IovjYyauY5ZmWpY1/4lU3cm1mpenthxSUH22A==
X-Received: by 2002:a05:6870:3a11:b0:18e:ff10:d032 with SMTP id du17-20020a0568703a1100b0018eff10d032mr4865313oab.28.1682809669175;
        Sat, 29 Apr 2023 16:07:49 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id n17-20020a9d6f11000000b006a5d7d7f6c3sm10516214otq.7.2023.04.29.16.07.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Apr 2023 16:07:48 -0700 (PDT)
Date:   Sat, 29 Apr 2023 18:07:47 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] uri.7: ffix
Message-ID: <20230429230747.xw3ym6rzaiypkq6q@illithid>
References: <20230429194642.174362-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ree4ndmrzdol2agb"
Content-Disposition: inline
In-Reply-To: <20230429194642.174362-1-alx@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ree4ndmrzdol2agb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2023-04-29T21:46:43+0200, Alejandro Colomar wrote:
> Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>  man7/uri.7 | 51 ++++++++++++++++++++++++++++++++-------------------
>  1 file changed, 32 insertions(+), 19 deletions(-)

Looks okay to me.  Glad to see deprecated things going away.

You might include the equals sign within the (double-quoted) `SY`
argument so that any indented lines align _after_ the equals sign rather
than under it, but that's a cosmetic detail and I don't know how it
comports with your other style conventions for man-pages(7).

Do you prefer

scheme = "http" | "ftp" | "gopher" | "mailto" | "news" | "telnet" |
         "file" | "man" | "info" | "whatis" | "ldap" | "wais" | ...

or

scheme = "http" | "ftp" | "gopher" | "mailto" | "news" | "telnet" |
       "file" | "man" | "info" | "whatis" | "ldap" | "wais" | ...

?

Regards,
Branden

--ree4ndmrzdol2agb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmRNozsACgkQ0Z6cfXEm
bc5h2Q/9FLF9emsSGj/TVWFF92iV1ap21jkmXRRSHlcFTVMrO1XeGAMQQVagcZ2U
J88wPr+8yo7O2vzJFN5J9j0WGriSAX2NT4PAOh6zhjoE8qhpu/nLfOS9yzOH9aJ5
ksfQrnbhXRjxSb84p/ocPpVYh06xaMDimBQhiO+9Q0x4WCQskwQ9uOISfo6LSV0Q
BsRPzc4D/cd1PUgQdOx9p8h0FVgSyocR6KWyOEDHBGOSry2chX6JsXq1TLaFQbtY
B3eMid/0H3edycBu11HsSheIwBtDaEN1eBec76TDVlowy/v0pLwz7Kk+tumjk9os
Z3yASgE+TDrZH5Ad++fNdXbHBUJPSlbTH3b9NXAzyjuE3BvJiF64HV/BBZcJruEI
qSkE7U/2XB7Ob9d7fL8ZT8j2+1x4CxgCvQgD7RQfcmOZdga6G5Az13ZDxHBSCVPt
W/ShZnJEMx7n8BX9Di2CZjjToNhXW4tgtkZLZwBzmA0qLdpKqdGdhZVjKPss6aFY
S/Y9nv+AeBzTkxC990Dd97tiNAIaZNvNFhV550MVLcE5qyVgJSYULMGG/ebOwdzb
WAgLyMY7SqeqKGevl+6gyKpjutRIsOmj4xIVY5Fv2ib7sWYRsvHyR2Xg4f532QHT
mLZYqxBoJ6EG2zPNWkQNVxvDyHvvKmHTUpePp35AuB3IbsvXe1A=
=3WAH
-----END PGP SIGNATURE-----

--ree4ndmrzdol2agb--
