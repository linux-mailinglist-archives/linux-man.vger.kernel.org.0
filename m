Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B25FD38C81B
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 15:29:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235729AbhEUNa5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 09:30:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235623AbhEUNay (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 09:30:54 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1981C061574
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 06:29:30 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso7410500wmh.4
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 06:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Lw9qfApbAR1KI0oxdrM9SKieisY5gDl0Sxo28sgEg+c=;
        b=i0b2Y1vk7iryQQTHRk1ZEje0Mb7qWjga+9JNuANKlR0HzXLzUf2ezT/CJ/Zidn+U03
         oiSYcl+1Fp9P+WSljd+SiFG3O6YjUfD7dqWnRu3BAkLmmQrScYnP21Urk42ALA2M5jga
         V2PPwkuUkdOtF/wMUdmPziAahbPNPvWcKfOXe4mTCXa6gKK5/sk3lTbrpLB5Qeg2lgRJ
         LIXkgvn4nyLqtCzqkxbfc9C3I7+tHwY9FseJ3s8ThZMjzz1E60B3aNXqKRfOxFh318nk
         xQzBfNAFoUyIeC68p09TL6YdIiCIuZPA/+JKr1gBlR4L2IpLKxFN/VGzABdWqSe/CEr0
         3ung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Lw9qfApbAR1KI0oxdrM9SKieisY5gDl0Sxo28sgEg+c=;
        b=atLbrzNIX+qqcnBG4/AHaZEt46ScpZW8vnUoyXKjsGcQliDvzr3gU0JwRFyn4IUsrL
         qDdQ5eMAao7actmrxmwwHN6j+BG4i5f4/TuYxOb9oxZY1ReJQhFyKRVoKTDex+UK0wli
         vL4hvT1ewhEhUzoVLUbn7rUG0vg+394GJD8J4i5jfLubO9Oc0CKVgFAl8gXRxSrjGD9C
         Ro/xKT7belYn6YJOozgzLqTc8wb3uQWsVCfaP8nFQMP8dutGCgyyEfgI5Uu32x+fuNXn
         VxnDLFnfO0DF/UcVn/re2DbjV6zTaKm5pjg6ZQlwCmdMV8RCGtJqLEG3+wL87zw0gGKm
         53YQ==
X-Gm-Message-State: AOAM531bIlDzMB7MzH0IpmFwgqATS1oU7ykJ8VpRVeyVeFr6Hlxh+l46
        lu5DRYOl6ZaGhLFaGXi6oA7uQPt2rn4=
X-Google-Smtp-Source: ABdhPJy7fJ7DJsJ5GklUHmThO5dF0G5V6SOGOGLzuo2Uk0iZgQdh3RhDZbZYLi+RxPaYMNQFwhtMOw==
X-Received: by 2002:a7b:c041:: with SMTP id u1mr8566396wmc.95.1621603769401;
        Fri, 21 May 2021 06:29:29 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id h8sm2162805wrw.85.2021.05.21.06.29.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 06:29:29 -0700 (PDT)
Subject: Re: AW: Re:
To:     Walter Harms <wharms@bfs.de>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <60a57e3a.lbqA81rLGmtH2qoy%Radisson97@gmx.de>
 <6d2849cd-d8af-0539-e579-3201daed6ab1@gmail.com>
 <9baa6f3ac0dd45b4b75a11044dd0f0ed@bfs.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <763071ea-e70d-ef89-8455-da7662e67518@gmail.com>
Date:   Fri, 21 May 2021 15:29:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <9baa6f3ac0dd45b4b75a11044dd0f0ed@bfs.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Walter,

On 5/21/21 3:11 PM, Walter Harms wrote:
> I will not argue that the function is deprecated.
> 
> NTL i added the gamma_r function that are missing
> and changed the wording for the description. I think
> it is better than in lgamma especially  for signgam.
> I noticed that it should be more obvious.
> 
> re,
>   wh

I never used these functions, so I don know for sure.  Isn't gamma_r(3) 
just an (obsolete) alias for lgamma_r(3)?

If so, lgamma_r(3) is already documented, and the gamma(3) manual page 
already points to it.  I don't see why gamma_r(3), which is obsolete, 
should be documented.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
