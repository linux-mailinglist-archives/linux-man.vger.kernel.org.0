Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66AF327FE6F
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:32:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731839AbgJALcQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:32:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731692AbgJALcQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:32:16 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D768AC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:32:15 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id x23so2528658wmi.3
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+jd2vIR1LYD7lEVxH21QbKXn9CIYlz+fToZHpYZy/H4=;
        b=lk32zSrdCRxQbXeOUXVpqNGO8W/ajcbm0a5Yl7tJ3PVkWtSwQrivqTtIDlxga15DGf
         2NY8Ck3Ig56PmKrWmyTMYnUrE2Oc7JCifuZlY2Y1LLjoaAn7ltIHNJwejDbxsyGKBQtm
         +8l7LQfv6OwL2kMW3ldxFB1UIhLWSd2nap1N4nkugURwKNbRNdP+IDO5PeWgjpqcsO5k
         5gWvaOOLOxmjyZ4V4L6x0DJc+NstLBigMj17nb3UM+tWU64eIl9+eutnbJ5wkYJtwJvW
         wYcaREB5HkaH1EkWXlbDs4LuJCS9Qj4HTNTP1FXaig2oiJe2OiZGYj1IbnYFKnwSXAtc
         V/SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+jd2vIR1LYD7lEVxH21QbKXn9CIYlz+fToZHpYZy/H4=;
        b=J9ll9gh+qq6c9ydedz3FnUErP5FtTRTI+sxAghqSLMg6R+3U+YG+ueqCvVNU6HAK4q
         q2AxlWU1vvtfYLzoXA8OX4ry/Uf2MyT8l8P4TIn6/QEK+heqwCJPTMuRVK/qhxT6lVpq
         7uom/reKU+oKTZ6ny3zGUu09TMs0Frdc3Uez6uWPq2aUyH6NY+bEP/9pDdY+J4jhfGV0
         Y99LKH0ZXq5pgFBTRTk9Nu6ZqzRzhLelJ2kLlK7MPL75GdmpzPh2ambril8ZZDGK2QM4
         JucVP+FhFPJbgxcH8/PM9odrJo6tTNASYV+VpQWRIBZPbz7aFNF/6ZVQaV4yLAaazYQO
         Cl9w==
X-Gm-Message-State: AOAM531bkQXuMT5B3oymwKKhmTi/72ex/AnHLvbxEE7429VKudQmfmLu
        lbhLTbEh8BvK5tYakKDj6JJKZ2+d5ug=
X-Google-Smtp-Source: ABdhPJx4j67rHl/3Ltjnmv968gjhui5iPOEeMpFsG0mO3yIdCDc0UkmeEFHY6Ibm46f9PRzsOlE+5w==
X-Received: by 2002:a1c:dfd4:: with SMTP id w203mr2337149wmg.178.1601551934549;
        Thu, 01 Oct 2020 04:32:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id f1sm7940854wrx.75.2020.10.01.04.32.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:32:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: Re: [PATCH 00/16] Fixes; Document remaining stdint.h types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <754766a8-6749-1d95-f0ba-999f1a123405@gmail.com>
Date:   Thu, 1 Oct 2020 13:32:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/1/20 12:15 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> Here are a few fixes (including one removing .br),
> and then the remaining stdint types.

These very long patch series are a bit overwhelming for me.
I'd have preferred a few smaller patch series. For example, 
I think I would have preferred 3 series like this:

1-4
5-12
13-16

One reason is that the multiple parallel reply threads that 
sometimes occur can sometimes be rather difficult to track.
(Your patches have started some quite useful conversations!)

For example, I suspect Jonathan's comments may trigger changes
for patches 5-12.

For now, I'm applying 1-4 and 13-16. It looks like some reworking is
going to be needed for the others. When you do resubmit them, please
start a new thread (rather than replying into this thread).

Thanks,

Michael

