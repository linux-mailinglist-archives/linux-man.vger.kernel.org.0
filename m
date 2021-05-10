Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3DDF3793E6
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 18:33:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231256AbhEJQee (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 12:34:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231715AbhEJQeR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 12:34:17 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F83BC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 09:33:12 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id p17so9387864plf.12
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 09:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zWQQB3iV5L3SBJB9t/V+Car07yPDri3itTTqEX5360o=;
        b=A3FL6A6KHnSG1vUUiMHe0P3gWTkwL1Z4/7zeH+UcX27CpLFu2r2DMPS6lT6kbHRXZf
         ZUdc5YrRnKsXtLFmqI/GNLflbUBHzr+4QjD6vRyklSc3E2mYd2OcZoVkpdpjPqihFBo8
         DN2S4VZw0fiLRYpP29aSLvodY6TVwVaOH2hu7GTstBAzU8OajcS3wMXRCviw+iKcT6UP
         TTRmEkS14d+KiCV1ZTGd9eApHOxDvbvl4ilCtntElXegvOhnlQk0ft/LvASo/BxDWdzq
         Tg5lNW6u96EGqDGkW2rGVis9m7SeMewqxQL4wvMlrCzWkvaks2WRKLNDz9oAVub1ycLh
         vL4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zWQQB3iV5L3SBJB9t/V+Car07yPDri3itTTqEX5360o=;
        b=nHRnHnS4a0G1TCP6tM1bR02cy1Wq3E2jsGZNAFpkLY7UHQ6SB6aLdOQDjCoJdHoXUP
         9VXQ/07uxTBER1iExhch79bhHNCaVLqYx9O4r+sNoBQxHfY4azPvhYfJaVgvm05fuEvq
         QaXs8lOIDnZFdneTQbBsBMCzNSMAirjOnWCOPvQRTq0t/4s9TeHYWM5TWiZwk52PvmVO
         3OhayxCZXUbU/8Vl9oDI4LtsnZ+mZbI9rqiyjBSjPBX61uK0xeL5+b9YhHaQNdKp4hvL
         Dkq6TpNWtM4r5lfDYOFov5uQcMAoXt7VW9tR6O9w5IfI2XPPIpA/CC18ygX3WnkOb+Uz
         SmiA==
X-Gm-Message-State: AOAM533MujgYtz7Cv/0IkI3ZPamiz5dGxv3VSZcLZ+VwedBUDreTVRb8
        AalTzTVNd9OBjxCwDTFxTw1eBSfPl+8=
X-Google-Smtp-Source: ABdhPJwHyclUD2JkbAMWv/PCPAjDWwj8SMkwWVpIefdBp6C+IpJckMwQqnSqedeK/K8jEk+oD5/wFw==
X-Received: by 2002:a17:90a:f283:: with SMTP id fs3mr43937279pjb.122.1620664391382;
        Mon, 10 May 2021 09:33:11 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id bf3sm11750441pjb.16.2021.05.10.09.33.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 09:33:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Makefile: Use standard features (IMPORTANT: default
 prefix changed)
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-33-alx.manpages@gmail.com>
 <9f4a8c0c-ced3-4192-05a0-d126afda3285@gmail.com>
 <745152cf-d533-d090-d3ad-273e5de22ae6@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <17aa6586-53a7-bd49-9732-1a12eb9e7917@gmail.com>
Date:   Tue, 11 May 2021 04:33:07 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <745152cf-d533-d090-d3ad-273e5de22ae6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 7:13 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 5/10/21 1:39 AM, Michael Kerrisk (man-pages) wrote:
>>> - Specify shebang
>>
>> Why? It's not quite obvious to me, and the commit message
>> should really explain...
> 
> Hmmm.  I have some minor reasons to add it, but not a really good one.
> 
> * Some editors don't recognize 'Makefile' as a special name, so the 
> shebang helps detecting which language the file is using (e.g., for 
> coloring).
> 
> * I tend to subdivide a big Makefile into a small Makefile and many 
> submakefiles stored in <./libexec/>.  Those obviously need different 
> names, and given that the makefile extension is not very standard (I use 
> .mk), having a shebang helps knowing what the file is.  After that, I 
> also have it on the main Makefile for consistency.   But here we only 
> have one Makefile, so it doesn apply very much.

I think I'll remove it. It is kind of idiosyncratic, leaves the
reader asking "why?".

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
