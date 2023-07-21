Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5B4075C5D6
	for <lists+linux-man@lfdr.de>; Fri, 21 Jul 2023 13:27:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbjGUL07 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Jul 2023 07:26:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbjGUL07 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Jul 2023 07:26:59 -0400
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com [IPv6:2607:f8b0:4864:20::c34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7496F198D
        for <linux-man@vger.kernel.org>; Fri, 21 Jul 2023 04:26:58 -0700 (PDT)
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-5661eb57452so1133388eaf.2
        for <linux-man@vger.kernel.org>; Fri, 21 Jul 2023 04:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689938817; x=1690543617;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dzgtfDGh+CZNhwiYWeS2OqLMPcIrx5ngmxAOsggEM/c=;
        b=mvkD5IJPLyFESgAaCziOX974jt7QhKoptXA+mpFEVdb5xomYYBZAWJeqYJ9NAU2vxu
         TqA3WPSFj9ljbKO26J+BaRWsGUDtPvoWJvKQg2hEhvNjTebS2N8gtYYXXpdFIEubZA1Q
         HXoIfRXouRpa8T7GlUV+WRLIQb6Bl82VzOqixYPNcHirQ81kYL2fkFYO9kxxQgVxsORZ
         K8EyoOywCv/5MK5/139Z6UtKqFDSTbinBmpO9/lH5KaF9tiZLb+WcbuXgjxN42JbRt2u
         VRy58FkX1nMcvLWzOu79iTPFNarYneVzrNVqbHnaGxE0FDc6oDW54ziaO35DBJlPwgnQ
         MapA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689938817; x=1690543617;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dzgtfDGh+CZNhwiYWeS2OqLMPcIrx5ngmxAOsggEM/c=;
        b=e2w1zbBmRaFJpe9SQWckE8OwkI2Pnl0jO+NhkS65xMc7pXmdjFSBcysBaaFz6ODzfK
         QN2GAZhyVkXk6S95wlyCziEQXCCjW06fNlBJKGEJnyb82qQoPUlJVaC6CHCzHkcO0fLD
         kXdc4VVVPfKWyLaKt2K3k0cGZqp7s38siW9ILZM1rGuCvJh4w1BkTV1Zhrzvr4007xLZ
         LNXLedKQJxlaD/Nu/a8xzPxxxHe3ai2bgGseXEL20xgh1zXlakOokqV4dEL0IjYggu/M
         1/KJk0j77sXSicZGp5h581Zt60oPxOb78CCztTMN40qQJBrPgluNPmm0DDkZ/Vk8S+2Z
         Ffsw==
X-Gm-Message-State: ABy/qLZdqk5C2TAniQagxwf4QpjlX06f0nN8w06flweemCr73f8Wfqla
        tlxod1kVqdTlpSXWMUsBsm3GnD0I2hk=
X-Google-Smtp-Source: APBJJlGBTAkA4If6v3YV9GwiNHadKhejl5R3tQ1bsxIZ2nB+7H3vcG+5nyhETkPxc009usPYGa6Xlg==
X-Received: by 2002:a4a:7549:0:b0:566:f0ee:a44d with SMTP id g9-20020a4a7549000000b00566f0eea44dmr1279017oof.3.1689938817694;
        Fri, 21 Jul 2023 04:26:57 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y18-20020a4a9812000000b0056623671ffcsm1436241ooi.24.2023.07.21.04.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jul 2023 04:26:57 -0700 (PDT)
Date:   Fri, 21 Jul 2023 06:26:55 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man*/: ffix (un-bracket tables)
Message-ID: <20230721112655.qira2zmzmeij2b4g@illithid>
References: <20230720020612.yg4dfhxummbc5blv@illithid>
 <20230720030503.2vyjv2kksisetwui@illithid>
 <5da7de11-e4f7-1941-a265-5611341099f6@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="voam6v5oqxieeko2"
Content-Disposition: inline
In-Reply-To: <5da7de11-e4f7-1941-a265-5611341099f6@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--voam6v5oqxieeko2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2023-07-20T15:31:22+0200, Alejandro Colomar wrote:
> Patch applied (actually, I applied it from v1, and compared it to the
> script).  With this, the entire set is applied.

Thanks a lot!  Also for fixing up my missing "S-o-b"s, because I'm a
forgetful SOB.

Regards,
Branden

--voam6v5oqxieeko2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmS6a38ACgkQ0Z6cfXEm
bc7Gfw/5AZxYyz8uk4ppbUKe9n1r/zfMPdchaZn7GwtzkJEJwxapqvmZiz/UeepW
C09KD7/bqT3677A/Za8WG6CsRA5TSOT/ILrUX2aOQR95FDa2YfapLCrnz0kp2nrH
yd3XsBOSrjotzsHmzyZ3MDydcrQR85esD+e4zfVyhDd/Tz5YxdsYBS9EFZbnaRJO
1HJQo7humJqaJYDX07ZVYPMxRuIjXux2VVi3vW/8P0/iuqmvQKQ7zMMt6azbX70+
q+sWVja3lVuT5mWhgGygLpCOcm23QhGMIHgdg7TlzXQ1EYRZI4W0TNRLyudGzy7p
xuC9auCGIFifQnuitHRwN9lIDcuvpupZMCZlOe8d/BDp0lqJc3X/380NlGY0MXF2
GKaNzUp7CXHgnPPQwbs/bgzIuwG/CmrxUp7c2wVAgskakj6xFpY7I/N0lzzr/yga
8jykt4c5Au8j0kHYHCD3qHvLsOV4wNq81m4loKGdi+XROXJRrIn8vOUlhXOIgrjq
ed7p3hFWies30qCFLS1/DwdgzbT1oI9WcBDr9UHtdyAzlxwNKET09YFGnv+r3tns
y3pjThUuQXdSKD6Zq5dupGHKvB9qaXy/IijXiLEp+9r6DXO3/pru6FdL29J4HoHP
7uLiyfeaBG8xfqmEj0PEasDMUDTpWdc5zhnh/S/FpgXcGMLvuqw=
=m3uw
-----END PGP SIGNATURE-----

--voam6v5oqxieeko2--
