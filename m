Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28A081E0F66
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 15:24:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388803AbgEYNYf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 09:24:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388685AbgEYNYf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 May 2020 09:24:35 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2787C061A0E
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 06:24:34 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id l21so20470203eji.4
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 06:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+xer8onZItVouhDyhWx4u1i47XMwb3+nHRxS/Qz2xAI=;
        b=fnQrD7DHzUtbm3XDzATcyS+lBI2X6/ToiKB/lopoZZGrCXOOHdLf98hh1Tza3Vvpgi
         ydomuJY5od6TTxDcF8Hl9gBUmNsv+liSwFo46lQ/naCycCTdBUXpEn2I7tDENIr6S72q
         /gIsblZnvL8d5IHueueGwNL7nYyFrWfu9uxugUr25tD2ZTc41vQf3XU/AT0RMsMUtPpe
         nnV+CgI3QcckiNufVD25ucyuhhttItA0sM4rNHrR3fRtxXw77k4wKPuCJPZpPhfnKED+
         Z6fOfNuYSyQL4dKLFC/Mf8NwYo/LG2bLfVsNzsf3WWALbCVjPBJ6s0E36t1WhvAxBSNg
         6nMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+xer8onZItVouhDyhWx4u1i47XMwb3+nHRxS/Qz2xAI=;
        b=LH00nX+vCisJxrXSl1AupCcxLyEXrq+AY9xCfteUph6bREMf8YGx0zSqgeOSC0h/kL
         Gp0SXnf49/dWwsksTHc+ns2tdMHYvlPFBr6jPVYVc3RKJ3cLt1vb2STIOsBdgOnz5deb
         o07C2cBGLH1SdRs3oi3+IbMzha3HVwgGgvxEi49u1B875TMOEIT9EUxUFQ4Frvk2Q8fT
         hR7L8AvJZ5joHR+n/US2ePmqwLQPDDi3yndV3dXZU2RS+irK5Mk+BmnJeE53lxO+dS8m
         Dy8s6MH1rJDf814iV0q6gJ4h/2JfdDOkL1SEIuel8V/7omW9mwpi9rWYZdB4ENyKNSA1
         iLZw==
X-Gm-Message-State: AOAM531t1i5QuPixnu0YNl8MCxjIDax/n0P1tF2lkHPlbHYD0q3NGlEt
        USpTe8rhs1BdlvdGJtpLUEL8sniiKwQ=
X-Google-Smtp-Source: ABdhPJzS0rgfqSD9irSOSFvk6Hmnuqg4s3LXT3aOasqlMIW/kbubZ8PdaGMJEf0BABPXoL98/ViJ0Q==
X-Received: by 2002:a17:906:b08c:: with SMTP id x12mr18342375ejy.154.1590413073425;
        Mon, 25 May 2020 06:24:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5? ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id h12sm14711836ejk.103.2020.05.25.06.24.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 06:24:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] prctl.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200525132148.9935-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f6c96d7f-915d-8a2e-8209-a313b467c290@gmail.com>
Date:   Mon, 25 May 2020 15:24:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200525132148.9935-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/25/20 3:21 PM, Jakub Wilk wrote:
> Remove duplicated word.

Thanks, Jakub. Patch applied.

Cheers,

Michael

> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man2/prctl.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 968a75ab4..605194fc7 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -884,7 +884,7 @@ The attribute is likewise accessible via
>  .IR /proc/self/task/[tid]/comm ,
>  where
>  .I [tid]
> -is the the thread ID of the calling thread, as returned by
> +is the thread ID of the calling thread, as returned by
>  .BR gettid (2).
>  .\" prctl PR_GET_NAME
>  .TP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
