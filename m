Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45A832FB3AD
	for <lists+linux-man@lfdr.de>; Tue, 19 Jan 2021 09:05:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730806AbhASIDr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jan 2021 03:03:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728706AbhASIDh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jan 2021 03:03:37 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1FDBC061573
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 00:02:56 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id m4so18721968wrx.9
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 00:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=blG5aUEp4NZahWQif12hFWeyx6UFX3Ev3Vb4nMu/rjc=;
        b=uW6PNIJnaJ5CNUMuJgIFXmQ6y99X5XDAXz4hVPdiHmjYOpoZijKLEVhjltNmn7MnfC
         7GIVgCNvuIz2ydCCSrFCWqNURZ82ehQ71Z5BNbi7DMsWtcRFb+3GsTxOz6xAwCsnUNBK
         zN+u9fGGiTFktHwtJy9vcaQd6S7cfzFyxtBqomiKvalHwV8PVg6Hnr9fDOvWuzl+X0vj
         ClbkCiMgFvxvjMCCHqBa3BaUSsaMG9JJohou0Wbe9k2Hu6Y/YALKa+7piHdldT0lrZH6
         rpiiimwcW129yzPLTw8QPp1sRzTbzQYMbMERik/sUEE3d8xo8mhCD5ad+Q7YzdDaDhzt
         MQGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=blG5aUEp4NZahWQif12hFWeyx6UFX3Ev3Vb4nMu/rjc=;
        b=cPlfUne35UOXzuMHYGB3E3w0f5361kol3vBRHjfCvxIoLPZWFUdTHhFBQ4tkQcYRIB
         dc3IRdbfzxz6PItP1UJu9FvzxcWuRTwcew9AA5BehtbybRRsDCwFN6ywkTTe1YDfbijy
         JbtJraWtePF77O5YVwjkm1JFOw6vzVZfhTHdniy6l1VZKJe6D3ob8eiH0zNhRQ9sPTD2
         v/Ikj0lvBSS12v85XAynoOIC4RHpDpynq5cTThDn9TLJ1oDwVU15NvJoFPOWH7dtMjxC
         Pf2wwXnZy+I+yii/npP0M0wzfkIZMA82fgpVx+AiowNtsC6ZoLVt1vbN4gtDhTshhkq6
         u+wA==
X-Gm-Message-State: AOAM530r5oHOPSKxl9xJmbTmJmP4HdKtgKd4UasmDOyOBJDdw5hniCsO
        fnBgnnXGzSi21tBiDXxdaYdUcm0xiTA=
X-Google-Smtp-Source: ABdhPJza0uIoF50TITcCQA1s7ca9VKeIi1rvo9dBfZu1vQ+q/nSz2v1SatocGJRvmxPqeFcEGoiDDg==
X-Received: by 2002:a05:6000:5:: with SMTP id h5mr3004212wrx.153.1611043375545;
        Tue, 19 Jan 2021 00:02:55 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id z184sm3277852wmg.7.2021.01.19.00.02.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 00:02:54 -0800 (PST)
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Subject: Re: [patch] clone.2: tfix
To:     =?UTF-8?Q?Johannes_Wellh=c3=b6fer?= <johannes.wellhofer@gmail.com>,
        linux-man@vger.kernel.org
References: <CADCwPKhAHqn-R8wpp-7=skOB8O6mRqOvP46oTUUmA6QX0R=4bw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e832e844-143b-208f-3940-1eebb52daf19@gmail.com>
Date:   Tue, 19 Jan 2021 09:02:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CADCwPKhAHqn-R8wpp-7=skOB8O6mRqOvP46oTUUmA6QX0R=4bw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Johannes,

On 1/18/21 10:12 PM, Johannes Wellhöfer wrote:
> For the alternate signal stack to be cleared, CLONE_VM should and
> CLONE_VFORK should not be specified.
> 
> Signed-off-by: Johannes Wellhöfer <johannes.wellhofer@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man2/clone.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index fecec90c8..11eb6c622 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -1187,7 +1187,7 @@ processes do not affect the other, as with
>  If the
>  .BR CLONE_VM
>  flag is specified and the
> -.BR CLONE_VM
> +.BR CLONE_VFORK
>  flag is not specified,
>  then any alternate signal stack that was established by
>  .BR sigaltstack (2)
> --
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
