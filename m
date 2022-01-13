Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D082648D87D
	for <lists+linux-man@lfdr.de>; Thu, 13 Jan 2022 14:08:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234921AbiAMNIb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Jan 2022 08:08:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230379AbiAMNIb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Jan 2022 08:08:31 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFB5BC06173F
        for <linux-man@vger.kernel.org>; Thu, 13 Jan 2022 05:08:30 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id w26so3834403wmi.0
        for <linux-man@vger.kernel.org>; Thu, 13 Jan 2022 05:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=32SaUz1qtVKCf4hrgQ/33J3Iss8Kwaa7dblX125k86I=;
        b=BfCGGxcmY1rS7vAxg5GERpjOyyioHsWJP6sVdSleUvutpNoI45seDr/G9E31vBuijU
         PnQvM5NxCpMFKxMf80XMje+tmZ6yg0XXJNoW1LXfIotBYaeZJ3CpToIHWODZDirtJhwG
         AFKFnBb4SpKzfxewoXGjOE1O8qKUfU44bvRWhBi15hYu/aOZ35cBurK+ieoLZ1FupZtQ
         509AMO3qQp69Fln1UF4bvYennNTwHAnFzqORcVaa4SZJCWYUywQs6r1dJjIaYJzjS3Rr
         NV/P3e2FNf1nWSotOjupseXJwx7NFXBVlc2CP+1dfkJNBxiWcpcMmwxq2+SrywoiKLMg
         uWyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=32SaUz1qtVKCf4hrgQ/33J3Iss8Kwaa7dblX125k86I=;
        b=EIfQndiIILJ0jZrYwbw4Ylol1/cGUzOsOAW0JdGQfoSZGo+yCU+tuWRgB0ZY7EGZdk
         QaOuA5hAPp15uOwbhOahmNYmzwcRWdQs6Xkh6sgu5pLpSqY/QkZVoT0KSk+pRrqzKCh3
         FrzeEPzDBCqVJsAk99T+eyeOVaYTI9mose3RyvXW3Ywu8bVWjw92jRalKmV9zt2m54Dc
         cASmBJDDP0wFlAt0bC5Jqw4vMDSjvo7rcabxMBVI6He/TVne14ynb3Bc9LTf527ykKx9
         nFz4vgWF12WFylLU6jkXSYitUvbk2WaqO5BnMr36xtg6HvOGTpdnFm/0zGwt1rIAg5Zj
         e3WA==
X-Gm-Message-State: AOAM531S4J6o4ScpqzgnTeqsHBAKLpBWE8bJE9ufFuITJTnGVFlayIZL
        PU+UpEp7LRVXaljlUU5T/QESAeBhOho=
X-Google-Smtp-Source: ABdhPJxSgS5I0rpTTFoUpfhfJ9o44cUFogFh0OZNkLoT25oLY3RoR+SauJ4poa/2JuOzdeSrLwOXKw==
X-Received: by 2002:a7b:cc96:: with SMTP id p22mr1012992wma.137.1642079309619;
        Thu, 13 Jan 2022 05:08:29 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n14sm3072035wrf.107.2022.01.13.05.08.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 05:08:29 -0800 (PST)
Message-ID: <dcfa6694-fa4e-11c9-b146-e9d2e4b5cd3f@gmail.com>
Date:   Thu, 13 Jan 2022 14:08:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH] epoll_ctl.2: replace input flag footnotes with a list
 section
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220113022755.qs32mcusuuca6dv3@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220113022755.qs32mcusuuca6dv3@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, наб!

On 1/13/22 03:27, наб wrote:
> This is shorter, clearly separates the events from the flags,
> and more consistent (cf. EPOLLEXCLUSIVE which has a different message
> than the rest)
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>   man2/epoll_ctl.2 | 33 +++------------------------------
>   1 file changed, 3 insertions(+), 30 deletions(-)
> 
> diff --git a/man2/epoll_ctl.2 b/man2/epoll_ctl.2
> index ec31cac72..c9f9649a5 100644
> --- a/man2/epoll_ctl.2
> +++ b/man2/epoll_ctl.2
> @@ -156,6 +156,9 @@ Note that when reading from a channel such as a pipe or a stream socket,
>   this event merely indicates that the peer closed its end of the channel.
>   Subsequent reads from the channel will return 0 (end of file)
>   only after all outstanding data in the channel has been consumed.
> +.PP
> +And one of the following input flags, which are never returned by

This sentence (as I understand it) is a continuation of _"The  events 
member of the epoll_event structure is a bit mask composed by ORing 
together zero or more of the following available event types:"_, right?

So, the bitmask is composed by _zero or more_ event types, and _exactly 
one_ input flags?  Just asking, I don't know the syscall.  I think we 
should mix both sentences into a single one where it is very clear what 
the bitmask is composed of.  And then a simple introduction sentence 
like: "The available event types are:"  and then below the event types 
another similar one for introducing the input flags.

Your thoughts?

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
