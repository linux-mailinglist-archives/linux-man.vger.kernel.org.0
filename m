Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A1AA4D851C
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 13:34:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234054AbiCNMfS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 08:35:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245379AbiCNMc5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 08:32:57 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A64F1AF09
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 05:28:18 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id r6so23254369wrr.2
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 05:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IkRXzjSCS1DGZA+YKdDBjgv+6A1HR2gsxgZRjUWfOSg=;
        b=ji5ufO5Sbr3ubcjLSW117I1NBD7W7SiYzEtwz6deP98OAHQ29yuGbovPY3qwOHIH52
         qvMmZcG5oq9lCXL0HTyyebF9MC2DckXceoCNJ9WFnL3F4TJJrfVTvQWz+QPeeG+EKh79
         dOO/5zPZIjn4fBQfdlWng6xzdt0Pl57U491WsNfTnsInUAiwm0T2u2uZ33soELXtfGJr
         5PbMgjBCH2wql9NRZdUSrnNeP1gvdcYQKRAX9TosBy6yhe26couJ/wOZcqRsRUcS0Ugd
         V/TZwO+tuuIts0hzcYdsqbGdwX11k4G7WC2lQppcUr8YIk7p4rfoN/WJCmIDhDn7zg3+
         VznA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IkRXzjSCS1DGZA+YKdDBjgv+6A1HR2gsxgZRjUWfOSg=;
        b=5XhPFiHf/FrVo2JxwWtMtmLDtnj7BsbXn3u+bANYEWIzE8oYMZo6kZ7T3uXhcjC97n
         hRDh0BJdT3ZrV14QovC6lho1xaWJM+6mMvM5epwFwgRXbS+Kmod/d6rkkM8iPHkWUwyd
         hZxpCTrDqC5apYSz8ZJa+sFIrXCaRagcSuNHZV2guX9IHCeS+yTVlYh774AkQSPjATa5
         h1ZH9npJcaCijAiXxTnQo7aokOge05WicpXZ5cmqApTH6Gz0ZxaYnxHeCYFflWzgS90Z
         xM0vfJrknAYmvOuXGEwoeT+SvVP84DCnn1EFPVL7Vt5Y5t23IyG2h+2YobFJgqIcHYHO
         fmKA==
X-Gm-Message-State: AOAM5310pNQX0BWFHUvwi6GsDSdl8VITKU5kCTtkMDRIqBVA+sRgiGyy
        3491bDK7vLMQgh1PRjXbAdk=
X-Google-Smtp-Source: ABdhPJxZUwXktYkaK/NKCSL62P/lUfSwfgOArs+4aHusKHjQCQhppbmh/I8hFg2FdJJ0wQd4A92KJQ==
X-Received: by 2002:adf:ba05:0:b0:1ef:f640:ea0e with SMTP id o5-20020adfba05000000b001eff640ea0emr16227383wrg.59.1647260896731;
        Mon, 14 Mar 2022 05:28:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n7-20020a05600c3b8700b00389a6241669sm19679187wms.33.2022.03.14.05.28.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 05:28:16 -0700 (PDT)
Message-ID: <82553a60-e387-53d2-db66-493bace8c9e2@gmail.com>
Date:   Mon, 14 Mar 2022 13:28:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH 2/2] userfaultfd.2: fix userfaultfd_demo output
Content-Language: en-US
To:     Nadav Amit <nadav.amit@gmail.com>, linux-man@vger.kernel.org
Cc:     "Michael Kerrisk )" <mtk.manpages@gmail.com>,
        Peter Xu <peterx@redhat.com>,
        David Hildenbrand <david@redhat.com>,
        Nadav Amit <namit@vmware.com>
References: <20220307184852.20351-1-namit@vmware.com>
 <20220307184852.20351-2-namit@vmware.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220307184852.20351-2-namit@vmware.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Nadav,

On 3/7/22 19:48, Nadav Amit wrote:
> From: Nadav Amit <namit@vmware.com>
> 
> A bug in the kernel caused in recent version a different output (masked
> offset). Update the output of the demo program accordingly.

Please add to the commit message some info about the bug,
especially some links to LKML discussions and the patch set that fixes it.

Thanks,

Alex

> 
> Signed-off-by: Nadav Amit <namit@vmware.com>
> ---
>  man2/userfaultfd.2 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index cee7c01d2..779ff8817 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -648,7 +648,7 @@ Address returned by mmap() = 0x7fd30106c000
>  
>  fault_handler_thread():
>      poll() returns: nready = 1; POLLIN = 1; POLLERR = 0
> -    UFFD_EVENT_PAGEFAULT event: flags = 0; address = 7fd30106c00f
> +    UFFD_EVENT_PAGEFAULT event: flags = 0; address = 7fd30106c000
>          (uffdio_copy.copy returned 4096)
>  Read address 0x7fd30106c00f in main(): A
>  Read address 0x7fd30106c40f in main(): A
> @@ -657,7 +657,7 @@ Read address 0x7fd30106cc0f in main(): A
>  
>  fault_handler_thread():
>      poll() returns: nready = 1; POLLIN = 1; POLLERR = 0
> -    UFFD_EVENT_PAGEFAULT event: flags = 0; address = 7fd30106d00f
> +    UFFD_EVENT_PAGEFAULT event: flags = 0; address = 7fd30106d000
>          (uffdio_copy.copy returned 4096)
>  Read address 0x7fd30106d00f in main(): B
>  Read address 0x7fd30106d40f in main(): B
> @@ -666,7 +666,7 @@ Read address 0x7fd30106dc0f in main(): B
>  
>  fault_handler_thread():
>      poll() returns: nready = 1; POLLIN = 1; POLLERR = 0
> -    UFFD_EVENT_PAGEFAULT event: flags = 0; address = 7fd30106e00f
> +    UFFD_EVENT_PAGEFAULT event: flags = 0; address = 7fd30106e000
>          (uffdio_copy.copy returned 4096)
>  Read address 0x7fd30106e00f in main(): C
>  Read address 0x7fd30106e40f in main(): C

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
