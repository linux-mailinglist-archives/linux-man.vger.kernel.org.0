Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56DE628100F
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 11:46:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726282AbgJBJqc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 05:46:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726181AbgJBJqb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 05:46:31 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2909C0613D0;
        Fri,  2 Oct 2020 02:46:31 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id v12so1041645wmh.3;
        Fri, 02 Oct 2020 02:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k7Hhuemfp3mKNaXUT6qzUz0k6PTD3VDw6bwx0JTczJo=;
        b=E3NiMO3oUeEA/IkOdDTIkDNl2+SJ6t0bP4A166yI1INXxnrqDmP8PRrww5tH/eaZxS
         2z95cXTH3yXC8CjPlPXlU8oElGRVl3Ot2xKHopkGBo2Wwy/92oVC8PfbV3IwYslQgb/U
         eIh09oxJlYPhmiaeKnqJsG4Mq8BMHUEjlK0cPuEI4KM7i8+hLnbQOkMuCSm1CHZalQfN
         SD7SR+Nhp/BHpljmqAFQUzmJzqu4LA3jTeoCQUZsWb/kbIaYYbL4ZQFJZuXpfGefv36y
         ROOxqhKlUvHcJ4Ru8zBpKQj80T+elJMJupe7MMNK/05HO/wsbYTnTmQ8MF9NsWvoELCG
         6wXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k7Hhuemfp3mKNaXUT6qzUz0k6PTD3VDw6bwx0JTczJo=;
        b=VvXh/6x1bpcUhyZ2SrLZ+UzrdoDyZOOcZfG8UM8GlQBoSrfNWimLp3t8sqvqJDOnKp
         b8MIWEPM3E+sgIb7qiPV3nGttdrcJ0wo/oikyFhLF22xbwl5E0DPHyQ65GbqzflP6m/c
         +LvswBxrZm9UPwaY2Yo0pj1KeTwygj0K7ElVQP9s6rIh0pr6Bs6iMdxgpiAkWlzv3r9F
         jM7d7RqcZuphcYRoZqCRsZR2+Nu2HHSHoW1L7YvGrism7j1MxvxAnXr1WK9s638cFWJx
         us89gV06V8y5CIJ3TQ0ErEYL8cgeIHL1VnDhelM2rXVeJWmI8YVBuvINJSXvbfxVnEb1
         W2jg==
X-Gm-Message-State: AOAM530AwhmBbbDzi9SEJwPEAfwjWsaiC/ixYQiOds++EuJE3/P5myah
        cRDQ7vWRTleufa05slp48bM/6GsJa3o=
X-Google-Smtp-Source: ABdhPJxO+Th2kpEoTzGVKjn7E83acLr4QHVaPweT7Ou7LL0X8gmxyjjMbP9e4h/pAeY+69BqtVKnwQ==
X-Received: by 2002:a1c:62c2:: with SMTP id w185mr1866605wmb.109.1601631990175;
        Fri, 02 Oct 2020 02:46:30 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id z8sm1118156wrl.11.2020.10.02.02.46.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 02:46:29 -0700 (PDT)
Subject: Re: [PATCH 2/2] system_data_types.7: void *: Add info about pointer
 artihmetic
To:     mtk.manpages@gmail.com, eggert@cs.ucla.edu, David.Laight@ACULAB.COM
Cc:     linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, linux-kernel@vger.kernel.org
References: <20201002094451.17997-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <71ccc433-a5e4-92a7-6f09-d809c64b63f0@gmail.com>
Date:   Fri, 2 Oct 2020 11:46:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201002094451.17997-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

The 2/2 is a typo.  This is a standalone patch.

Cheers,

Alex

On 2020-10-02 11:44, Alejandro Colomar wrote:
> Reported-by: Paul Eggert <eggert@cs.ucla.edu>
> Reported-by: David Laight <David.Laight@ACULAB.COM>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Paul and David,
> Thanks for your input!
> 
> Alex
> 
> 
>   man7/system_data_types.7 | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 6451782db..bc7d5a8a0 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1918,6 +1918,17 @@ A value of this type can't be dereferenced,
>   as it would give a value of type
>   .I void
>   which is not possible.
> +Likewise, pointer arithmetic is not possible with this type.
> +However, in GNU C, poitner arithmetic is allowed
> +as an extension to the standard;
> +this is done by treating the size of a
> +.I void
> +or of a function as 1.
> +A consequence of this is that
> +.I sizeof
> +is also allowed on
> +.I void
> +and on function types, and returns 1.
>   .PP
>   The conversion specifier for
>   .I void *
> 
