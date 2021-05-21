Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52D4138C977
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 16:47:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231966AbhEUOs7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 10:48:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231538AbhEUOs7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 10:48:59 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9054C061574
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 07:47:34 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso7556110wmh.4
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 07:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=el51XJPWwonRH5c8F2it1RfWIixzTZYpxho1Br8YkHk=;
        b=rQrpNoIhqwk1HwsOKG9YvkdVud5ek/+PunwcV7lCoBuHOjSQmJzFoZRtO8DUL1NN2l
         uCTQeZoVKaAtVt2fKcYTh6jIzsrXOdjUN5P8YezWBAHiVPww59lYrsBbU9wNaRa/Mn3d
         /kPaqY8A2eWaUnXf7/a+2gG3Hh/q7GZW2G7gkT5HaTNDwF2s3QVB2ujnO4eRj9mFbCrs
         EDryQ/QXenW2nT2hz5WFqJcgUltoO0Fen1isgMxmtoG7RFFZY3baIzwRRYqhrW4uLMaw
         xuh6ZZe9X9jOzp2xhjfY8x7zlxJI9qhsiipYR6jCJb/3pCbEhReqvYlraJMiO/hT9SPw
         oufA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=el51XJPWwonRH5c8F2it1RfWIixzTZYpxho1Br8YkHk=;
        b=GfRnV8WygFh6gpxAJqSFoNgOUJK6Ocu5+7lcFE5LrDibPzz55//O89atTm5hu+rH+3
         ecEJP7+PpdSRWpfXPDlYodj3bb4GMqpcfsBWl/jVURrz2gmoPa1JB1Ia1RpkBrwCWZKy
         Viwsbe9aK5JGKh2Qcv+QZX74BXB23n0L8cJfWfyCuaZSMBBxuDBmjISmuRqOZOZ29+ie
         lP2sXdSOSjtZy1qb3TsZqwqDKUC8E8Ld4BPXguTKru/B4tuXzb0kNMxWvmKIkd0rbcAY
         hRqI6AIbozeDzYdKqRA7RJHBsPFHDCOs58f4+SGmkX9RdUbPCDmmYGKCIvNb8eGVtnH9
         fn1g==
X-Gm-Message-State: AOAM530cEOQnH8SazlwE0asicXGaF93/mymGTYsabjVr4VUkc2uYiG0O
        vTFGC1wPEJ65ZW5aKsbuTT8=
X-Google-Smtp-Source: ABdhPJwLD+TxObOYh8xf7UCxaUn6xJWGL7aFBHlDHj4gn/ZDq7mJW6X/VF0GiJujNmh+r4oYV8v8kQ==
X-Received: by 2002:a05:600c:4f44:: with SMTP id m4mr9163590wmq.50.1621608453422;
        Fri, 21 May 2021 07:47:33 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id t11sm2382575wrz.57.2021.05.21.07.47.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 07:47:32 -0700 (PDT)
Subject: Re: gamma(3)
To:     Walter Harms <wharms@bfs.de>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <60a57e3a.lbqA81rLGmtH2qoy%Radisson97@gmx.de>
 <6d2849cd-d8af-0539-e579-3201daed6ab1@gmail.com>
 <9baa6f3ac0dd45b4b75a11044dd0f0ed@bfs.de>
 <763071ea-e70d-ef89-8455-da7662e67518@gmail.com>
 <904f79501b114346a3e7bd84efb13a6a@bfs.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <509d34ee-4616-81e7-28a6-73a7e024dbeb@gmail.com>
Date:   Fri, 21 May 2021 16:47:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <904f79501b114346a3e7bd84efb13a6a@bfs.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/21/21 4:08 PM, Walter Harms wrote:
> (before we misunderstand each other i do not insists on that patch)

No problem about it.  You could insist on if you wanted to :p

I'm not sure yet about what we should do.

> 
> The function is available and that should be documented.

I tend to agree with that.

> They seem available for some time, but glibc says: These functions
> exist for compatibility reasons.

Exactly.  But that means it exists for old code to still work.  New code 
should not use these.  So the manual page should serve 2 purposes:

*) discourage its use
*) help migrating from gamma(3) to lgamma(3)

The first one is already clear.  For the second one, I think that the 
SYNOPSIS and ATTRIBUTES is enough.

> 
> What is about a merger with lgamma() ?

I like it separated (as is).  It serves the purpose of redirecting to 
either lgamma or tgamma depending on what the reader wants.

> 
> adding to the notes section something like that:
>     glibc version
>         Glibc  has  a  gamma() function (and _r) that is equivalent to
>         lgamma(3) and computes the natural logarithm of the Gamma function.
>         That function is deprecated and should not be used in newer programs.
> 
> 
> re,
>   wh

I think that to document those, but keep it to a minimum, I'd add the 
functions to the sections NAME and SYNOPSIS, and nothing more.  The rest 
is very generic and mainly says "don't use this".  The only thing that 
would maybe need an update is the ATTRIBUTES section, but I wouldn't 
mind if we left it as is.


What do you think?

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
