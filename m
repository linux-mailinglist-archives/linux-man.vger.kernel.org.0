Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E917267E0C
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 07:51:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725883AbgIMFvn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 01:51:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725806AbgIMFvk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 01:51:40 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FA79C061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:51:39 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id a9so8204926wmm.2
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zGXBroznAPS1im5pONSGCEYd6zO7icIXfCjwiGp0Ouo=;
        b=t6UlhYr/zc4zbQWKHQS9VIUT9o5dAUX2vmexJW1NW2tmfCS1z53SHl4a4kwVyytEo3
         wOnOnvuj1NB3myVHD4eTlefubFgYZCmNxOtYdojvJlDltL2G54IbNkrJp/RBkAljIvwT
         aqds4z4WTm4Axkf10+aU2p7EW3OIOkcGQQGeCL9N61U+p3v+NJuY6tD2P4oB8MmXzMdA
         jNesKmt+v4dztLZ7JwJQfw3wljF8ULBDf9H3u/8yj2U0lN5NkNoeW3F/I+wE/YGXa0mL
         cwbMCzmIWwhYe0OKI3LJlWmJBbF1YMs7EPreT3udq4WgyTdtKaezjpOZ8zb36/8TxnZK
         aIXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zGXBroznAPS1im5pONSGCEYd6zO7icIXfCjwiGp0Ouo=;
        b=eRFTf2b5ANWYGtVWN7XLz6efpgApaf7XeC+C+4H7oKuOwvIEQd1sEFHtdKmPhA89A6
         rIpUV5FYf1M0oeT6cT6GH0orns5bG94I/9JeWu2+vkrTpMkcq6fsnV/ahHBB/SYCIy6N
         zmg6Z2uqVXZa42NvLIy5cBGr++BeYSfAGY2AIsj7Xvt4hElT0osXetcjndDRYH2YpXOy
         gLKLEztiOazzYr5/TKN2LwtDz0rM1FQYcWAIPKnFRYYXWHRsDnmTGxpqk8Av954i+F0B
         WlTj0VybECWVvRV5i0Imh3aqeAFKNXNKUZEfF9HvCCRb+ayfDS/fbzH2E7bnHjTEbI77
         BRMA==
X-Gm-Message-State: AOAM533adpTVmx33aTCWLWAs87zdg//alahcH95XOzJ7KwVeBcDvjbEr
        kOK5ixPDtG0floaw3+Fxo1rM+nHck5Q=
X-Google-Smtp-Source: ABdhPJw11GqtYgKljuq1BI/PpwJqpk7F3kcq0n5TdpNBFIav3bmAxsfSiD9Ra0v7xP/IOR2tCp4XPA==
X-Received: by 2002:a1c:dd45:: with SMTP id u66mr9643076wmg.117.1599976297795;
        Sat, 12 Sep 2020 22:51:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id z14sm13432714wrh.14.2020.09.12.22.51.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 22:51:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 07/12] userfaultfd.2: Use 'PRIx64' rather than "%llx" when
 printing 64-bit fixed-width types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-8-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <608e820d-84ac-b143-cad0-1bcfc5aac227@gmail.com>
Date:   Sun, 13 Sep 2020 07:51:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911231411.28406-8-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/12/20 1:14 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael



> ---
>  man2/userfaultfd.2 | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index 126d4a854..c7e42804a 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -566,6 +566,7 @@ Read address 0x7fd30106ec0f in main(): C
>     Licensed under the GNU General Public License version 2 or later.
>  */
>  #define _GNU_SOURCE
> +#include <inttypes.h>
>  #include <sys/types.h>
>  #include <stdio.h>
>  #include <linux/userfaultfd.h>
> @@ -650,8 +651,8 @@ fault_handler_thread(void *arg)
>          /* Display info about the page\-fault event */
>  
>          printf("    UFFD_EVENT_PAGEFAULT event: ");
> -        printf("flags = %llx; ", msg.arg.pagefault.flags);
> -        printf("address = %llx\en", msg.arg.pagefault.address);
> +        printf("flags = %"PRIx64"; ", msg.arg.pagefault.flags);
> +        printf("address = %"PRIx64"\en", msg.arg.pagefault.address);
>  
>          /* Copy the page pointed to by \(aqpage\(aq into the faulting
>             region. Vary the contents that are copied in, so that it
> @@ -673,7 +674,7 @@ fault_handler_thread(void *arg)
>          if (ioctl(uffd, UFFDIO_COPY, &uffdio_copy) == \-1)
>              errExit("ioctl\-UFFDIO_COPY");
>  
> -        printf("        (uffdio_copy.copy returned %lld)\en",
> +        printf("        (uffdio_copy.copy returned %"PRId64")\en",
>                  uffdio_copy.copy);
>      }
>  }
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
