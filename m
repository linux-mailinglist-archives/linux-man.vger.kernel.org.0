Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3CE8D9D7E6
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 23:05:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726434AbfHZVF0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 17:05:26 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:43827 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726150AbfHZVFZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 17:05:25 -0400
Received: by mail-wr1-f65.google.com with SMTP id y8so16618208wrn.10
        for <linux-man@vger.kernel.org>; Mon, 26 Aug 2019 14:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4Z9X7ePVZL7lXxpQP/Ib62avqn10G/q/KWDTUjaWpFQ=;
        b=eoyrnOh/yXMDO32CQYhk1WLaML2M7bHbf16sQHZse5sQuw+OlefDCphIJiYgpd6yg8
         IEEEB15sdS8irLS8UKTLufJXwiFv0jOrYNFwenS7XfBgjcPct/GzylBNhwIN250ib/QM
         tntM7Ha7DNvnAMYcbmhwlx3q4SMfIvAaU/PJ2Atauve9SeNqqkvzJhqCuBYS+nNps2WB
         7O5kQDinWpO7kooQyjFO8lfcpDjNssDPdNOtJTQvVYV18J0LejvyIXzGpHMfUqnaB5ZO
         91WM4bZ5WaQECXu7vjIBfVG6T2Hzwgf1ErYcnvSE97IzwYaqSfZQNvgHSudU3xmTjzP6
         TOJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4Z9X7ePVZL7lXxpQP/Ib62avqn10G/q/KWDTUjaWpFQ=;
        b=gqLNAYB7w1yulGtr5VYrklyOUjXsTRHADKOIDJicN/Uzfklcc/hYJX9cUJBIXRPFLj
         5mTZF8wjrdAh+9zMsH5aGPXrvlxxypB6k5TXbVe1PINvCqf0K6acRyTdP11DpzHP0uLg
         RDuUPfrqb6Ptw2P/mZeYRtrIy2kapdFqMHRiRjTomOXhc+h092Rj5g+ugeQEGMERXjnq
         ndxzQdpvxDECm93kw/HU0+JQ8ucNXI49y7YOra6XS0nzs4mtpHeosR7V9QVELN+J8jjR
         swWKYdKi7fsHBAdhT/T0LsfFUlnbVSJ7BQe4CEfmR1Tho8uth3vCrb6YVBZRRjcazYHI
         /agw==
X-Gm-Message-State: APjAAAVendcHiEteAxcR03D60nnmWVE341MJ1sJ8EA3HIDmcamsQwntt
        r9fIYZmw8JyJyHmC7WSu5Hg+P6yy
X-Google-Smtp-Source: APXvYqwNNM4KIB8sNI2IvokC2PGUSQnrF/ch78TbonpYzk3T67fxPhKzpPpIN8H5CJBtIiOu6ompAQ==
X-Received: by 2002:adf:83c5:: with SMTP id 63mr23224785wre.86.1566853523583;
        Mon, 26 Aug 2019 14:05:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:257e:2f01:31ee:f41e:c688:df4? ([2001:a61:257e:2f01:31ee:f41e:c688:df4])
        by smtp.gmail.com with ESMTPSA id g26sm488439wmh.32.2019.08.26.14.05.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 14:05:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] socket.2: tfix
To:     Eric Biggers <ebiggers@kernel.org>
References: <20190824211107.16912-1-ebiggers@kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cfd3561f-9c59-f6a6-cc5c-cdbc3f1cbb9f@gmail.com>
Date:   Mon, 26 Aug 2019 23:05:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190824211107.16912-1-ebiggers@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/24/19 11:11 PM, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>

Thanks, Eric. Patch applied.

Cheers,

Michael


> Signed-off-by: Eric Biggers <ebiggers@google.com>
> ---
>  man2/socket.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/socket.2 b/man2/socket.2
> index 14f832022..0b3b90bb8 100644
> --- a/man2/socket.2
> +++ b/man2/socket.2
> @@ -151,7 +151,7 @@ T}
>  T{
>  .B AF_PPPOX
>  T}:T{
> -Generic PPP transport layer, for setting up up L2 tunnels
> +Generic PPP transport layer, for setting up L2 tunnels
>  (L2TP and PPPoE)
>  T}
>  T{
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
