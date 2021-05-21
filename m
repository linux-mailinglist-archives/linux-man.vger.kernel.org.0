Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5892338C572
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 13:11:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234052AbhEULMj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 07:12:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbhEULMi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 07:12:38 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FE52C061574
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 04:11:14 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id v12so20668702wrq.6
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 04:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=M8kAV1VYgJ7YPGtmnmEaWDtMYXJyD8NqO59+yTOh6bQ=;
        b=sI+YXE4O6TkdYYxhApgD/dEYFZGQ48PoiSP9dfSMiO2mg4zEJbIxSEO0HyZJkBf02X
         YN+brgPgJ208cSMbBGexWgFYlY9rnpxfuPCPDKIfwxDEK/cCbo8KITnpnRDks3EYZV8V
         ARYB0vcl+oSqV+VjR3ASpSP8pb2yqmj0E4rGCz7wsQ6AFDaYKacau4q482zfgfsIJ55o
         kFG36issLImj8SWfw/yv6QcHEMSnnRMQl5m1FsG9Co7LI/isN4Q3/39A2N6sG7DfWsyK
         4EDGLEFyvBYuJmKzLakQH/knyfBWkvzjp6SU3lKmIcjr0O5bq0DsN8uIF5d5rTyxL0Ir
         nC4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=M8kAV1VYgJ7YPGtmnmEaWDtMYXJyD8NqO59+yTOh6bQ=;
        b=j8pStq0DL1w9nYACZ44vuVY66AaQFwE7FPASKoz8RQ+E9aC4gqwLlxJRtz+UZpRzW3
         TVS4BQ97Oy5ZqujoDeQfMsGG/ozu/0KP5v1KkV1QaBm9G7FaZ16C7Uc+3hw3iwvuhqax
         owDIMKHSN4E39Xu4P4mnKBEqUec+Z6NlRdHMdPeXMPv7C1b5MgpdRypOFcGifivUqJHb
         RD+DZFcwEH9NFEMAJd6AnnQWfisPbAKaiRYEoTHBmPzlbJhIOOg4HOi2SkfKPct6jfNI
         EqTH8wrZniyckT1b2fS/u5dHuxvF4t6cRPVt7SfBNTMkQeH3K0Awq8wQ4UrxMIyCkaG8
         9yAg==
X-Gm-Message-State: AOAM531QEZGmwNIA02ZKCPve/bdoxUDW3Q4pzbXqY2qk/YzVR21JQnL1
        g/PNILyriNtEw9Mdx6eKXyo=
X-Google-Smtp-Source: ABdhPJx0Jt9Czh98l2rCzV/jrkL2J+LkSv+aEN6LARGlRH7EE1PFvRE2E1fDXGSJZ69mwTaDrTpUdA==
X-Received: by 2002:a5d:64cf:: with SMTP id f15mr8737379wri.327.1621595473097;
        Fri, 21 May 2021 04:11:13 -0700 (PDT)
Received: from [192.168.43.70] ([46.222.120.224])
        by smtp.gmail.com with ESMTPSA id z6sm5860920wml.29.2021.05.21.04.11.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 04:11:12 -0700 (PDT)
Subject: Re: [PATCH] sigalstack.2: Mention the need for separate signal stacks
 for threads
To:     Florian Weimer <fweimer@redhat.com>
References: <87h7iz4vy1.fsf@oldenburg.str.redhat.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b69d7180-77f6-f7e3-0344-507a26517288@gmail.com>
Date:   Fri, 21 May 2021 13:11:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <87h7iz4vy1.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += mtk]

Hi Florian,

On 5/18/21 10:40 PM, Florian Weimer wrote:
> Signed-off-by: Florian Weimer <fweimer@redhat.com>
> 

I don't understand how this works, so I'll CC Michael so that he merges it.

Thanks,

Alex

> ---
>   man2/sigaltstack.2 | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
> index 53268ccbe..1510a98ab 100644
> --- a/man2/sigaltstack.2
> +++ b/man2/sigaltstack.2
> @@ -54,7 +54,10 @@ alternate signal stack.
>   An alternate signal stack is used during the
>   execution of a signal handler if the establishment of that handler (see
>   .BR sigaction (2))
> -requested it.
> +requested it using the
> +.B SA_ONSTACK
> +flag.  Each thread that can execute such signal handlers needs its own
> +separate alternate signal stack.
>   .PP
>   The normal sequence of events for using an alternate signal stack
>   is the following:
> @@ -67,7 +70,7 @@ signal stack.
>   Use
>   .BR sigaltstack ()
>   to inform the system of the existence and
> -location of the alternate signal stack.
> +location of the alternate signal stack for the current thread.
>   .TP
>   3.
>   When establishing a signal handler using
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
Senior SW Engineer; http://www.alejandro-colomar.es/
