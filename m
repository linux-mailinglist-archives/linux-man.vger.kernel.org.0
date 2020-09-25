Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9C63278212
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 09:57:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727646AbgIYH5Q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 03:57:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727428AbgIYH5Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 03:57:16 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38B4FC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:57:16 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id ay8so1527821edb.8
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ynQy4K618lCGuRJadE6wq4i2X9bfWcU3889Hn/Xa9zk=;
        b=IfSnC74dIIQSa3RiGhtR/iW3qrCO307pTMoz8anMGf86wMnUeFMMB/oITLervROxw8
         mBcCaP1KcCxhobXrMzNN1vVGT2TgAjivezUBY+f6p0ojmd2zHo1m1DrUIz6LS65qMh0I
         60+rfSCSSSaatPhqThwxm8FhjFL0kgzGH5KRXHttmIVmHOkCFRTDfJF5LvVHD7o5vKZt
         ObhnPZA6/aoeSNW/n1g7wKPXVTp+fPwjfMAY8GnU8RWWAG07OTcEsFl5mJR3TOcO9kKg
         TcUL5EUedygKm/RJUc4s6+/x1q1CuWl2xEAK2mIQUu4cLSDnAr5mbH2UI2oxBprhXTLO
         2IEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ynQy4K618lCGuRJadE6wq4i2X9bfWcU3889Hn/Xa9zk=;
        b=parlwnUSXSvvNcAHjuZG1tGXHrNtJDt0P08JUv9gTR3lqIersH2dP9OfvXDXrwV2jQ
         BuXsVshbmtKkezo1VOeiEIFxv1cp+JZVlM+WqbkTokGzfzwON0l53QnL5SFPN+JbLdkH
         EIJF6sN0fL0WEhdwzKh8IX1Ql/B3TthZot9Arku8qc6eeFSeulvfHe1oRIBAD9vND5dQ
         kaJGXLlxIewFfc2yH9NfplYNKlv5Kj1vlMJnXwP/kL2vRWL1DGlP3dYXzDLNVt+ivR6T
         K0bBq/DMmJy+Z8fyqLAHjeZgmCu7fVgxSEb/N2fTlgjMuiMgX0B3KAVots6kHkRVnDlB
         U2jA==
X-Gm-Message-State: AOAM531EWQ5KN4akaQXbl9hT2AaJINTgTrl2qSvs0vgY4k7etBugzP+H
        ZRwwvMzJSG/cEVQh5e2a4ko=
X-Google-Smtp-Source: ABdhPJxsIGzg7zTfsZdjT8sDmXNgGXzJQ0vWuouDdAWoYMcwpqu7JoE3Pxqz0GMgYKdNDdyDHkDIhA==
X-Received: by 2002:a05:6402:28d:: with SMTP id l13mr2753467edv.293.1601020634849;
        Fri, 25 Sep 2020 00:57:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id u9sm1306084eje.119.2020.09.25.00.57.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 00:57:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 01/10] system_data_types.7: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <45d19727-1acc-d382-7465-70e50b653cf9@gmail.com>
Date:   Fri, 25 Sep 2020 09:57:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925073140.173394-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/25/20 9:31 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man7/system_data_types.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index f40b1373f..095a20f6d 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -219,7 +219,7 @@ typedef struct {
>  .EE
>  .IP
>  It is the type of the value returned by the
> -.I imaxdiv (3)
> +.BR imaxdiv (3)
>  function.
>  .IP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
