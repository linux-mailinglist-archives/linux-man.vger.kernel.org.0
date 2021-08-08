Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 999473E3993
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:35:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231202AbhHHIfs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:35:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230301AbhHHIfr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:35:47 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B2FCC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:35:28 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id n11so8439352wmd.2
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=D/ZrPi1ItHnTkaUKrOc3WhucxDob6ua0WymIJBsT9/o=;
        b=X0+xtfjxiTalRUI0XHGILm36OALhddZj0uk+kg6lRwDTu/qhQugnhyH+h+/sbFCrow
         b+QR2A5fJyyaL16eapYE/zztWUmHU5mgh04W82tRWYzOjih+LBMQ8vuPOtPKoRQee4+3
         /BhbpmvvL22ztb9FNZZTW0q+bQj1x5X61bixWB2+v+XlxBVKw2qhga77hUl0aiVmhWTZ
         EDeT9LnhyR4kNiBThvZY5SBPLYd8Q5iz94idNDkPmVZIc10QnjubUyCAIWUarZMRNK2M
         +D/8A9a7LZmaf1FzSIXoSvcJ8O6HnaLIJfMEnm2SDqj47NxgJYXuUMqBjFMDyPVSBLFh
         G3vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=D/ZrPi1ItHnTkaUKrOc3WhucxDob6ua0WymIJBsT9/o=;
        b=SyiSzRoNYwj8MevlirpYH3Ow7PFbZrW8CxIaGzWNBg4SxUeTC5rJmFIwI31AMTjG/w
         dmWHMnSXnC7k7L8y4dVsT4I29T4XLdtgK3db0pDB2N0xgqjuFn2r9q7frHdJN1y/TDn1
         Ot8XhHYIWzItJKfVMKa/jXZWCVcYbSonx+sWmsXFFcCZTQ0ZX7EpyjHRSsVQ/7pH5fDC
         Fa8ULSBdCRsmXpvy5pj8tQ0/wqORW/dianibyBxvvJC/YAun+/TjK1qkfTabHo4kjwg4
         lkaLiv209+8Ytm4RVzwC3rGMNuwZ2CqyJdjRDnJeudkLsFXyUlq8qEJ8cO9iCR3/3jVE
         G6fA==
X-Gm-Message-State: AOAM533a01NKtrYf9OmMtbwCpG8+F/Z4SsZ6tw5ZNgkfTH46S7a02VeF
        JmOhWkO/Wnz54cchzuyc5IoM5n4LaeI=
X-Google-Smtp-Source: ABdhPJy5QdUiglREBFuBO0sVVy5/S3nkAK3VAd5VAPD9R8cyjfxQY5F1Mq7Mw3Ph6EmpNoYkyzEYQQ==
X-Received: by 2002:a1c:2547:: with SMTP id l68mr1429239wml.23.1628411726362;
        Sun, 08 Aug 2021 01:35:26 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l41sm15146070wmp.23.2021.08.08.01.35.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 01:35:25 -0700 (PDT)
Subject: Re: [PATCH v3] ioctl_tty.2: Add example how to get or set baudrate on
 the serial port
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20210730095333.6118-1-pali@kernel.org>
 <20210801135146.14849-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <54c8c04d-4f9b-1ab6-a3a5-c23b2be74a9d@gmail.com>
Date:   Sun, 8 Aug 2021 10:35:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210801135146.14849-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 8/1/21 3:51 PM, Pali Rohár wrote:
> Signed-off-by: Pali Rohár <pali@kernel.org>
> 
> ---
> Changes in v3:
> * Check support for custom baudrate only based on BOTHER macro
> * Use TCGETS/TCSETS/termios when TCGETS2/TCSETS2/termios2 is not available
> 
> Changes in v2:
> * Use \e for backslash
> * Use exit(EXIT_*) instead of return num
> * Sort includes
> * Add comment about possible fallback
> ---
> 
> Hello Alejandro!
> 
> I found out that this stuff is more complicated as I originally thought.
> And seems that additional documentation on this topic is needed...
> 
> For setting custom baudrate it is needed to set BOTHER flag in c_cflag
> field and baudrate value itself in c_ospeed and c_ispeed fields.
> 
> So when BOTHER flag is not provided by <asm/termbits.h> then setting custom
> baudrate is not possible, fields c_ospeed and c_ispeed do not exist (and
> only some predefined Bnnn baudrate values are supported). This applies when
> compiling application with older version of header files (prior support for
> custom baudrate was introduced into header files).
> 
> First caveat: BOTHER constant is different for different architectures.
> So it is not possible to provide fallback #ifndef..#define BOTHER.
> 
> And now the biggest issue: Some architectures have these c_ospeed and
> c_ispeed fields in struct termios and some in struct termios2.
> 
> TCGETS/TCSETS ioctls use struct termios and TCGETS/TCSETS2 use
> struct termios2.
> 
> Some architectures (e.g. amd64) provide both struct termios and struct
> termios2, but c_ospeed and c_ispeed are only in struct termios2.
> 
> Some other architectures (e.g. alpha) provide both struct termios and struct
> termios2 and both have c_ospeed and c_ispeed fields.
> 
> And some other architectures (e.g. powerpc) provide only struct termios
> (no struct termios2) and it has c_ospeed and c_ispeed fields.
> 
> So basically to support all architectures it is needed to use
> struct termios2 when TCGETS2/TCSETS2 is supported. Otherwise it is needed
> to use struct termios with TCGETS/TCSETS (case for e.g. powerpc).

When you send v4, please include the above text (or something similar) 
to the commit message.

Thanks,

Alex

> 
> I updated v3 patch to handle this logic.
> ---


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
