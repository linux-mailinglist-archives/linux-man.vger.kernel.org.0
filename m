Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1807B27868D
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 14:01:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728158AbgIYMBx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 08:01:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727521AbgIYMBx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 08:01:53 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7FA5C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 05:01:52 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id nw23so3288089ejb.4
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 05:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cdgrohoPeUscBnTccY5cCmkdqK6kdRKgVgjgkG1dX+g=;
        b=uYJ0ciCVJ9bz4SX3qmtPJm++h7m8l6w1t/K0ZZ32EU9gihg8VXzGn3NyhYGftPu3+f
         Glf/w2OZotaUCX1u3XlWDVMgekXtLN4U6kos60V2kWLi+2JIaviivC2pGqdtUysA2HYA
         /w2QQF7fXtfcACsxVQ851VPEke0RIu2cYH+18pssSbdbrBlic9j0bsWfiRjgOBKwxPi5
         522iG6gUN1l6gMsO86pY/FJ9TwyP3cLbmFhhArfBEE9RBrvUSXcnad1h8JmVeKA+AgzV
         Fu/vZz+YrbP1qUnZsQadF4ayFWS49qAITKJfKNM8henhh/MpZgUHG/PWITwwYJUhmnEE
         Raww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cdgrohoPeUscBnTccY5cCmkdqK6kdRKgVgjgkG1dX+g=;
        b=qe97JRb7WDS+iwMJ9eNo3F61ElCrkAzolYAxFBZ/Iu9HNtjIu5JulhD86sCm7DksOq
         3iTbPA3pD0IByOl3bLlqHZuysoa5KpjQu8VOomG9ok9NRlYVexliXUegKjnQGpOhf4JB
         TOwXJAYtPd/Fq1VZCW6CQET5KKzJ9FnmzicDUrmMLsEMame/uMS8jYMPYR+7EK/i6YjZ
         +Dhpf+fJoVB4Mht/qvuKc83eY8ss9Arj0QrChGlUP6ZikF9l6TFGEvBeE58tNm4bQAgK
         IHeD1ORVbAVC2rY4kYLp4AxV9Pz15UHbG77Ze66bDTfG0Wn81hvytROkamvhXOp5F3et
         QXBA==
X-Gm-Message-State: AOAM530bZ2orumerih0UROqjYRxhC73rQ+h4Oyf1l3PORuWMUAF0YqMw
        IX068tyey3ETZzNCgyal/EY=
X-Google-Smtp-Source: ABdhPJyzhpHTo7YyBQSLOlmcfD+F3jizYkvR3paBxGV7kbhqnX+rnSo+lWuKlyuEd6xERpb7R4m6NA==
X-Received: by 2002:a17:906:56c2:: with SMTP id an2mr2425217ejc.118.1601035311618;
        Fri, 25 Sep 2020 05:01:51 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id h13sm1840333ejl.77.2020.09.25.05.01.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 05:01:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 07/10] double_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-8-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5e1320a3-e5ec-d5af-b1f8-d6706dc43185@gmail.com>
Date:   Fri, 25 Sep 2020 14:01:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925073140.173394-8-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/25/20 9:31 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>


Applied. Thanks, Alex.

Cheers,

Michael


> ---
>  man3/double_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/double_t.3
> 
> diff --git a/man3/double_t.3 b/man3/double_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/double_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
