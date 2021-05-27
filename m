Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 484BD392843
	for <lists+linux-man@lfdr.de>; Thu, 27 May 2021 09:13:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234949AbhE0HPQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 27 May 2021 03:15:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234956AbhE0HPI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 27 May 2021 03:15:08 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A872FC061763;
        Thu, 27 May 2021 00:13:35 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id f75-20020a1c1f4e0000b0290171001e7329so1853599wmf.1;
        Thu, 27 May 2021 00:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=K62CfcBuMRBnrDkS+CG8hEhaiH/WcvIci8e5GDvgm7s=;
        b=HvijR3W1L0ZzTAxCwllEY1xANIBnrWpNre6IpMeXwqqIIFLxDNrQCjMHyGs1w1xiiv
         Sf/2DbwO/S07xVKduTs94pH2x+gKcVcYVkLcv/W6bVef4a7FvS6LDwLHaZwseuV0mYFV
         retOkZPVAFEPf++avnafjgiAxcq1hOU8srJXVABXQAJFk7vU9dBoOycXrqVFIez147qq
         vGcipQTytdf0UfLb/NRR9eGYlO8/HsYP8YVa5a3aAeDdfH+6+7bbJFURfp7wzpP2iz94
         4SVghPBsLdzIAi5m5V4L3Tw7jjX3Oc+CMWGZEuDSqi4TT83NCOTAEOkNVA5UXVhAvkD7
         k+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=K62CfcBuMRBnrDkS+CG8hEhaiH/WcvIci8e5GDvgm7s=;
        b=Q1mMKJ1yVPxYETwTFEloyeCyDYNwBWcNnoTwjlYs+Jmhv36KHIFK7yplnjUmZGynTd
         vXQsK0vfBX2TYlP/G3oBx0e42MDPO7GTEyHY1SLlbBK2NMvqsgLFzM9NW9s/+QI4SQ7F
         vVPKg8/33c4dSI8tcEX1tWrqVyW8XMtnObZD4IZI5VHYyQb3gda7JlLvhxKt62JZupRB
         sOntvgbPYJSW16MWryt41eKDL+rN+3VBQoElJrVMv4HrNVRLDSPm9eJMh7Zrkoan5aRK
         SVAUrnDqr6EQJJZpz2RJUhfz16Z310KuWQNHSuixTdOTtO7aWL+eWjWu6xkxAF1p/yfa
         JviA==
X-Gm-Message-State: AOAM5309XSmyyrb20+QzZNicia3Yjc713yAr+eNlf8BP0KAeRfJxy/o5
        BNtA3TqC8w8fc2TKYVVtkBwoXT7nosI=
X-Google-Smtp-Source: ABdhPJzlIB4c8wjL+Ah7p9anyymZ97UNHnF0+N1tqrdVsvJdjNpaOOJXn+2ojTJb2oTL7nCRw0rXDg==
X-Received: by 2002:a7b:cd9a:: with SMTP id y26mr6940605wmj.133.1622099614272;
        Thu, 27 May 2021 00:13:34 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l16sm10296211wmj.47.2021.05.27.00.13.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 00:13:33 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH] kernel_lockdown.7: Remove description of lifting via
 SysRq (not upstream)
To:     dann frazier <dann.frazier@canonical.com>
Cc:     linux-kernel@vger.kernel.org,
        Pedro Principeza <pedro.principeza@canonical.com>,
        David Howells <dhowells@redhat.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20210526173455.971103-1-dann.frazier@canonical.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <7c25c60b-f1d0-be71-8a7d-f2cb1871daeb@gmail.com>
Date:   Thu, 27 May 2021 09:13:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210526173455.971103-1-dann.frazier@canonical.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Dann,

On 5/26/21 7:34 PM, dann frazier wrote:
> The patch that implemented lockdown lifting via SysRq ended up getting
> dropped[*] before the feature was merged upstream. Having the feature
> documented but unsupported has caused some confusion for our users.
> 
> [*] http://archive.lwn.net:8080/linux-kernel/CACdnJuuxAM06TcnczOA6NwxhnmQUeqqm3Ma8btukZpuCS+dOqg@mail.gmail.com/
> 
> Signed-off-by: dann frazier <dann.frazier@canonical.com>

Patch applied.

Thanks,

Alex

> ---
>   man7/kernel_lockdown.7 | 6 ------
>   1 file changed, 6 deletions(-)
> 
> diff --git a/man7/kernel_lockdown.7 b/man7/kernel_lockdown.7
> index 30863de62..29ffd55c3 100644
> --- a/man7/kernel_lockdown.7
> +++ b/man7/kernel_lockdown.7
> @@ -33,12 +33,6 @@ where X indicates the process name and Y indicates what is restricted.
>   .PP
>   On an EFI-enabled x86 or arm64 machine, lockdown will be automatically enabled
>   if the system boots in EFI Secure Boot mode.
> -.PP
> -If the kernel is appropriately configured, lockdown may be lifted by typing
> -the appropriate sequence on a directly attached physical keyboard.
> -For x86 machines, this is
> -.IR SysRq+x .
> -.\"
>   .SS Coverage
>   When lockdown is in effect, a number of features are disabled or have their
>   use restricted.
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
