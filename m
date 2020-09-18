Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D3752706C9
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:17:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726321AbgIRURY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:17:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726139AbgIRURA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:17:00 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71D26C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:17:00 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z4so6805767wrr.4
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5HDHDl1NRuozEbNWekau30KmhOHOnej+n6/ScrwXvW8=;
        b=C2SF9M6rU+EzViwU3GsCDXnPMxOc6r/rf5uPeK9AAJMKEZJQzXnCu1/QYAkS7/FvwL
         Kny6LBy8a4wTK5CkEcAb24JJjl93CoX0jIfHzDMwEghVM8O8o0Yx20kNF1C65C8sGDhq
         GIgc33Ly5QDd1rIO2elwCzmDCjTfMja2cSQ7PCnFsy78rJWYs2YusaXe59KmR7qduUJy
         f/SXpHzVl7SZevp8weMHll8/hck2Zm9kNaJuHxF/JISZCfeR7vecxxartn+Vb503Vmx2
         l9rwhNHTJqOkBBLlgPUDUhq9YDzuqpYVsxgPiDzo4IwJPJrn2dNm7E/Gz4bpRf2VpW8S
         FEOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5HDHDl1NRuozEbNWekau30KmhOHOnej+n6/ScrwXvW8=;
        b=EAV07gLt3yNWhzt0X4AV7Rfy5Fw2r/C1bqkvnnlbfgV39dQpsolTQ8LvPkqVrBaEDI
         IMksxgJVUPQeeSrffA6qG9PGJOc7Oa3u5zPLbhgcCQ8hOoQ8lEr610JgxEyybM6fil2l
         osbxBy1eOVpeQ0YEY1+L4K2pS4NOvzMsXRbfvFHEGm0JU075iJPd4Z0hSXSMMiok8L/1
         EhDe0wDp1poUZxTZo1m5PAvc2y2rIozHkgxCqpYhfc11JgJT4KgMJA1eT6tsj/Nq732M
         xyaVqoeStgWKswq3m8zblNuEDV7tOWh7PFxMtLQnyj+yv+0iHgLZdaxOW+sQlf+ipfux
         3WXg==
X-Gm-Message-State: AOAM532KDol63X4wNFNna0OPsrsjfjKreSrSZiOU99wg9hP55QHAD3nJ
        Apyh0vrIinG6YdhSBEycHpQ=
X-Google-Smtp-Source: ABdhPJysgjAMJfmtmLgGMcZt6xLXULmf+hHSXsxxobK1AQugTJtbXBqx+3125sbOsXo+8bY/sz2v5A==
X-Received: by 2002:a5d:4c52:: with SMTP id n18mr38679120wrt.267.1600460219126;
        Fri, 18 Sep 2020 13:16:59 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id o4sm6861963wrv.86.2020.09.18.13.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:16:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/4] system_data_types.7: wfix: sort referenced types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918120440.30281-1-colomar.6.4.3@gmail.com>
 <20200918120440.30281-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <42b70e9a-6508-ec97-f725-d336670fd3c8@gmail.com>
Date:   Fri, 18 Sep 2020 22:16:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918120440.30281-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 2:04 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Patch applied.

Thanks,

Michael


> ---
>  man7/system_data_types.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 72afe9e81..5ef470386 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -179,9 +179,9 @@ See also:
>  .BR offsetof (3)
>  .IP
>  See also the
> -.I ssize_t
> -and
>  .I ptrdiff_t
> +and
> +.I ssize_t
>  types in this page.
>  .TP
>  .I ssize_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
