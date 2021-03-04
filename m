Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8577232CF71
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 10:16:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235762AbhCDJPm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 04:15:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234719AbhCDJP3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 04:15:29 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24183C061574
        for <linux-man@vger.kernel.org>; Thu,  4 Mar 2021 01:14:49 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id u16so8764919wrt.1
        for <linux-man@vger.kernel.org>; Thu, 04 Mar 2021 01:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QUAG8a2g8llzLUpHc9F/oaChAFf2EX5+wrG4e3QaNq8=;
        b=o0hA7jC8GG97MHK8gYX984xPZ6pKZQ5SdQ44ssZuMThVVJsBcMlG0kXZOwxhobwEaD
         LgS2ITPTxzU7v6ZSyxtMmaBUuwjssKXEk8DcfDimxkoxhLHNxdleKiAelVLVgP108sAi
         1pk71/gVul3iZbqzh5IB00GkLwwT4/CRR5NZlm46xTTWItQRN22z9faw8lpFgxbsihqB
         qjY49PLXIpLs2obByrlmVynQRr6KvWfTa7fh0nMMyV1KHGYenee0rT2UO1RihdDUZI0+
         T3t0HtskpVoRuxmAppeuKlLCLz30oPJPf+hCtJUynUOedmgZjtoJq+53mSeOq6yO/VLp
         j7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QUAG8a2g8llzLUpHc9F/oaChAFf2EX5+wrG4e3QaNq8=;
        b=EtNycWvcY37grLwPAsb+/AUvW2rQ72PMVzpQ4qAZrF/Oy6SzXQXLScNZSiojP4ADf/
         D8vZxDlzSL27Db3HWhrthuSbJDOVpq7kR2YxGVdb38sHvkI0iyEmg7Rn4B5sPnfIrHQL
         MA6vYj2XK6kWOipBiY6NyqD0atjo5J+/PTny1Wj2tg2io/B2esZpVzooUQY6tfc3IcvG
         VuYPJaNx6miSXwOirDxqk1Qwt0hWj12xE4vxx5p22iyRLlKHuOnt3s0lAkmdF/IhbGQM
         mk6c34jy5GXebRTvs2fbDtEifZANmHc4nOSYJW8QZrifyhsiFhmmhe1lWjQ/ZFUNVD4I
         ZNDQ==
X-Gm-Message-State: AOAM530tQGDj1jK4N2EXKGlv8SfUcpQSQRAL/sz6/uwG1kni1Y4V5xBo
        xbG7THf3TALgxhMizvNzQCSDTs728b76PQ==
X-Google-Smtp-Source: ABdhPJw6De5BP2zIXdHZKDa+O3NyzCjESptxMezHES3xSsrb9R8rfgLPo6lk1t24DSvoevjJ1Nuk7w==
X-Received: by 2002:adf:e4c7:: with SMTP id v7mr2843230wrm.245.1614849287971;
        Thu, 04 Mar 2021 01:14:47 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id p18sm29839320wro.18.2021.03.04.01.14.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 01:14:47 -0800 (PST)
Subject: Re: [PATCH] fflush.3: SEE ALSO: Add fpurge(3)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210223231713.124003-1-alx.manpages@gmail.com>
 <ebd5b29a-6130-b7e8-d1d4-83ff92781a8d@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <625dae4f-f8a8-6cd3-c830-e1ed5d50f766@gmail.com>
Date:   Thu, 4 Mar 2021 10:14:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <ebd5b29a-6130-b7e8-d1d4-83ff92781a8d@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

On 3/3/21 11:20 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> On 2/24/21 12:17 AM, Alejandro Colomar wrote:
>> fpurge(i_stream) does the same as fflush(i_stream), AFAIK.
> 
> I don''t think so. fflush() of an output stream forces
> a write() of data to the kernel. fpurge() discards the data,
> as I understand things.

Yes, for output streams they're different.
I meant
f.....(i[nput]_stream);
which I believe to be the same thing.

> 
> But I still think the patch is useful. fflush(3)
> and fpurge(3) serve related purposes.
> 
> Patch applied.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
