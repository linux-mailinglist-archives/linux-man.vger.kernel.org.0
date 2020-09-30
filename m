Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92A5327F369
	for <lists+linux-man@lfdr.de>; Wed, 30 Sep 2020 22:39:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725872AbgI3UjN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Sep 2020 16:39:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725355AbgI3UjN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Sep 2020 16:39:13 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB593C061755;
        Wed, 30 Sep 2020 13:39:11 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id c18so3221232wrm.9;
        Wed, 30 Sep 2020 13:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kWgkpLvm1cT61Rwr6FQTOx9p/15lipPZOguXw9B3gcE=;
        b=TtuDbyrsSzGi1v5+uNy0CWKqSpJT9aR3qVX9OOQBPqZtEY5U/sHGUi1z+29bLfNhIM
         ehcO6AnVvdu6OUK4NE5yxK9gJ2sEUABOUu8ovtKz4fwrim+TvobYqho/kQgaFibGNGir
         kZnGPEOfV9bxOnlMOUjY59qvpGxWznq7p8GRtccLsfpteWEHRCIM/j8tN6jLr8AK9DYf
         HAOoT7oZKHFXU+hT4P9i1hwEOp/OE3lT4YOzh6noYm+hz/yKMqTk3cI5umSREubQGTd7
         GowbC+f5BFrnmtTp3C2LLb4m3GBSDJnjI6Nyc7LCqtllDQPoGFHwVBNUH9oSV1pTFBgn
         P4Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kWgkpLvm1cT61Rwr6FQTOx9p/15lipPZOguXw9B3gcE=;
        b=KzDTbm+KcaaTjoOrKabbKdGyMx3Np8H0LSUco29AGGkX10+GoMg8cSM2oVmTn17U0i
         C6YTWlmCZ3LPjvD1tAjJYd0Aw18EtNJDhNgSISYYLZUMVIWCxlZsyIaaYELHNSCyn0uc
         4tOa1PrD5UnsDcRAmzR8LgHqbVlpFZ40iZbLMfHV7ffL5tA1tGuX0L2tejdxbr8JSyYs
         bid9UCHJxfATzTPQn6/D+xlkxFj52twaC+QUrfbdY0/ZhGGwNCASoUd00aUhHx/Kc+Rb
         TxgVRB5wgEE8UIReHeaPhDJ2sMJtVsXFd+nl/rH3lc5b+Dp86HR50faKjGPCOuWA13vt
         uHkA==
X-Gm-Message-State: AOAM530K/pfqEJoAvpf8Hqptyi+yg/6bvom4zVdSjPHA2zTkDEAEOw3S
        uJXmkkLyHvPsmCVdO25dW6s=
X-Google-Smtp-Source: ABdhPJw1OSxW7RcC5F1qKcBNiu0MTANVE7Gw91f0BVpkosa/xgfaEZbWs29UYvv9oakSHmqOB+46HA==
X-Received: by 2002:adf:f4c6:: with SMTP id h6mr4911812wrp.310.1601498350284;
        Wed, 30 Sep 2020 13:39:10 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id w5sm4667132wmg.42.2020.09.30.13.39.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 13:39:09 -0700 (PDT)
Subject: Re: Expose 'array_length()' macro in <sys/cdefs.h> or <sys/param.h>
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     libc-alpha@sourceware.org, libc-coord@lists.openwall.com,
        libstdc++ <libstdc++@gcc.gnu.org>, gcc@gcc.gnu.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-man <linux-man@vger.kernel.org>,
        Jonathan Wakely <jwakely@redhat.com>,
        Florian Weimer <fweimer@redhat.com>,
        Ville Voutilainen <ville.voutilainen@gmail.com>,
        enh@google.com, Rusty Russell <rusty@rustcorp.com.au>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <946e9377-0558-3adf-3eb9-38c507afe2d0@gmail.com>
 <alpine.DEB.2.21.2009301557590.5720@digraph.polyomino.org.uk>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <1aa963ec-0f44-4948-d862-7808b0b86a7a@gmail.com>
Date:   Wed, 30 Sep 2020 22:39:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2009301557590.5720@digraph.polyomino.org.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-30 17:58, Joseph Myers wrote:
> For some reason http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2529.pdf
> doesn't seem to have reached the agenda of a WG14 meeting yet, but adding
> a language feature like that to the standard would be another approach.
> 

Hi Joseph,

Yes, that would be great!

I hope they add that to the language. When/if that happens, nitems() 
could be `#define nitems(arr) _Lengthof(arr)` for std >= c2x.

In the meantime, I would add this macro to libc.

Maybe gcc could add such a great feature as an extension even before the 
standard does...

Too many wishes :)

BTW, I sent a PATCH v4 that I should've sent --in-reply-to PATCH v3 in 
this thread (but I forgot to do so); I'll link to it here:

https://sourceware.org/pipermail/libc-alpha/2020-September/117986.html

Thanks,

Alex
