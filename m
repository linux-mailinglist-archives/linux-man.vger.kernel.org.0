Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25B882070F1
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2020 12:16:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388095AbgFXKQM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Jun 2020 06:16:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387962AbgFXKQL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Jun 2020 06:16:11 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EF27C061573
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 03:16:11 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id f139so1948731wmf.5
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 03:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SztEf+Ur7U76Wg4fs9fFM/jVdxnivPSnTsvk/iBUSDQ=;
        b=GC8e/b92mJJdKEVSxGXnFcHFV/u/j+K2/qux4wdy4y6/wEmaY0oq+jfzwlyok3QvuD
         BLsQGbj33YtbXjq3ahX4Od4zoe/bTA4+XdTmG9kOE7IvGdJsGlMr54wr2I73Dg4XEaW1
         ySddAFzjmTa0D42aHm2U0QkXSD/jpZ5JKN8nK2vXnP9FDsO/8j03DVJ+4yt2cI9W3yQZ
         rkcBHMJXrsAyMzKsu75yJt9Y+8zocykBJT2KOzpKtkSqHllsYpgYoZoQI3a4IITXKM83
         fcP85n6vNbPAahC0a4jm0ZCBEpfX9KYOGfzYj4O/A3PkPeC6aDW2+IA/CT4x04LTmK8Y
         j9xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SztEf+Ur7U76Wg4fs9fFM/jVdxnivPSnTsvk/iBUSDQ=;
        b=ImlDNxOX7hdwaMcliEeisdUzs42oEk18oOpQlYHnD7nyJrTM2n/79H2UrulE6ezwzW
         3b9owRNPsMtPN4qvA4xRYxxFQzvwbF5EH4SDQiJhL7TzNv8S2830KOL25Dd8GngEWPo0
         L/HpcHMDyCqr30xbe59Q7DJoIIBjNa3/AID/YqrrdwfuXFVL49ntfZT8aHrhW+GZX7W+
         ccZms0kTw+DdrqlJJJJJrRniuzM+HrRDobn4xn7LdhpxFa/w51eVuwcXLeqnnt1G7qv9
         RTti43D+x9OIC3rQkf3aX1be/touHiFd7dMhZAZZ9AQ5UY9OF3lPHPpFcVUEYqYU8H8D
         T4nA==
X-Gm-Message-State: AOAM532k/TB+hTrkLPbg2pLPj5/UcCUJDKQnWSzuHoqo8aF+rW64ipDp
        IRY+UuXVGUTpXTvpgFds9xresSCK
X-Google-Smtp-Source: ABdhPJybBcAzs8dgRiBofzhgRX8hfVoWd/fMf2y9sEoWBO93bnOHCcyCGGzUmasNrgmwWsU/topplg==
X-Received: by 2002:a7b:c186:: with SMTP id y6mr30467667wmi.82.1592993770039;
        Wed, 24 Jun 2020 03:16:10 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id c143sm7516882wmd.1.2020.06.24.03.16.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 03:16:09 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] capabilities.7: typo: lowering niceness is special
To:     Dan Kenigsberg <danken@redhat.com>
References: <CAHOEP55A2UKBWrdGcmeT6pu4rTZwu3ZDF1PC0eYvjJa80ghgvg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5e2ac5a7-628d-a798-8c55-5819a9d765d2@gmail.com>
Date:   Wed, 24 Jun 2020 12:16:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAHOEP55A2UKBWrdGcmeT6pu4rTZwu3ZDF1PC0eYvjJa80ghgvg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dan,

On 6/11/20 7:13 AM, Dan Kenigsberg wrote:
> Anyone can raise the niceness value. Only lowering requires CAP_SYS_NICE.
> 
>     $ nice -n +2 nice
>     2
>     $ nice -n -2 nice
>     nice: cannot set niceness: Permission denied
>     0
>     $ sudo nice -n -2 nice
>     -2
> 
> Signed-off-by: Dan Kenigsberg <danken@redhat.com>

As I'm sure you're aware, the meaning of the nice value
is always a source of confusion! In writing the original text,
my intent was that the reader would understand that [higher nice
value] == [more negative nice value], but obviously that that
could be ambiguous.

> ---
>  man7/capabilities.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index 6254c0ac0..64a9f8e34 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -527,7 +527,7 @@ drop capabilities from the system-wide capability
> bounding set.
>  .PD 0
>  .RS
>  .IP * 2
> -Raise process nice value
> +Lower process nice value
>  .RB ( nice (2),
>  .BR setpriority (2))
>  and change the nice value for arbitrary processes;

I instead applied a differnt patch, as below.
I hope it works for you.

Cheers,

Michael

diff --git a/man7/capabilities.7 b/man7/capabilities.7
index 8f212bead..bf9949ad2 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -556,7 +556,7 @@ drop capabilities from the system-wide capability bounding set.
 .PD 0
 .RS
 .IP * 2
-Raise process nice value
+Give process a higher (i.e., more negative) nice value
 .RB ( nice (2),
 .BR setpriority (2))
 and change the nice value for arbitrary processes;



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
