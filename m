Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8AD783B0D0
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2019 10:40:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387859AbfFJIkF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Jun 2019 04:40:05 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:41815 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387702AbfFJIkF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Jun 2019 04:40:05 -0400
Received: by mail-ed1-f65.google.com with SMTP id p15so13361783eds.8
        for <linux-man@vger.kernel.org>; Mon, 10 Jun 2019 01:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vP5/RIOaWinb+xCmWhf2inRvzbJb1k7bTcHMsl2RAHA=;
        b=CFih57fRBjF2KY55+nmAieLIJf3IMVhItD/srXg4FwKbxTx01LEVW3V2AjmDW1Sc07
         21jmSodYXYVert3l9NXo8NiUdVtvqiaVfsXhKba+Lf3EqmnjpYAPCO05rJrs5DMcMmGE
         5Ap43Gkwe6SZD6fsz0MUbk1+lnfPb038JS5FW/Q4itakUTHEDcaYNvDI5oI34cGtPVRb
         yOY42ehLHKG2FaV7LlyT/9iWcDiW5B5rfumuZDai2T4DGugHly7eRAUpGKpXka7gP80e
         7UvRXZyYqx+nGKzXwfUOf2SQO8PWIhXOJ+4vrZQqWbG4SVTVk9qVg7kaQdZ6gxmGvDCP
         ceUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vP5/RIOaWinb+xCmWhf2inRvzbJb1k7bTcHMsl2RAHA=;
        b=Z0nLLBrkgMiGL2Y+yEOP4xwbGQsIiP5kCDGIKTsqy7WTnenra2zMfEr6QVHTjDSmPo
         cfQI/MoriG5yLO7GfLXAw6xTV8Kfi8SX6Sf8FYhHPeo2MB2KS7M65ze+nse3SQ/PRqwi
         vpqIL+oa0qBk/HNV1tTo0agtHaL8UW7bKQix83LlNyNMj2wAs6u32MkaOIbIvYj5qupK
         5f85Mjcw5rR8q+q4LnrLCpjkKEcosna2+Ufnf3sW6MPw22nYntkECRYhlQKMniKmE7EK
         bxbq767WEGefZHk5TAaksrlhkVkzXoxVzUF7TDBdm5a6TP6nAJlFskhf3w8lOPFJFURy
         UwBA==
X-Gm-Message-State: APjAAAWbvgh06ReXoZ7eQz1wQ9be/YvSYp6Zy7Gf76KZBMuCs3HFngev
        3BnQZ5InZFY9DQsHxtgb6hSod4bg5II=
X-Google-Smtp-Source: APXvYqxVPC6KXqG8kWdFgzC/EPYfp2LxDYO87fi6LybUfxxPeZSwHPf14UN3+WTEdj3b7xhO1N6Rpw==
X-Received: by 2002:a50:a5f1:: with SMTP id b46mr72299813edc.167.1560156003695;
        Mon, 10 Jun 2019 01:40:03 -0700 (PDT)
Received: from [192.168.8.116] ([194.230.158.99])
        by smtp.gmail.com with ESMTPSA id o18sm67111edq.18.2019.06.10.01.40.02
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Jun 2019 01:40:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Changes.old: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190516193917.3682-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <26202719-0eae-91af-d111-f88b88d9e5e6@gmail.com>
Date:   Mon, 10 Jun 2019 10:40:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516193917.3682-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/16/19 9:39 PM, Jakub Wilk wrote:
> Remove duplicated word.

Thanks, Jakub. Patch applied.

Cheers,

Michael

> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>   Changes.old | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Changes.old b/Changes.old
> index 6f48d5bea..008d80c58 100644
> --- a/Changes.old
> +++ b/Changes.old
> @@ -49305,7 +49305,7 @@ setfsuid.2
>       Michael Kerrisk
>           Rewrite for improved clarity and to hint history more explicitly
>               The current text reads somewhat clumsily. Rewrite it to introduce
> -            the eUID and fsUID in parallel, and more clearly hint at the the
> +            the eUID and fsUID in parallel, and more clearly hint at the
>               historical rationale for the fsUID, which is detailed lower in
>               the page.
>   
> 
