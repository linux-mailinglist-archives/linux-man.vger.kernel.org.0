Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCE5B354152
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 12:55:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233187AbhDEKzv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 06:55:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232355AbhDEKzu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 06:55:50 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06F14C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 03:55:45 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id h10so12072598edt.13
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 03:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jFUBBpTAZO/NxHKvc7rYX3MwnrY2HZyuAr8R9Ik3W9E=;
        b=vfrPvN3R/J2yCxARtlD7PGNKn43+PSPxJh1TFXfLh2gk513n7HqxAQ70x5FcEc91kb
         vuYPkCyn0Pn0FqTjTUuY15k1KVbluDyH1YN0AzskeuAfXK8df2NwoY95Yg3nRiUi0XPK
         oaHx1x/4VRc5QJbZ9T5BzvHHvVA2uqvmQq6ybZCGRXgfsAGg37rYDiDzZgH2jLvVr79M
         urvs8oj8QmvO++xagX5ZKuVM3yJBhtPaOuheC1C5TnP1YvdGl2nZU9RtuAK0dLLDtd+F
         Ybg4HbDFeFGYMe3ZZOxqrtNlve0TAyO2tMs5GmmP4qHiD3KoRXxeCqGMx0mnkGq8oAds
         mhjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jFUBBpTAZO/NxHKvc7rYX3MwnrY2HZyuAr8R9Ik3W9E=;
        b=fisv550mE2NNkT4XgnjzmtJAuMpHaUEObF8rZegE0r0txPbebcHsNm215H3nQzYSeB
         7jOcy6YFQLHGy93V6wN2NkFNqwjmcTIpuRmAYzGqwhWCoZEMJW1xDtHU/Tzo0sopGulI
         YuXGOPADrPYqbP22jnLiRdq9VdyXd13gnFhoxjXIY7JwUbqDwaFiXDfk8AWgkI3dFaYu
         rFUFnMbrsOp4pvi0i4uU/1PsvQCDC6LGX0tf/v1s8pKH75ItYby3DxoIkbO+qmHNDGYT
         2hoZS40ViwsWYIfNREmhkXY5/8Ie3Khk0HiC4+eri8xNJNgP7+HG2Ma/b5pkNO2baVZ/
         9qYg==
X-Gm-Message-State: AOAM533gQR2aJuqVuqHQ2DfT7+LbxIaFQZdZDxuQvLgBoUDUbfbHkzHl
        kF62xqpoP2WajuYi7ERhqN0=
X-Google-Smtp-Source: ABdhPJzFiy/1k94gzckLkJSSITRPJt0TByQLLDop9i4rgwAOptzX8aD+bVMhSgH9lhhjQnaL+rTnOQ==
X-Received: by 2002:a50:e607:: with SMTP id y7mr31025293edm.18.1617620143794;
        Mon, 05 Apr 2021 03:55:43 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id a26sm11198588edm.15.2021.04.05.03.55.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:55:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 06/35] add_key.2: Remove unused include
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-7-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c7cbacc4-7490-f46c-f5e4-f27da3d41ebc@gmail.com>
Date:   Mon, 5 Apr 2021 12:55:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-7-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> <sys/types.h> was only needed for size_t, AFAIK.  That is already
> (and more precisely) documented in system_data_types(7).  Let's
> remove it here, as it's not really needed for calling add_key().
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/add_key.2 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man2/add_key.2 b/man2/add_key.2
> index f3d803adf..dca44b8e7 100644
> --- a/man2/add_key.2
> +++ b/man2/add_key.2
> @@ -14,7 +14,6 @@
>  add_key \- add a key to the kernel's key management facility
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/types.h>
>  .B #include <keyutils.h>
>  .PP
>  .BI "key_serial_t add_key(const char *" type ", const char *" description ,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
