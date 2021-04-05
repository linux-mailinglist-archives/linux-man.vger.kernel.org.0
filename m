Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6695C35413B
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 12:44:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232358AbhDEKn2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 06:43:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232035AbhDEKn1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 06:43:27 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA2D9C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 03:43:21 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id e14so16188907ejz.11
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 03:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FNDmBV5lfoNKbFHjf31ZqgIIQ6kC9yWVcT6/sqSwzOo=;
        b=fkEv2PlAgBb5GKlAq6MdhNC0yCwfqsHLm6Dz+TB4UhI4E6H6XMV2xrHZNxaZ4xufLS
         yDJOz35onJdI3wOycePZe22kKJF4wEy6OHR6JW3qGDaem1CbQgztCPx09xYhpqMveAiM
         sFfMRXhOeg79olXauvX5+SQqUY4cwuF8FU46vCOS135HZU9KudONiRJFSrl/Fbo92EKz
         IqZ/+Ib1WRqk4zAPSYfz+MzWXWPuMEd1hVgivi+opa2PYZHiubgxwkzl7yvsx+s27KkT
         tYT6+5gyyt/2mjOqZsOgkwonsV8g29n0L6ZFwV5e8F9t29aTKyHoc051itGE/wtVhuXi
         qpZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FNDmBV5lfoNKbFHjf31ZqgIIQ6kC9yWVcT6/sqSwzOo=;
        b=toPUlWUHnyWb0Eeu9xk1M6l+HTvfDXhE3OEdeCIJBnYCZvRQ13bMQvkdhlzRk2pRG7
         Fu2sOkZANyk2ZA4I9Opa0nrFUNJhloB0yxRZxPlr1QL5DqKQ/8FXqpYwBO1gRIKbnxMO
         AzWSi9RaTWWGSjCYxAM55B31RzS8nYlIHdkCP2q9/JFmnG3pEttYJNbIlOgbQsH3A78H
         LvZP4N2jb2z5a1xLLkS+n+UWV1wIqh7d8+DE74fX0P23zKxcaLA36RXSMyegYUL19TTt
         hnYmdNPLr884mPSG1QKwh5znYIb+FrULE/i82zHvyZIr3daNZSff96lPWtOqpsleTjUI
         kAFw==
X-Gm-Message-State: AOAM530aJcHYkcj9qZAPTSp4JBvFlDvNeZIsTL5v1lxDE+7LGE+JUW68
        Ye57llIsXE4h31HISbtfJx2PuRCZrwk=
X-Google-Smtp-Source: ABdhPJwoG8R2HWs7zI5EHgctysyLEBSBgRH+WoKzvlzuFcqdtd3++QZWtgF6OUyHJ21NkkVBr8jX8Q==
X-Received: by 2002:a17:906:9411:: with SMTP id q17mr9615948ejx.213.1617619400499;
        Mon, 05 Apr 2021 03:43:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id bf14sm1976835edb.67.2021.04.05.03.43.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:43:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 15/35] exit_group.2: Use 'noreturn' in prototypes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-16-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f691270b-a6a2-f9b9-0780-8848e8725f05@gmail.com>
Date:   Mon, 5 Apr 2021 12:43:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-16-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> This function never returns to its caller.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Patch applied.

Thanks,

Michael


> ---
>  man2/exit_group.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/exit_group.2 b/man2/exit_group.2
> index d26ec8c70..4fd314262 100644
> --- a/man2/exit_group.2
> +++ b/man2/exit_group.2
> @@ -29,7 +29,7 @@ exit_group \- exit all threads in a process
>  .nf
>  .B #include <linux/unistd.h>
>  .PP
> -.BI "void exit_group(int " status );
> +.BI "noreturn void exit_group(int " status );
>  .fi
>  .SH DESCRIPTION
>  This system call is equivalent to
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
