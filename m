Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72D5D2E3572
	for <lists+linux-man@lfdr.de>; Mon, 28 Dec 2020 10:26:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726596AbgL1J0b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 04:26:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726509AbgL1J0b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 04:26:31 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8C62C061794
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:25:50 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id r4so9309615wmh.5
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k0/0ERfL9nFy7NDH2vE7uYR3R8ON5MUZc031WQfP0P8=;
        b=rCRGX059tYI1SXyq35EwShTot+wfsBuGri2b7vngy89YEE1HlsLBuqJR38vE/H4EeR
         pacbQjmDHBSK7mOR20oCLvK/nzobroJVG0en8gxlBKE2Atx9PqbOJ6wlwuuMfGsOP5iU
         kWDynwp/qnyta31jYPiDyMk1IwuFH9u1DO2jLhPVE6d0RVqfx8lxBMqO4flTh/jO4Eoa
         04SvCfr2gzIV69U6c7odgQMjigM9X2Rf/3lIq3KaroYnKoTR7gj/kSro1EI62DetrMud
         /XhFXPvv6B/+SJ80wHO+z83B4Twlm7FPNeiQC1Qo/vpx5NMqEEuPvR2F77PO4npPmgZ5
         +yqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k0/0ERfL9nFy7NDH2vE7uYR3R8ON5MUZc031WQfP0P8=;
        b=VrmJKwzx4kzFL/oBCTbeWYRkXmYn6tUhmDYggSFcr8Bf2VR7qv42Ct1idoiVa5ECsQ
         5pCKWvpyqj+XJF5BHZe1OafBomQdA2R4FrUJDYshG5381r2Y8XzE2InsXzoGTycTxhAA
         WKve2ZaOxS2COuqsGPad/9LirWt+3WmqeVKqUfVQSRMU7YBVvLCpL7mecHYhnMuZl5uv
         sgzjsa/7idCMO/JaoQTSrAh/a3pb/vLYDMJ5cmVA+1h1AvLE1Vu1SuTr8YIwRPCg3g5m
         XdsHiA+OtiBwAncau/aZpvhmaYPtlC/rFTyV9x4YSb9KG1+NaFShNDxRow6sNzgM/Ayz
         8r7Q==
X-Gm-Message-State: AOAM530SLojGJcK3XoeV2xGv2p3jxlcVGblLErp293fCh3JZVRBgMqOM
        V4VD8phY2OsVi35eRp658tt7DieiDvs=
X-Google-Smtp-Source: ABdhPJzRrOq0/FyMikVwmqCCEBN2MmEL44+8G+6Z5HTFtUVcoDZMzfWVDMxY3/Sm7RKVB3XRTlZIjw==
X-Received: by 2002:a1c:741a:: with SMTP id p26mr20321953wmc.47.1609147549317;
        Mon, 28 Dec 2020 01:25:49 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id z15sm57126794wrv.67.2020.12.28.01.25.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Dec 2020 01:25:48 -0800 (PST)
Subject: Re: memcpy.2: missing restrict keyword
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <5a8997be-479b-d813-ce7a-558a8e6633e9@gmx.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <105b8883-d6a8-b3c3-3aff-ee1d6e88980a@gmail.com>
Date:   Mon, 28 Dec 2020 10:25:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <5a8997be-479b-d813-ce7a-558a8e6633e9@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Heinrich,

I agree.  That's on my todo list.

I'm first fixing the prototypes for syscalls, which have significant
deviations, then I'll have a look at glibc wrappers, and then I'll fix
glibc library calls.

Thanks,

Alex

On 12/27/20 9:01 PM, Heinrich Schuchardt wrote:
> Hello Michael,
> 
> Since C99 the memcpy is defined as
> 
> void *memcpy(void* restrict dst, const void* restrict src, size_t n);
> 
> Shouldn't the restrict keyword be shown in the prototype on the man-page?
> 
> Other concerned functions include:
> 
> memccpy(), strcat(), strncat, strcpy(), strncpy(), strxfrm(), strtok(),
> strtok_r(), printf()-family, fcvt_r(), strtoimax()-family,
> getmntent_r(), ...
> 
> Just grep for restrict in the standard includes.
> 
> Best regards
> 
> Heinrich

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
