Return-Path: <linux-man+bounces-438-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDA7852702
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 02:51:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 48A201F25DB1
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 01:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A686D1CAA9;
	Tue, 13 Feb 2024 01:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="fN1QTpgz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF2F1DFC7
	for <linux-man@vger.kernel.org>; Tue, 13 Feb 2024 01:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707788225; cv=none; b=r4k+/R69aUpvrRBPP48lacxBm39UJT1scN1A/DIrJVEjsTW9EsS4QgSV99rNfbDDwL1b0KJsWepz0HHYKVIAWvbBIWstBQ8n5/M7Mze2JM3b+VhfQeqzwBqvdpLeAUQ6Zcf5J5wqvy/Yg2dCp/JzNTTFaZGjezocEDPNVuv8w0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707788225; c=relaxed/simple;
	bh=OVFCoMumXjKFK6Qf4JLhvTm44F3MtcC8YyvEnpuAXbw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uGU6kQ7UUP8s2Y5yFi8STXukI3pDC/bXXZxNryn+H5UQjGuqTbYTgU5QZk6xkLmqb2F8kviHY10gQvPDznlOtGhYHCf7qqCk+LrGpR7mpgheUURYiOv642AlIKv6oYMUexkDjtb2kr5fzsuK2lax0vBhnLwUQtkEQwBkstNg0Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=fN1QTpgz; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-604fa400f85so16978047b3.2
        for <linux-man@vger.kernel.org>; Mon, 12 Feb 2024 17:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1707788220; x=1708393020; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iJNw0cDW5zQEgo5wB097Kw5CyMkAXfMzwYuuAlAfejM=;
        b=fN1QTpgzsVAjk/wx3uLwjlFm0izuyDCiYvMQEwscTcaHhsDZtzuwEBQ5xHBwasJ1Yb
         0+js4oyiIVZsa+dgUVea7GstU3ZT8HpUfnzreJCRMiOuymEf/CTrRmVQkWSkGLDrc+jP
         s+LNWE62yfUsu5jSn8XNcUISg8Bv4GbucihaITRGGdStFOmUSObYpgVMwGd/vxtHuSFt
         E4KMBWR+LB9opOYJVSRPlO0kfzFwxZ6v2sxmT92TIZHky1gbePcDZWj9LZIGKBopkeg+
         UeKIWjJc042xUHFms7EC4XUJuBPDfn+Goj6929eambmmLOQSV0OVLo3911pmJSJJf13H
         7WVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707788220; x=1708393020;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iJNw0cDW5zQEgo5wB097Kw5CyMkAXfMzwYuuAlAfejM=;
        b=oeKpTp4bqhBc9EJX041/Egp80t0bOMf8zC6cIkhrI7jAjf+5vaRuNWcEzFsvCDJHJ4
         /yeGbOJ44wFuajxHpTf3MiYDRA7PtkImjA5e2RclahCq/A5oHUJrQDxeNySKNFt7qguR
         JOuyS80bBMypWLu5FzEHK5cieSMXPs45PhfDNAqR6Z71tCLlhBmPhXQkKobjoePaO6b4
         ulGEV+HZpiyLwrgS4IK1fMuPTPX65g5uTg1qQV0pYsMGUp0B7TrBuUvItF+ZMO5VFu0p
         YVnZlLpOYdyro70Py630k4Yf1b7ux1RXnhgDal3B9tGAVTxQWZfm0ikxLmLBH4IF+A5P
         AUCg==
X-Forwarded-Encrypted: i=1; AJvYcCX7D0o2CkEvmjIYNB4OCJay6zT71lz+1MCyusUxHnhQJAbLk4pNGhutNKNUsfvu2oCQAUeVKIHoDm909Z9vyYCv5yrYb0zVS7nZ
X-Gm-Message-State: AOJu0YywetZ6rLq7ui3KF5V4SM0LCvkjPTT5nDT8eYDisqtI3hniYKPG
	f8a0vAYDArKf3WDO2Dfm0QEZUrQguKFF2WF/J1+fPRz/9NBRCDNNoCM+UX6RNVc=
