Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C1F2270708
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:27:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726245AbgIRU1z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:27:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRU1z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:27:55 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B4C3C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:27:55 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id l9so6782679wme.3
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=y5GYbiFiVOCXC2Cn9SL+MNAXLIgrXCuEzVmrW1rETtA=;
        b=CwRsbCR+zmVX6TwyCJNw2uFqJXw3Qryi1lgqhRgTS7OIID96BpXWqZu0o9mB4K5t/r
         dt41q9JdLrvJHCSuEnaDq7ssuKtgAHqe1S8HNBEoAhzBquLXo+pesq5Cn/chzFvfeyn/
         Hwr0Jm2XhuxCVOsNenISqUy1XT3H6wRt0DDt+8NhwW7bwIE55ckO7vEJz0QJC9QbaZL7
         FqAfEq+gkLZiwgWX3+hMBt46hJh6xGBafrrMUPO8R2Xu38RqDqVB69xls5wP38+UEjlP
         qopKIkpZ9ubLhnHTJ03PyeQAosHHs/1oz2/X6BcRbFqrIDnJbBKPmAZl5xOlWnZSQhhM
         Vv7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=y5GYbiFiVOCXC2Cn9SL+MNAXLIgrXCuEzVmrW1rETtA=;
        b=WiyK8N9PwZl3Y8fHBKLrXa/yfYXt3pB34jaRFG7bTWiqkLCJuXiAXkJswoCRPT8nNl
         BW1OF0ngdePP8p92xAf2j+K2+p0TpW6VV2ulOYBcrfXAwIMe4Soypieifuj79SXffTr1
         3BBu2+tj6fl+kmPAGuqv5FKhinVIqonKtax1JY8IQ4vLyyyplddgmU8VO/RSYIoeI/Bj
         oUVMWsyv54APUKbV/sL+e3p41P+s6vbJfry9fmoYNpvOXymlIYq9HdAFLvcBbF0BCF23
         TWo7YQy8OQQ94T5G87fQ/CVccvNYJLHRdFkoMgZLYCN34MgLm/l2EllZH+zQAn80bddH
         K6OQ==
X-Gm-Message-State: AOAM533vZwZe4Ao9gRlpHmPTNPnQRMc6vuYXW+b9QkZan2dzak05IXsb
        K96J7Xq6kBrFdYmF4cQFJ4s=
X-Google-Smtp-Source: ABdhPJwsmqJdO3pz6MBJKxcSNuZM3mtEa3y4kLAx97Ro/akeqGhb2wITr9UEe8RVPBcyvIVp6PvJ9g==
X-Received: by 2002:a7b:c0c5:: with SMTP id s5mr17031577wmh.152.1600460873880;
        Fri, 18 Sep 2020 13:27:53 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id l4sm6641402wme.43.2020.09.18.13.27.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:27:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/4] system_data_types.7: wfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918124554.46308-1-colomar.6.4.3@gmail.com>
 <20200918124554.46308-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4d201c89-8c47-8487-3672-b9af39c1bf2d@gmail.com>
Date:   Fri, 18 Sep 2020 22:27:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918124554.46308-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/18/20 2:45 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index dba80cf6f..8969ee966 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -350,7 +350,7 @@ struct timespec {
>  };
>  .EE
>  .IP
> -Describes times in seconds and nanoseconds.
> +Describes elapsed time in seconds and nanoseconds.
>  .IP
>  Conforming to: C11 and later; POSIX.1-2001 and later.
>  .IP
> @@ -379,7 +379,7 @@ struct timeval {
>  };
>  .EE
>  .IP
> -Describes times in seconds and microseconds.
> +Describes elapsed time in seconds and microseconds.
>  .IP
>  Conforming to: POSIX.1-2001 and later.
>  .IP

I don;t think this patch is correct. At the least, it needs 
more explanation. As far as I can see, 'timespec' is not just 
about elapsed time. It really is just time, expressed as secs + 
nanosecs. For example, see utimensat(2), which set file timestamps
with nanosec precision.

For the moment, I'm not applying this (and I hope not doing so
doesn't break any following patch).

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
