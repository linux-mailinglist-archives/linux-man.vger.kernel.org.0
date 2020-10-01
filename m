Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E6E727FE7F
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:35:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731670AbgJALfR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:35:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731243AbgJALfR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:35:17 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 573C7C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:35:17 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x14so5271829wrl.12
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4LjcE9AuajfOO7WePG9Is9yeWNPBaSV6POV09own1PI=;
        b=JS5Kg+TfvoP/m4mQHYeKcuUX4bixkOA/3SoOdD/BIMQP3ue8IT9LR6Ki/88dtglNn4
         VL135IJDNg6sQCnNoaOQc4oLnqOAsfdiOf8XUw0tP+0hO89q1VI1Mf+YXW3hhoGkl8iO
         ZVgmSGuO2jA2+oR8fvt14S9t1N6ZaAeywsxs0WvWTUuHNjzJcMpL7/+CoNY9FfnZakE8
         GDTCVcDUZPBu/7b8c9DNu8GSr2eB/Od382oZ73dDdNUEFeEqh6XOGY3+9971cMCpRTCF
         XB+g+CzgMAZWOgDhREZ3spl8KefZEIfL+s+GzSV/4GqAWsPHgoJfy/JlacuVy632ay12
         bK4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4LjcE9AuajfOO7WePG9Is9yeWNPBaSV6POV09own1PI=;
        b=E+TpFGtv28OusKlzQKX4YtnEciVY4ZCf9Z/mcU5H2ChUm0Br7VqP+zCVmtarYZq5If
         LVH8IQNzynLof/7iRK+Antz0v2RkVJ0yq8lV/QYLR5tKeocr/DQubsUl+3o+Ffyg742g
         AxjujJwPTOZ+nffzrgXZtYNH3lsYQ7yocXvCwmwgb0eOKDoqJRQuGKpSQB1mA287U7GS
         JdMsvctzWBEVvrObJKC0wwIAy2HvJLZ6fqfB+yDpC9S5gnGhCUNP/XcTi11tnbSLVI+h
         EXTGTOX6jwer4A5ZtGnl1RvvnxzqyX9R+cF2/ovoMKikBkPX7CrQhHNJED3jHMLswFwr
         MCZw==
X-Gm-Message-State: AOAM531hwPWUmHYCqtf+vsJQKq1+4l85n2iUPDbFnHR6/IBfXePT/w6O
        lN8ED3sslrJQYr6pr5q/0kDP18FkSpw=
X-Google-Smtp-Source: ABdhPJwuCZpzmaAgYmZEflAozf9Mduz0RdIgfo5f9k95JWnxp84BktpHcCnRutxFzqIKCFb+SGL8HQ==
X-Received: by 2002:adf:f78c:: with SMTP id q12mr8570032wrp.6.1601552116031;
        Thu, 01 Oct 2020 04:35:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id z83sm8023827wmb.4.2020.10.01.04.35.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:35:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: Re: [PATCH 14/16] intptr_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <20201001101559.77163-15-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ab49f43d-2d95-892b-e8d0-164616a6f34c@gmail.com>
Date:   Thu, 1 Oct 2020 13:35:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001101559.77163-15-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Applied.

On 10/1/20 12:15 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/intptr_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/intptr_t.3
> 
> diff --git a/man3/intptr_t.3 b/man3/intptr_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/intptr_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
