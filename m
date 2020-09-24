Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B438276E3A
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 12:08:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727325AbgIXKI5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 06:08:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726645AbgIXKI4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 06:08:56 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DF6AC0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:08:56 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id g4so3138555wrs.5
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BhgQcF7+tGJba/XNRfqqlRdHHmj6Ko5nU0+X0QymJN0=;
        b=PaqepXU2gydavKB5yuxFtvlZR8pkzkuykb71YS6SCishXvS2X5teFjwwd8Vcx4ecBz
         0puSFRyV/9WbKOxVvjaPUvUZnv0KhPSrP3+nSmBSIskw0zoBqKjr07avrppecrreSLwd
         jhq8etGxhXxkNRryR58zDn1gITEWJ3pduxtLFHkBsYuTBMl1cewTrqkNgZUKMTZS5zfX
         bDbrkFh9SpXtGj3+y0cuhjAyE7HaU6X0DLkjJOF04DjkT25u3s6oEuaHjIfAPeJ1BhA8
         a7Pfnyb2OpoqHUM51nC87lcaiCPu824UFVzrI/RQJAQlsC/A4cBpwO/hStaomCdpu2Jz
         anIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BhgQcF7+tGJba/XNRfqqlRdHHmj6Ko5nU0+X0QymJN0=;
        b=Wi8QuoaW4EPRuG6LmE4D8h6j24A+5NqB0WU0ImB/CkI6KfycpDkkvEh1DPM45cDZ2g
         uPaWVlEKzBCxygJDyS6miAVNv5rDO40DAo9izlwD95Qgqx3D3TaWRtMDn1yjCQPuV1ir
         GsRpdPjtiDtaJAqo+bZkEwXDm5XunsrV/40Zu6CnD3Ifje+Vnc7C9p9O0srrEY0tjMQv
         izla0BZfEmD3zST0JeAmb1s6wNCVycYxR+v8ydu34pfJSnf4Z8IImZpM2wv20On52v7V
         COndbGDZtjFhHB9Q0pKL7UsstmNxaZdWDIz6Ip1VwvofpaZyvo9693zslbB+EW+Gxikc
         Hw8w==
X-Gm-Message-State: AOAM532CA6cK/f05WRhI1kmVwG7QqBsLaAoYN0F00Yt0HveyWErRz8VA
        mgUyclwgQLnLOWVm/mwxSckH+HT5Q0Q=
X-Google-Smtp-Source: ABdhPJz9s3MBUo++pEeueBvNBOilPYZfkiRsTjLyJ+AfgazEK7cPtj+cgxMn3y3iaVpS6lJVVrxXrQ==
X-Received: by 2002:adf:e4c5:: with SMTP id v5mr4085727wrm.320.1600942135082;
        Thu, 24 Sep 2020 03:08:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id z11sm3047124wru.88.2020.09.24.03.08.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 03:08:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] imaxdiv_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200924095854.77221-1-colomar.6.4.3@gmail.com>
 <20200924095854.77221-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <88f21b6f-2f6c-56f5-0248-88fa2fb4c460@gmail.com>
Date:   Thu, 24 Sep 2020 12:08:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200924095854.77221-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/24/20 11:58 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>


Thanks, Alex. Patch applied.

Cheers,

Michael


> ---
>  man3/imaxdiv_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/imaxdiv_t.3
> 
> diff --git a/man3/imaxdiv_t.3 b/man3/imaxdiv_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/imaxdiv_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
