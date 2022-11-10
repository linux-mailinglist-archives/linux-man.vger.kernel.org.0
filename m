Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8975F623ED0
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 10:40:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229528AbiKJJkk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 04:40:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbiKJJkj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 04:40:39 -0500
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1856E3895
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 01:40:39 -0800 (PST)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-13bef14ea06so1602793fac.3
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 01:40:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2AlDOEvkWJpuwl/aXbGLB2jvdm9uqdDUvIXVE43qR5k=;
        b=IXLvZjJYUBT8RU1KrT7T4b3iJ6Y8qr0frmtrtYCH0QPL4OP+OkBn3GwNtFeeu/n/cV
         e49hPG2hVP9EOCUakSSpMYaH+X8ZFNfpYsTddYNnUedwcEp0i8gRszweNNVoPXSNCjl4
         HSPhkYNeKgJgpPvngA6h9CTxGbpHTg5gdhSdeReFj23ulcECQ+oovoLOi+/3VqXExHVW
         YYd/Xarso+bKkGR7jRtDmLu0QDuYvbOcQfjHg76rJzQutVgirUgxUtJCqDkGOWEjujzf
         xFZXWQVn1yir3np1WTvygHQXy6lhWvVlomlP3jyjhL0N4N/a+ohNCS7GZq8v4D+Q7od2
         QFxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2AlDOEvkWJpuwl/aXbGLB2jvdm9uqdDUvIXVE43qR5k=;
        b=1AwKnAZi93ZaetpEZIsFl6H4vy5l6H2mSyRI7mL98M+8MErkQKChnFdV6V5MhCRKnP
         ZSizWsT1e8sW5Ku0a/k7pKn1nEfPRV9fS4J248gE46hdbmAvd3vTVmvfqLTWJIjZ3Ear
         Gs61I7Zd8ZmCvehYYWBxZsGTz0gmn5skHSZwbcOpdCsN4GICEPoiaXq2xAuyCAnIfZFb
         VsjmkAkKdwBpU3IaTZbb2GzvKV2zqmACjO7IeZ+wEuByuHzMavyCePiMEQdP+AnMeSd+
         jLcrU75Za9kGx0U2GBQvadCMO8CXIOjhFWX/xSJYTTbFrx3GhNTzJVbqZL9IfT5clx5P
         yRsA==
X-Gm-Message-State: ACrzQf3NwvSpUey+TD0cXiWftTjbioE54CsUCFEDZUoXuUuUxoCJGVnA
        gm5Ykih17852T5EPkjBu9Ms=
X-Google-Smtp-Source: AMsMyM7Qic2ifGMU9GcdIM5evslKD4Ze00za3siAREWD+K5RP/17ycxRjC05qDxXWgVzPTV1lOtr6A==
X-Received: by 2002:a05:6870:330e:b0:13b:c2c7:8bec with SMTP id x14-20020a056870330e00b0013bc2c78becmr37220700oae.242.1668073238331;
        Thu, 10 Nov 2022 01:40:38 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bf22-20020a056808191600b0035a921f2093sm3571124oib.20.2022.11.10.01.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 01:40:37 -0800 (PST)
Date:   Thu, 10 Nov 2022 03:40:33 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Message-ID: <20221110094033.ptpfsqpvvx2yd5xs@illithid>
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="22ua3tgyagswvijx"
Content-Disposition: inline
In-Reply-To: <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--22ua3tgyagswvijx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2022-11-10T01:06:31+0100, Alejandro Colomar wrote:
> Now, I've released man-pages-6.01 very recently (just a few weeks
> ago), and I don't plan to release again in a year or two, so there's
> time to do the implementation in GCC.  From my side, please consider
> this an ACK or even somewhat of a push to get things done in the
> compiler side of things :)

Do you mean you _don't_ plan to release again for a year or two?

You know what Moltke said about plans and contact with the enemy.  For
one thing, I think the Linux kernel will move too fast to permit such a
leisurely cadence.

Also, as soon as Bertrand and I can get groff 1.23 out[1], I am hoping
you will, shortly thereafter, migrate to the new `MR` macro.

<tents fingers, laughs villainously>

Regards,
Branden

[1] Only 6 RC bugs left!

    https://savannah.gnu.org/bugs/index.php?go_report=Apply&group=groff&set=custom&report_id=225&status_id=1&plan_release_id=103

--22ua3tgyagswvijx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmNsxxEACgkQ0Z6cfXEm
bc7bgw//cxwGkyIcdAKbiOKdHdVzaiFaoFwIMGZWXdmirZjZwqGGmVgT3+lBoU+7
bQJNkguaJOsow+R1omk73Gb8O7dBX61dL46ZhWTfjuK4eWfu0ZrETNBs8SCil5rf
K6y0v54T3IpRhzAyPfEayF8efygNOZ4wG2ozQgIzKbMzv96YyLQnCxjJgl06iDJk
jscBtMad8fGKdUUro9kIVoDMHP6b+ZU/doEp+ryiyX0ChKuUo2x2oILtii+OFPx+
eURpE7JFGhV2OywQaX5fdeoEpWRjIDwSJtLk9AqQkWfXBFHrz3zXFcUawmeNDQQk
YISzPlYOvWmQMfcLhtdI8W9UMEBJxv+HGOjj8po8zPAYM/i5MiGw2GazL14jiLse
cqrmE4nXJjcHiuxaT4aTSn5saApmeJ8izZS24FYIFI7s8zja9XFiX+ghzkcMQC9s
/c7QwLKjkAt2bfbDbZgUEYVu2z5L4BHDo7eg19OmhMpD3jVpNBeU+K5d9ptB9FGR
EpfA4/DP74mV2MGVSErw22umTyD3XI0zBH6U0FI1bld+t046LDvimwv1TF10w0w1
eh1gML3unZGd5fUph2/GC12tkh57BmKQpXM4pNoepn+6OKBujb1DX8szMlZPKece
91ETnOIzfFBYI1mVPIy2nY1TUuZMm+0IqXcNrleQEu+UAMpgI0w=
=ImK6
-----END PGP SIGNATURE-----

--22ua3tgyagswvijx--
