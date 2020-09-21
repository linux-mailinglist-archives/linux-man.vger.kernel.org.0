Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67482273221
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 20:44:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727309AbgIUSoU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 14:44:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726973AbgIUSoU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 14:44:20 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0CA7C061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 11:44:19 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id d4so476083wmd.5
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 11:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=huBT6E0b454IFDfpwduPSG3OFOooLwr9jKw4KhnQZ8A=;
        b=j4B7V0XcXbaI7271SubFFENyIAck2v2bVQbNsos6ixGEIJ9mqOQ7vhkhdIgBcQctu1
         qKj6lOlG2CBD96q11IGzyUvAMFQHq3863lRRzyq91JGa6a+6lYKKr05NU9NcP50nNC9Y
         Jn71As9RtLTlNN/3CSJKSYoxKcQP7ECtiZlhyNFNsugru6uSdfmwPNCxamgAT8UXEEzR
         YyvqIONZwq6YiTunObQf8JJ5/0eUWSjNW2CrFdLKZqNnrDr/LODA+PcPKPt4EwH9SjnQ
         Y5qjRGO+1dH0c9lHX/7LSNsWEBLUZ1GlYyXqNE7IMdDXLg7X/f/wPe5+dmm3As/hPLBA
         9CPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=huBT6E0b454IFDfpwduPSG3OFOooLwr9jKw4KhnQZ8A=;
        b=qZZynxp3fMooxMBXF7mIwCsXBJelnPcLYFDd4SQQS8AKueQb5TkK5Uu6OH57uD1pN5
         WQZ4CUX0I0yBErSyCDM6yuH/wOOUbvZ6nucMdY1zFfBvUMWVc+dycqrf45RuYZZ8Ux5D
         bsacSPx7vMnStgaO1rYVvQNgFi0XA5W1je7Kbh0FWHkaT540SSMZDUWvHgg9dSgnb4br
         MJna75nn1RcsKUM0DHrZ7p6hF1gcE9FIjdSqIei3OJPgjamEmuUmjavImeKvMyCDZBnC
         M6UNhO6GjjI3vfrJ9zKXPjyFQvRZ1Z2s22DGmqHlHWy3vcnbKEOBlY4HoLZIzTkH/qSH
         5cJg==
X-Gm-Message-State: AOAM531gZaEurl585SlweRDVyPrx+FoFr8uculGEz5Ij+inswsl9pj8M
        uhrpACel0pu6h2oyipr1AGmV+fveZ38=
X-Google-Smtp-Source: ABdhPJxwLbEyhgj9xTnVQlgsJOP/RVg0epmtJMzJNFVEFou8YUc1qIf3UUb0wX5F/LQVEGWXHdqBZA==
X-Received: by 2002:a7b:c090:: with SMTP id r16mr750280wmh.56.1600713858224;
        Mon, 21 Sep 2020 11:44:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id t15sm21588981wrp.20.2020.09.21.11.44.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 11:44:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: Document fenv_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200921152516.85879-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0997996d-5d93-c022-b3c1-80a0233f5967@gmail.com>
Date:   Mon, 21 Sep 2020 20:44:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200921152516.85879-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/21/20 5:25 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)


Thanks! Patch applied.

Cheers,

Michael



> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 6a078270a..00d041c2a 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -94,6 +94,22 @@ See also:
>  .BR aio_suspend (3),
>  .BR aio_write (3),
>  .BR lio_listio (3)
> +.\"------------------------------------- fenv_t -----------------------/
> +.TP
> +.I fenv_t
> +.IP
> +Include:
> +.IR <fenv.h> .
> +.IP
> +Represents the entire floating-point environment.
> +The floating-point environment refers collectively to
> +any floating-point status flags and
> +control modes supported by the implementation.
> +.IP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +See also:
> +.BR fenv (3)
>  .\"------------------------------------- ptrdiff_t --------------------/
>  .TP
>  .I ptrdiff_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
