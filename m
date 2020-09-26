Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90ABE279C4E
	for <lists+linux-man@lfdr.de>; Sat, 26 Sep 2020 22:13:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726426AbgIZUNg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Sep 2020 16:13:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726311AbgIZUNg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Sep 2020 16:13:36 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF9B8C0613CE
        for <linux-man@vger.kernel.org>; Sat, 26 Sep 2020 13:13:34 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k18so2731228wmj.5
        for <linux-man@vger.kernel.org>; Sat, 26 Sep 2020 13:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=J3wyOluwM/8UXgc/B7wCJALijq/gvDdr2OvslJB1hjc=;
        b=REjb52ahWr8nKaTwHXszyEbwkiIV+SwupP67e1q5ba1sEEbyp7ivW3E8e1bxPTUE11
         DHInqYBFziABAzDmaDes32xuFMdNAAeOTI22NZkbrzehWx/N1kHKJmBCwGFcM5FZCUMP
         IfcN8Qz42kbcCd9lcMcyzrCtI2tx4Njvoh9wSL4xyTj9nyAYtRnCPLGU7aKumUGuSI3a
         xiELvATLy6QOrwX9GpGqmyicG2raI6pqyr4UPBv3F/63ptm5Cjcp1ixX0KH8y7+Qk4zx
         spVaI18ZI0yNnoW17VBuAKXZ6dHk2m3W05AroDV0A2yJFySym0upfFzaBXTfV0V21U6z
         p/qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=J3wyOluwM/8UXgc/B7wCJALijq/gvDdr2OvslJB1hjc=;
        b=Z9RLkAf4/wFkB5oIXZC6pN2w4pBzbRQMbKq68ulzSeV9m4T4EnXjbJfNr4DJPged5u
         J9QkojcMfm+JmR/eEx+kDc3ojxtAuWBjtWbdTJ7hVnDugY0fDr4PiyxvzclxcwQdON19
         OACCeOVyXako4q3ehdwgdt6QCHCQCHk1/gKRoRpUpO6dUcxA+tHgc3bXTzE9JRkryQd3
         Wx2hWJzgCiJGx5UW4OnSCzkrKBrpopXXf2RDVKLkW4Fy1VJ+NU4bLKDABLhoJs94izrD
         4eD7SgXkJ7wDBGIDNEwREJRGwlhcJpwxMRN2wVLWwo8rLH58aTbGa9uoIaIarFk141Lw
         q7EA==
X-Gm-Message-State: AOAM5334JxiS5+v1ayrC1hHt4Gu2ry3tIWc7ymg29rHHRzx0uDybtIka
        zticSgltHyr6QiDNTOzQB3Q=
X-Google-Smtp-Source: ABdhPJxpyctzj5NhsuO0E3b0QtBH6SfHITObhy3rDoO6mqvuvbK4/WkZMgJeZ2atfVWVZoUeG10/1A==
X-Received: by 2002:a1c:6a11:: with SMTP id f17mr3653466wmc.143.1601151213296;
        Sat, 26 Sep 2020 13:13:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id y6sm7670067wrn.41.2020.09.26.13.13.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Sep 2020 13:13:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/2] va_list.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200926170814.2121307-1-colomar.6.4.3@gmail.com>
 <20200926170814.2121307-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0c99c740-43e5-9f53-3a4c-48220f29bfb6@gmail.com>
Date:   Sat, 26 Sep 2020 22:13:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200926170814.2121307-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/26/20 7:08 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael


> ---
>  man3/va_list.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/va_list.3
> 
> diff --git a/man3/va_list.3 b/man3/va_list.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/va_list.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
