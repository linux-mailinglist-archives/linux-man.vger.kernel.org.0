Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59A7D6B28D9
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 16:29:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229804AbjCIP3E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 10:29:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229737AbjCIP3B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 10:29:01 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8202A5FA74
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 07:29:00 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id t22so1890168oiw.12
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 07:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678375739;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HDDU+bWa3bOLNwl0JgveGsRtwntfPtLpxnPfZTT7LKk=;
        b=Ws6o2TLxVhGhRbjGXHogdP/4xgb44uca7VTt/eaTAusFUfclRikJjp2VWbaIe/1nO3
         g+GavAkJRVYkdKJwChisOJzNXXb4VrrLUR5MNZsNZOxol23LgLYsAXm62civBzxNLIp3
         oscEsn9qD2ur5J2i7wMPHaXNUZyh1p+IHdYbh7RL6RzAmWGeVSrLCJw7i+exFa4jRItp
         /suK+5crFw9e9QlqotbMui98CB0zWSRJSCmYQ5Y2BtV8KK7xo2zHG4HO3tLq8EppZtxC
         xm9ITYgc/NAGslYS7I0Pu76AtfUDCP7DaSQ9InZWOEpddEGmASZTY7Cc2Tr9Ve/kHV9u
         Tx5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678375739;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HDDU+bWa3bOLNwl0JgveGsRtwntfPtLpxnPfZTT7LKk=;
        b=RbXUgqUfiWVKefFaJIcL+iVLksee+JRf2fuqb4CyjtObtyjN8F++1T/ttI/bCZvEUj
         EFyegWkOaGRW7DlaT9kXnQynjA8GUzckW1cm4sPG25ahdSQAPpBJzvalbiaXiCWuimpS
         7WffrWjkYNIwyRRPCvXMq3Hc0Y8BaG9QGyx1wjVSn9cc6G1PlD07iiVg8I46cQU9XrIs
         4PiG73j+tBW6LrK+1yKKJRISlaWn8bU+NdQb+WCJnmLIxsykkJngznodwva2ScMswkQK
         Hm3RsJ+Toc/H8QXpDztCrFVUYvApQTc7ugfXEQJrwxxVGLtWdgItR1KXDK3qgoRcYccl
         S6pA==
X-Gm-Message-State: AO0yUKXKrBV5f2GR1C9sFK9DFn4vjgqN0aqpbMQcTTLqeH5ChC6PYXuq
        XbPCpS5qg8vRfBfVQ7mQ37s=
X-Google-Smtp-Source: AK7set9TbdZvAvhBDaipu1EjGNYGJJBuA76BFlIh2Y22vfwnYsHHf3TnmjWq5cD2PLYBoN/CHjLiDA==
X-Received: by 2002:a05:6808:251:b0:384:637:a4f with SMTP id m17-20020a056808025100b0038406370a4fmr10328724oie.10.1678375739635;
        Thu, 09 Mar 2023 07:28:59 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id p13-20020a05680811cd00b0037d59e90a07sm7598559oiv.55.2023.03.09.07.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 07:28:58 -0800 (PST)
Date:   Thu, 9 Mar 2023 09:28:57 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Tom Schwindl <schwindl@posteo.de>
Cc:     alx@kernel.org, alx.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING: tfix
Message-ID: <20230309152857.usupq3b4ekjhi7pv@illithid>
References: <20230309073900.11503-1-schwindl@posteo.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="snht3bzqpyglwbzy"
Content-Disposition: inline
In-Reply-To: <20230309073900.11503-1-schwindl@posteo.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--snht3bzqpyglwbzy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[natural language grammar]

Hi Tom,

At 2023-03-09T07:39:00+0000, Tom Schwindl wrote:
> as I'm not a native speaker, I wonder if the "be" is correct in this
> context.  I haven't changed it for now because it's likely that it's
> just me who thinks that this sounds awkward.
[...]
>         Please CC any relevant developers and mailing lists that may
>         know about or be interested in the discussion.

In this respect, English is subject to mechanical analysis to resolve
the issue.  You will observe the presence of a coordinating conjunction
("and" or "or"; there are others but these are by far the most common).
You can decide the grammar of the sentence by eliminating one of the
branches of the conjunction.

...that (may (know about) or (be interested in) the discussion).

Possibly one of the sources of confusion here is that the conjunction is
applied after the modal auxiliary verb "may".

While that's not non-standard,[1] it does reveal that a recast to more
clearly apply the coordinating conjunction after the _sub_ordinating
conjunction "that", as follows.

...that (may know about) or (may be interested in) the discussion.

The fact that I need fewer pairs of parentheses to suggest the
recommended parse might indeed recommend it over the former alternative.

Do not underestimate the power of conjunction elimination; I frequently
use this tool to decide grammatical questions in my own writing.[2]  I
cannot think of a time that it has led me to an incorrect construction.

Lest anyone feel badly, I note that native English speakers often screw
up much simpler applications of coordinating conjunctions than this.

*Jackie and me are going to the beach.
*This discussion is to be kept between you and I.

Both are wrong, wrong, wrong, but you run into them all the time even in
attempts at formal writing (particularly the latter--people get anxious,
it seems, and think that this error somehow puts their text into a
higher register).

Regards,
Branden

[1] Example: "The market is full of things that you might need or want."
[2] which can get highfalutin' and florid, to say nothing of loquacious

--snht3bzqpyglwbzy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQJ+zIACgkQ0Z6cfXEm
bc6+ehAAjiB4epH+XZHvF8p13z94rIV9FZJW8+iCibWALIx3CV1jM/p4nAwRKnVT
XYUrOMDIsxatJTF7O4+OWcm3Vq/MUriGSJvPv9d2X0/wzDvHRU7Cjff3jSCoLS40
tV6/QrzrFeGzZ5+xZTTFcec4BIdZIMFDt55XGqnuCFCUa9uI3G2qEOTQc0vhfflx
1P5IG0ewKcRLth8tSy4ASBaxG8KeaEH/yB6Z3c11mpag5c//EVuTkJ8rg00AFQ1z
0ooaR2Lcd0ZLUCCDEtbczSNUBMg3WprFNp30Yd1ZbWbF1W0HmLIo2C5/j2ZCCcV1
hkFTQ9FPtgv/4GthCtrepjSVky+evASfbqi+eH0cLkS5wpfXQAekK+HOE9H/vabF
kCd2EpY3ZrzV0UiGQDrZMkX68Jmk/Bhldjv2ai78LNJH4O8EyevMS6pbMOfUN39S
aTIIVsM9Ns83WDKn4eo20p2dGNVuombc/O9ImcMvKVTfS/w8TGwU7X9M09YrgYVN
N3tWQAnNCeRKw/DFGH1TpznHPFwnqI4kvOVjE2Zp4rvlQpUy3zdJBNwPs+a8dBDU
bjtrv+iDow4Sv4gQwY3mHg+wOmz6Kd8knHBfbuy4HlsnretSU+E1ZsfrO1k2x81e
P5JqszKkGGy4JOTdGDaiNGSrYDYP6wEKk3Dzs77ZeiuyEEf0FXE=
=lEqS
-----END PGP SIGNATURE-----

--snht3bzqpyglwbzy--
