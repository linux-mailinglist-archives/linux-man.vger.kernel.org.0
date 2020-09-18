Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7ED68270613
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:14:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726218AbgIRUOT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:14:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRUOT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:14:19 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3A78C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:14:18 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id c18so6795270wrm.9
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3wuH4qdQTUwE1LDmRpZ/fyjbLAHqleIeb108GByoCig=;
        b=Uic00AEitBLN7DUVbalKcYm8Ln0+kqZhhzZSaI66hwCoX1JZRSao/rz8phYCpSFoKL
         awyNfXf+jnFxi/2bRPiVoqTZwsU+ortNJ+zB/8vK1YLYUksckShq7/MPAU8X7Eg5uxhV
         UDWbxBMN7xq6Jggf6nof0x+v1oskZHEwTPn07+t3cngxC9nwlt8fTKEruiCUCixbvlJk
         khSjGmPgnC2R3ZqYoJTQDmeMrz6wH06347NCtgBIaWyYbmMAkqz30QfX4KAZ4msZxXNV
         90udQ5vEqPPNw3V2O1XUZViBPbFcJx8Wl3v8o5qPxCQAhnPExAAc19eM6sW0q3MZAFpb
         styw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3wuH4qdQTUwE1LDmRpZ/fyjbLAHqleIeb108GByoCig=;
        b=mvLiCWfsFmdnikzfREgqv36vClTBkapxMKc0X6fGTl19WkTD9fTwD6kk0e1BE5eahc
         vPKt6o11wZQgs1PBJj8auMn29j+LO5qMpzQYutX7AJxt+3W+RvA2XY0SXT1rLUH0fsU9
         GjjIi7oGrhTz0OQKdG7uCXY3BlFA8J9wP8z74Wb9LYAvMqliL/eVTtWgbgQBOZ8k6/By
         IOry2nOIm3PYTbzhiVzifx9HeOeIC6ofjFJu6UX0iBCWGcc47HumRNdq2u30pTGJwK5t
         WNoun3aPbs8fF+FtjZj8lIg7dLMgQbtukxR6213sDcz2HLui5C+exvGmlMMZQjbi12Om
         Dmyw==
X-Gm-Message-State: AOAM530PbX76ehuvYfcM3H61Hfv4vu4W7oF1vhXZVnvdkSziszbb9eAM
        W0Zh1kCRyt1wTpSa9lVTJVk=
X-Google-Smtp-Source: ABdhPJz/z6oflRq36WdA1Hc05re16fLVb+0gbENxbpltpBzJIX8t7BV6kytVZEu8L146Aqw2L6tS5g==
X-Received: by 2002:adf:e304:: with SMTP id b4mr38086406wrj.141.1600460057542;
        Fri, 18 Sep 2020 13:14:17 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 11sm6801396wmi.14.2020.09.18.13.14.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:14:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/2] size_t.3: New link to new documented type in
 system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
 <20200918112755.21428-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8dbd99ff-257c-7935-b3ba-c8f31f912050@gmail.com>
Date:   Fri, 18 Sep 2020 22:14:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918112755.21428-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 1:27 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Merged.

Thanks,

Michael

> ---
>  man3/size_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/size_t.3
> 
> diff --git a/man3/size_t.3 b/man3/size_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/size_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
