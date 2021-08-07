Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E19283E371B
	for <lists+linux-man@lfdr.de>; Sat,  7 Aug 2021 23:34:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229743AbhHGVen (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 17:34:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbhHGVen (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 17:34:43 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1DDFC0613CF
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 14:34:25 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id j18-20020a17090aeb12b029017737e6c349so15602946pjz.0
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 14:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=U8lrmEVLeQN5vryMk24f4vFD3jiD4GzH7ikg2IGNcWg=;
        b=tUJqzGoU2ErCsZbOFb65zCpQjmtD3+FtyoBj4UGgbiOo2A+1EUMnWGmkEBLwy8zs9Z
         zUe/msxi33C78pLstQDi044FbWLaUwtbq8GcOpOy9+/KCDpvgwdSs6Yz5hAw7NoYITie
         H+Ooz9XWHMBJXhkqfq+3rQsuXJtjzvxd5NN1r9mOGrAY3rSRP+ZTJYmB5YsVLPrDF09O
         9KbMe2eNiYDbqcDjYMhhF9iZrzwUrvu00F/L7TVVu/PCHHRtx8FRPhaebb4tSYR35cV6
         O4o0pZTJxpia0ggj3cd702r/O8RIIoGexArYMhavXv232Cdc4vmKlWNBN2flkHE0ltWT
         xqJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=U8lrmEVLeQN5vryMk24f4vFD3jiD4GzH7ikg2IGNcWg=;
        b=Sqnzw1mjGegfAU/9hXiT16IfHTtbYXmbE+uyS7l/WFh6m/hQAFrOEHvFOlkGwKRnBV
         fojFzecKXamumd+Dwgcup/3aibZwVhvW8rRNq1CAX6swjX2LvrN4IkjC3nI7SWM2/wzf
         k6Xa1GdZeNujuEmOWm3Qr8QGsv3hGziF3ukkLc9TLj1PRoyKgsGZuSg5IV9RaxrQ5ItZ
         v44xd9IfGhwDtyQ2CcC0OWx9FuxJ52Qdgr+7b1nFwrODyW052bJcuaAl2oV2Mqhr8p6d
         ax66ZlWIK1RML9/j5ikhBKfEKFF4fe2tWM6avS0EOPZef3wxy7UUrIh3ieB1sMgcueQ1
         bFzw==
X-Gm-Message-State: AOAM530Dac3pDKeZJZXhPKwNkUuwR2TT75fxZAXTTt8Ek1QPsImFXmrE
        j1shyNcj9HfhUlj1p00ZgJA=
X-Google-Smtp-Source: ABdhPJwsp5qkKUL5BRhZQfv0DKKFWXx4Bongy8C9FIGQNOKGaY3MAbhm9bM2hhZ8OvMise+Jm27qGA==
X-Received: by 2002:a17:90a:474e:: with SMTP id y14mr17307492pjg.33.1628372065344;
        Sat, 07 Aug 2021 14:34:25 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id l126sm17132026pgl.14.2021.08.07.14.34.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 14:34:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Sergey Petrakov <kr@spmail.info>
Subject: Re: [PATCH 07/32] printf.3: wfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-8-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <78b9440a-1e5b-3f2f-65f7-e222dfa1e477@gmail.com>
Date:   Sat, 7 Aug 2021 23:34:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-8-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex and Sergey,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> Reported-by: Sergey Petrakov <kr@spmail.info>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/printf.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/printf.3 b/man3/printf.3
> index fcc3bd6f3..1074626e1 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -115,7 +115,7 @@ is the same as
>  except that it outputs to a file descriptor,
>  .IR fd ,
>  instead of to a
> -.I stdio
> +.I FILE
>  stream.
>  .PP
>  The functions

Why this change? What is wrong with the existing text?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