X-Google-Smtp-Source: AGHT+IFaAab2JcktrHk5F4x9TA54+ecOkYXtxL7QUSbjDL+TT2bVxN2NJjlkkQxiEsHOPeqeoh9mlQ==
X-Received: by 2002:a0d:d4c5:0:b0:604:9b50:e973 with SMTP id w188-20020a0dd4c5000000b006049b50e973mr6441391ywd.44.1707788218492;
        Mon, 12 Feb 2024 17:36:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXnPSYtYk8YTjZUoyqcgFfueBg54yZHY8ivBUmn4iW3buVdH3O3peqEvZKK1tm1DiPFEbrxOkSHMWz66iQgWZyFDtGGfU27XJJF
Received: from ghost ([50.146.0.2])
        by smtp.gmail.com with ESMTPSA id d133-20020a0ddb8b000000b005ff9264e841sm1456756ywe.6.2024.02.12.17.36.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 17:36:57 -0800 (PST)
Date: Mon, 12 Feb 2024 20:36:56 -0500
From: Charlie Jenkins <charlie@rivosinc.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Message-ID: <ZcrHuEqxsD3lj2UC@ghost>
References: <20240124-fencei_prctl-v1-1-0bddafcef331@rivosinc.com>
 <ZckUNXHtp2xkqr02@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZckUNXHtp2xkqr02@debian>

On Sun, Feb 11, 2024 at 07:38:39PM +0100, Alejandro Colomar wrote:
> Hi Charlie,
> 
> On Wed, Jan 24, 2024 at 06:59:04PM -0800, Charlie Jenkins wrote:
> > I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX flag
> > for prctl(2) to LKML. It has been reviewed and is expected to land
> > during the Linux version 6.9 merge window. This adds the relevant
> > documentation from that patch.
> > 
> > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> 
> This patch triggers a few warnings:
> 
> 	$ make lint check -k
> 	TROFF	.tmp/man/man2/prctl.2.cat.set
> 	an.tmac:man2/prctl.2:1155: style: .IR expects at least 2 arguments, got 1
> 	an.tmac:man2/prctl.2:1157: style: .IR expects at least 2 arguments, got 1
> 	an.tmac:man2/prctl.2:1179: style: .IR expects at least 2 arguments, got 1
> 	an.tmac:man2/prctl.2:1196: style: .IR expects at least 2 arguments, got 1
> 	make: *** [share/mk/build/catman.mk:54: .tmp/man/man2/prctl.2.cat.set] Error 1
> 	make: *** Deleting file '.tmp/man/man2/prctl.2.cat.set'
> 	make: Target 'check' not remade because of errors.
> 
> See <CONTRIBUTING.d/lint> for that.

These lint errors didn't show up when I ran it, I must have some bad
configuration.

