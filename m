Return-Path: <linux-man+bounces-447-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9597A854ECA
	for <lists+linux-man@lfdr.de>; Wed, 14 Feb 2024 17:40:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 043C91F24B4E
	for <lists+linux-man@lfdr.de>; Wed, 14 Feb 2024 16:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1919A5D49C;
	Wed, 14 Feb 2024 16:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XotGZ3j5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C1B6215E
	for <linux-man@vger.kernel.org>; Wed, 14 Feb 2024 16:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707928735; cv=none; b=HPUXulfM2t5yIvWH6VhHm2buA89zJfsyaShFILogO4IDS7P+68167S3FsMq7UVn+zdPt8wu1SKEmcnibvH8fSxNS2fpF8IZqgcJ7DKSZHtRz5vPunDPM8kS1VL6mTe7coWBx+8r2IjRHtRg9QFr2LoQcp/pfza1YB/YPknqxqlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707928735; c=relaxed/simple;
	bh=pxTb0uxWsqxdvJzm68MBiOhzQmrBF0s9AVeE6MZqgBU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B9yonAm74c/XehPnBhRPRqnXgGxLD2+WjHUQ875b1N5YQIncRn5B/aRKr4U+FQebZ97/0bh8kYdcwKU8e/oLWiZK7EOhF39jtep2QRdfg/gy4kqGzoiLtY4WlPJjLhgZrPqRse1NFhjQeQ1+oHdYZpjSZBT4dAtaSeK9nbrt+zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XotGZ3j5; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6e0f803d9dfso1559719b3a.0
        for <linux-man@vger.kernel.org>; Wed, 14 Feb 2024 08:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707928733; x=1708533533; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kaA5t5so/Zq3YXLBns+9jS7V+lRtwPOaifyv3RE6EbY=;
        b=XotGZ3j56f1guLqFFwvk0kMbTHGJLC9JwklSLty+GchFZTGMwLQBnRmtz4c7SafAbJ
         K+hB3goa3w8tjxGn2raRDBUpMiwXCQdKGRTcMlFb0ZQwFdvVVx4bVSTlkb6arIhySYcl
         s7K5jtVR14I2IZM4g5sLgAhRWmHt08Bq8LYpd1h7sWfBSofkLybZDFclKUQXsA4XX8Mh
         dgZc7Wix/CFnCUWoNrHB0QzMiKSYg62R7ncw3DhxpoXamZcfN3/kF2v5X/D6GwdLqjcZ
         /1UUoCx/fTnEarEr5xBlCUoL6B4NmPwszngsqUepRBGp3pYioHQVwkoUGTsNR6YHU0kX
         e6yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707928733; x=1708533533;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kaA5t5so/Zq3YXLBns+9jS7V+lRtwPOaifyv3RE6EbY=;
        b=qgEdz4rUGX5G6dF/OTrx7qRLaLgy6lvs4vSxA6vIhzm/nP2OYWx/g3nr2Ka3VE2EO8
         61fyPGtBTBvUuQv7wY6mVQJhVY0xjdwW3f9ZGwhUqf5d5HfNyji02lDSOQx7Uf7Ljuhw
         AfOo5uCszSQA4glYe/R9swIFsLPa0JLmvYoVopZFa5afaMMkfvIKwkFnz5lE6U9lUexm
         K6Cv41/pRe6YCNZJN6wCQXoQUK4N7GhFrzZoe2bNteHhbCDvXTrDULh3+pByGCIhzLBt
         bDn6lhYUQauyp3OP01WhrqUsP8N/v1JLCIjYia8rx5Sk2DFDYy3N+tYvOzep8+hwV+Jl
         ZphQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ97jqn5RRms1IL8RIWP79775E4Zc1IGFMC4DTnx0qJK1OFmeRBx9G4b364w5RfiD/6iuiMnJpTeXqWAmoG12SPJRSqHt8ff/Z
X-Gm-Message-State: AOJu0YzZpbwke1gREmkTEYzPiCM3sxw54m6G1tEhYRvEMDjLe/OocPW4
	rXosxZsBtQ41N4ggYVCnMogGUxQQXXV1E/m27miPce/gl65+0lvgw9rn9206AWk=
X-Google-Smtp-Source: AGHT+IGwTorWaq9TbH1OECLwBlTQbkMsqfF/kcUNeZg7/6PMg0HHW1pdAGEslfgq4hjmQhIqhqZQxA==
X-Received: by 2002:a05:6a00:3d4d:b0:6d9:9613:cb9e with SMTP id lp13-20020a056a003d4d00b006d99613cb9emr3627390pfb.29.1707928732018;
        Wed, 14 Feb 2024 08:38:52 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUDGSsfxMXS5mksX1WFehAeCl+DTopnFhszc7oAkpArRwBy+kzbGPNq8k7t5+dS61N5Qcf4+hQ1TNF3JxPyMLfNx1vNi2GIhdZ6
Received: from nurgle (nat-pool-brq-u.redhat.com. [213.175.37.12])
        by smtp.gmail.com with ESMTPSA id p2-20020aa78602000000b006e0eece1ca4sm4446556pfn.4.2024.02.14.08.38.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 08:38:51 -0800 (PST)