> Alejandro Colomar (16):
>   malloc_get_state.3: ffix
>   system_data_types.7: srcfix
>   system_data_types.7: srcfix
>   system_data_types.7: srcfix
>   system_data_types.7: Add int_fastN_t family of types
>   int_fast8_t.3, int_fast16_t.3, int_fast32_t.3, int_fast64_t.3,
>     int_fastN_t.3: New links to system_data_types(7)
>   system_data_types.7: Add uint_fastN_t family of types
>   uint_fast8_t.3, uint_fast16_t.3, uint_fast32_t.3, uint_fast64_t.3,
>     uint_fastN_t.3: New links to system_data_types(7)
>   system_data_types.7: Add int_leastN_t family of types
>   int_least8_t.3, int_least16_t.3, int_least32_t.3, int_least64_t.3,
>     int_leastN_t.3: New links to system_data_types(7)
>   system_data_types.7: Add uint_leastN_t family of types
>   uint_least8_t.3, uint_least16_t.3, uint_least32_t.3, uint_least64_t.3,
>     uint_leastN_t.3: New links to system_data_types(7)
>   system_data_types.7: Add 'intptr_t'
>   intptr_t.3: New link to system_data_types(7)
>   system_data_types.7: Add 'uintptr_t'
>   uintptr_t.3: New link to system_data_types(7)
> 
>  man3/int_fast16_t.3      |   1 +
>  man3/int_fast32_t.3      |   1 +
>  man3/int_fast64_t.3      |   1 +
>  man3/int_fast8_t.3       |   1 +
>  man3/int_fastN_t.3       |   1 +
>  man3/int_least16_t.3     |   1 +
>  man3/int_least32_t.3     |   1 +
>  man3/int_least64_t.3     |   1 +
>  man3/int_least8_t.3      |   1 +
>  man3/int_leastN_t.3      |   1 +
>  man3/intptr_t.3          |   1 +
>  man3/malloc_get_state.3  |   2 +-
>  man3/uint_fast16_t.3     |   1 +
>  man3/uint_fast32_t.3     |   1 +
>  man3/uint_fast64_t.3     |   1 +
>  man3/uint_fast8_t.3      |   1 +
>  man3/uint_fastN_t.3      |   1 +
>  man3/uint_least16_t.3    |   1 +
>  man3/uint_least32_t.3    |   1 +
>  man3/uint_least64_t.3    |   1 +
>  man3/uint_least8_t.3     |   1 +
>  man3/uint_leastN_t.3     |   1 +
>  man3/uintptr_t.3         |   1 +
>  man7/system_data_types.7 | 590 ++++++++++++++++++++++++++++++++++-----
>  24 files changed, 540 insertions(+), 74 deletions(-)
>  create mode 100644 man3/int_fast16_t.3
>  create mode 100644 man3/int_fast32_t.3
>  create mode 100644 man3/int_fast64_t.3
>  create mode 100644 man3/int_fast8_t.3
>  create mode 100644 man3/int_fastN_t.3
>  create mode 100644 man3/int_least16_t.3
>  create mode 100644 man3/int_least32_t.3
>  create mode 100644 man3/int_least64_t.3
>  create mode 100644 man3/int_least8_t.3
>  create mode 100644 man3/int_leastN_t.3
>  create mode 100644 man3/intptr_t.3
>  create mode 100644 man3/uint_fast16_t.3
>  create mode 100644 man3/uint_fast32_t.3
>  create mode 100644 man3/uint_fast64_t.3
>  create mode 100644 man3/uint_fast8_t.3
>  create mode 100644 man3/uint_fastN_t.3
>  create mode 100644 man3/uint_least16_t.3
>  create mode 100644 man3/uint_least32_t.3
>  create mode 100644 man3/uint_least64_t.3
>  create mode 100644 man3/uint_least8_t.3
>  create mode 100644 man3/uint_leastN_t.3
>  create mode 100644 man3/uintptr_t.3
> 
H

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
