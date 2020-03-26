Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F1473193B3F
	for <lists+linux-man@lfdr.de>; Thu, 26 Mar 2020 09:46:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726270AbgCZIqj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Mar 2020 04:46:39 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:39530 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726210AbgCZIqj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Mar 2020 04:46:39 -0400
Received: by mail-wr1-f66.google.com with SMTP id p10so6659609wrt.6
        for <linux-man@vger.kernel.org>; Thu, 26 Mar 2020 01:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Diaj29BCs1YmCsXUjORvzik0SNiu8r2iYyEM6mKeaoM=;
        b=byNNdgBN7yRL6nfMPUtaUsBQoFPBaE1+kQ8Se9z/sirSPhcygkqDBOF/aeteE2V8eW
         Hw0sf+gnWN45UktM8QlGrOABAVO23/oMP+I8sCHq8SFMQ/B823z0sebOZkAutOfArxI6
         7AO6W+0pRsCz/dmjRzUioX26Cv92f0vGulAVhFmI3gZdTtBsF+eKXTzUpq4LDpsTlx/G
         MC5C2xxYT+xzTWMZSmIAJy4V/Z+VgiCuIKthVT1RBEvHR3354I/crga5Xd0G/HbuY9jY
         tPhPaiJv5dM0uzRGwsgN3dyM2ded+xYvn6cR0SOo0KClxQh6B93RuRGY+eAvoVyLutRL
         wuWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Diaj29BCs1YmCsXUjORvzik0SNiu8r2iYyEM6mKeaoM=;
        b=PJxWjqNe8DPZ47jCDPf233HvmYaenEmSMm+R0KlE+E0FLW2ThAf2sJByGyZALOcEEy
         8GdLl6lQFzLCo7MnHb11HtHOS4JZ7IXP0B7AbxCwBoF078etDgqajzZhlpMysQ9qxUky
         DGM39lc+WgZensTP3aTFLH/blKb6x13NCDgO+E8NMurn8FkOmb3GTUQXby7OonETsF/H
         yP6PrkVXuJuVM8juWA33j9jUG7ocWYRdTjUx+GEd7t5ejo70Ue34w3/gTTubp8lDLGOa
         SyOUn4e3GI9JzFCQZAQMQJRq5y1W/Q4lO5S5nymJIh4sdY7RMCzy3W56I49iosabKeZ3
         R4BQ==
X-Gm-Message-State: ANhLgQ2wFg2KSLk9xBU9bMxkcKJOsknzmC4TR/F5mNBGb3pOdznnDML+
        GgWqIA54A8+OK6cWFbBaUcMaiFsy
X-Google-Smtp-Source: ADFU+vuL1+e+DaGLt3wFqZIySQ0ZdbIYvwXTwwAPHaCUwG1Ce5H0BjfN1sC6ShgdMTz5323FqzcoTA==
X-Received: by 2002:adf:fdd2:: with SMTP id i18mr5887670wrs.165.1585212397305;
        Thu, 26 Mar 2020 01:46:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id i19sm2613518wmb.44.2020.03.26.01.46.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:46:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] timerfd_create.2: Included return value 0
To:     "devi R.K" <devi.feb27@gmail.com>
References: <CAJymdbxJNag1W0vR9Ysm7_y91HwLAu4QaSMKZbed4emT1DYvww@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <55aa30be-5894-ae52-ffd4-5f2a82aa5ad5@gmail.com>
Date:   Thu, 26 Mar 2020 09:45:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAJymdbxJNag1W0vR9Ysm7_y91HwLAu4QaSMKZbed4emT1DYvww@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Devi,

On 3/18/20 3:04 PM, devi R.K wrote:
> Added a return value 0 for timerfd_read which happens when there is a
> bigger backward time drift*.*
> 
> Signed-off-by: DEVI RK <devi.feb27@gmail.com>

Can you say some more please about how you verified this and/or
point me at the relevant kernel source code? At a simple attempt,
I can't replicate the behavior you describe.

Thanks,

Michael

> ---
>  man2/timerfd_create.2 | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
> index 066e0be..ccced98 100644
> --- a/man2/timerfd_create.2
> +++ b/man2/timerfd_create.2
> @@ -317,6 +317,10 @@ fails with the error
>  if the real-time clock undergoes a discontinuous change.
>  (This allows the reading application to discover
>  such discontinuous changes to the clock.)
> +.IP
> +A
> +.BR read (2)
> +may return 0 if the system clock undergoes a discontinuous change.
>  .TP
>  .BR poll "(2), " select "(2) (and similar)"
>  The file descriptor is readable
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
