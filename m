Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45CAB25E8AC
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:27:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726266AbgIEP11 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:27:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726261AbgIEP1Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:27:25 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 602E4C061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:27:24 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x14so10288262wrl.12
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8Pqv2ecdykdGacT7xpsy/DfKghBnF7n7LBPz1QWM1Ss=;
        b=J/55ky4OW4kWHOvOORYZb54dbyWQAzROBFTphSG2PAzYq+d6zMjv04FEQHD7CwM9ou
         aYq/fOEYX58Nc3JCfXwTX/kskPgGSZt5Cj+bVNK0husqC7PTPwZMlMCXK49m+SsD8hvs
         P+4FKcAdhL8Tf5f81zwQdVJGXQ1QHEUof76VFrK25ped/9PZF/dJ2MPsRkWoTyJLhfSk
         XGq6E4vJmqSjpVgZuPLr12fH+7ktp/wuMVZkwEIXNhwk8V9OgaCtge4+O/mBgJf95E2O
         q+SP5YNbaXPlrleF3B5QYO1omGq1WtPxFw2Nx2SYJ648bGjF/zOILrZuh77IQgsiec1D
         +zNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8Pqv2ecdykdGacT7xpsy/DfKghBnF7n7LBPz1QWM1Ss=;
        b=pYMOafPGDNgJBYdqq7QYI1KeWsEDkjyBgILU3LNPuo+fXnVaik9RyGQlCSmtmv3VbN
         8QfBqm5dGjr1lgJkGXlZQ8EHnwa2vP4TLi4BGxsH+SmPN9n/xGeNaoU10LEREEZ2myQ9
         pxJKlGW9p2S5I4mO68QVXhW3PYTpFvLaKg2vgeegfiexLWlm7noRFtpNeqBCLYidfRsT
         5ZwirT/26GtCEe3x9otgtRecNwtFLwVelTkZ1DooLlf845sHkzkD8Wo5w7WZ5kTn5jDt
         uDIkYMOTU4Kb0G1Vijv4skl0hEw2Hs9y3AAn0Qnu+3LLtPYzgQ+8bh2miEAWf6DeYQZX
         mA3w==
X-Gm-Message-State: AOAM533g9FrGjikwE3IZOF/BGQmoKXJE+ZkKgyibY2hqpm2v9WaxmQGE
        W2coRNbafQFnYhDsEZvm/KKAIALTWKQ=
X-Google-Smtp-Source: ABdhPJzcxwk7W+2mhwMRmut6msjB/M/PxVnJD0lyp9geLJtlRGDv4Cu1D8oZwxFrdh9afSOfDa4F4w==
X-Received: by 2002:a5d:43cb:: with SMTP id v11mr13557607wrr.188.1599319642661;
        Sat, 05 Sep 2020 08:27:22 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id i26sm18946100wmb.17.2020.09.05.08.27.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 08:27:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 35/35] qsort.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <20200905142037.522910-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c5bde196-b3a0-10dc-1404-0c46fee14a8d@gmail.com>
Date:   Sat, 5 Sep 2020 17:27:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200905142037.522910-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/5/20 4:20 PM, Alejandro Colomar wrote:
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

I'm not convinced about this one. Do you really think it
improves readability? I kinda feel that it does not.

Thanks,

Michael

> ---
>  man3/qsort.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/qsort.3 b/man3/qsort.3
> index b49c2a9d3..e1af43cf0 100644
> --- a/man3/qsort.3
> +++ b/man3/qsort.3
> @@ -150,7 +150,7 @@ main(int argc, char *argv[])
>          exit(EXIT_FAILURE);
>      }
>  
> -    qsort(&argv[1], argc \- 1, sizeof(char *), cmpstringp);
> +    qsort(&argv[1], argc \- 1, sizeof(argv[0]), cmpstringp);
>  
>      for (j = 1; j < argc; j++)
>          puts(argv[j]);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
