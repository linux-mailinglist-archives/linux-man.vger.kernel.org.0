Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BB5DFB1B38
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 11:54:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387447AbfIMJyu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 05:54:50 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:38792 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387439AbfIMJyt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 05:54:49 -0400
Received: by mail-wr1-f66.google.com with SMTP id l11so31406189wrx.5
        for <linux-man@vger.kernel.org>; Fri, 13 Sep 2019 02:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rydZ7UqWGVqZwzwkznZVbg+4+7vAiRwiDYQ2P/xLWiQ=;
        b=ve6XFiQ3L6gusJ/+1TajLFmvzVA4wTeLR2nzXCbpAvmze+xtJZDN/Ty9z3OxthAXoq
         6nnftFb4wR81dAfH4CD54VXRsx5rGUuQyJfYN0d5JkFl+8BYrzzHqWm17V/zIVqgvCTh
         TCuIOT91yvx5JY66/ZO0QXEzstbTvzyqyrxehRxUbtyHmRgmp5R0q4dvaRAurVzdq6PY
         xRMmcuzBxO8kQLQUei+E5HrDilZXLfgK5vLZL8McNcyL2CQotftQuutaau3JcNbYpQsR
         XkhFpCI+cf5gswPw1Oktm2+DQP6smES9BnJM7+agbX2wpSanHpb1oFhrorelErw6szX9
         lnmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rydZ7UqWGVqZwzwkznZVbg+4+7vAiRwiDYQ2P/xLWiQ=;
        b=TRVSD28pQywe9E+oMDP9bOKPLH3OLzR9pmkg6ga/Da1O0YdTpLb364C0+e//Gm+9MA
         uRM9erVCOfAOLkYgrq7dpdFZelWs1ZMAzysIjmSA8kTb2JABqkKK+5/T0Hwo/zRW086v
         YBAT2Ruy9NSA0E6BgJyN/D58L3+7PzcMCmPugQBR60JRioKLPdTovWqSgU/aonmn8gbs
         6u4+egU8DPTIIJg+xyolDQJu3xVfTOQLCIFZoVtdRo7jr7De8XzrHSr3GhY5vE9w/GBa
         D1LQ4VbYU7dwBygYu2UH+8gGuuYDsGzkbqvG3GQgcR++nVj12QKReSJ/S0yHHQ851cLr
         cizw==
X-Gm-Message-State: APjAAAWYC2PZpHpe+L7xPwElDmx9U4XYjxz6uP1SwB4XDkAWRV7JN3J+
        SrI7s4poSHYKViBCUF0giTwxnQKz
X-Google-Smtp-Source: APXvYqyQvwQXEMnB/S9AWhrtAxWe+GfAc+sLt/ToORPi0FJftxMsqqr1Ddt6WxPQaLR58EBtb6o2EQ==
X-Received: by 2002:a5d:4402:: with SMTP id z2mr38473346wrq.183.1568368486678;
        Fri, 13 Sep 2019 02:54:46 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id t25sm1907380wmj.29.2019.09.13.02.54.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 02:54:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] syscall.2: Add information for powerpc64
To:     Shawn Anastasio <shawn@anastas.io>, linux-man@vger.kernel.org
References: <20190913060326.12808-1-shawn@anastas.io>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c6e02a23-fdd7-1dd2-ef1c-d4f6d174c521@gmail.com>
Date:   Fri, 13 Sep 2019 11:54:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190913060326.12808-1-shawn@anastas.io>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Shawn,

On 9/13/19 8:03 AM, Shawn Anastasio wrote:
> Add powerpc64 to the calling convention tables.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Shawn Anastasio <shawn@anastas.io>
> ---
>  man2/syscall.2 | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index 33e5ea655..8db5c14e2 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -196,6 +196,7 @@ mips	syscall	v0	v0	v1	a3	1, 6
>  nios2	trap	r2	r2	-	r7
>  parisc	ble 0x100(%sr2, %r0)	r20	r28	-	-
>  powerpc	sc	r0	r3	-	r0	1
> +powerpc64	sc	r0	r3	-	cr0.SO	1
>  riscv	ecall	a7	a0	a1	-
>  s390	svc 0	r1	r2	r3	-	3
>  s390x	svc 0	r1	r2	r3	-	3
> @@ -220,6 +221,11 @@ On sparc, the carry bit
>  in the processor status register
>  .RI ( psr )
>  is used instead of a full register.
> +On powerpc64, the summary overflow bit
> +.RI ( SO )
> +in field 0 of the condition register
> +.RI ( cr0 )
> +is used.
>  .IP [2]
>  .I NR
>  is the system call number.
> @@ -322,6 +328,7 @@ mips/n32,64	a0	a1	a2	a3	a4	a5	-
>  nios2	r4	r5	r6	r7	r8	r9	-
>  parisc	r26	r25	r24	r23	r22	r21	-
>  powerpc	r3	r4	r5	r6	r7	r8	r9
> +powerpc64	r3	r4	r5	r6	r7	r8	-
>  riscv	a0	a1	a2	a3	a4	a5	-
>  s390	r2	r3	r4	r5	r6	r7	-
>  s390x	r2	r3	r4	r5	r6	r7	-
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
