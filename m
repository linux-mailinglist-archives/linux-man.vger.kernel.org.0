Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1168265A48
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 09:17:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725550AbgIKHRo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 03:17:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725536AbgIKHRn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 03:17:43 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40606C061573;
        Fri, 11 Sep 2020 00:17:42 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id s12so10364370wrw.11;
        Fri, 11 Sep 2020 00:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7MoWjuSMrmuWBsjyO8VjeyjsgWTYe+KiUqWDrZc69Eo=;
        b=h8oRwCVizSeeHTG6nCyR1E034d5W7XSJ7sArVp+/oTAOiqPI4LNJryOA0cQP0qfhA4
         BWiMQHGGTh0MM34Dn9gNbrXo57PQkQ2txEe/BJ3vMvIwC9xH9aRwWTh+ctd6jdABJZC2
         Ikvm0wFcPWR0UkhJkhVKRjjgS8CAhVxY/ibdMGZpvT8/M99rJN8d9ldG63EumWQ0eZXt
         pWnQgIl76tyt+qD/7tOBmWbNjzcos049D4Dcg3xYHytvcqjEte4G/A2ZQ9KjFuginKi+
         q7iAjBu9sa/C97H3fKB/Bu4CQ8upCuuQCZE9BiSbpkO2dgbzTQRp/MZp3JOaPDbEdmdM
         /j+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7MoWjuSMrmuWBsjyO8VjeyjsgWTYe+KiUqWDrZc69Eo=;
        b=jzydCf+Tu1I2c5b4BqiAACAYMxDreSkRQ4mpkC5sZGijN+swRFh116qwCawRmaeGS1
         L5VH/YKez6STLzNP70xYNypk57ABWfPE4WOTcvr55Hs/KFrQlAzqvm5A9S7EHlaAbDJJ
         8LedYpK1VTZ4IYSmM+EQnBx87dILFbMYEx4HhEQFcuF+W8DxjQJpT5Z0G8pT7XBBrhFo
         d4Zg7VhLU9UbpDt4mVNs8WxC/u6NZGi2HP2Won7KNOLqZOHgr2JdDuaHl+RFJH+g4A96
         5bJ7yFHQ5o2DSlpN2qWh9FvYLEik3RyDI0Z5KtDIL2OGW0xyxYmXz0H+uvTgJr2pHFN6
         yhYA==
X-Gm-Message-State: AOAM532QfdOpPgyjP2oySc5Xw1M+FgYT0kgxI0b6hmCp7s6JMYNhvdFi
        dyiglq0eRkFCBKWgXFJD5At3fyI1IzM=
X-Google-Smtp-Source: ABdhPJzCQ1VkfcPjraJuenEHPI+DEwaFDEWPG6kJojnz+M3mmP9Q4v467NZxonUDrcrxDP2LvQtbaw==
X-Received: by 2002:a05:6000:d0:: with SMTP id q16mr610086wrx.24.1599808660687;
        Fri, 11 Sep 2020 00:17:40 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id x10sm2427876wmi.37.2020.09.11.00.17.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 00:17:40 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8512e6f8-d174-6116-1851-a92d8947b2fd@gmail.com>
Date:   Fri, 11 Sep 2020 09:17:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-13-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/getgrent_r.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
> index 81d81a851..76deec370 100644
> --- a/man3/getgrent_r.3
> +++ b/man3/getgrent_r.3
> @@ -186,7 +186,7 @@ main(void)
>  
>      setgrent();
>      while (1) {
> -        i = getgrent_r(&grp, buf, BUFLEN, &grpp);
> +        i = getgrent_r(&grp, buf, sizeof(buf), &grpp);
>          if (i)
>              break;
>          printf("%s (%d):", grpp\->gr_name, grpp\->gr_gid);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
