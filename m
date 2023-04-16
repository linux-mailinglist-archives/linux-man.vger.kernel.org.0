Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC6AA6E3CDA
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 01:51:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229484AbjDPXvc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Apr 2023 19:51:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjDPXvb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Apr 2023 19:51:31 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25B631FC6
        for <linux-man@vger.kernel.org>; Sun, 16 Apr 2023 16:51:30 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-1879edfeff5so11530488fac.4
        for <linux-man@vger.kernel.org>; Sun, 16 Apr 2023 16:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681689088; x=1684281088;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4lsPtnsDpyNsGgNzFtmRjU4PxN3YMogN/md0AFisNkA=;
        b=jJdJE6Nqg9XIH+jp8tXgoEs48NFlkwPSBY82pdqiuCNkDzr++ozSNW3SYgwjydtZmS
         XJL5BOi6t89tve++wYaKSqYF2EYoYaLso0y6WBtpU3W4E5Bh+HNJYxHAg4LQ/BJh4E9W
         QVG8QCxmQAQZ6yAe6P5cRmcIOLcw/bBvd62yr23mlPx/PrRp/grJ7wZGGHH7SwbdEWcQ
         A1L166YQDutD6PUVHwiX9ur/UjKg+CBi/AEvqmD3Y3DmN38ouEN2G5lSvFcMRGElMnn4
         gIQ/SK22R8QfVdqaMAErZn5DuliM9Gwf1nuD0K7t8ONNBGRrlejzlZOSLZg/JcNh9WUl
         yuZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681689088; x=1684281088;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4lsPtnsDpyNsGgNzFtmRjU4PxN3YMogN/md0AFisNkA=;
        b=EB50V3yHMY6f3ymdiNeE1y1z+aNBLXFR4MduKG+hh8E4bQ4JtUMMibjqlpeIFTtflF
         HqlHChehRk741+S3gQYo47PqYGI8dnjGPlpFMF1G5tq2MxhAKBSgC7TIJLXOraGBTEeP
         rAtMTyeqpqUukv4Cd9cD2/O4wI3mFxFO19z/FGFfLqEjPWDC5IbhQkHFrnP5wcpTz20s
         3B9kUaHyVI1OPu8Hs3DYM0oNiYf1EepzIstaT3gQlwBmhxA6G1dXWeRrsg+kuAJpQ2CQ
         62OVHpZ0R/UYyG4IZwT7UbBzZYGldXVfucMXWk5JmS7fFNXwarFJhvWVRgg4GV0uSfbk
         9G7A==
X-Gm-Message-State: AAQBX9d0FenhHl7XBoF+ETUhhT3lZ2IxZKmmA7+p1WW3Of7AGAIXMBhJ
        dFgKgbDJRbJAku/2knb0mJ7872u+vWI=
X-Google-Smtp-Source: AKy350abNG/k1/g7OdiiF5YF30h7Mf7QW9FU8u59sjeiCYq7wl4wl6FsKjm2JfdKQERupgfsboh8uQ==
X-Received: by 2002:a05:6870:6489:b0:187:de7c:33f2 with SMTP id cz9-20020a056870648900b00187de7c33f2mr2082868oab.30.1681689088537;
        Sun, 16 Apr 2023 16:51:28 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id r9-20020a4a3709000000b00541fbbbcd31sm4153880oor.5.2023.04.16.16.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 16:51:28 -0700 (PDT)
Date:   Sun, 16 Apr 2023 18:51:26 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] man*/: ffix
Message-ID: <20230416235126.vdbiab5p5jwty4ol@illithid>
References: <20230416231916.281037-1-guillem@hadrons.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ygz7meda4abh5ldw"
Content-Disposition: inline
In-Reply-To: <20230416231916.281037-1-guillem@hadrons.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ygz7meda4abh5ldw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2023-04-17T01:19:16+0200, Guillem Jover wrote:
> Escape dashes on dates, UUIDs, URLs, file and package names.
[...]

I'm a +1 on all of this except the dates (explanation below).

