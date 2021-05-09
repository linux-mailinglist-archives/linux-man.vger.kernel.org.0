Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B356F37792B
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:14:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbhEIXPa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:15:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhEIXPa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:15:30 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B788EC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:14:26 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id h7so8229233plt.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=z+Wp/F48C9NPkOz+3EaA11tWFQyku1PSjzpvw4Y4oJw=;
        b=TqHdTt/GVUE/1Dllp989KatCmjDz1JhW5iqiCia0/AQIp/4RUbTUxkjL7NWcBjzZ6v
         uY4x1lCHCeIcI+i7vrYF++H9T8ZsRPZnxULzYal5+OX84kRz99kJUKebI9BgZIONY7Ib
         PjnhDyfNoXFJm3ndkcSUW12k4Jc5hAW4Cql6CP3JMKjBmBAVFqyo6zdu0nuQxh9BLsYq
         osk8+Q1SBdNkoOdJ6EtuveqFYmGU7hcZODKZecytmJNurSuVCzwFhfREfl47r0AfjHh9
         6zk5jXGhnzmLsEthHWXXuj6fLFlCGLAUA1rIUobB7ieeNbIvAeOdpI2AzgVNZe0cs7Kt
         OTpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=z+Wp/F48C9NPkOz+3EaA11tWFQyku1PSjzpvw4Y4oJw=;
        b=Z2ra3faFxkyLg2HcG2rAk9zCYY++oQfDmPKN3IHmHftFlRgUbcwdEHUXw2HbyyvvPl
         pYL5ofHfFXp2JHr2UjLrU38726qPBPqPeAA9ZBsUoE+psay59O2g9bDF+QqVCNJ+UMdM
         VjgvAXLGU4MImfQ7VEYFR9HOwsA5hS2bderlat6i0z2Wm7Xdb4csbgbVnNCvfsiKthQL
         kUNP3l47c/Ze7DZ8YSSF1gVnW0femHBlV7A8GJlXlziR9MobzHB78Jm0DgJAevZOZ3d4
         t4XXC0FpCVyOw2IkJYKKuY2Pn+5Ge9bSmuaoM84ojnHvn4ZTZKVR7F7EyhPC3Aa1NSyj
         UwpA==
X-Gm-Message-State: AOAM533mFW3EOiifB4QOqtYsNKfZITwZgJypgLA6bcn9a1wua3F3pYZ7
        kAmHF3+x64jPgyT+pjUHuvRQOY4wzn4=
X-Google-Smtp-Source: ABdhPJynxZbXwKa9YU+7cVtOOysyTxP8wr+HRJJDegdbGbeFJ6ogaYTkSfuebs0W3FG4kdq2MwxYEA==
X-Received: by 2002:a17:902:c3ca:b029:ee:25aa:5da8 with SMTP id j10-20020a170902c3cab02900ee25aa5da8mr21498671plj.53.1620602066149;
        Sun, 09 May 2021 16:14:26 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id c13sm17394627pjv.21.2021.05.09.16.14.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:14:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] strsignal.3: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-19-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <35e8b316-f7ca-d4ca-9678-cafa44a720b3@gmail.com>
Date:   Mon, 10 May 2021 11:14:22 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-19-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael


> ---
>  man3/strsignal.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/strsignal.3 b/man3/strsignal.3
> index cfea6c8b4..6a5a1e610 100644
> --- a/man3/strsignal.3
> +++ b/man3/strsignal.3
> @@ -39,7 +39,7 @@ strsignal, sigdescr_np, sigdescr_np, sys_siglist \- return string describing sig
>  .BI "char *sigdescr_np(int " sig );
>  .BI "char *sigabbrev_np(int " sig );
>  .PP
> -.BI "extern const char * const " sys_siglist [];
> +.BI "extern const char *const " sys_siglist [];
>  .fi
>  .PP
>  .RS -4
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
