Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0193E25EDE5
	for <lists+linux-man@lfdr.de>; Sun,  6 Sep 2020 15:03:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728767AbgIFNCr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Sep 2020 09:02:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725803AbgIFNCJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Sep 2020 09:02:09 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47D6AC061573
        for <linux-man@vger.kernel.org>; Sun,  6 Sep 2020 06:02:09 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id l9so10743629wme.3
        for <linux-man@vger.kernel.org>; Sun, 06 Sep 2020 06:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Y32daNCtQ9G2TMD1bYIIyIknWt8pYO/XO5Th95jycGY=;
        b=YbtDN/kCWhHqf/jdAbOuFsFa375g1ltCcmGkgEp4PfzsCQaJ7VMpkKAgRZJxjpe4AM
         Ayvkoq61TM7XfET6Nw5/KFCFZqE70UV3rWw6MdwmbGUR9edlrpd5b8ycwpis0LFYtGA2
         BCzzOw7d+pj8FTiAslgByl+XXRGgqjBAcKktZBXl2d+fG1zDZUT/kgPNAGxNSwErvDc1
         bttC0nzur/Fen+gdeaaDjcjLKwzYNxOHqlcVsO/V4MsOiebMdbE1dAAJ5EEhYk7QKYH8
         F71GTIjs2q0S55WCOiLHdik8yx1PmEx4Dob9DiCg5+G+rFG+6hICXYc2Mazs00siCG7V
         Ceuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Y32daNCtQ9G2TMD1bYIIyIknWt8pYO/XO5Th95jycGY=;
        b=tsRIBWUNybAu/jIClm4Ej53LhTdiKviUPqMCxGtSbIshTtyac5ievyFHfxHws7DWGD
         vZohFX8m1CMkYOa3/6ZET08jJNBC/CMStNaEgYD/mms7TrCVRSqnvSpCjhVbEN91g8WU
         I9Z19JUb037clpYbdZJ8vSqy1WIkFJ0q3d/Rk/bYfy9g27kiPeS9ywrn6bYl8iJqA5gl
         8gchApK8YfaSXWz/4S9LMVFIozvYm1AciHL5CLBKxL9c/UrH1VK61zsRCsZZv2b5ybqF
         c25FD3SelyvtnjsO3DL5QOpinfyhF9Z6/CAvnBdQ/yLnuk1ivGMriIQhVIxMKIVAEE9R
         PSIA==
X-Gm-Message-State: AOAM530WoGTj+fggbnu7f6ngJrRF7P9x49259DFTN3zugVy50PJ3U9hd
        Q0S2LyKge4UI6lTaj8f6AcnVU5s/dvY=
X-Google-Smtp-Source: ABdhPJyDjwYuh/pzKzRNQj2aUWY0ieEFv2af2RL1237Mw8KWdmVS7GSn+m/W8ihburUOHZwCHrsnLA==
X-Received: by 2002:a1c:3bd7:: with SMTP id i206mr16415156wma.162.1599397325519;
        Sun, 06 Sep 2020 06:02:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id u17sm21468818wmm.4.2020.09.06.06.02.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2020 06:02:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 5/7] dlopen.3: Remove unneeded cast
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
 <20200905151501.609036-6-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e2a7096a-5678-245f-f5c2-0fa37d10ecbf@gmail.com>
Date:   Sun, 6 Sep 2020 15:02:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200905151501.609036-6-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/5/20 5:14 PM, Alejandro Colomar wrote:
> Casting `void *` to `double (*cosine)(double)` is already done
> implicitly.
> I had doubts about this one, but `gcc -Wall -Wextra` didn't complain
> about it.
> Explicitly casting can silence warnings when mistakes are made, so it's
> better to remove those casts when possible.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/dlopen.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/dlopen.3 b/man3/dlopen.3
> index 8e18f70c0..2de358ea3 100644
> --- a/man3/dlopen.3
> +++ b/man3/dlopen.3
> @@ -581,7 +581,7 @@ main(void)
>  
>      dlerror();    /* Clear any existing error */
>  
> -    cosine = (double (*)(double)) dlsym(handle, "cos");
> +    cosine = dlsym(handle, "cos");
>  
>      /* According to the ISO C standard, casting between function
>         pointers and 'void *', as done above, produces undefined results.

This cast really is needed. See the comment just below, and also try
compiling the code with your patch applied:

cc -pedantic -Wall prog.c
d.c: In function ‘main’:
d.c:21:19: warning: ISO C forbids assignment between function pointer and ‘void *’ [-Wpedantic]
   21 |            cosine = dlsym(handle, "cos");
      |                   ^

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
