Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2185E13CCB
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2019 04:21:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727321AbfEECVH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 May 2019 22:21:07 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:33090 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727129AbfEECVH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 May 2019 22:21:07 -0400
Received: by mail-vs1-f65.google.com with SMTP id z145so6062727vsc.0
        for <linux-man@vger.kernel.org>; Sat, 04 May 2019 19:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YgB79u3DPqM//UfjkYJ4kL/N3rpNLr5KqtB8dHz6Pwc=;
        b=lVnzNp404S6dW/u9kJ1aVvWHElfyMovNt3ESyp5vsOtXgoXV7xFm2uot2N5H8mfm2C
         GLmJO4Cg2oHaDt69SYwvfPx2Fran9s51MgAwCaxs/ET17DTMoqhV6UfVwdtiduByiD9I
         Xl+s+tbzxDExe6Ay6f3YvAjP2FNt3VwkBcA8imw7vrb+JJ8qf0Pp9Bp0mvLP5xXcwYPI
         kn8iSRk1u+PP5kyZGaa2ofWoeNCc2tZpiEB2m+l4BwDV1cQoEobJYqgeji4h5NKijT7p
         ve8X6lr+wBghPCci76b9sxDiyhkUXquV9hCvi6jvGkOj2qrTnxDN8WOY8vUmk2jkC3RG
         KYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YgB79u3DPqM//UfjkYJ4kL/N3rpNLr5KqtB8dHz6Pwc=;
        b=fyAvFeg6wyIrLdRozQqIK+3SntZFmMNAPD8kYeX0BF16dbFV/2PT0w/wya+3A2bDRV
         vByw0Qun6dF7iqPMI5xbkse4YNU0dSi7zYfFnHWhIhKu5WDKBVeclboHiEcRAt8ZzZdI
         aPtQ7ZydXE9wNCuhGyKyI1s2FCSHydT2iBPFxTPDPSHQSMJCacmn+t5+32X8idwXg4S3
         9qzELpcaM863We5k/PKi15Ffedjv8MRPdn+NTvWWB0O5r7S7CZTQRzl7sIHhRQWE5wp0
         Z2Ud3k+xGsS2tV7oNB6a6CXj2XURrgzEoiQiNrEa2JtsvL8I7qTJu0Y6xR8zcIRaFFZO
         5rEw==
X-Gm-Message-State: APjAAAWK37Etl6blRNVMdB0/cxUCWMlm1hOpvSXVzPmhN22x0y3ykFSo
        HG6EQg8th+Xgtwdp8egnuOE=
X-Google-Smtp-Source: APXvYqyUxm0B3wSZKy2VKM7o/gp+8mnAMiSriuEtfHgZBa+5aJLQirX2gxrZZMoZhP5lMkT1G2txSQ==
X-Received: by 2002:a67:d099:: with SMTP id s25mr763571vsi.27.1557022865850;
        Sat, 04 May 2019 19:21:05 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id j71sm4597665vsd.0.2019.05.04.19.20.39
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 May 2019 19:21:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        nmeyerha@amazon.com
Subject: Re: [PATCH 2/3] capabilities.7: wfix group thread sets by function
To:     Samuel Karp <skarp@amazon.com>
References: <20190422203443.9539-1-skarp@amazon.com>
 <20190422203443.9539-2-skarp@amazon.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <96cf50f0-d6da-e833-3167-8f7244729ac6@gmail.com>
Date:   Sat, 4 May 2019 21:20:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190422203443.9539-2-skarp@amazon.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Samuel,

On 4/22/19 3:34 PM, Samuel Karp wrote:
> Permitted and Effective capability sets describe bounds that the kernel
> enforces for the current thread.  Bounding, Inheritable, and Ambient
> capability sets describe bounds that apply across the execve(2)
> boundary.

I think the reordering you propose doesn't really help the reader.
On the one hand, I see the distinction you want to draw, but it
is not so simple (for example, the bounding set limits some process
actions also, in particular, the modifications that can be made to
the inheritable set). And simply reordering the text doesn't really
give the reader much clue about the distinction you have in mind.

> Signed-off-by: Samuel Karp <skarp@amazon.com>
> ---
>   man7/capabilities.7 | 30 ++++++++++++++++--------------
>   1 file changed, 16 insertions(+), 14 deletions(-)
> 
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index 9f7ee670a..2776b1f8b 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -46,6 +46,8 @@
>   .\" 2011-09-07, mtk/Serge hallyn: Add CAP_SYSLOG
>   .\" 2019-04-10, Samuel Karp <skarp@amazon.com>
>   .\"     Clarify wording for Inheritable thread capability sets.
> +.\"     Reorganize thread capability sets to group total bounds and inheritance
> +.\"     together.
>   .\"
>   .TH CAPABILITIES 7 2019-03-06 "Linux" "Linux Programmer's Manual"
>   .SH NAME
> @@ -831,20 +833,6 @@ it can never reacquire that capability (unless it
>   either a set-user-ID-root program, or
>   a program whose associated file capabilities grant that capability).
>   .TP
> -.IR Inheritable
> -This is a set of capabilities preserved across an
> -.BR execve (2)
> -when running as a root user.
> -Inheritable capabilities remain inheritable when executing any program,
> -and inheritable capabilities are added to the permitted set when executing
> -a program that has the corresponding bits set in the file inheritable set.
> -.IP
> -Because inheritable capabilities are not generally preserved across
> -.BR execve (2)

See my comment on your earlier patch. Inheritable capabilities operate
independently of UID 0.

> -when running as a non-root user, applications that wish to run helper
> -programs with elevated capabilities should consider using
> -ambient capabilities, described below.
> -.TP
>   .IR Effective
>   This is the set of capabilities used by the kernel to
>   perform permission checks for the thread.
> @@ -861,6 +849,20 @@ shared by all threads on the system.
>   .IP
>   For more details on the capability bounding set, see below.
>   .TP
> +.IR Inheritable
> +This is a set of capabilities preserved across an
> +.BR execve (2)
> +when running as a root user.

No. See above.

> +Inheritable capabilities remain inheritable when executing any program,
> +and inheritable capabilities are added to the permitted set when executing
> +a program that has the corresponding bits set in the file inheritable set.
> +.IP
> +Because inheritable capabilities are not generally preserved across
> +.BR execve (2)
> +when running as a non-root user, 

This is not correct.

> applications that wish to run helper
> +programs with elevated capabilities should consider using
> +ambient capabilities, described below.
> +.TP
>   .IR Ambient " (since Linux 4.3)"
>   .\" commit 58319057b7847667f0c9585b9de0e8932b0fdb08
>   This is a set of capabilities that are preserved across an

Thanks,

Michael
