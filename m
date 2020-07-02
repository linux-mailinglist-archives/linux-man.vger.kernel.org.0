Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AD83212136
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 12:27:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728504AbgGBK1s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Jul 2020 06:27:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728280AbgGBK1r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Jul 2020 06:27:47 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81BD9C08C5C1
        for <linux-man@vger.kernel.org>; Thu,  2 Jul 2020 03:27:47 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id l12so28649220ejn.10
        for <linux-man@vger.kernel.org>; Thu, 02 Jul 2020 03:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XuWN/1/d1pqM8itE6uzsMrUmNEYTA91CEkdS7R3okds=;
        b=mfmXM3skOHYf/8kY4vGLKBsZ2RkPR9vgbVi3CZkodcQRUz6W5mTxWcJEWKoLcqJ91v
         EEPXbGn4+bQ6gw3S2Ujz5fvaxmcok3yiRX3iq7NsBbyPGhPX7GXF87lq3wyhacVt/J5s
         dyMJqtdMeqZAQUANwZJVcjcskSNG4gqGz5qCVMv58oeMIJpJElWzitUfaBpFvzws7vE0
         d4XKP9GhXMofRlE5+dfDC1ntFV+4OZRhcoMQYY8Tga7740FQj6HI2pyXxWNRA8tFM3rf
         7QK4PA9FghbKSwHbSOUQT2CaVqvsDXlgvAel8piyfv6uyejKjspIurlfwGNoW/Tke30v
         XfPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XuWN/1/d1pqM8itE6uzsMrUmNEYTA91CEkdS7R3okds=;
        b=piNRpyQHc2LnMxWOTGA2uLGyIYor1N/I5WZzF1OEwWjT9fAqZom7mbZ9neb8xMy04N
         gJF/cF2c7IVhdmYE9eRIwcXz+6bF5BuSUYolKvpMLO/d2yCOXpIuHQt9j1La9FKFcS6k
         YC+SSlwyOdL47Nw63Z9HzMPqoYmGeXmv4w9qNAa/xYTL9rNT1A+L0oSFewgRUGVTaUAB
         ZGU4eu3apRNDJ1kjuN7f3GdNYiwhdYiq/nFI00WV80exi80AqJtsnnQdM8ffkjoNLLAQ
         61uHXUwAcuaw4yD+CEBlVYOWyMtX9ochzK3KuXOdtXIaZlxV6Nj2KVsqSqHpFHqBIAf8
         U3rQ==
X-Gm-Message-State: AOAM530SPRJlcB/SskJwqmZW1BBVNOaPqu9QTepPXM2OBBb1WxU6JGET
        Vxc99ulYNIv3EcAa4zmP6rBXzQ2Z
X-Google-Smtp-Source: ABdhPJwk/AXKJl0TfWDrolWAdZ8XcnXognz9xQf8912N3LwET1W7Q1bpV1EoLyXITcrbBAudjtFtEQ==
X-Received: by 2002:a17:906:6b95:: with SMTP id l21mr27619837ejr.32.1593685666126;
        Thu, 02 Jul 2020 03:27:46 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id i22sm6484940eja.6.2020.07.02.03.27.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 03:27:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man4/*: ffix, change '-' to '\-' for options
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200701230121.GA27487@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <26ae247d-707e-9d37-fe08-cabb96feaa39@gmail.com>
Date:   Thu, 2 Jul 2020 12:27:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200701230121.GA27487@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/2/20 1:01 AM, Bjarni Ingi Gislason wrote:
>   Change '-' to '\-' for the prefix of names to indicate an option.

Thanks! Patch applied,

Cheers,

Michael

> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man4/cciss.4 | 4 ++--
>  man4/loop.4  | 2 +-
>  man4/veth.4  | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man4/cciss.4 b/man4/cciss.4
> index 9600c8f6f..d5732f168 100644
> --- a/man4/cciss.4
> +++ b/man4/cciss.4
> @@ -140,7 +140,7 @@ For example:
>  .in +4n
>  .EX
>  $ \fBcd /proc/driver/cciss\fP
> -$ \fBls -l\fP
> +$ \fBls \-l\fP
>  total 0
>  -rw-r--r-- 1 root root 0 2010\-09\-10 10:38 cciss0
>  -rw-r--r-- 1 root root 0 2010\-09\-10 10:38 cciss1
> @@ -360,7 +360,7 @@ successfully reset or the tardy command is successfully aborted, the
>  tape drive may still not allow I/O to continue until some command
>  is issued that positions the tape to a known position.
>  Typically you must rewind the tape (by issuing
> -.I "mt -f /dev/st0 rewind"
> +.I "mt \-f /dev/st0 rewind"
>  for example) before I/O can proceed again to a tape drive that was reset.
>  .SH SEE ALSO
>  .BR hpsa (4),
> diff --git a/man4/loop.4 b/man4/loop.4
> index 1623cad0e..41e13d16f 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -43,7 +43,7 @@ You could do
>  .EX
>  $ \fBdd if=/dev/zero of=file.img bs=1MiB count=10\fP
>  $ \fBsudo losetup /dev/loop4 file.img\fP
> -$ \fBsudo mkfs -t ext4 /dev/loop4\fP
> +$ \fBsudo mkfs \-t ext4 /dev/loop4\fP
>  $ \fBsudo mkdir /myloopdev\fP
>  $ \fBsudo mount /dev/loop4 /myloopdev\fP
>  .EE
> diff --git a/man4/veth.4 b/man4/veth.4
> index e5d11b2b6..1fdc7822e 100644
> --- a/man4/veth.4
> +++ b/man4/veth.4
> @@ -91,7 +91,7 @@ network interface, using commands something like:
>  .in +4n
>  .EX
>  # \fBip link add ve_A type veth peer name ve_B\fP   # Create veth pair
> -# \fBethtool -S ve_A\fP         # Discover interface index of peer
> +# \fBethtool \-S ve_A\fP         # Discover interface index of peer
>  NIC statistics:
>       peer_ifindex: 16
>  # \fBip link | grep '^16:'\fP   # Look up interface
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
