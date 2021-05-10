Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFDB8377999
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 03:03:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230073AbhEJBEk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 21:04:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229941AbhEJBEk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 21:04:40 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB494C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 18:03:35 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id t2-20020a17090a0242b0290155433387beso7331743pje.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 18:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gbgadjvxJ4aSkRRri6FxJ7fJqTuMv0QUUicWS6B4eMU=;
        b=kWKu1BPYwsv6y8emAlAVRj47TwMfmga103rsW53qMwcNaZxX7N+kVB+QnPQZMCJjoe
         ay5mjAAatodOvEqwfPHTcpqLt0fTw3k2vNSjSHR4OdmFIFgvc4gdS28gbdXJe+blE/Jo
         ucOboDW+9g14tmNoHXt3KF63WrekeFwvZwZpzAOcSFzbLzSIvPidUW2F7ed74hBiHrl8
         tEKEFBXDBnRt9JPCiQRymgcfcY/jqh2xpECkag1P1oUjXL0gRep5RKw1Nwb57ssi0x/I
         g3/qBLrkLRZ6S9H1SpcVZtGOo8+rBd0MRuie5QMBXcKVjwwjFWc7Mi+aPo+xEUOWEDGq
         UJwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gbgadjvxJ4aSkRRri6FxJ7fJqTuMv0QUUicWS6B4eMU=;
        b=SqZRwFNmSNaNuJdOpt1SQjiBibUF+xDSqPDXMcEuVzUwJIE6A8EJfrFzh1LlH/mcTy
         VX8wB6qhk0iUaICCy208B/XHM/AXrwlY2GXZ64NsUQ+HRZqpUfOub56CMmDJzJkDGZvd
         qfds/vuo1V92PHf3X7Ykn0x81CJ4FzyrYtE2m6fbcL6IbTQ4U50WAwHUZ1xIrnkrSpxv
         BuD/CYJkNpuY8PMpwMILDDVFQuU/6HauJ5meaHpbSrGrDuiE6ra0nrTEapC17nIinYcr
         Zf+7NV9/cDmdY2QPAW/M3D3ICyeuHlVjR0hvkCzxPlaglhlZaoQG8FMeOv6+63AKznza
         PdhA==
X-Gm-Message-State: AOAM531So5r6KUo+ywr04ENJ1Wx1QPfyoyXPHMGtCtl82dqMCiYIxhcS
        E3c88aqAwMj5NLlPhsynaEzkHMd73Oc=
X-Google-Smtp-Source: ABdhPJwlvGy6kkH4cQ/x0xNdhADrX40ux2gyPX7L0FZcmbME6bphKGjkmS1WfonfZiJ+AlqVTp706w==
X-Received: by 2002:a17:903:228b:b029:ee:daa8:eca6 with SMTP id b11-20020a170903228bb02900eedaa8eca6mr21741315plh.38.1620608614800;
        Sun, 09 May 2021 18:03:34 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id a16sm9626648pfc.37.2021.05.09.18.03.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 18:03:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] fflush.3: SEE ALSO: Add fpurge(3)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <66f4f252-81f4-f091-956d-0fa14aadaf9f@gmail.com>
Date:   Mon, 10 May 2021 13:03:31 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:38 AM, Alejandro Colomar wrote:
> fpurge(i_stream) does the same as fflush(i_stream), AFAIK.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

> ---
> 
> Hi Michael,
> 
> This is the first of many separate patches that I had pending for you.
> Some of them I already sent you, and you should ignore the old versions.
> Some of them are new.
> Please review them thoroughly, as I may have sent some patch that wasn't
> ready.  In theory I have reviewed them enough, but there are a lot, and
> I might have overlooked something.

Some I looked at more closely. Others (e.g., patches to the scripts),
I've taken on trust.

> When you review this "set", I'll send you another one about the SYNOPSIS.

Okay.

Cheers,

Michael


>  man3/fflush.3 | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/man3/fflush.3 b/man3/fflush.3
> index 138c9bcfe..a600da2ae 100644
> --- a/man3/fflush.3
> +++ b/man3/fflush.3
> @@ -133,6 +133,7 @@ or
>  .BR sync (2),
>  .BR write (2),
>  .BR fclose (3),
> +.BR fpurge (3),
>  .BR fileno (3),
>  .BR fopen (3),
>  .BR setbuf (3),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
