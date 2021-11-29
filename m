Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E68C64616B8
	for <lists+linux-man@lfdr.de>; Mon, 29 Nov 2021 14:37:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343772AbhK2NlF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Nov 2021 08:41:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234965AbhK2NjE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Nov 2021 08:39:04 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F63DC09B124
        for <linux-man@vger.kernel.org>; Mon, 29 Nov 2021 04:17:04 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id y196so14396165wmc.3
        for <linux-man@vger.kernel.org>; Mon, 29 Nov 2021 04:17:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vik/JiKKVg2zy7IqhKjH+1OjSbtZ1erCbJ46E6f8WUE=;
        b=gtbQzYEo2xPFuYCmaBwpOywFqNIAjy8opuQS0W22fgNXMhsB0f/3M8fMmXpDnZn6qK
         aNTdZyuX6oESK7BBN0k9z4luVTsJIgKBsr75p5cm9qt7XPxOmbzSHRcgLMqynSDr12zH
         4hQ/eBFnO69emCmfmoHUvm4/O5zcXRsys6kucdf6ak6gK8NXLCNSzD4ccSjQLcKrZgeR
         dRfv/nmy+kIJHTTFP4fthzjVFymp7GxT52grg6Wp0hShpttDT88hU/rfGzEzuvZ1tPvJ
         YVFvt8CjGefsVy56u42umLjbUJpEcGNnW7/kasBqxCiE3b52qY7glfdHNJY9sgPW3JbR
         fIJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vik/JiKKVg2zy7IqhKjH+1OjSbtZ1erCbJ46E6f8WUE=;
        b=cN6Pc2eEtXn3ZWqb+bg974mKdRwynlSUlraW5LQRB0zaWoikacauHQOOIa/NNiBp76
         DFs/wKP8UjDSXuNS688v7QI+WsrDvltnVeZWHwnkI97jaOboxXshESDm7OlomwYhSwqt
         7/hYm7Hpf31drHq+UwdxQR1KiRDbAffUAaOLoXPQWPU+mnL2UdAqWNs8RPJ7xjKVZNyj
         qLcsubfh+K2A7nVyPL+8SHCc6gCH0/O1ML7i5a7PveDjt1y38nRge1y0VGH1lNNQFOj4
         8RJ9oRZFQXiTue+e8A2oEoGT2UCDHVLR1WfuQBShnvTNs6/C86BtB5hnegSui9DULAKJ
         8QJw==
X-Gm-Message-State: AOAM5322goVEIxvUGkQvmtNW5Tf16R5g6a1VvFWaCdLHR9m5dHPe/nsx
        oQbgLx2iLreH+3NdyldR2KM=
X-Google-Smtp-Source: ABdhPJx68pqJu5US9+yfzkinxS64e4jpWVCL0V8WkHWUSUNbf/1GbnSm0qs77Rcmq+c1EHzhyfBPvg==
X-Received: by 2002:a1c:ed18:: with SMTP id l24mr37449252wmh.99.1638188223026;
        Mon, 29 Nov 2021 04:17:03 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v15sm13645818wro.35.2021.11.29.04.17.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Nov 2021 04:17:02 -0800 (PST)
Message-ID: <b7e4c5f5-27ed-bf41-3f36-53919606d0f8@gmail.com>
Date:   Mon, 29 Nov 2021 13:17:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [patch] futex.2, mount_setattr.2, proc.5, netlink.7, tcp.7: tfix
Content-Language: en-US
To:     Samanta Navarro <ferivoz@riseup.net>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20211113115808.zzvid3gla4r33kc4@localhost>
 <20211113124154.lazhqkb6qms7mpbo@localhost.localdomain>
 <5f765ff0-59a2-7a54-873c-4632eed575d9@gmail.com>
 <4751a894-0114-f34d-f5fb-69f398a17373@gmail.com>
 <20211124115927.xiystsyk7epocm4m@localhost>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211124115927.xiystsyk7epocm4m@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Samanta,

On 11/24/21 12:59, Samanta Navarro wrote:
> 
> Typos found with codespell.
> 
> Signed-off-by: Samanta Navarro <ferivoz@riseup.net>

Patch applied.

I had to manually remove the changes to futex.2, since that typo had 
already been fixed a couple of months ago in my tree, so I also renamed 
the subject.

Thanks,

Alex

> ---
>   man2/futex.2         | 2 +-
>   man2/mount_setattr.2 | 2 +-
>   man5/proc.5          | 4 ++--
>   man7/netlink.7       | 2 +-
>   man7/tcp.7           | 2 +-
>   5 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index 1dd77ac..7210030 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -1137,7 +1137,7 @@ except that the clock against which
>   is measured is selectable.
>   By default, the (absolute) timeout specified in
>   .I timeout
> -is measured againt the
> +is measured against the
>   .B CLOCK_MONOTONIC
>   clock, but if the
>   .B FUTEX_CLOCK_REALTIME
> diff --git a/man5/proc.5 b/man5/proc.5
> index c668462..3f16dcd 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -3068,7 +3068,7 @@ Further information about the zones can be found in
>   .IR /proc/zoneinfo .
>   .TP
>   .I /proc/bus
> -Contains subdirectories for installed busses.
> +Contains subdirectories for installed buses.
>   .TP
>   .I /proc/bus/pccard
>   Subdirectory for PCMCIA devices when
> @@ -3079,7 +3079,7 @@ is set at kernel compilation time.
>   .TP
>   .I /proc/bus/pci
>   Contains various bus subdirectories and pseudo-files containing
> -information about PCI busses, installed devices, and device
> +information about PCI buses, installed devices, and device
>   drivers.
>   Some of these files are not ASCII.
>   .TP
> diff --git a/man7/netlink.7 b/man7/netlink.7
> index 6b04fea..2991ec7 100644
> --- a/man7/netlink.7
> +++ b/man7/netlink.7
> @@ -191,7 +191,7 @@ structure,
>   .B NLMSG_DONE
>   message terminates a multipart message.
>   Error messages get the
> -original request appened, unless the user requests to cap the
> +original request appended, unless the user requests to cap the
>   error message, and get extra error data if requested.
>   .PP
>   .in +4n
> diff --git a/man7/tcp.7 b/man7/tcp.7
> index 0a7c61a..8a871fc 100644
> --- a/man7/tcp.7
> +++ b/man7/tcp.7
> @@ -1161,7 +1161,7 @@ This option takes an
>   as an argument.
>   When the value is greater than 0,
>   it specifies the maximum amount of time in milliseconds that transmitted
> -data may remain unacknowledged, or bufferred data may remain untransmitted
> +data may remain unacknowledged, or buffered data may remain untransmitted
>   (due to zero window size) before TCP will forcibly close the
>   corresponding connection and return
>   .B ETIMEDOUT
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