Date: Wed, 14 Feb 2024 17:39:05 +0100
From: Eugene Syromyatnikov <evgsyr@gmail.com>
To: Ronald Monthero <debug.penguin32@gmail.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org
Subject: Re: Documentation: Architecture/ABI calling convention table -
 syscall( )
Message-ID: <20240214163905.456v76p67vgyih2e@nurgle>
References: <CALk6Uxoss7s-rxsKW=dcGWd9rmj3xnLksQvLn7Cyb7EvdSA2Ag@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALk6Uxoss7s-rxsKW=dcGWd9rmj3xnLksQvLn7Cyb7EvdSA2Ag@mail.gmail.com>

On Wed, Feb 14, 2024 at 11:26:39PM +1000, Ronald Monthero wrote:
> Hello,
> Below is in relation to architecture calling standards table for man
> syscall, for the indicated at [1] , [2]  and [3]   need to be changed
> perhaps.  ( arg4 of x86-64 architecture needs to be rcx instead of r10
> and the x32 arch table values needs replacement with exx register
> naming respectively. And also the return value register table for x32
> needs to be eax and edx for return val and return val2 respectively )
> ------------
> 
>        Arch/ABI      arg1  arg2  arg3  arg4  arg5  arg6  arg7  Notes
>        ─────────────────────────────
> ────────
>        alpha            a0    a1    a2    a3    a4    a5    -
>        arc                r0    r1    r2    r3    r4    r5    -
>        arm/OABI     r0    r1    r2    r3    r4    r5    r6
>        arm/EABI      r0    r1    r2    r3    r4    r5    r6
>        arm64          x0    x1    x2    x3    x4    x5    -
>        blackfin       R0    R1    R2    R3    R4    R5    -
>        i386            ebx   ecx   edx   esi   edi   ebp   -
>        ia64            out0  out1  out2  out3  out4  out5  -
>        m68k          d1    d2    d3    d4    d5    a0    -
>        microblaze    r5    r6    r7    r8    r9    r10   -
>        mips/o32      a0    a1    a2    a3    -     -     -     1
>        mips/n32,64   a0    a1    a2    a3    a4    a5    -
>        nios2          r4    r5    r6    r7    r8    r9    -
>        parisc        r26   r25   r24   r23   r22   r21   -
>        powerpc       r3    r4    r5    r6    r7    r8    r9
>        powerpc64     r3    r4    r5    r6    r7    r8    -
>        riscv         a0    a1    a2    a3    a4    a5    -
>        s390          r2    r3    r4    r5    r6    r7    -
>        s390x         r2    r3    r4    r5    r6    r7    -
>        superh        r4    r5    r6    r7    r0    r1    r2
>        sparc/32      o0    o1    o2    o3    o4    o5    -
>        sparc/64      o0    o1    o2    o3    o4    o5    -
>        tile          R00   R01   R02   R03   R04   R05   -
>        x86-64        rdi   rsi   rdx   r10   r8    r9    -
>                                                  ^^-----   ==> need to
> be rcx ?          <<   [1]
>        x32           rdi   rsi   rdx   r10   r8    r9    - ==>  to be
> exx regs   << [2]
> 
> 
>        =>  For x86-64 architecture the function calling standards
>          the arg4 register should be rcx

On what basis are you suggesting that?  [1] says otherwise, and [2]
concurs.

> 
>        => And for x32 it needs to be replaced with x86 32 bit register variants
>          as arg1 = edi , arg2 = esi , arg3 = edx, arg4 = ecx

I'm pretty sure that x32 ABI uses the same registers as x86_64.
strace's src/linux/x32/get_syscall_args.c[3] corroborates that.

>     2)  Also noticed the return value register table needs similar
> change for x86-32 bit
>      it needs to be eax instead of rax and edx instead of rdx.
> 
>        Arch/ABI    Instruction      System  Ret  Ret  Error    Notes
>                                                  call #    val   val2
>        ─────────────────────────────
> 
>       < snipped >
> 
>        sparc/32    t 0x10                 g1      o0   o1   psr/csr  1, 6
>        sparc/64    t 0x6d                 g1      o0   o1   psr/csr  1, 6
>        tile             swint1                R10     R00  -    R01      1
>        x86-64      syscall                rax     rax  rdx  -        5
>        x32            syscall               rax     rax  rdx  -        5
> 
> ^^^-----^^^--^^^------------------->            <<  [3]
> 
>          =>      for x32 return register has to be changed as
>                    rax => eax  and rdx => edx
> 

Same, x32 ABI is identical to x86_64 in that regard.

[1] https://www.uclibc.org/docs/psABI-x86_64.pdf#page=125
[2] https://gitlab.com/strace/strace/-/blob/8fa8a8886966fb873a67074c67eabf6be63535c0/src/linux/x86_64/get_syscall_args.c#L31
[3] https://gitlab.com/strace/strace/-/blob/8fa8a8886966fb873a67074c67eabf6be63535c0/src/linux/x32/get_syscall_args.c#L31