> 
> > ---
> > I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX
> > flag for prctl(2) to LKML. It has been reviewed and is expected to land
> > during the Linux version 6.9 merge window.
> > ---
> >  man2/prctl.2 | 58 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 58 insertions(+)
> > 
> > diff --git a/man2/prctl.2 b/man2/prctl.2
> > index f1604a7cb..2889a7195 100644
> > --- a/man2/prctl.2
> > +++ b/man2/prctl.2
> > @@ -1147,6 +1147,64 @@ For further information, see the kernel source file
> >  (or
> >  .I Documentation/security/Yama.txt
> >  before Linux 4.13).
> > +.\" prctl PR_RISCV_SET_ICACHE_FLUSH_CTX
> > +.TP
> > +.BR PR_RISCV_SET_ICACHE_FLUSH_CTX " (since Linux 6.9, RISC-V only)"
> > +Enable/disable icache flushing instructions in userspace. The ctx and the
> 
> 'ctx' isn't a common word.  The first time you mention it you should
> probably say what it means.  For example:  "The context (ctx) and
> the ..." and later just use ctx.
> 
> > +scope can be provided using
> > +.IR arg2
> 
> This should be I, not IR.
> 
> > +and
> > +.IR arg3
> > +respectively. When scope is set to
> 
> Please use semantic newlines.  See man-pages(7):
> 
>    Use semantic newlines
>      In  the  source of a manual page, new sentences should be started
>      on new lines, long sentences should be split into lines at clause
>      breaks (commas, semicolons, colons, and so on), and long  clauses
>      should be split at phrase boundaries.  This convention, sometimes
>      known  as  "semantic newlines", makes it easier to see the effect
>      of patches, which often operate at the level of  individual  sen‐
>      tences, clauses, or phrases.
> 
> > +.B PR_RISCV_SCOPE_PER_PROCESS ,
> 
> This should be BR, not B.  See groff_man(7).
> 
> > +all threads in the process are permitted to emit icache flushing
> > +instructions. Whenever any thread in the process is migrated, the
> > +corresponding hart's icache will be guaranteed to be consistent with
> > +instruction storage. Note this does not enforce any guarantees outside of
> 
> 'Note' is superfluous.  You can just remove that word.  "This does not
> enforce ...".
> 
> > +migration. If a thread modifies an instruction that another thread may
> > +attempt to execute, the other thread must still emit an icache flushing
> > +instruction before attempting to execute the potentially modified
> > +instruction. This must be performed by the userspace program.
> 
> We say "user space"; two words (see man-pages(7)).  In this case, since
> it's an adjective, it would be "user-space", with a hyphen.
> 
> > +.IP
> > +In per-thread context (eg. scope is set to
> > +.B PR_RISCV_SCOPE_PER_THREAD )
> 
> The comma should go with the parenthesis.  Otherwise, you'll see a
> spurious space in between.
> 
> > +, only the thread calling this function is permitted to emit icache
> > +flushing instructions. When the thread is migrated, the corresponding
> > +hart's icache will be guaranteed to be consistent with instruction storage.
> > +.IP
> > +On kernels configured without SMP, this function is a nop as migrations
> > +across harts will not occur.
> > +.IP
> > +The following values for
> > +.IR arg2
> > +can be specified:
> > +.RS
> > +.TP
> > +.BR PR_RISCV_CTX_SW_FENCEI_ON " (since Linux 6.9)"
> > +Allow fence.i in userspace.
> 
> "user space".
> 
> > +.TP
> > +.BR PR_RISCV_CTX_SW_FENCEI_OFF " (since Linux 6.9)"
> > +Disallow fence.i in userspace. All threads in a process will be affected
> 
> .
> 
> > +when scope is set to
> > +.B PR_RISCV_SCOPE_PER_PROCESS .
> > +Therefore, caution must be taken -- only use this flag when you can
> 
> Use \[em] for an em dash.  Although in this case I think ':' or ';'
> would be more appropriate.
> 
> Also, I think 'only' would go better right before "when".
> 
> > +guarantee that no thread in the process will emit fence.i from this point
> > +onward.
> > +.RE
> > +.IP
> > +The following values for
> > +.IR arg3
> > +can be specified:
> > +.RS
> > +.TP
> > +.BR PR_RISCV_SCOPE_PER_PROCESS " (since Linux 6.9)"
> > +Ensure the icache of any thread in this process is coherent with
> > +instruction storage upon migration.
> > +.TP
> > +.BR PR_RISCV_SCOPE_PER_THREAD " (since Linux 6.9)"
> > +Ensure the icache of the current thread is coherent with instruction
> > +storage upon migration.
> > +.RE
> >  .\" prctl PR_SET_SECCOMP
> >  .TP
> >  .BR PR_SET_SECCOMP " (since Linux 2.6.23)"
> > 
> > ---
> > base-commit: a81e893f2b9316869e6098c3a079c30a48158092
> > change-id: 20240124-fencei_prctl-c24da2643379
> > 
> > Best regards,
> > -- 
> > Charlie Jenkins <charlie@rivosinc.com>
> 
> Thanks for the patch!
> 
> Have a lovely day,
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.

Thank you for all of the suggestions! I will make the requested changes.

- Charlie


