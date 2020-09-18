Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56363270839
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:28:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726250AbgIRV2H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:28:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRV2H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:28:07 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16346C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:28:07 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id q9so6566446wmj.2
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pz3LUbzkc5WKgczDyGXjENFKoEMt2a1dLLfilg5Rs30=;
        b=LQs0h2Uxi+X57MF5/D90l0+9/FjgDv2JPqtzYaAeW98ToF0E3OzJwovzwrRbEwIIzR
         m34NcHcSkozlf7/HGcGAQoke+CMFP+YWBuC5TqUBdjGO361FWL6xpQSjA7tSm048TJn2
         dQRWmbta0yukLR7Wpwlkk/3PWBpK3G6rwBcP6WCM+v5PGfImi+c8VqyDKIBsvkZexJSW
         +bZ6YAbGV36obnz8EtaDeAO3fnY4rYHM5M5Sg1F63gagBB6JpdmCPYO9mL1OCb6UV67H
         6SlsPdMWWQ9oQwwYx+RDbfDElAF29hs0jiFV8bH75S62O5jYguuRnkT1CNb22RyBaK7s
         Pz6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pz3LUbzkc5WKgczDyGXjENFKoEMt2a1dLLfilg5Rs30=;
        b=LkPHVKr4qJRSJtxF2OsMr0YrLsS7awmNzXBXxH5XAxItxJlvuT/zXTFQZm3zshQdD+
         iIcphz7g73TTvHera6irXA0qp81AsV9xLtbSRWApxDiP+TxXC4FkqcHdVVNbnYuU8cup
         5vxuGdsIjwWt+emf6aagwOKkTzK04ceVdKyZZZgK7CiRRE26x94D7x9EQ29DV1WsL44k
         XYh+eBiHynaP2UR3b/2Gp8GcKrI8gPaP8YfXfN2XOkT0klj3JA33FC8PbNdXi8JbBRYv
         JxunVNx8nmjBrwC3acAnatO+LxKzGOd9xiGbchRQ9sgaqAkWntY2OnCfIe/X4Cb+hMoy
         iacg==
X-Gm-Message-State: AOAM532o/VI0d/MJsDo+ruNnXUrVKcv2HgKn4tv+i48M/9jWeZxdEWD2
        632sTJOoO2Jy6mznY9WnyeY=
X-Google-Smtp-Source: ABdhPJzWH0WinYef9tP1itFNSfQZMyKtwzFv3KldHYB9fXGD1vcmjD20aj5kaMmPoYuwpn3eg5Zl+g==
X-Received: by 2002:a1c:bb06:: with SMTP id l6mr17829377wmf.175.1600464485774;
        Fri, 18 Sep 2020 14:28:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id s11sm6938858wrt.43.2020.09.18.14.28.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:28:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 7/9] aiocb.3: New link to new documented type in
 system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
 <20200918170442.94920-8-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f49ec407-6502-6cc5-0e42-f263e209540a@gmail.com>
Date:   Fri, 18 Sep 2020 23:28:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918170442.94920-8-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 7:04 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael


> ---
>  man3/aiocb.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/aiocb.3
> 
> diff --git a/man3/aiocb.3 b/man3/aiocb.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/aiocb.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
