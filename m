Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2882B4D8519
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 13:34:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231726AbiCNMfO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 08:35:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243279AbiCNMaq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 08:30:46 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DC6B36B58
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 05:23:31 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id r65so9208748wma.2
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 05:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7WaU4tXboSkPO7rIMfSWgMBHAqUEV8vjo8g/v+C+SNU=;
        b=XIPazf6VsjgFUx2Cz5+unKXXJX5gfSHaSCvXg9GMGPcFFnZo5/st0pWq2Cg+cpy5t9
         EnsNrpt1beA1Q8GNuSlS7kpkYlcDZrZpIBKWvzVfOSL5g9ipp0PHJ7/wflbugFE7odOu
         5GjmqgQON954SbXF5Dn4McKL9ebYT+Fnt3GEH8HjlIO98sCb5wqsqIL+HysNUeabd1f+
         knZuaG/u/gx7IDS1B2ZvaHmD1MR8jjiEdBo2t0RLJiD0o0q7WhXG0jzKO8/MMH3UxRwU
         lpNZ/HWB5zOtFFI9GTJJVFEfpoHs/DU+1ApYE+wXOuRaw6oDqYmkeh7L6HdguZkWji/I
         uRQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7WaU4tXboSkPO7rIMfSWgMBHAqUEV8vjo8g/v+C+SNU=;
        b=jFOyPErP4XPfbeRPKzf9PPX9BfPMIn4EnATxjEla1l8ktQAXJvQNScteXbg2gBPbdQ
         LheA0/g5k7Sgl/SbAmXuY+Mfb53dfB4z3OrcloHYr+TZ9oFpOiNDWa/BNocfFvTSUII3
         bwBifO2/Ecfb1+Kh573vAPS6LuC0auPJ0Sftyodspfuoe6aubt7F11uIk7BCGHvwIRnF
         5erEyesjbquz+bn+J8iv9RIzhlD33RY2HU31X7ifuT5ALAMBvjOq+jMCkNvmajOPLeuV
         bpzymJ7NVj8nqFQ9QEl8qu+Td67xRKna67KDQUPEJs3MnVLQN4zIAekIrljDtMO69Iwy
         DxRQ==
X-Gm-Message-State: AOAM533N5CgO1swHeNwEkcyxTL4LgMyedUtLi/KL6ANv6JB9629j41r4
        BTiVROZc2yPH0yXGZJBBu/M=
X-Google-Smtp-Source: ABdhPJxWMhskJ9pFO/hqs0W17qSnHiIaFdwrYK0Tg/W6YBLlpdmr5N3qQt0P7w/uUa3K4Sek2JCAcg==
X-Received: by 2002:a05:600c:54e:b0:389:a1a6:8ad1 with SMTP id k14-20020a05600c054e00b00389a1a68ad1mr25320590wmc.47.1647260602163;
        Mon, 14 Mar 2022 05:23:22 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x2-20020adff0c2000000b001f1fa284a32sm13301309wro.115.2022.03.14.05.23.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 05:23:21 -0700 (PDT)
Message-ID: <5281de2a-08c2-e159-0e15-cf4225f4466b@gmail.com>
Date:   Mon, 14 Mar 2022 13:23:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_EXACT_ADDRESS
Content-Language: en-US
To:     Nadav Amit <nadav.amit@gmail.com>, linux-man@vger.kernel.org
Cc:     "Michael Kerrisk )" <mtk.manpages@gmail.com>,
        Peter Xu <peterx@redhat.com>,
        David Hildenbrand <david@redhat.com>,
        Nadav Amit <namit@vmware.com>
References: <20220307184852.20351-1-namit@vmware.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220307184852.20351-1-namit@vmware.com>
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
> Describe the new UFFD_FEATURE_EXACT_ADDRESS API feature.
> 
> Signed-off-by: Nadav Amit <namit@vmware.com>
> ---

LGTM.  Please ping when it's added to Linus's tree,
and add a comment with the commit message that added it.

Thanks,

Alex

>  man2/ioctl_userfaultfd.2 | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index 504f61d4b..94480158e 100644
> --- a/man2/ioctl_userfaultfd.2
> +++ b/man2/ioctl_userfaultfd.2
> @@ -214,6 +214,14 @@ memory accesses to the regions registered with userfaultfd.
>  If this feature bit is set,
>  .I uffd_msg.pagefault.feat.ptid
>  will be set to the faulted thread ID for each page-fault message.
> +.TP
> +.BR UFFD_FEATURE_EXACT_ADDRESS " (since Linux 5.18)"
> +If this feature bit is set,
> +.I uffd_msg.pagefault.address
> +will be set to the exact page-fault address that was reported by the hardware,
> +and will not mask the offset within the page.
> +Note that old Linux versions might indicate the exact address as well,
> +even though the feature bit is not set.
>  .PP
>  The returned
>  .I ioctls

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
