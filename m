Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 196C02A7DD1
	for <lists+linux-man@lfdr.de>; Thu,  5 Nov 2020 13:04:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730540AbgKEMEe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Nov 2020 07:04:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729916AbgKEMEd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Nov 2020 07:04:33 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4E50C0613CF
        for <linux-man@vger.kernel.org>; Thu,  5 Nov 2020 04:04:32 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id x7so1473412wrl.3
        for <linux-man@vger.kernel.org>; Thu, 05 Nov 2020 04:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bzJsIebIUIvwW9bKwpsDVYA/LSMkf88rZznPiszIOic=;
        b=JKhclAhkQFpkAcTNTynD9TKs+5zz0vQ06DqH7r330kb9gSCr5tw2bZ7R5KSg6l/ZW7
         fFSO41nbtYrIh+IBCgPXk85rVOmjPWlzywUXDHYrNVGd3F0YBy5cKy0KGG82Veak4xGz
         pxpZXfrwAWBTIIfMRRZCNl3pNOhLIeiM4CU2dyKimcEkQxjeHZw/xitILxhBEzbsumA9
         t1Eb4YJx/oOVlFzhx6FWRj0amyljbxAAJqvTxLczlXi8Pj5KTYTjmtLgjyhIhnaFfkva
         t4RmLVXpDs4T9XObI/hokG3jfV98M6Txzvb9oTEg++8SUm7AEVoYjdjr502yI5OKMB05
         MirA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bzJsIebIUIvwW9bKwpsDVYA/LSMkf88rZznPiszIOic=;
        b=pkQwCEvIYjs/DWwIEapxv0fgN+PD0JuMVFI+elp+DZ8gJO/3O6hvF7MDSMISYOQLLR
         IFsuhhEl66X4WBrNjyRd3AoxAS1RxOaQ+n3MzNRB5F62v4mW4d7ufQlPzk5oqL5MrsQ5
         Un/W0RfddZ7sKoq+ZxC7eQC/hl5tlDGBYKRFyegKBnVX/gUUxNETEsVMAdVnARlRJdj0
         iKxECglMPGAmHSlNAb/lFt6tuQWeI1GM9R39x7HPLw/XzfW8J0VSuw86n1M3lAA87DPE
         StBBUditMXwgjV+DhEGMvJFPLg/v/aRF81BF8693E3Hb5qVwf1qxSusvbw+D7eCUxL8d
         pi8w==
X-Gm-Message-State: AOAM5334yfR/Cv7PfS1aK3V5ErY4i3KyUFOf1oYnjO1cIdXEOJZsy7XC
        5WDy48G8ZZQ25WfC66ROkYT65m00puuDpg==
X-Google-Smtp-Source: ABdhPJwylKpGeylZpBYnCX+agjIe+4TcUmZvedRYE41XiC3A7W3aQx3EsPDzsgzjRpbILwCpcp/DhA==
X-Received: by 2002:adf:dd0b:: with SMTP id a11mr2699342wrm.41.1604577871603;
        Thu, 05 Nov 2020 04:04:31 -0800 (PST)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id t2sm2281925wrq.56.2020.11.05.04.04.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 04:04:30 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        "Paul E . McKenney" <paulmck@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Boqun Feng <boqun.feng@gmail.com>,
        Paul Turner <pjt@google.com>,
        Chris Kennelly <ckennelly@google.com>,
        Peter Oskolkov <posk@posk.io>
Subject: Re: [PATCH v4] membarrier.2: Update membarrier manual page for 5.10
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Peter Oskolkov <posk@google.com>
References: <CAPNVh5e_u0JcF7dE0sOs6DZrnw1zAw1f9VzCu4B+gO2fOF7AMA@mail.gmail.com>
 <20201105113159.19641-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <95db6bc3-2dda-3840-8a54-87f0bc3fa4bf@gmail.com>
Date:   Thu, 5 Nov 2020 13:04:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201105113159.19641-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Peter and Alex,

On 11/5/20 12:32 PM, Alejandro Colomar wrote:
> From: Peter Oskolkov <posk@google.com>
> 
> Linux kernel commit 2a36ab717e8fe678d98f81c14a0b124712719840
> (part of 5.10 release) changed sys_membarrier prototype/parameters
> and added two new commands. This manpages patch reflects these
> changes, by mostly copying comments from the kernel patch
> into the manpage (I was also the author of the kernel change).

Thanks for this patch! And adding that last detail in the commit
message saves me some time, so thanks for noting you are the
author of the code also.

Alex, thanks for the additional work on the patch!

Patch applied.

Cheers,

Michael

> 
> Signed-off-by: Peter Oskolkov <posk@google.com>
> Co-developed-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> v4 fixes a typo.
> 
> 
>  man2/membarrier.2 | 60 +++++++++++++++++++++++++++++++++++++++++------
>  1 file changed, 53 insertions(+), 7 deletions(-)
> 
> diff --git a/man2/membarrier.2 b/man2/membarrier.2
> index 3064b2d2e..775a399b0 100644
> --- a/man2/membarrier.2
> +++ b/man2/membarrier.2
> @@ -30,7 +30,7 @@ membarrier \- issue memory barriers on a set of threads
>  .PP
>  .B #include <linux/membarrier.h>
>  .PP
> -.BI "int membarrier(int " cmd ", int " flags ");"
> +.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );
>  .fi
>  .PP
>  .IR Note :
> @@ -165,6 +165,29 @@ core command prior to using it.
>  Register the process's intent to use
>  .BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE .
>  .TP
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
> +.IR cpu_id .
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
>  .BR MEMBARRIER_CMD_SHARED " (since Linux 4.3)"
>  This is an alias for
>  .BR MEMBARRIER_CMD_GLOBAL
> @@ -172,7 +195,21 @@ that exists for header backward compatibility.
>  .PP
>  The
>  .I flags
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
>  .PP
>  All memory accesses performed in program order from each targeted thread
>  are guaranteed to be ordered with respect to
> @@ -251,7 +288,16 @@ commands.
>  The
>  .BR membarrier ()
>  system call was added in Linux 4.3.
> -.\"
> +.PP
> +Before Linux 5.10, the prototype for
> +.BR membarrier ()
> +was:
> +.PP
> +.in +4n
> +.EX
> +.BI "int membarrier(int " cmd ", int " flags );
> +.EE
> +.in
>  .SH CONFORMING TO
>  .BR membarrier ()
>  is Linux-specific.
> @@ -350,9 +396,9 @@ becomes:
>  static volatile int a, b;
>  
>  static int
> -membarrier(int cmd, int flags)
> +membarrier(int cmd, unsigned int flags, int cpu_id)
>  {
> -    return syscall(__NR_membarrier, cmd, flags);
> +    return syscall(__NR_membarrier, cmd, flags, cpu_id);
>  }
>  
>  static int
> @@ -362,7 +408,7 @@ init_membarrier(void)
>  
>      /* Check that membarrier() is supported. */
>  
> -    ret = membarrier(MEMBARRIER_CMD_QUERY, 0);
> +    ret = membarrier(MEMBARRIER_CMD_QUERY, 0, 0);
>      if (ret < 0) {
>          perror("membarrier");
>          return \-1;
> @@ -389,7 +435,7 @@ static void
>  slow_path(int *read_a)
>  {
>      b = 1;
> -    membarrier(MEMBARRIER_CMD_GLOBAL, 0);
> +    membarrier(MEMBARRIER_CMD_GLOBAL, 0, 0);
>      *read_a = a;
>  }
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
