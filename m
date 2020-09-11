Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3134265AD1
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 09:51:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725795AbgIKHvO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 03:51:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725782AbgIKHvD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 03:51:03 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5512EC061573;
        Fri, 11 Sep 2020 00:51:02 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id m6so10520833wrn.0;
        Fri, 11 Sep 2020 00:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IYigT2fUFioe8dJwRYbHB5EywBqjf6h2WKua20xANTQ=;
        b=qm9l8/7r5/M9WEecFYwxnU2G+Xl3ssneXF4A85VG9yXI5KW/GF5SWw7vE8KSJrVwe6
         q7GRkamlZBQ2Vuz3/uKzACC27jwHeQAB6kfETUFUtKxYlaY+lmY/T6a7ObG/BiQnEfRb
         T0aum2rIkDDWMPkhGcAgbHWHCJRjvu6NojR/x345TL5tr7lScr7OrLcX6c0ozJ54SF4Y
         egg3t0yrhAw/S8IK5CJu8u8VBz75HpDxK2ZIYjTlyGs6uSamGkZ717jeOWaPwgk2XKN7
         EU0YStrL4Y1kPrSjiBgS2f4V6brT/m73DYDZZn4xYgUZ5oCIt9FG7iz/XzQ3Mop3ABKr
         P5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IYigT2fUFioe8dJwRYbHB5EywBqjf6h2WKua20xANTQ=;
        b=roPz9ASf/GRofAoUmAbkr/Bhxr+efp3d778jghEjndxWffl5niznNmSgZAzNGYl3IZ
         wX0ZkwBGZXZrl5kgjOSEhyWZ1KAJk5lx4u8rLalg425fCrsbyy0P6N1B7LIyNVdbj+Ja
         MWXa7lIOZoXMUYDiWv96/2JFzXbbrcKEdiWvKQSy9Y90u1G8ZV8cEL3XfznyZnIWjFPV
         5JTfAdKf6c+J/2/q4TPtfPdFNI+B1jcwVSro+HfKwb49F0T/GFe5/pmjgysUUn7f/H8h
         7k/0wEgX26RN4JJuyWpb9KfMWCrtR9OpJCh97ZHDDOf94mcVxb2wI/l+HPHvYqEkiEyA
         dStQ==
X-Gm-Message-State: AOAM531W/zHZMqReWaxhHwU6AA+Zes2nOShnXn15Yt6sAcsttvHZd0YU
        IDFs+jRcoP1MstO8EIRGOvgGUaZ+CmA=
X-Google-Smtp-Source: ABdhPJwfwH7D79UUgLJlAW/he9JsMs3EHXn1cIyicYsMmTySCTCUikfTnmcWNY6JsU6EF41l3UGybA==
X-Received: by 2002:a5d:6404:: with SMTP id z4mr734407wru.423.1599810660845;
        Fri, 11 Sep 2020 00:51:00 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id n17sm3021170wrw.0.2020.09.11.00.51.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 00:51:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 08/24] add_key.2: Cast to 'unsigned long' rather than
 'long' when printing with "%lx"
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-9-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2be9585a-7603-9c26-35c4-6c47d00b4ea7@gmail.com>
Date:   Fri, 11 Sep 2020 09:50:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-9-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch Applied.

Cheers,

Michael

> ---
>  man2/add_key.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/add_key.2 b/man2/add_key.2
> index bda08c3d2..bbd2d1d03 100644
> --- a/man2/add_key.2
> +++ b/man2/add_key.2
> @@ -262,7 +262,7 @@ main(int argc, char *argv[])
>          exit(EXIT_FAILURE);
>      }
>  
> -    printf("Key ID is %lx\en", (long) key);
> +    printf("Key ID is %lx\en", (unsigned long) key);
>  
>      exit(EXIT_SUCCESS);
>  }
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
