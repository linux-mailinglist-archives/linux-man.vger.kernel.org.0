Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AA992A5644
	for <lists+linux-man@lfdr.de>; Tue,  3 Nov 2020 22:28:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732421AbgKCVBO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Nov 2020 16:01:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387436AbgKCVBN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Nov 2020 16:01:13 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 352FBC0613D1
        for <linux-man@vger.kernel.org>; Tue,  3 Nov 2020 13:01:13 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id k10so18583923wrw.13
        for <linux-man@vger.kernel.org>; Tue, 03 Nov 2020 13:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=W1nViLuIlYiv71+fh5RnoC5MD6EV9rVhzPGwb/xlk4U=;
        b=iCgi7Xe/Ka9SWvsgMZnc4gMQR8QQSNVGEA1va8mimgmdEdENCyfufJI0qvvroTjdld
         xxfj4X0/bg7WwVkYdKYq0FibzNXecNtAd+mft56o9k9TS072ffFKbiYhwryu+f5NvbAf
         83WKrelmeTs3xrUqnn0Ch7FldNltdk+mclF9WSe2skEvCnANvkqwA4MMlVeBrnV6SxF9
         DI9K4R4iD+FzLwnKB2hBCmJRMv0VD/bcsENhSzziZcr57zGhgBfQ6HMHFXJCNrEZGscs
         zWLiQh3jj34m4AdnePIJpXvDlLO6xEq6iZcJo0r1W6eYrpeMDWtHUQi9WLGhDlJXTV+f
         gzSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=W1nViLuIlYiv71+fh5RnoC5MD6EV9rVhzPGwb/xlk4U=;
        b=Kr5vKbKwaDR1hMrNDxswOEKAWcJlEWfKI6mfK66pWOFtvTaTr8vOgyLRWUZm7StOv/
         e0B2jOeuOga/q19aS5rvl4Pt+97oZzOrrpikrCL4QbOBHz8g1b84RwdHBpTFdCwiyS4r
         aES5AcT8mGikCu3r5GH/SPqTkeMh67s7eSIftzXaB+MieNavqSSM0ToWtXvRC/6FE8ow
         z/x9/2cTLIJTXntcXDTmXAWJ6JW12Lfal55UhjIW/HChrPRTpSo1ag9nx4eYMLedGIDK
         +Hj914Z9ZgCuov9khCVyMwMFmPmB8cwMq4exo0atSg5MrmVlVXHfABnyAHbteNJVoQ8g
         qoNg==
X-Gm-Message-State: AOAM5334obIb8SYVwpMzK7ENFBT0r7HvGjLro8OeaH3NNG0NTYcBVia4
        1XYY8PmPS5l5c3z7bMA8iJo=
X-Google-Smtp-Source: ABdhPJwOROZPu7WOiXOABiG7yBfbtbE1YlC4Cm0J1YB4eG7JTY9y9qG0TIaLKff1pF/0EWDdKoTWAg==
X-Received: by 2002:adf:804b:: with SMTP id 69mr28129833wrk.274.1604437271753;
        Tue, 03 Nov 2020 13:01:11 -0800 (PST)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id v6sm27446194wrb.53.2020.11.03.13.01.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 13:01:11 -0800 (PST)
Subject: Re: [PATCH] membarrier.2: Update membarrier manpage for 5.10
To:     Peter Oskolkov <posk@google.com>, mtk.manpages@gmail.com
Cc:     Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        linux-man@vger.kernel.org,
        "Paul E . McKenney" <paulmck@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Boqun Feng <boqun.feng@gmail.com>,
        Paul Turner <pjt@google.com>,
        Chris Kennelly <ckennelly@google.com>,
        Peter Oskolkov <posk@posk.io>
References: <20201103190433.373528-1-posk@google.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <042cd0b4-236f-ceca-2760-9a4fbbcd3e3f@gmail.com>
Date:   Tue, 3 Nov 2020 22:01:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201103190433.373528-1-posk@google.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

It looks very good! Just one typo:

[[
.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );"
]]
should be:
[[
.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );
]]

Note the removal of the last '"', which was unpaired.


Thanks,

Alex

On 2020-11-03 20:04, Peter Oskolkov wrote:
> Linux kernel commit 2a36ab717e8fe678d98f81c14a0b124712719840
> (part of 5.10 release) changed sys_membarrier prototype/parameters
> and added two new commands. This manpages patch reflects these
> changes, by mostly copying comments from the kernel patch
> into the manpage (I was also the author of the kernel change).
> ---
>   man2/membarrier.2 | 41 +++++++++++++++++++++++++++++++++++++++--
>   1 file changed, 39 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/membarrier.2 b/man2/membarrier.2
> index 3064b2d2e..c95e97cb6 100644
> --- a/man2/membarrier.2
> +++ b/man2/membarrier.2
> @@ -30,7 +30,7 @@ membarrier \- issue memory barriers on a set of threads
>   .PP
>   .B #include <linux/membarrier.h>
>   .PP
> -.BI "int membarrier(int " cmd ", int " flags ");"
> +.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );"
>   .fi
>   .PP
>   .IR Note :
> @@ -165,6 +165,29 @@ core command prior to using it.
>   Register the process's intent to use
>   .BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE .
>   .TP
> +.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ " (since Linux 5.10)"
> +Ensure the caller thread, upon return from system call, that all its
> +running thread siblings have any currently running rseq critical sections
> +restarted if
> +.I flags
> +parameter is 0; if
> +.I flags
> +parameter is
> +.BR MEMBARRIER_CMD_FLAG_CPU ,
> +then this operation is performed only on CPU indicated by
> +.I cpu_id .
> +This guarantee is provided only for threads in
> +the same process as the calling thread.
> +.IP
> +RSEQ membarrier is only available in the "private expedited" form.
> +.IP
> +A process must register its intent to use the private expedited rseq
> +command prior to using it.
> +.TP
> +.BR MEMBARRIER_CMD_REGISTER_PRIVATE_EXPEDITED_RSEQ " (since Linux 5.10)"
> +Register the process's intent to use
> +.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ .
> +.TP
>   .BR MEMBARRIER_CMD_SHARED " (since Linux 4.3)"
>   This is an alias for
>   .BR MEMBARRIER_CMD_GLOBAL
> @@ -172,7 +195,21 @@ that exists for header backward compatibility.
>   .PP
>   The
>   .I flags
> -argument is currently unused and must be specified as 0.
> +argument must be specified as 0 unless the command is
> +.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ ,
> +in which case
> +.I flags
> +can be either 0 or
> +.BR MEMBARRIER_CMD_FLAG_CPU .
> +.PP
> +The
> +.I cpu_id
> +argument is ignored unless
> +.I flags
> +is
> +.BR MEMBARRIER_CMD_FLAG_CPU ,
> +in which case it must specify the CPU targeted by this membarrier
> +command.
>   .PP
>   All memory accesses performed in program order from each targeted thread
>   are guaranteed to be ordered with respect to
> 
