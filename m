Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1532F377930
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:17:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbhEIXSi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:18:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhEIXSh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:18:37 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0151CC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:17:33 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id j6-20020a17090adc86b02900cbfe6f2c96so9201799pjv.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Tz/id4Py7T6PI/yuspse4pqv05Yc7lvDy5vSj+4GjTU=;
        b=smcwiwcsyI/FBNqW6xVGYRRW9Lt8Z+dhugzVU410Kp3Wx4HKm3/Lqnfs9eWDJV1+Rw
         4plizxCOme5cEf2oMFdgUMxZ01zzTUf++s3wWAnK8gUG0MzyORzgl7uQM6fh4bfPXVXc
         HdJAdKd4yN6Uv7yBsGYcYcwg2ko8nF70DdSc5hJqDzUjvLq+R4nFxdzvOsPQ+CedgfLx
         HIV6+BB/Fmh/Ta4WUyJyAuy+/nk6YR6Nk26mWJvs95RmmYmTgZXiy8MfeHUAnMhq6Bwo
         K66M8DHPtnVcezxg5fjm++6kilZyMvWwH84vWtF2pmaTzEcgMvXsbIfzwNWS8WKUelsy
         Lo9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Tz/id4Py7T6PI/yuspse4pqv05Yc7lvDy5vSj+4GjTU=;
        b=na3PPHqGwS/VR6Lpebtit0pzOae2Vg6SCzsM9xbLLlUv+fQX85tJXew/wrFzFt0ISC
         6TyaYe6XzB8uDXu8mI8jT9Z1n4e+JzwtuoSoCXW1LRFmEV9IyGmw1XiRAXPaU6VjQOYZ
         m9aY4GS2174pfvxlqkn3wdUQDt9s7cLaGITjxb66LdWOf8Dsca1TVKF+dNFG9Y0XJHZU
         pCpINZmvrjH/A4pYSeiqP8mLemwF0l0N5zUc80O2nxVExWVV4NicpaTiZqH9KCGZHl1k
         MrgYKmLXQ5rn56rkkqOpGupJTYFWVswPejt8utq3NCLspPUkYImovoZrkdGNRXkaW6Rs
         f6aQ==
X-Gm-Message-State: AOAM533wjbnAff5W94R5n+IcC9u/iQqkGKfmwZxdn822KgwqFeHoz4B6
        YHPJBeKeaTSzc30rV+DW2W7Coz9JbCU=
X-Google-Smtp-Source: ABdhPJz7lN4JBb1++IVJDWy++hDx/spMkn4neST4ilEIwjdOh1uGUG5Zm23JiSxz+Pl2ZHlUm0lYoA==
X-Received: by 2002:a17:902:f686:b029:ee:fa93:95af with SMTP id l6-20020a170902f686b02900eefa9395afmr21511227plg.83.1620602252342;
        Sun, 09 May 2021 16:17:32 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id b7sm9209551pjq.36.2021.05.09.16.17.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:17:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] clone.2: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-31-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f26d80bb-48e2-30cd-976c-b7f866a40a80@gmail.com>
Date:   Mon, 10 May 2021 11:17:28 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-31-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael


> ---
>  man2/clone.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index 838fbd669..04b4ec38c 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -969,7 +969,7 @@ mask must also include
>  .B CLONE_VM
>  if
>  .B CLONE_SIGHAND
> -is specified
> +is specified.
>  .TP
>  .BR CLONE_STOPPED " (since Linux 2.6.0)"
>  .\" Precisely: Linux 2.6.0-test2
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
