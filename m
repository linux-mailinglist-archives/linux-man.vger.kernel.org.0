Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB0884AAF0C
	for <lists+linux-man@lfdr.de>; Sun,  6 Feb 2022 12:53:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234530AbiBFLw4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Feb 2022 06:52:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235119AbiBFLvw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Feb 2022 06:51:52 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C6EDC06173B
        for <linux-man@vger.kernel.org>; Sun,  6 Feb 2022 03:51:50 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id v129so4396549wme.2
        for <linux-man@vger.kernel.org>; Sun, 06 Feb 2022 03:51:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tBUKyPNGXik+TIPha9shVhMwWKl8/sWcrF9igVk39Ik=;
        b=kj/GwdYUaMfDGstPMzzLZGDVMtynqkeuOutVfZG5en2h/JstqfpydQ0sV51pi/zUB0
         JcYP6Dv47iiuq+R3q8hA4j+MUHeSfNIst22dzdncE24SzJ8FsFDm2SuGKxWoFX1nRIfU
         IOmXKdxPTEe7G/StfYmkACzHFoB7T+Qpfux80/G7Nf1dutgsafp1mQxBpM1p9cxeItZp
         tLPEOWbgQdN9H1LU87Ft3cJ3SraEN/hlZ0bsSB7njO6qayRVpOa0dXCEi491uDkhX+Re
         Tv/0V6sKXwm6/LZ+BhzSMq4/27gIUh3dQnwMz1i9s7+5DFrrZSn3GZ40V32vjf3fW/HW
         u6Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tBUKyPNGXik+TIPha9shVhMwWKl8/sWcrF9igVk39Ik=;
        b=saSMbYl3sGpxbVyNAXVvNsWcQuN2cONlVdcqnReeOirim++8G2+KKpj3i+teh/fPxw
         GS3eDPra8QJjsR4BboxVsTLqQfxmPA1+n9IoCAn1dDjRtlcJP/N/HR6/j6mC0mgrnIft
         rHNiBCZSLiIOkaawwoWkQvQ5GZAvcim8jbWONo5ssOM4/rAtI/8QSGCwLEFuKB/mNMqV
         ZvgHc8JqjXOLXvkR+lefiFF+uzskkewonJaAgjUkSzPGSQuHNgGZXk9MLUH4mVfdkbuK
         1jpnMphE/XB1EvlDh9l5h8mPzyM2s/71xPWl7G5PIvp/ltSwD0xBIvcZaMHovjcLfaVj
         4rMQ==
X-Gm-Message-State: AOAM530N2QO5YtOjBQ2+PnLCtL2OKXWmaHP9/6tuLeA2iSedujJHn/6W
        m3MOHkehc71NtpnZ9w6DnEXjouT+hTE=
X-Google-Smtp-Source: ABdhPJzRhuNd0VntJ767U0o06u30IG3yEYIupQlqwH0YAb/GflrHWqV2RaTcK1FMtMnRZmnX+iCyWA==
X-Received: by 2002:a05:600c:1e84:: with SMTP id be4mr6626929wmb.147.1644148309258;
        Sun, 06 Feb 2022 03:51:49 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o27sm15059083wms.4.2022.02.06.03.51.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Feb 2022 03:51:48 -0800 (PST)
Message-ID: <5804a6e9-94f2-6864-48f7-585adadc9ba0@gmail.com>
Date:   Sun, 6 Feb 2022 12:51:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [bug report] sched.7
Content-Language: en-US
To:     Murphy Chen <murphychen@gmail.com>
Cc:     linux-man@vger.kernel.org, Andrea Parri <parri.andrea@gmail.com>,
        mtk.manpages@gmail.com
References: <CAHmquHeKZUwzSWdsg=35F7mK=YLh3b7-7gVcK25jOrZw4SdGDA@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAHmquHeKZUwzSWdsg=35F7mK=YLh3b7-7gVcK25jOrZw4SdGDA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Murphy,

On 2/6/22 06:45, Murphy Chen wrote:
> Original statement:
> If the thread's priority is raised, it is placed at the end
>              of the list for its new priority.  As a consequence, it may
>              preempt a currently running thread with the same priority.
> 
> Corrected statement:
> If the thread's priority is raised, it is placed at the end
>              of the list for its new priority.  As a consequence, it may not
>              preempt a currently running thread with the same priority.
> 
> Checked via the version:
> https://man7.org/linux/man-pages/man7/sched.7.html
> <https://man7.org/linux/man-pages/man7/sched.7.html>

Right, it seems that the text was accidentally incorrectly reordered in
this commit:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man7/sched.7?id=eaf4a2607b197cfb49cfbd958c0ec190ca821285>

That paragraph should be negated, as you pointed out, and the same "As a
consequence" but not negated should be added a few lines below.

Will fix it soon.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
