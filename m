Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6613337792D
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:16:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbhEIXRo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:17:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhEIXRo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:17:44 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B728FC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:16:40 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id x188so12340756pfd.7
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eL/e9sBkcgEtIngNgEMSDS6n5XS1GKnsplFRKBh5/s0=;
        b=OhQwnFpcs5cS18k2b8417OBPyAXUwy2gsE0L/fkPnh5IQURIpwe/ghvGvR7ScpD5vg
         YIL9s9+QqePlgkGNbwZpj2W+fSXbikX+cI41mPPwdt5eL4mrbjnasS7RVQ7Sw5LQIR3w
         LiY8WbogwpeaNCPdOMEDEgWrqEOlKJACXQpf2G1+PIIJFLm7kB61nte6CFpdlsdBMY7U
         Aq80WfLVZ8iDuFMt8su4XabRsWQGJJu8WjtByp+pzcvHhKBgmp+jVr0Eq8ee0K9JYHeE
         IJBm0zIE0j2/iM5Id9JJh/VeOmbjfJvwjavZ3glt0KhCnFGyWWT437ZKvSiZ4vXv8QN1
         RuPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eL/e9sBkcgEtIngNgEMSDS6n5XS1GKnsplFRKBh5/s0=;
        b=VnhQjBAt4Yw/sU2xaOFGBXpFEZnSvBj+wbuvQuAqcRFI+IirO2d2bfbr3+pnfjmnyE
         Bk9mpOjuzT7+XEJIk+brcRwc4dua2B/QFAZCpmr4/qM288PT5uqosS1KQR1WOzKzU5+l
         pdinmpv3u6j1tUc/0qM5hlSGNCy5LVEuMwDexKOG1wPxWUL9UBqn27W1zvMDiI4x2EKn
         pQYoUA0reRyVz8prmg8z6F3mOSyV9mQpcPy1BNKlPKskgqSFU5kYtEALQ7pU73wLWacF
         vOU1s4NERT3DoV6hD3nBloQgtzEZWLTydZrxfo+DNC/R355XrHjKYgBRQsEZtHeefAn6
         dkTw==
X-Gm-Message-State: AOAM533eQOllMZGb69lMxau0aE+mSpQsAeLSGwcGylwUR21okhmd4BYE
        s/UKObM/G5+Go8JyB2sjQ2lZk0f6dEQ=
X-Google-Smtp-Source: ABdhPJzIq+mRWiNtBoYBYs0pmiDUveyhzYIG9w/4Y58EiZ1bEYx5jaulpyTtw2dAW5/0drAMff3lQQ==
X-Received: by 2002:a62:1888:0:b029:262:de45:b458 with SMTP id 130-20020a6218880000b0290262de45b458mr22286464pfy.20.1620602200193;
        Sun, 09 May 2021 16:16:40 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id h1sm9891382pfe.117.2021.05.09.16.16.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:16:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] tzset.3: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-24-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2b192418-2a14-b452-cadc-b3380cb16b8c@gmail.com>
Date:   Mon, 10 May 2021 11:16:36 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-24-alx.manpages@gmail.com>
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
>  man3/tzset.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/tzset.3 b/man3/tzset.3
> index e4660be8b..c80da53f8 100644
> --- a/man3/tzset.3
> +++ b/man3/tzset.3
> @@ -37,7 +37,7 @@ tzset, tzname, timezone, daylight \- initialize time conversion information
>  .nf
>  .B #include <time.h>
>  .PP
> -.B void tzset (void);
> +.B void tzset(void);
>  .PP
>  .BI "extern char *" tzname [2];
>  .BI "extern long " timezone ;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
