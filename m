Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDBC5262F6E
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 15:59:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730261AbgIIN7F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 09:59:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728631AbgIINPs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 09:15:48 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E75AC061573
        for <linux-man@vger.kernel.org>; Wed,  9 Sep 2020 06:15:48 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id a65so2227259wme.5
        for <linux-man@vger.kernel.org>; Wed, 09 Sep 2020 06:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=E7fYXiBEkksPCsKzmSnHEqNy8tdvNI5hnnuBrgZ8w90=;
        b=cXle/2qJ0hjQU24XOmIbZf36NsNeziYoY+PZo2xDdKVwGVWnkWjoPfIrIFwrsqHJsu
         RsaHMwZWT2CTF/z5r9CO4gEy8ETY1WkbC/12+KDfJMlGTN/QlLzVQnaUXW+Y+43UK9k9
         my959S4EcLcop8LnDA46uhzJDrWaCOiqLsmUBcayJqlPWnosGmdaA/3/qSurcgP8qfOz
         hGLOlBsvn4tX+gff03yBPm/YiBgyxjyV+ghYjKYfwpwUaSfJqn0U96LjijSTpw06cnMY
         U5IIEYuy6A3nGBAWJA4VuoqVrozFeeGUIuV/+xFtZanrsSFRchsa/qsLFq0MchtZR/Ob
         JQmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=E7fYXiBEkksPCsKzmSnHEqNy8tdvNI5hnnuBrgZ8w90=;
        b=I3T+x8d4/jGRf9JM20bFMTmtDpM7eoz6O6D6vAkSVXd+mKwUB5DvobWEfs/wMFFmUF
         EjOMx+3MtoKnmLyslQgUDkIpbh3N6nwkoG8iPYVaYj6BaBzsQInZ5EYgxG3jdNxgFFNJ
         T0xEW05BcbQEUFbyEXZf4HX2uqHp1j/25gMmwCqTee98t7CEhnU2yR198S6WBpK6/Hyd
         6NZy5cvXUtuRzu0PpnEc1dVFLx5qRrLg/ClHAH6q5APS3CU20506pdmcraus6wjNaS3g
         JaAh6kZEaDh7PJzBYcxnGAY8Kr2lJM2Yf5no3znlp4uokX1Vz3zH+bZDD/VqtK3k/6ZI
         kf9w==
X-Gm-Message-State: AOAM532dYCwvnOxZ+xogxxGvsK4smZ9oEyLiU8Pm3ychQ7aHpxjDuJKh
        6KpUwFxOeFYwXHIRnMuF7uCefI0Qa7o=
X-Google-Smtp-Source: ABdhPJwo+3Bv23UDn3QypHD+zEcfxe/sdGKPR0qR91WVB1RDAurps3UvA98Yc1nXIAMPlf0XaHe7ZQ==
X-Received: by 2002:a1c:2e17:: with SMTP id u23mr3758842wmu.73.1599657346840;
        Wed, 09 Sep 2020 06:15:46 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id r15sm3915091wmn.24.2020.09.09.06.15.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 06:15:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, wharms@bfs.de
Subject: Re: [PATCH v3 1/2] loop.4: add some details about lo_flags
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <5102fd63-a2e0-7bad-e8ef-e310acd65394@gmail>
 <1599653156-13115-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9e6c3764-9a5e-70ab-a52b-0a0a6a6c249c@gmail.com>
Date:   Wed, 9 Sep 2020 15:15:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1599653156-13115-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Xu,

On 9/9/20 2:05 PM, Yang Xu wrote:
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man4/loop.4 | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/man4/loop.4 b/man4/loop.4
> index f4cf48043..5cc9a7e79 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -136,6 +136,14 @@ Allow automatic partition scanning.
>  Use direct I/O mode to access the backing file.
>  .RE
>  .TP
> +The
> +.BR LOOP_SET_STATUS
> +can neither set the
> +.BR LO_FLAGS_READ_ONLY
> +nor
> +.BR LO_FLAGS_DIRECT_IO
> +lo_flags because they are exclusively set from kernel.
> +.TP
>  .B LOOP_GET_STATUS
>  Get the status of the loop device.
>  The (third)

Looking at the kernel code:

[[
> /* LO_FLAGS that can be set using LOOP_SET_STATUS(64) */
#define LOOP_SET_STATUS_SETTABLE_FLAGS (LO_FLAGS_AUTOCLEAR | LO_FLAGS_PARTSCAN)

/* LO_FLAGS that can be cleared using LOOP_SET_STATUS(64) */
#define LOOP_SET_STATUS_CLEARABLE_FLAGS (LO_FLAGS_AUTOCLEAR)

/* LO_FLAGS that can be set using LOOP_CONFIGURE */
#define LOOP_CONFIGURE_SETTABLE_FLAGS (LO_FLAGS_READ_ONLY | LO_FLAGS_AUTOCLEAR \
                                       | LO_FLAGS_PARTSCAN | LO_FLAGS_DIRECT_IO)
]]

and

[[
        /* Mask out flags that can't be set using LOOP_SET_STATUS. */
        lo->lo_flags &= LOOP_SET_STATUS_SETTABLE_FLAGS;
        /* For those flags, use the previous values instead */
        lo->lo_flags |= prev_lo_flags & ~LOOP_SET_STATUS_SETTABLE_FLAGS;
        /* For flags that can't be cleared, use previous values too */
        lo->lo_flags |= prev_lo_flags & ~LOOP_SET_STATUS_CLEARABLE_FLAGS;
]]

would it not be clearer and simpler just to say something like:

[[
The only lo_flags that can be modified using LOOP_SET_STATUS are
LO_FLAGS_AUTOCLEAR and LO_FLAGS_PARTSCAN.
]]

?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
