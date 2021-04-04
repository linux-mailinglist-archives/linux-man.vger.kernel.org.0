Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A770E3539AB
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 22:11:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231445AbhDDULH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 16:11:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230169AbhDDULG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 16:11:06 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81A6BC061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 13:10:46 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a7so14316485ejs.3
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 13:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BQ9yXH8OUVC6XLrgqlrNhqfaLH7orNTNgk5fN0+xZ1I=;
        b=lRuA88AXeIO+IjHGkgBilO2epHS0YOMoi+nilSdkZSSvl7MYMQHbouGmf571SPMV5G
         puORqWAa1kVWG1J0M8aJxVcBEXahsD/mslYbburNZPd6uM4kwJ1+U7uyr+OEBGAjOAaK
         NvPYTpIzPDe2QJpTfqViNg7z90v68noiJhZzRerukyJns0762XqHp15u96SW2Xseahkh
         qrYJtl03Uh4xInf9HjeJrV4QtEjtCdxM5NbEVZEIwxkjLQn5YDSyyNRvZPsNx6hKBh5S
         JhtCMLbtRT5kkqwTlGPvTjrz1UbAola0jYO0Mq8btkIYmEXwXvPbkL/haenYpMIn+fiA
         NORg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BQ9yXH8OUVC6XLrgqlrNhqfaLH7orNTNgk5fN0+xZ1I=;
        b=ZWtV8eukh0006mQFwM1q0V3qA7pz17RWAd42XlCkUcld0HhPuxTgG5G98GVoZ1T+aJ
         FS7tpVvwd6TEIa7LzLDzkykQkL7q0MzabIBi3zekAyLWrg+dRmVKM0u5eRouH5HsjRdT
         D3Hfq4CPWbaZMXiDoKW3FZO9NReaHq6hIc9xyEFoHtsSY7zi5K/ooRCY0DeN69qidV3l
         A9DW0e45yqrmU+WkrXPc8xBz9TXcfu9emoRmge/grXb6E+bJPcOhpWCwfmcqFxpdAPtd
         MBDdPM6YltmBOW9/WHTxXwHDt5YFxOq5a/JbM4h4q/dARTbfbxGXCDuRKV4sYePDdXhb
         qwlA==
X-Gm-Message-State: AOAM532Jn1CgZxAZiVu61/dLST8i+Mjc8ee7EFMhU0xXAVDVY6i9WeGs
        R/C6p0oqkl+/q7+BN3ttqzjBp0acOLg=
X-Google-Smtp-Source: ABdhPJyEBjJ3QL8rIudVZq8yZlBt0YYKa3G95J7/3KAVjtRLORRaTMJx+IxSOBoyU8v4M0D8SXQjXA==
X-Received: by 2002:a17:907:935:: with SMTP id au21mr12740876ejc.362.1617567044976;
        Sun, 04 Apr 2021 13:10:44 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id l18sm7121434ejk.86.2021.04.04.13.10.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 13:10:44 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Josh Triplett <josh@joshtriplett.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] exec.3: Clarify that execvpe uses PATH from the caller,
 not envp
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210319235717.28264-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9ce28649-1f84-928a-d83e-c7515c375596@gmail.com>
Date:   Sun, 4 Apr 2021 22:10:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210319235717.28264-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 3/20/21 12:57 AM, Alejandro Colomar wrote:
> From: Josh Triplett <josh@joshtriplett.org>
> 
> Checked via the latest glibc source. execvpe calls getenv("PATH") and
> searches that; the PATH in envp does not affect the search.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Josh Triplett <josh@joshtriplett.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/exec.3 | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/man3/exec.3 b/man3/exec.3
> index 3d936d08d..9c5b02b5c 100644
> --- a/man3/exec.3
> +++ b/man3/exec.3
> @@ -146,6 +146,13 @@ a list that includes the directories returned by
>  and possibly also the current working directory;
>  see NOTES for further details.
>  .PP
> +.BR execvpe ()
> +searches for the program using the value of
> +.B PATH
> +from the caller's environment, not from the
> +.I envp
> +argument.
> +.PP
>  If the specified filename includes a slash character, then
>  .B PATH
>  is ignored, and the file at the specified pathname is executed.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
