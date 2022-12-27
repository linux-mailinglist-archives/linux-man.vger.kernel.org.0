Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBCF0656B44
	for <lists+linux-man@lfdr.de>; Tue, 27 Dec 2022 14:09:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbiL0NIh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Dec 2022 08:08:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231712AbiL0NIR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Dec 2022 08:08:17 -0500
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 228C3BC20
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 05:07:52 -0800 (PST)
Received: by mail-il1-f171.google.com with SMTP id m15so6724879ilq.2
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 05:07:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vl+D7rMY140OJtta1u43RQEwBkVN+rjXbWUodNxw+ME=;
        b=T8m3hQQlCEfNny0Fffejf9XIPuqvRAlqJTpLsTkSrCd9CfzHvHh7JMuANm+BfkgoNZ
         4aMaD+D/mxyTXRnqmth3e4VUPs+BcSK7BZ+vFe2uJZrg1TMQShjRFmu3tBDIEOsLjQxG
         wIX9XvK5GhTWHxyYAoOi5NIN71DxN3OWtLUujiPZH0y3mqtRyRZr2ZY5OP+MZNiBz6F+
         LReDdfcs6cDLfaFwE8P3EGhl0jfs9QZ+Jk6kMEx+ptaNC7YZm2FaapmPmWmGtEhI3+aG
         cBnAcW/Ce1DGvcv2SnnOLaNMHchLIg3JNLqAGPM+UAqZOswte7jHKw6vG83VSy+w9fni
         L/xA==
X-Gm-Message-State: AFqh2kqF6ObwYk5Ur3T3zLpbOotOEEQMH7sd0HERjJuKMNc+kB2Cmgpc
        B5JXmzAXfWZDE05deLl8aigNvIzH0UTcUt3S6JWKnw==
X-Google-Smtp-Source: AMrXdXsR9CrhXHKRWC6Jrio9vCEBUnZjNamLiJqH4enjG6Vy3Hy0TsdKB7y7UqCEfaiOn8d/c4Rd+FzOxheio4XukDo=
X-Received: by 2002:a92:ab09:0:b0:30c:7ef:b9fa with SMTP id
 v9-20020a92ab09000000b0030c07efb9famr451661ilh.52.1672146470983; Tue, 27 Dec
 2022 05:07:50 -0800 (PST)
MIME-Version: 1.0
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org> <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
In-Reply-To: <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
From:   =?UTF-8?Q?Cristian_Rodr=C3=ADguez?= <crrodriguez@opensuse.org>
Date:   Tue, 27 Dec 2022 10:07:39 -0300
Message-ID: <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
Subject: Re: [PATCH] Add example to rand.3
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Dec 26, 2022 at 7:29 PM Alejandro Colomar via Libc-alpha
<libc-alpha@sourceware.org> wrote:
>
> Hi Jonny,
>
l it several times per second, you'll
> find that it only changes the seed every second.  There are better ways to
> produce a good seed.
>
> However, I prefer suggesting arc4random() rather than workarounding rand(3) to
> get good results.
>
> Florian, did you already merge arc4random() to glibc?

arc4random is already on libc.. now to make it a replacement for
everything random  one has to hope for
https://git.kernel.org/pub/scm/linux/kernel/git/crng/random.git/log/?h=vdso
to be merged into the mainline kernel.
That will make it as fast as possible and really,really cheap to call.
Now it is just a wrapper that calls getrandom syscall.

WRT the rand() example suggestion..it is bad.. The only addition I
will make to this man page is strongly discouraging its use.
Suggesting to use ar4random if available or one of
https://prng.di.unimi.it/ PRNG if not for crypto.
