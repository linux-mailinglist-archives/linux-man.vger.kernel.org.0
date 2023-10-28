Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 051727DA85E
	for <lists+linux-man@lfdr.de>; Sat, 28 Oct 2023 20:07:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229449AbjJ1SHK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Oct 2023 14:07:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjJ1SHJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Oct 2023 14:07:09 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1930ED
        for <linux-man@vger.kernel.org>; Sat, 28 Oct 2023 11:07:06 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6cf65093780so2078094a34.0
        for <linux-man@vger.kernel.org>; Sat, 28 Oct 2023 11:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698516426; x=1699121226; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V0GXY58nb/+LSWfQaYSOW9swzD/MdHdXPuEQ2DP2LFc=;
        b=UpwvTieT80co/Vuq4n6LUwHe3239uhMlSUb1tzKgksv8EPlyyYFK3LSAfMxQACEPEU
         eluK9inlY0ULMvn8XPhlDFTGoKgaBWqY0co/LaA17S04ZJQK212rqa0Z6+rLpyC66gdX
         ReenmgSYpsEO8jl/nao7H+UNT0SvbLd4BAgdvcjhP+xaQQj9LEIkA9v8yeqkzkvQGN8X
         iKi9BqiwAjluAgeun9xOakvJziEhVVGpD2cAPVNdjhyChzM6P98simSPSVqk6uZJk7MV
         YQ5Zc1QcOfWeLdF7IuCYSSeDC4HhSMmUnz3m4Ed6L1ZBC+9w9ysUk1icvTGL3MPe8mXf
         o3Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698516426; x=1699121226;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V0GXY58nb/+LSWfQaYSOW9swzD/MdHdXPuEQ2DP2LFc=;
        b=LPoJH1YsdEEYEooXj/WbfuTeTLwy9THIJ14bAsDbmx4xJcwVo+Z1KChN8e3D8e5Ef+
         xHPN0RivWa229Mksajve0TYH32EOlmHZzHWkUiQlWh91V2TWjwqiDDtATDRoU9R3s9xx
         R3Ibkdp3uJuW6mNDqnKpi1qd3/p+qnBDKZfJ44NprKst9WuHaGZ6acB+41nsZMGxwrSY
         f/tiPDlb7zRGf0wgOnPPHXvyVHCjPm5/wBjKLAu3cGH0eGJu8rBySVfNtP5kyavh5ME0
         F5jL93CHXy1Q8vxRhWI8jI+8xlaiHjOBNcS7oYBcme8Os2dfHAckqYwMbiye5Z2T30hr
         sk9Q==
X-Gm-Message-State: AOJu0YwZraWyFBnF2i3PT7zCUamuszrhBGpX6ljhYltvS53DxJIT8slk
        qC7vEAG5KKTZUEQIkdzVJJocU8EAMg0=
X-Google-Smtp-Source: AGHT+IGjTqbH/DBIfz+cfkGtkXjS9kGlk6nBF4wFPvJ1Alqo/KgXUiFcBrlanl5nCYF3QayD8vPuMw==
X-Received: by 2002:a05:6830:44ac:b0:6ce:28e6:cf41 with SMTP id r44-20020a05683044ac00b006ce28e6cf41mr6667304otv.3.1698516425760;
        Sat, 28 Oct 2023 11:07:05 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q24-20020a9d6658000000b006cd0a56c406sm731300otm.60.2023.10.28.11.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 11:07:04 -0700 (PDT)
Date:   Sat, 28 Oct 2023 13:07:03 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: managing tagged paragraphs (was: [PATCH 2/2] ioctl_pagemap_scan:
 add page for pagemap_scan IOCTL)
Message-ID: <20231028180703.e4kqfnueaxp5dx7q@illithid>
References: <20231019131252.2368728-1-usama.anjum@collabora.com>
 <20231019131252.2368728-2-usama.anjum@collabora.com>
 <ZTbrIskF1mt0zTM_@debian>
 <20231024024802.e6hfjvfumzc2rbil@illithid>
 <ZTefONm-aap2x1nF@debian>
 <20231028130714.inrfj5nzbqt25ms3@illithid>
 <ZT01aL6v25b5z_Eo@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vfbuorlaxqumpc6s"
Content-Disposition: inline
In-Reply-To: <ZT01aL6v25b5z_Eo@debian>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vfbuorlaxqumpc6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[dropping Muhammad and Collabora from Cc]

Hi Alex,

At 2023-10-28T18:22:52+0200, Alejandro Colomar wrote:
> I meant to ask if modifying RS's behavior to not break after TP was
> something you'd consider viable.

Ahh.  Hmm.  Can you show me an exhibit of desired output?

> $ MANWIDTH=82 man groff_man_style | wc
>    1442   10152   81154
> $ MANWIDTH=83 man groff_man_style | wc
>    1435   10156   80990

Only thing I can guess here is that man-db man(1) runs sandboxed and so
might not be running a groff from $HOME.

> Me too.  I remember my promise to review it; I'm just very slow; even
> slower than sloppy recuriters.

I had no idea such a low speed was possible.

Regards,
Branden

--vfbuorlaxqumpc6s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmU9TcAACgkQ0Z6cfXEm
bc5liw/9H4pBBe12+3Z+qBA+H0UpqFfkpZ/jOChURrw+NrehG0vuwmwf43aUl4J+
hvsIjruRSKJzv1gy9AHyyDomZUnmHWi2F52chl8GiPntNQmAkbAtPGofFjF+7yJR
NKN8DAByBjCLWPD83UVBB7ZKF17wl1S/IN/S7o2OqC5JMcOBSaxzTx0XqinkPFm0
QkuIPUavAkVQLAHsxOGY8e9zMvp7rURqyZ81CZDJ+UH3nwrKAHZtaoEQcO1QtBnS
veT4k7wyqrzysYe+x1JjNu085Hj6eMLUfOUWr7kIOHa6OJtJlJRMlNXDvX/R0XLB
6tkvf5qS2RZ6QiB+M+DO8XoULRDUO/zF/7/awOeY5w5IiNxdSmEaK85p0Ko+zGuw
NJJcgEwU52jj4gyLXbbpHWfVVL+YWfusOeRlpQvPo+xzAgagmOH3FSx3KWnzn6SG
V/A9L4zNRWenny+N1uX6noyXRIg8p1vttKTEhDx6/vZNSRtTercBuc7UCHjRFaOS
15dcjIumjL6VEfiI9qtaFEncHTYh7VrTlIV5ycaiTZsh0RQD9gXkRCK9XS3Skhnh
+2hb2bQmxm8UnN2gI2evWCtXzQVQZxPWEFyXMXwCJl4QQYqQA6gDt1uifGbJM80f
RnCs5477qpvKBDXE3MbAwrD+jt0YQqN9swGMXsZPkIkuVKyYgOo=
=SurI
-----END PGP SIGNATURE-----

--vfbuorlaxqumpc6s--
