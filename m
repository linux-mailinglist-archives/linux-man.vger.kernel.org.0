Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CCE941939D0
	for <lists+linux-man@lfdr.de>; Thu, 26 Mar 2020 08:48:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726318AbgCZHsN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Mar 2020 03:48:13 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:52387 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726138AbgCZHsM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Mar 2020 03:48:12 -0400
Received: by mail-wm1-f66.google.com with SMTP id z18so5398003wmk.2
        for <linux-man@vger.kernel.org>; Thu, 26 Mar 2020 00:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=X+UcwmMFYFr4npqLjAMxr18AqWVcBdG9tBrLfEFdVdo=;
        b=ihoUme1I02+fgz4rMzcW5v4BOBo2Dgog5rvsbe4/quFVxt5/83zMCx85fUbLwhiAj3
         /magHttXgHgegr2qO/cnZJGJ7ZrPRrMaif9u86tkcuQKi3kZJrHWFZAqVHuKWHOf2H74
         QhggpQbBTtkIusGfRyrXMng5R5kZbhyQW8EHB7A0hvFfcklG57JZfpkrtWmjgD9sown1
         sPSykWbksfSZL7vWvV20zJKFP7EwPTI/u0mR1DkFIGEmocTtfpyEswFKnotT2vatkiNx
         JcoVpidwmhucfoTEPVIuY6WNaE9MfPqhsRBh2t/y1YV6X9NY88Lpg8ZxW6ETLiAq2pEa
         en4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X+UcwmMFYFr4npqLjAMxr18AqWVcBdG9tBrLfEFdVdo=;
        b=G0HqcLft/fjLtyr5FDiQvZbTsgnd/vzCrWirzarXNl1CndQ6WEntuIirKJ0yrtNBaq
         6MhnGhSHhZug3NjJlGSUX/KIQ5PiYAluaP9sQt59JpF7MVddL1ePUWasKe3plLSntuyb
         IUlxI81lv0sSj6dKv0VSLRMPxznvAicJB9ZOuXINUuYNlrp5Dq2p/209iL1Iut4Hnvxw
         swcSQVrOnqoAfLXc0vGvbhLLjym/XS/HsLoubGyoAY6ad1rxZDFqfk4q497p2aOzU/OV
         aJ/OL1/aoPGwS3S+YNbnQMiOufEMWEgLkaHdDBTb9FyoP7yXzIym/vxKlUwaX03iSZjh
         sq7w==
X-Gm-Message-State: ANhLgQ0pYoOu9kzpWnRrybAG/ti+bYKL6iVKEuvpYBg8CO/aJXUBGawm
        anE1XjHZvIkdQdGpwhp7c2XzOIzX
X-Google-Smtp-Source: ADFU+vvk4C5oguy8q6t5wsO24IQ5tHIvcL1/eEfUXZusN8fKtvH5JtVN9d/jA63oUILLsEmDMNpVWw==
X-Received: by 2002:a05:600c:20a:: with SMTP id 10mr1782764wmi.135.1585208891066;
        Thu, 26 Mar 2020 00:48:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id h29sm2577244wrc.64.2020.03.26.00.48.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 00:48:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] clock_getres.2: Document CLOCK_TAI
To:     Benjamin Peterson <benjamin@python.org>
References: <20200321040358.19119-1-benjamin@python.org>
 <20200321220809.3430-1-benjamin@python.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <de3c5180-9bd9-a0c6-849d-37538990184d@gmail.com>
Date:   Thu, 26 Mar 2020 08:48:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200321220809.3430-1-benjamin@python.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Benjamin,

Thanks! Patch applied. (Just for the future, when you send a second
version of a patch, it make life a little easier for me if you note
what has changed.)

Cheers,

Michael


On 3/21/20 11:08 PM, Benjamin Peterson wrote:
> Signed-off-by: Benjamin Peterson <benjamin@python.org>
> ---
>  man2/clock_getres.2 | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index 3fb0ac61c..7b25b8f65 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -137,6 +137,16 @@ Requires per-architecture support,
>  and probably also architecture support for this flag in the
>  .BR vdso (7).
>  .TP
> +.BR CLOCK_TAI " (since Linux 3.10; Linux-specific)"
> +.\" Added in commit 1ff3c9677bff7e468e0c487d0ffefe4e901d33f4
> +System-wide clock derived from wall time but ignoring leap seconds. This clock does
> +not experience discontinuities and backwards jumps caused by NTP inserting leap
> +seconds as
> +.BR CLOCK_REALTIME
> +does.
> +.IP
> +The acronym TAI refers to International Atomic Time.
> +.TP
>  .B CLOCK_MONOTONIC
>  Clock that cannot be set and represents monotonic time since\(emas described
>  by POSIX\(em"some unspecified point in the past".
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
