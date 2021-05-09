Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E2D137785E
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:09:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbhEIUKV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:10:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229666AbhEIUKV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:10:21 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 798C9C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:09:17 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id l2so14416746wrm.9
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k1IvG/lwJ1SzH6Oyjn6EZqLYBLPh0geQorwoAeH/yIc=;
        b=pnZmwdkvOk0ZBidUGBQ9fFMGEplGlmWzv0P8bZQDzjoS3Nvn29WvUNYvmJeuy2n+GY
         8ZTXyEDHkbsuINWSkcaPkiNFg4JaZDaVZYFB0xXfAM5PrWz9FQ/TUj1Ozs7pGo/ItDpK
         /Zo94pBqpgR28MwV813rzYrCoWMWdsq95kGvbaxW0USQhi9ectXI4ydmkh42Gc5iyLcv
         c0yZltkJpTP7Ggf5cXgYqclx/ln4cWGlfw5uVkmGP6PeM/GbTZhpPb6u9w7tlPahC21V
         dsZE0DfLf8PB5179TLh5KV1UHqjLjfDD7Ue36z2fLeTfST/FTC9HWAEcJgoJU/bqVvrY
         9VgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k1IvG/lwJ1SzH6Oyjn6EZqLYBLPh0geQorwoAeH/yIc=;
        b=pHGLlLerZcy6C+c7Nae6UKLBwm3Lo3bejM/+JGcD8vo0BwTMCN0oTzheHOpb4LeJ0b
         EEk6A1HI3lKK7p/TioFMU61aOAQcfGQ0g0/u8YNhzcWL9Lafr9+/Xy6NuFVzsfnWEWzV
         qF90IeTJ+4o0wVc6PkyEaPNpHO0RyTprLljzoiWnqfqvgMP/lCvK0k0G82uLjyDGPyFO
         +9pWZPb48vFylBaqXEiFPbOXeFNv/NLWpj9jOXv0MOs3M4xSOCdSi2sNeeh5hy8prAKQ
         B87/NlVK6RtDEQjDd0ZiwtQWqZPrJjjwh4QnhvXXYvNEIRvcPmyuEy6guVAAeqNCb067
         I0+w==
X-Gm-Message-State: AOAM5318nZ3YqPnMA/Ty9fI+Clg8evC6g7/mHYrOZQiwzsCDVF8aWry5
        UqtNTxcRA8BiKdSglh4y60U=
X-Google-Smtp-Source: ABdhPJz78MuHzrjN7NUaitW9VP9PBkH2DmiUEj2V7Ach1rHkj8kecwgNoDYkcKQLem1/t3h7nQhAXQ==
X-Received: by 2002:a5d:6682:: with SMTP id l2mr26556319wru.15.1620590955239;
        Sun, 09 May 2021 13:09:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a2sm19530723wrn.13.2021.05.09.13.09.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 13:09:14 -0700 (PDT)
Subject: Re: [PATCH 3/3] open.2: Remove unused <sys/stat.h>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20210421224418.143065-1-alx.manpages@gmail.com>
 <20210421224418.143065-3-alx.manpages@gmail.com>
 <4d093c28-120b-ecf6-3671-b00159d15da1@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <579d8e7e-b45b-6a80-3b9c-e82565cab138@gmail.com>
Date:   Sun, 9 May 2021 22:09:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <4d093c28-120b-ecf6-3671-b00159d15da1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael!

On 5/9/21 10:02 PM, Michael Kerrisk (man-pages) wrote:
> It almost seems like a small bug in POSIX.

Yes, it seems so.

> 
> I see also that open(2) on FreeBSD mentions only the need to 
> include <fcntl.h>.
> 
> What are your thoughts on the above. I'm willing to apply your 
> patch if you still think we should apply it.

We could file a bug to the Open Group.  Could you do that?  I don't know
how to do it.  Let's wait and see.

I don't have any patches that depend on this one, so we can hold on.
I'll ping you in a month or so if needed.  I guess that POSIX will
confirm that we can remove it, but let's wait.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