> diff --git a/man4/rtc.4 b/man4/rtc.4
> index 55dc1ff6b..b16be16c1 100644
> --- a/man4/rtc.4
> +++ b/man4/rtc.4
> @@ -43,7 +43,7 @@ and
>  .BR time (2),
>  as well as setting timestamps on files, and so on.
>  The system clock reports seconds and microseconds since a start point,
> -defined to be the POSIX Epoch: 1970-01-01 00:00:00 +0000 (UTC).
> +defined to be the POSIX Epoch: 1970\-01\-01 00:00:00 +0000 (UTC).
>  (One common implementation counts timer interrupts, once
>  per "jiffy", at a frequency of 100, 250, or 1000 Hz.)
>  That is, it is supposed to report wall clock time, which RTCs also do.

> diff --git a/man5/proc.5 b/man5/proc.5
> index dc5397a22..9c0b3e2ab 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -4383,7 +4383,7 @@ Unnumbered interrupts are not shown, only summed into the total.
>  The number of context switches that the system underwent.
>  .TP
>  \fIbtime 769041601\fP
> -boot time, in seconds since the Epoch, 1970-01-01 00:00:00 +0000 (UTC).
> +boot time, in seconds since the Epoch, 1970\-01\-01 00:00:00 +0000 (UTC).
>  .TP
>  \fIprocesses 86031\fP
>  Number of forks since boot.

These are parts of prose sentences and are themselves prose.  In the
groff man pages we neither model, nor recommend, the use of hyphen-minus
signs (escaped hyphens) in date strings, as one might commonly encounter
in `TH` calls to assign a revision date to a man page, for example.

Similarly, we would not escape the hyphen in the sentence: "While I was
in Quebec, I met Yves St-Denis.".[1]

Escaping hyphens is important for material that might copied and pasted.
I don't think these date expressions for the Epoch qualify.  If one
wants to format the date of the Epoch, "date --date=@0" is less to type.
(In a man page, we would escape _those_ hyphens and might bracket the
command with `EX` and `EE` macro calls.)

Regards,
Branden

[1] https://en.wikipedia.org/wiki/Yves_St-Denis

--ygz7meda4abh5ldw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQ8ifYACgkQ0Z6cfXEm
bc53uw/9FAmE9YtCtznmMrH+utj+M+T58SgKwjOfAhiJlrIVsUyrB/FyycYNPymY
zVM3l/IMUOQDQ/4YIOxTdmRsEtR/nC+L7X914883V1YWHwnhMe+8kVCIiIvEss3y
kXzMVPXYfd2yaJeGjiiHsakVFJf1MGwnA1B8OJG9NDkMLO320RQA0p9cj5Ux4ieY
pwLSFhskV3hp7RI33NSg//1hR5+hrML6dwCzNLizUn96KfFwbV2AeUL9qyXkDCYJ
j56H1IKAnIcTB1lJAHtvhCw+uE6vG76EUeRxkdudNF5xwEnmWgxSlMKQhtgGlFAU
kpmOcKahWcfM1QX2U/K+2Xq+NnhyiDBtopDtbZaZT4gumFbrNBX2vx+bNLLCkBkh
uD6BDxJZhK9l3VhZ0AH7fIwMPGavBgEmfOUxRn3QF8ISUBPi3+FUgkXP4W2wBDYS
i+7+LdI0d2yBm/DzXX1UoQfP36VLZRm30nqhEtW26yOJeYwRWpYTLkiXVqvfuW1G
C0FIoegl/tQKhtvRLPw7bNthQXn0X81hSALl2jgB86d111bqcncaCYGtNdTgISFa
pHg3pWhWtmI3DVPzwLqJvrXXKvt+PI8X4/+j3tsoO8kotIQe5CqC5iUP6XcdQ2iL
heQyTyyy1Q3Q414B+E95Pyzhj9tuo2QllSsgH2I14hu+lH1vfSM=
=nP7F
-----END PGP SIGNATURE-----

--ygz7meda4abh5ldw--
