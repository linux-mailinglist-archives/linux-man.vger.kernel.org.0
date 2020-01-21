Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3AB7C144606
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2020 21:41:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728596AbgAUUlL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jan 2020 15:41:11 -0500
Received: from mail-pj1-f68.google.com ([209.85.216.68]:36014 "EHLO
        mail-pj1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728139AbgAUUlL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jan 2020 15:41:11 -0500
Received: by mail-pj1-f68.google.com with SMTP id n59so2185408pjb.1
        for <linux-man@vger.kernel.org>; Tue, 21 Jan 2020 12:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tuHPm+Hv+rWPvNU00Z0Kev24CpKwJPlVsAAKDjBj8fM=;
        b=VTKHm1VvZyAJxMEvHfmTvJqfb0w0DPCrdayQ/Qg6Q68OnNQ42DnRyD+p2723yUDiGK
         xzDBXN4DDnSVxlb5qO3pLDZhWXrzti5SGeke7k/w0PcHaS6pqxeC8Wd5BUuyFOgJHmqh
         NQKOYFoUCtakPyLXtAQDVitO6WQsifexZvc94eeXrK/fClyn3nCU9aUZMqYVSa/ch+rt
         CQ5zo47lz1dcuXA92jKqqRkUV/VS8yZRXiHZh9d3TxDaWl2nJXJEhVWJfaZ8DMPaCVHP
         AH7OGS5PObhZavd8dbaqDGtw3/i5kMacPy9jILow6vt8MpcL/R+OlN4ttONAhaxhN0Ra
         5URw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tuHPm+Hv+rWPvNU00Z0Kev24CpKwJPlVsAAKDjBj8fM=;
        b=OMArh3P/wZfk7ZyOw89UHW3Y42fZGLkJnUKUyxxTnXKhL4nG3ONsk/f4Nfus2JIqiu
         JA3EoKGiHOeVKiJoCnpIbwDUaFntTDFP93gixTExdfiP6JTrz0liEnM3BAGSkKBX4eo3
         dOSf3eKQEcX+MInbe0M9Unb8B/42EiTVo4laRF3cVBLvhfg0/LJqmixuwy6ovAO448U3
         cM/oQs4VrMVhB2P6Qbn3PMpQdtnOXxitKp+gXoeGJuxy9xd+CxPPsrCFpipg4gpyto+k
         svPnuCGOKtD6ayQW/ALcNLAMWAv1gK8obvI3zuncU6YHe+qamzooB9qP6aG02rP3VSX1
         onLA==
X-Gm-Message-State: APjAAAXhnthsHwE7urFMQdbmfRibW88bsPf+tgLbo2j+lBUZya5dEyAx
        i4W6GY1dk+QzvibCwGAstGjw0tHG
X-Google-Smtp-Source: APXvYqy1/m03YUCUdhaWOFQoXBiw6/FlAAuE0pSPUgtpuX6GrMzvJPkTDeRziRmSVrRWkQXKxNBFnw==
X-Received: by 2002:a17:902:9687:: with SMTP id n7mr7472015plp.168.1579639270259;
        Tue, 21 Jan 2020 12:41:10 -0800 (PST)
Received: from [192.168.1.72] (122-58-99-230-adsl.sparkbb.co.nz. [122.58.99.230])
        by smtp.gmail.com with ESMTPSA id c15sm315468pja.30.2020.01.21.12.41.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 12:41:09 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 1/2] loop.4: Document LOOP_SET_DIRECT_IO
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <1578296543-4195-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9c39f02d-fe47-a047-4882-8aa31254c2fb@gmail.com>
Date:   Tue, 21 Jan 2020 21:41:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <1578296543-4195-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/6/20 8:42 AM, Yang Xu wrote:
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>

Hello Yang Xu. Thanks. Patch applied.

Cheers,

Michael

> ---
>  man4/loop.4 | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/man4/loop.4 b/man4/loop.4
> index a56586fe6..afb1d05c5 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -152,6 +152,13 @@ Resize a live loop device.
>  One can change the size of the underlying backing store and then use this
>  operation so that the loop driver learns about the new size.
>  This operation takes no argument.
> +.TP
> +.BR LOOP_SET_DIRECT_IO " (since Linux 4.10)"
> +.\" commit ab1cb278bc7027663adbfb0b81404f8398437e11
> +Set DIRECT IO mode on the loop device. So it can be used to open backing
> +file. The (third)
> +.BR ioctl(2)
> +argument is an unsigned long value. non-zero represents direct IO mode.
>  .PP
>  Since Linux 2.6, there are two new
>  .BR ioctl (2)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
