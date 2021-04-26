Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5194036B8E2
	for <lists+linux-man@lfdr.de>; Mon, 26 Apr 2021 20:27:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234230AbhDZS1v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Apr 2021 14:27:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233842AbhDZS1u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Apr 2021 14:27:50 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54749C061574
        for <linux-man@vger.kernel.org>; Mon, 26 Apr 2021 11:27:08 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 26-20020a05600c22dab029013efd7879b8so3790353wmg.0
        for <linux-man@vger.kernel.org>; Mon, 26 Apr 2021 11:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uals1PlYqm+6R8Zkr4V02D4HppyoqdTrOrCLJmbEMJQ=;
        b=nzZzSqnNonzz3ym9XsSVWeAg9zAcpIh4UaX0u8BnDKQs5otBfZEX9vfm28fZVd3CK7
         4yxFi+4zHcxwTE5nSJYAqZEKIyA2UQjwhIkvVpm/O0Nr/ZCt77dr44z45Lpfi8BspKdy
         dHrxxCzUQgf7HmOcB4BlIbncTFSTrJ2mmiTZaJxWWkObBl9Kp86u5W6o7AnD8gILWh/T
         ZDeExebctAUxKL+OeWfI1ANybWPBcCcIeUf+UnUpGBfsNdgE055zRKOSGhw0jGFjSqNJ
         Y+gjd8RukZPJjw1l0jOjtgqtwM+ifLaoZDXkD02JXf8Gqxpgrujzx3+PaeIGH+Li7wY5
         Eiwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uals1PlYqm+6R8Zkr4V02D4HppyoqdTrOrCLJmbEMJQ=;
        b=eymuOqWBNK7BoV/DflDwkEd0eg0/3LGI9JqwgDUNDBnQl88ea7JesL+zUWe9kq6uwT
         AP0E4p0tL/41znyMZSefKddv9mFKQM+nWenJqybW2HDZOHs9hILgIWF0701naPzxF47y
         1qeurDlB5aiCgnhmWyqLXnKxrzDMZ4S29B8SuFSYpUOvDZ7LN66J633a9qanMUr7zoBk
         KsgJ/Q0k21MHeLx3svJPYrMdtt4HyZzsAUPgQoklfrbFXszfTKktgmUWJCJtq2rMgqsc
         bY+ZIdZyHQ/2iXMkhDP2ikp2GCGVNZ8WevnWSPSpDBeSQpY/OWqxFz8JQq8xlWsqyTRi
         j9Lw==
X-Gm-Message-State: AOAM533uUBSSCUOrQ+qpc2N2M7Z+9Ejdg9hVfYzKK395DBE+djRaRFAw
        Ig74VyW8eMDpt+MKJ/Hzr5aBJGQnIUo=
X-Google-Smtp-Source: ABdhPJx1OwDEYl7SvYHEF0AIaEIXei62Nk1x8ANpjPg2O7uGdcSbXYFsPsWEnDsrRuDEA+N/HS2Y8g==
X-Received: by 2002:a1c:3b44:: with SMTP id i65mr354516wma.31.1619461627133;
        Mon, 26 Apr 2021 11:27:07 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id w22sm296135wmc.13.2021.04.26.11.27.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 11:27:06 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH] move_pages.2: ffix
To:     "Dmitry V. Levin" <ldv@altlinux.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210424200000.GA14829@altlinux.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <62656709-1edb-f2c5-f3aa-7780cbfae1b7@gmail.com>
Date:   Mon, 26 Apr 2021 20:27:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210424200000.GA14829@altlinux.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dmitry,

On 4/24/21 10:00 PM, Dmitry V. Levin wrote:
> Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>

Patch applied.

Thanks,

Alex

> ---
>   man2/move_pages.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/move_pages.2 b/man2/move_pages.2
> index 279de7568..69c182f95 100644
> --- a/man2/move_pages.2
> +++ b/man2/move_pages.2
> @@ -24,7 +24,7 @@ move_pages \- move individual pages of a process to another node
>   .nf
>   .B #include <numaif.h>
>   .PP
> -.BI "long move_pages(int " pid ", unsigned long count, void **" pages ,
> +.BI "long move_pages(int " pid ", unsigned long " count ", void **" pages ,
>   .BI "                const int *" nodes ", int *" status ", int " flags );
>   .fi
>   .PP
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
