Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 844524F066A
	for <lists+linux-man@lfdr.de>; Sat,  2 Apr 2022 23:24:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229668AbiDBVZ6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Apr 2022 17:25:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229636AbiDBVZ6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Apr 2022 17:25:58 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00E7D2655D
        for <linux-man@vger.kernel.org>; Sat,  2 Apr 2022 14:24:04 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id r64so3657865wmr.4
        for <linux-man@vger.kernel.org>; Sat, 02 Apr 2022 14:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Ny/0ySi5iFzf+XHaaHKjofEtRQ9+1FXXRbf2yHSr07k=;
        b=VB4ENabXw8vqKKPteQoq/G6aopcsRGs6Ck8R4JNA//D/a6SJ+ZtF5iXQ5Ice5U4sMJ
         fWsSo/+x25ApiVJcGXeUCSCoV2Gi6cyoyJn42hdhHL/P7TfOAF+A3EBWf97c5yPI0IU2
         zR/yWyFRRlF7jToow93QK+1rti9QNcVWuGYmdqjwRo67xjy9ab8uDYd6mpmIyjebn9hf
         OcK0Vr/OijdT61WvpT2zbpy3Hh9HyIVZF3jTQ3e+mMywDWMCZpr1OWsN+xbA6vahfGbx
         p26dpCgZ/j/UXquC4zKeb8+PEj//OBQ8zrzKcCGFJfCCMFVSkzsocJmRxK7WxSSUt6Kd
         nvJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Ny/0ySi5iFzf+XHaaHKjofEtRQ9+1FXXRbf2yHSr07k=;
        b=8LiC3GDZdnlXD0lxEH+S4neEnHAhCdKC86e07GgLZEGbZi4Xe2kxpO4d4LmIuBk7U2
         7tFdhscu08aSE4Zp6qm0HrOxKFOsWm2+8R+fj86g5Ojtw2QjSKEbUmXyamMNoC4nrDgP
         B8IiEgzcw+gN0fMrpNfWzG95S2j1pzbNKO2nnh+r5IDBFKSVmfOOoIZbzsZOyzUrkB4w
         /eWZvsVJZz7l5/vbhdwHWAm0rgOGlloosvEv1mgf21gwu7/ThbrCRvgLvRIPvM5Ixpwk
         WeCt68JS5VhdTkFzXi9xgAJ7XxRx/zwGBDHcuzE3GiqPKHqvpmdtvEqPYcWS5rE0fIn5
         sBSw==
X-Gm-Message-State: AOAM5309nVLsT4WIox9Ft9tZsRmO/uuEJrXDwqFwE/PlxgXBUN+PJbdc
        YnYkEuKEw+hExOsUJrwHoxk=
X-Google-Smtp-Source: ABdhPJw4SXo9gYSUk5toueVA5PFnj//HOLUS1Ehh6neGnbZEsEVjlzHOQdWMHbvMbU18Ytl3kqFxFA==
X-Received: by 2002:a05:600c:1c8d:b0:38c:db69:5759 with SMTP id k13-20020a05600c1c8d00b0038cdb695759mr13902946wms.204.1648934643542;
        Sat, 02 Apr 2022 14:24:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i31-20020adf90a2000000b00205ad559c87sm5371773wri.21.2022.04.02.14.24.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Apr 2022 14:24:03 -0700 (PDT)
Message-ID: <1148e5eb-a308-eb57-e8ad-dcbf5709eb72@gmail.com>
Date:   Sat, 2 Apr 2022 23:24:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: Functions missing from missing_pages.html
Content-Language: en-US
To:     Avinash Sonawane <rootkea@gmail.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20220331220454.6474e671@optimus>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220331220454.6474e671@optimus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Avinash,

On 3/31/22 18:34, Avinash Sonawane wrote:
> Hello!
> 
> I just noticed that 5 C11 threads functions are missing
> from "C11 Threads functions" section on "Manual pages that are missing
> from Linux man-pages" page at
> https://www.kernel.org/doc/man-pages/missing_pages.html
> 
> Those are: thrd_create(), thrd_current(), thrd_equal(), thrd_sleep()
> and thrd_yield().
> 
> Thanks!
> 
> Regards,
> Avinash Sonawane (rootKea)
> https://www.rootkea.me

Fixed with the patch below.

Thanks,

Alex

---

    undocumented.3: Add thrd_*() C11 functions

    Reported-by: Avinash Sonawane <rootkea@gmail.com>
    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man3/undocumented.3 b/man3/undocumented.3
index 77750958d..d0f7fbd59 100644
--- a/man3/undocumented.3
+++ b/man3/undocumented.3
@@ -97,6 +97,11 @@ for inclusion in the next man page release.
 .BR svc_exit (3),
 .BR svcudp_enablecache (3),
 .BR tell (3),
+.BR thrd_create (3),
+.BR thrd_current (3),
+.BR thrd_equal (3),
+.BR thrd_sleep (3),
+.BR thrd_yield (3),
 .BR tr_break (3),
 .BR tzsetwall (3),
 .BR ufc_dofinalperm (3),

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
