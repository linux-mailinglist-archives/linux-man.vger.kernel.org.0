Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAB7568BA97
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 11:43:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbjBFKnP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Feb 2023 05:43:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229925AbjBFKnM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Feb 2023 05:43:12 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2734C2703
        for <linux-man@vger.kernel.org>; Mon,  6 Feb 2023 02:43:01 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id x9so3133232eds.12
        for <linux-man@vger.kernel.org>; Mon, 06 Feb 2023 02:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudflare.com; s=google;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=Wpsskz2SivsZUco1t0YKV2a7AFik8RIi9dnXkHdD6Ac=;
        b=TTvdJtBfQkvM1+vpVQEGvstlcfywKZ74hDPtkVS5dI5gwhhZidofqxk4ZmYDw2tyr4
         te9ooXqJrBtXQQaJ3R22sXYAPYYHlCiQmJ1dWXF1mgIn4NbfZII5Ac0WlwWaX3fn1AMC
         ktrcdjuQkLp3jJGSyPu0BZnqV1UMCKIVo/zSI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wpsskz2SivsZUco1t0YKV2a7AFik8RIi9dnXkHdD6Ac=;
        b=eQfwuK4+IoWgw4DEhbsBUtH/cuqQsHMUAgoIGO/PMlY/f9qF0iloRMgkanSDKEfcC8
         sdvLs1us163pDj7TQ6PiGW4VgDiKlAZm4BnOuaM/FllH+YaHZpMA0pLHCS80cPafWtGF
         r9bjwoTIHSLBEASG4VN7MBYH8jEGAHunpUTiLNBQaL6eZldh0cnTaQEXATj1V4s1ues8
         nIKHJiNRG2m73s6kMzBxhzKfcAyZ4sTPnyXAGFg/Ad7X0lM7PsKyWjFlQNr66o4uhv0Q
         25FZsfelh7O25ZX8wdVdBin3WYMrX8CWBjZDEu9Aym046U9QA6BcwS1HNDE8jBVHmRJw
         tkVQ==
X-Gm-Message-State: AO0yUKWa/4b5EBkA3H+TNc5s95PtiitNMxOx0tSarVmIFD+68PVOKxxX
        +aRsNgGVjOfRTdJl0MAHb7Sb1g==
X-Google-Smtp-Source: AK7set8vKo0zWX9ohUqQn+N7TVtgDAfvsoZTaWL85q1ATN6sNV1LGZA4tb1afQKLQtf/PKGrHbkfuw==
X-Received: by 2002:a50:f69d:0:b0:4aa:a4ea:cdc9 with SMTP id d29-20020a50f69d000000b004aaa4eacdc9mr8341562edn.16.1675680179388;
        Mon, 06 Feb 2023 02:42:59 -0800 (PST)
Received: from cloudflare.com (79.191.53.204.ipv4.supernova.orange.pl. [79.191.53.204])
        by smtp.gmail.com with ESMTPSA id ac5-20020a170907344500b0088f92a2639fsm5055762ejc.17.2023.02.06.02.42.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 02:42:58 -0800 (PST)
References: <20230201123634.284689-1-jakub@cloudflare.com>
 <d6682d52-25b3-a79f-c4db-6d720986b273@gmail.com>
User-agent: mu4e 1.6.10; emacs 28.2
From:   Jakub Sitnicki <jakub@cloudflare.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, netdev@vger.kernel.org,
        kernel-team@cloudflare.com
Subject: Re: [PATCH] ip.7: Document IP_LOCAL_PORT_RANGE socket option
Date:   Mon, 06 Feb 2023 11:42:14 +0100
In-reply-to: <d6682d52-25b3-a79f-c4db-6d720986b273@gmail.com>
Message-ID: <87mt5rjcr2.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Feb 05, 2023 at 02:16 PM +01, Alejandro Colomar wrote:
> [[PGP Signed Part:Undecided]]
> Hi Jakub,
>
> On 2/1/23 13:36, Jakub Sitnicki wrote:
>> Linux commit 91d0b78c5177 ("inet: Add IP_LOCAL_PORT_RANGE socket option")
>> introduced a new socket option available for AF_INET and AF_INET6 sockets.
>> Option will be available starting from Linux 6.3. Document it.
>> Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
>> ---
>> Submitting this man page update as the author of the feature.
>> We did a technical review of the man page text together with the code [1].
>
> The formatting LGTM.  Could you please resend when it arrives to Linus's tree?

Thanks for the review, Alex. Will do.

-Jakub
