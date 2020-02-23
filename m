Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7F525169A2E
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:15:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727099AbgBWVPn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:15:43 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:36021 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727064AbgBWVPm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 16:15:42 -0500
Received: by mail-wr1-f68.google.com with SMTP id z3so8050571wru.3
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 13:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KffUjR1qBMiZ+Fv3H6ydFC2a0YyRZLyIhnf3bCl2YKI=;
        b=glBmWRstAz+3OKmWm/ZWRxfYFgTnS8TQYM8I4vaP9geB3am32WWyrok9riqOgz6w0y
         kpvBVf86WY955x2JCrkgACbXGsVlfE7YVuN/NFck9Q4Ir/kypZjv+z6BywIZewamLkLW
         UoNJ8Pw+JR7m3GTIq0GTSVaubpd29nfvve+v9/5fVGC/V1sAj4CjhiANV52/hzuA8Sao
         ykrkuR7X93AkPoeB4XAPi5v0RYZCZ5qQ8W3TwxjXG0CcTAbKScbTtyOWtw715kE5VCRe
         pX1CXWc0bTcpyKmmNNYi0yHOT0k8TCnKybHtRbRwYZUqAXDxqmek8aNLo2an97NnYdUH
         iWsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KffUjR1qBMiZ+Fv3H6ydFC2a0YyRZLyIhnf3bCl2YKI=;
        b=rTZozgfyzTAcogEq8E9F/BoszP5uxPH7jAAjK5Npd2RxYA+rz8QO5gOSXSQEM6kJwX
         XhldevYBemlShbTVdHbYYi0FLXBVT7CjJHFXK25MJckrUQkiLMDGwNxx5T7U/ICeX9zh
         2KRFSJcNzDjUBPQ2lK7hjVV3EbH3En0GqyKTmtwj1MLf6BvAA3Xf/T+FAoWzEnJyY6WU
         EsNBeXSQc0oRHRTRwcwGzOmxlcluJ7NipMHk12iIyXgvv7TpRW5fDxbjeeO2Dv3ZPRjb
         lv50y2/WU5rdIUpYRteayJHYFnzfWe9pqJrNsz02ARCv5skvpIVgVMHu9Ocvk9JeCIyH
         phlg==
X-Gm-Message-State: APjAAAUwgp4J4FI0rGbmo+rI5KASnG6uVGDh3FTi3gZmMocM+YpKLycT
        OSsJS84up4ehXcfnuyWa/Y8V930u
X-Google-Smtp-Source: APXvYqyheETB5o52cQTVY/yE0Y10zJHuyLuJjMsmFeeeuWzKdDEtPkkNmB8JEdJ39Xdwquo52I4zTA==
X-Received: by 2002:a05:6000:108b:: with SMTP id y11mr63877638wrw.187.1582492541455;
        Sun, 23 Feb 2020 13:15:41 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id r3sm15576060wrn.34.2020.02.23.13.15.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 13:15:41 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] nl_langinfo.3: add information about AM/PM time format
 locale elements
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
 <a456ce1e9483a914e1c2a9fde126de0130fd578c.1581693625.git.evgsyr@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2d1bc6f6-204c-7425-0f02-c19dc4dcd575@gmail.com>
Date:   Sun, 23 Feb 2020 22:15:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <a456ce1e9483a914e1c2a9fde126de0130fd578c.1581693625.git.evgsyr@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eugene,

On 2/14/20 4:28 PM, Eugene Syromyatnikov wrote:
> * man3/nl_langinfo.3 (.SH DESCRIPTION): Add description for AM_STR,
> PM_STR, T_FMT_AMPM locale elements.

Thanks. Patch applied.

Cheers,

Michael


> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
> ---
>  man3/nl_langinfo.3 | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/man3/nl_langinfo.3 b/man3/nl_langinfo.3
> index ecc1954..e16b094 100644
> --- a/man3/nl_langinfo.3
> +++ b/man3/nl_langinfo.3
> @@ -96,6 +96,29 @@ to represent a time in a locale-specific way
>  .RB ( %X
>  conversion specification).
>  .TP
> +.BR AM_STR \ (LC_TIME)
> +Return a string that represents affix for ante meridiem (before noon, "AM")
> +time.
> +(Used in
> +.B %p
> +.BR strftime (3)
> +conversion specification.)
> +.TP
> +.BR PM_STR \ (LC_TIME)
> +Return a string that represents affix for post meridiem (before midnight, "PM")
> +time.
> +(Used in
> +.B %p
> +.BR strftime (3)
> +conversion specification.)
> +.TP
> +.BR T_FMT_AMPM \ (LC_TIME)
> +Return a string that can be used as a format string for
> +.BR strftime (3)
> +to represent a time in a.m. or p.m. notation a locale-specific way
> +.RB ( %r
> +conversion specification).
> +.TP
>  .BR DAY_ "{1\(en7} (LC_TIME)"
>  Return name of the \fIn\fP-th day of the week. [Warning: this follows
>  the US convention DAY_1 = Sunday, not the international convention
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
