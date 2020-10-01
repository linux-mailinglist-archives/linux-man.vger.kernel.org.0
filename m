Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CBF22802BA
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:26:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732567AbgJAP04 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:26:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730534AbgJAP0z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:26:55 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AB20C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:26:55 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id d4so3335065wmd.5
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5w2rWzGJo/P9Et7VZEZa/em8Ce7IQRuXuJhdxlypZcY=;
        b=bJfHjoQNcWiD+l5FSSLAb557AWuAZJV0OgSAH4gDKazziG+lyFX/H8MwP9pUKhJXwt
         C4rdfZxT9y1Og5UBaZJQ+WWOiX7sbUKIE4/AbN8JVLbFO7sr5hyj8/4bwwsu8zWHGQmS
         yCzOiknCD8MuWZoRA/nBk2Zexlkqfv4w+mvcg7ziOJhcHpNo5X+Rin2c7DFcDupg9FP0
         /IvY+X53eVx0bM7qiroxT42pT8pwDaxsWNY2yVWD9fM09dwcE17zElENHyEnhNMx2jC0
         U0oWfUFXiBXTnWfeMIXumpWLZhaVYK0YSMSI/lVfSick5t0NN4QlFDFjk2h8/5yujYBZ
         WSRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5w2rWzGJo/P9Et7VZEZa/em8Ce7IQRuXuJhdxlypZcY=;
        b=b8EL6g/Tjddx2RMzpv855BCbWYWGmMDl/oG1SJw0D9rLNFDxMXvTt6LsswiEf4CmHp
         HsyuvVdjrcg8zOgrqmd5uCOv7fAs4sb83C1jtV7NuG8eXboTzXiOC/rbvvH1Y3HWTRYb
         Trp3pVOGNE29kAOuUAeeXAVH6hTsAjlpVG31KaqkJiQjqtfFu0PI83iJkBQqCqKt4Uqo
         bDf7hGEFjt723W0zClZRfAV3wJ+JdkyDS3ejnT8GtAGoTsiL0IAGYHUhF59tnVXGMf1/
         ZVkPrZPDFyX8MCHUraedmgnCkmpCa82vfADceB3NYfkqpS1FIDdsDTQQflDCgUDd4VXy
         7O/w==
X-Gm-Message-State: AOAM531/LrGAcqr7Owv138ShoVeF4BVPS2wCzcbif78RgIeu0rleK7sS
        wun94GhsP78DDpQXQOE6QX8=
X-Google-Smtp-Source: ABdhPJxnzUzTgIhknle9mT/XqemzL17Uh+OGIvH95W36L7XTKTjSicd04vjQM8wlo/x09Z6lTPbnwA==
X-Received: by 2002:a1c:1b15:: with SMTP id b21mr527226wmb.143.1601566014059;
        Thu, 01 Oct 2020 08:26:54 -0700 (PDT)
Received: from [192.168.178.63] (dynamic-077-009-049-048.77.9.pool.telefonica.de. [77.9.49.48])
        by smtp.gmail.com with ESMTPSA id n14sm380037wmi.33.2020.10.01.08.26.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 08:26:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 3/4] system_data_types.7: Add uint_leastN_t family of
 types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
 <20201001143535.98990-4-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <423a144e-501f-646d-c24b-cd2a95426c0a@gmail.com>
Date:   Thu, 1 Oct 2020 17:26:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001143535.98990-4-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Alex. Applied.

On 10/1/20 4:35 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 75 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 75 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 3336de463..e42cf2557 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1500,6 +1500,81 @@ and
>  .IR uint N _t
>  types in this page.
>  .RE
> +.\"------------------------------------- uint_leastN_t ----------------/
> +.TP
> +.IR uint_least N _t
> +.RS
> +Include:
> +.IR <stdint.h> .
> +Alternatively,
> +.IR <inttypes.h> .
> +.PP
> +.IR uint_least8_t ,
> +.IR uint_least16_t ,
> +.IR uint_least32_t ,
> +.I uint_least64_t
> +.PP
> +The narrowest unsigned integer type
> +of a width of at least N bits,
> +N being the value specified in its type name.
> +According to the C language standard, they shall be
> +capable of storing values in the range [0,
> +.BR UINT_LEAST N _MAX ],
> +substituting N by the appropriate number.
> +.PP
> +The length modifiers for the
> +.IR uint_least N _t
> +types for the
> +.BR printf (3)
> +family of functions
> +are expanded by macros of the forms
> +.BR PRIuLEST N,
> +.BR PRIoLEAST N,
> +.BR PRIxLEAST N
> +and
> +.BR PRIXLEAST N
> +(defined in
> +.IR <inttypes.h> );
> +resulting for example in
> +.B %"PRIuLEAST32"
> +or
> +.B %"PRIxLEAST32"
> +for printing
> +.I uint_least32_t
> +values.
> +The length modifiers for the
> +.IR uint_least N _t
> +types for the
> +.BR scanf (3)
> +family of functions
> +are expanded by macros of the forms
> +.BR SCNuLEAST N,
> +.BR SCNoLEAST N,
> +.BR SCNxLEAST N
> +and
> +.BR SCNXLEAST N
> +(defined in
> +.IR <inttypes.h> );
> +resulting for example in
> +.B %"SCNuLEAST16"
> +or
> +.B %"SCNxLEAST16"
> +for scanning
> +.I uint_least16_t
> +values.
> +.PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
> +See also the
> +.IR int_fast N _t ,
> +.IR int_least N _t ,
> +.IR int N _t ,
> +.IR uint_fast N _t
> +and
> +.IR uint N _t
> +types in this page.
> +.RE
>  .\"------------------------------------- uintmax_t --------------------/
>  .TP
>  .I uintmax_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
