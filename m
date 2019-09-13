Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 828FFB1DE4
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 14:55:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387443AbfIMMzK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 08:55:10 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:36726 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726771AbfIMMzK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 08:55:10 -0400
Received: by mail-wr1-f65.google.com with SMTP id y19so31994560wrd.3
        for <linux-man@vger.kernel.org>; Fri, 13 Sep 2019 05:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Xh9qvKkaHbrbSRaUE8wvMdjOeOcRk60L7JlLBZQx9jc=;
        b=EFAENpnHE0IE6f1mk0QYRx4APl+bC8yA5ekmuCm1JrrvILlwmK1eAQaX5yFvFHlUd8
         YigdOWHGexF6CGEn2iez+dUp3shz30CUq+395Wu8Vl3Z1Ehv3EgGMXCOrqFpkBeOEhnY
         fAhAGQCobHORIuk74t4C2VuYxXEYqSWnnJQK3FnFiO7iV+yfXwv3Qc0E1OBa3up2vVHb
         HseIAFeYC4lq3bJrtmdcolSu1ZD7YOYGf3O6o6Hp5Qzkatv5xatTX9lLMvg2pGhTH5aq
         sddcS/KL1YnbKzHpy4d18EEfuBeoEgoCodStW5wvPDwIXFOfsKiIqUMNq3B/sFtc5/js
         bAnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Xh9qvKkaHbrbSRaUE8wvMdjOeOcRk60L7JlLBZQx9jc=;
        b=ZoyYt2vf8EDY2xDxCdMSvGqWDkboNn4zHMRGCVzWsdULOfsk3vUuBdRQpHcIa7CLcp
         MTujVtWV+ctf5vZ4BKDgapiQn26RMzwBjB5CsEHMpibr3Zxl4qB/QpUpzGgdb9kEb5Yd
         IoCTytdRrer06uawNCt6GpIYVGiaRAVxWXtiup3vGs1VZ6XayIZw/1g76ppBfQeEgVow
         F8etv6PopeOtDdQZW3O/a7WS+X/+OeYdd6ns6kvNYMJpY+qB3pNYiCC5Ge0JJ73V3vQY
         UKv88U0nC+b3t6VrzbkEeoDYZPOuk/JjGuTQLY153cuOzfuiNOzZcMeS08WQXhxpMR3E
         1h7g==
X-Gm-Message-State: APjAAAWcaGVO8nDPWvB+OjKQyZJZhIkTWAWhQPgX0ih4QGMPTyPbecXA
        QY9qvIwhyhm6wwtWy3WvR+50uuyl
X-Google-Smtp-Source: APXvYqwahYMHm0z4OSmEdEpYAEYulsEt7efE+tQSR+/1MWOjM0llUWwnYsCg7AuD3QtsfDSwg4aj5Q==
X-Received: by 2002:a5d:4b4e:: with SMTP id w14mr11233189wrs.191.1568379308117;
        Fri, 13 Sep 2019 05:55:08 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id f24sm1846067wmb.16.2019.09.13.05.55.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 05:55:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] vmsplice.2: SPLICE_F_GIFT became no-op
To:     Leonardo Bras <leonardo@linux.ibm.com>,
        Jens Axboe <axboe@kernel.dk>
References: <20190801222417.14413-1-leonardo@linux.ibm.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b65e1f8f-34b4-0db6-bd7a-7b866b29af7a@gmail.com>
Date:   Fri, 13 Sep 2019 14:55:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190801222417.14413-1-leonardo@linux.ibm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jens,

Would you be willing to take a look at this man-pages bug report
relating to vmsplice()?

Thanks,

Michael

On 8/2/19 12:24 AM, Leonardo Bras wrote:
> As explained in splice.2, SPLICE_F_MOVE became a no-op, and since it
> is needed to use page gifting, it made SPLICE_F_GIFT a no-op too.
> 
> I took a look in current code, and found no use of this flag:
> When enabled, it sets PIPE_BUF_FLAG_GIFT,which is only checked in
> user_page_pipe_buf_steal, which is only used on
> user_page_pipe_buf_ops, as a .steal component.
> 
> But, in the whole kernel code, there is no calling of a steal()
> function, making me believe this flag is not used anymore.
> 
> Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
> ---
>  man2/vmsplice.2 | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
> index 17834607b..94fb86142 100644
> --- a/man2/vmsplice.2
> +++ b/man2/vmsplice.2
> @@ -123,6 +123,11 @@ if this flag is not specified, then a subsequent
>  .B SPLICE_F_MOVE
>  must copy the pages.
>  Data must also be properly page aligned, both in memory and length.
> +Starting in Linux 2.6.21, it is a no-op, because the
> +.B SPLICE_F_MOVE
> +also became a no-op on
> +.BR splice (2)
> +.
>  .\" FIXME
>  .\" It looks like the page-alignment requirement went away with
>  .\" commit bd1a68b59c8e3bce45fb76632c64e1e063c3962d
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
