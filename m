Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1BBE27071A
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:31:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726245AbgIRUbd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:31:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726174AbgIRUbc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:31:32 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65D61C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:31:32 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z4so6835396wrr.4
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7RjWPZyja6u0ES8qoFB9bQjcOamOBGxOs2rv2ybwvJo=;
        b=YHH5lyIR4qAkN1C9zTKOlxOoAo7iSPia6vZgK5RHnbqm5d0nYrYyOQ8+E8I7L1xq4X
         RUY5DD0zQCQJUoCtwzDbrlB6y4ggFH5rva3pmmK3BJgzCo0a1dZkuCYlSg2qjb3ZvHQo
         0rS+Wx6OpqkjdqzP/RLWRjkEvYe1gnVrNq0MDMQMmAzn9rKBNbPhYIMAdFfhwAG2okGH
         d4aaSdDkRwQs1IeecLor0AYTDDREoC4PKoqq+HxbvFoHKAJMDbvTPscL782hdfdpz0d4
         zSqX9YBbeNEl+K90AOqVU+DYahrjOwXBIf6gJ1x6cQ/zIgi7MVDXJNOPftlBWidHiSXv
         /msg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7RjWPZyja6u0ES8qoFB9bQjcOamOBGxOs2rv2ybwvJo=;
        b=ix8x+AnPT8tzZNyQrMNk8fbkimaU52ushIKA2KLwpS+htmsRpRK7EsA2IIMEXk69Sx
         x6Ge31aZWm4gYMOjXjfYrq2LSbt3huY1zR7EQGmCPuvbYFTPck1MNyU2CjujKmC+ytUx
         JaRDGO/GZNLcao7O5ernQqmcpJFz739KJ2x4FczOZTgXvBiaQAPGibb8o6/vfSy8flzD
         1GVqBKL3bDx27kI7XOzjSEPwMX6Pn+8ykyxN5qMFkRC5SSytnXEcS546gzsvz6g/k8pu
         Ncti5hV+DkWWPxzwGlPVxQXKAxC/nklqKUSXDeWgRs0ll+W/Je3owD+o3Dm42t2oXiYg
         DQNg==
X-Gm-Message-State: AOAM532T4kF8WSuM4o1rXGyhIbtM5N1LaLjad2rhPgsHjncaPwPsK4zs
        n/HFudZYZga49qf7addet+I=
X-Google-Smtp-Source: ABdhPJx9kF7asWrsjjmxbECI9SqIMj8QHlwxnM1ZAgic8SiOHsiV68quUm+3CH5bMpjpGkHhHZHKIQ==
X-Received: by 2002:adf:f707:: with SMTP id r7mr40290667wrp.413.1600461091179;
        Fri, 18 Sep 2020 13:31:31 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id z11sm6955101wru.88.2020.09.18.13.31.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:31:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 3/4] regoff_t.3: New link to new documented type in
 system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918124554.46308-1-colomar.6.4.3@gmail.com>
 <20200918124554.46308-4-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1fc46cec-aae3-6b06-ee3c-5c2040b7a7c8@gmail.com>
Date:   Fri, 18 Sep 2020 22:31:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918124554.46308-4-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/18/20 2:45 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/regoff_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/regoff_t.3
> 
> diff --git a/man3/regoff_t.3 b/man3/regoff_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/regoff_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
