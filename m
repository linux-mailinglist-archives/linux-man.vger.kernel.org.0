Return-Path: <linux-man+bounces-1280-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BD49199BC
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 23:24:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2D081C20C33
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 21:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9D1193079;
	Wed, 26 Jun 2024 21:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="FErPbFVC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223C216A928
	for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 21:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719437080; cv=none; b=OHIYsvOmlyXXug9UceXQ9NibqWct7hpC6elUdouL1v5os1MtyGYzvs7b8podfeTUIX9Rv3VhGruOUuGPZHJgcWrGEs31Ed7uoXeOWhSD4tZOixOLafIX/akuAPGnkoUn53PPt223unJG8T7QrsXgZPjZNWXN88JmF+AzJ21TZC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719437080; c=relaxed/simple;
	bh=y40Osiym+Xp3xAn9qPwZKLctpFVhnIoNTF+S6ZbhXBo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RrloSVYQ9iASfABdGPi0IS4OZOOqbgBbg+jxZS24PvqXR08goH63P2dqXXDkPhhbTW6xaBZ1knlwbTVHhqf6J4FTa4turZ6mQgZwz+eZSD5YU5mdekGSCqeqBGz+I2Kv3UX6fiS1LfzAozwJH2o5UDxcTh6bJU9HI2Gh5XCgACE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=FErPbFVC; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-375e96f5fddso27422185ab.1
        for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 14:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719437077; x=1720041877; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YObfOZoYsOs3fYEyJXwQzsFl/3BQhrlOnxTKaG7pD2k=;
        b=FErPbFVCxc5pdfBvLYcZai3cWpptjCv52IJdY32fh4oqcZUSYQkfdcLg3ETzmc7Em5
         pICT+m6iusB6849Ux+dva2xAu85Lsd12yP096hnjWBPJK/ZlVErRIt1z9BszYP+c3894
         AN00ReEa89oK4UK4eSTNvm+F88XcWioWUyaMgBrWoAn6YrhXl1xeYJCPe6yyDSM2bhu9
         4Q468ZzzzzgAKYsisIHsVtq9g9QUOgSczuadZqYOMgX5WF+/L3qqleY0vonNXdCH6O+t
         /W4Ek5aijMibfdrv8hNf51nT66ZsA3QlONIluOicWs3bhvnarjMTsrRsmY5xmJHjDjaU
         BGNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719437077; x=1720041877;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YObfOZoYsOs3fYEyJXwQzsFl/3BQhrlOnxTKaG7pD2k=;
        b=JLyU5zY+4Okyl1OWeJM/iMwTUrS1NCLu97KbpYykt+ewcs6HUCdgVet8lNFUf6fvTv
         iiaffw3qbEjKPTwCD63ooQHbdl47Zo2EGcZHrPXqy7+maWnbVNbBfZJ4ev1xQ+OVLsBr
         FSL/LwKn/EilAewsxq4grau46ji2zt69ywR4h4pdVvotyyvqnbsgeGj3uTSey+fAx/O/
         Uz6MsKt1BVpihM2Yp4KHXqf/jGnwI/mkRw6LS2VYTDv3ExN+M1TmAi/9Pc79zJqd5SrJ
         Q/V8btteFAD4iMcPyC14Icc6ZlA8TL1QrSnZxRKDFgQS17gL61ZBSxl5KvdmCvSKUT+8
         oZjA==
X-Forwarded-Encrypted: i=1; AJvYcCVf4f5PIcykrMnC7BEI7f2ipIACoztA8uQ/4D6pkD6pScsC63K4q0Yuj2TIdiBg3PqYvy858LKfN2MwUqiF+I2pR5mODrhHHRU5
X-Gm-Message-State: AOJu0YyzpxhZY3BP3yivaX8KXezY5KfwU8CNMW5dQwoqksCu10VSxOWW
	TPpGjCC5cC6cJjQ44UPAedBwN6+Xp9++7JFtrCVsEUaLG0op7Bx3rXXaAEqx/do=
X-Google-Smtp-Source: AGHT+IG9lUCAzTIaEXqbzG8spiUEDAW/G/5lTw1PCSpPp7iF6YILtjLjCsdvZPCYWa2Ml6jI1/wjpg==
X-Received: by 2002:a05:6e02:1caf:b0:376:24b1:174a with SMTP id e9e14a558f8ab-3763df65e22mr141264745ab.1.1719437077110;
        Wed, 26 Jun 2024 14:24:37 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:d695:7ea4:b5e1:c70c])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-716b36466a3sm9009018a12.19.2024.06.26.14.24.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 14:24:36 -0700 (PDT)
Date: Wed, 26 Jun 2024 14:24:34 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Message-ID: <ZnyHEiYs/V/zwJXq@ghost>
References: <20240212-fencei_prctl-v2-1-32d940981b05@rivosinc.com>
 <ZdFaStMt83D-i8yH@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZdFaStMt83D-i8yH@debian>

On Sun, Feb 18, 2024 at 02:15:53AM +0100, Alejandro Colomar wrote:
> Hi Charlie,
> 
> On Mon, Feb 12, 2024 at 09:19:21PM -0500, Charlie Jenkins wrote:
> > I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX flag
> > for prctl(2) to LKML. It has been reviewed and is expected to land
> > during the Linux version 6.9 merge window. This adds the relevant
> > documentation from that patch.
> > 
> > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > ---
> > I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX
> > flag for prctl(2) to LKML. It has been reviewed and is expected to land
> > during the Linux version 6.9 merge window.
> 
> Can you please ping when that happens?  The below LGTM.

This patch ended up missing a merge window but it is now in the release
candidates for 6.10. The hash is 6b9391b581fd ("riscv: Include
riscv_set_icache_flush_ctx prctl").

- Charlie

> 
> Have a lovely night!
> Alex
> 
> > ---
> > Changes in v2:
> > - Update formatting (Alejandro)
> > - Link to v1: https://lore.kernel.org/r/20240124-fencei_prctl-v1-1-0bddafcef331@rivosinc.com
> > ---
> >  man2/prctl.2 | 59 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 59 insertions(+)
> > 
> > diff --git a/man2/prctl.2 b/man2/prctl.2
> > index f1604a7cb..32ce8474f 100644
> > --- a/man2/prctl.2
> > +++ b/man2/prctl.2
> > @@ -1147,6 +1147,65 @@ For further information, see the kernel source file
> >  (or
> >  .I Documentation/security/Yama.txt
> >  before Linux 4.13).
> > +.\" prctl PR_RISCV_SET_ICACHE_FLUSH_CTX
> > +.TP
> > +.BR PR_RISCV_SET_ICACHE_FLUSH_CTX " (since Linux 6.9, RISC-V only)"
> > +Enable/disable icache flushing instructions in userspace.
> > +The context and the scope can be provided using
> > +.I arg2
> > +and
> > +.I arg3
> > +respectively.
> > +When scope is set to
> > +.B PR_RISCV_SCOPE_PER_PROCESS
> > +all threads in the process are permitted to emit icache flushing instructions.
> > +Whenever any thread in the process is migrated, the corresponding hart's
> > +icache will be guaranteed to be consistent with instruction storage.
> > +This does not enforce any guarantees outside of migration.
> > +If a thread modifies an instruction that another thread may attempt to
> > +execute, the other thread must still emit an icache flushing instruction
> > +before attempting to execute the potentially modified instruction.
> > +This must be performed by the user-space program.
> > +.IP
> > +In per-thread context (eg. scope is set to
> > +.BR PR_RISCV_SCOPE_PER_THREAD )
> > +only the thread calling this function is permitted to emit icache flushing
> > +instructions.
> > +When the thread is migrated, the corresponding hart's icache will be
> > +guaranteed to be consistent with instruction storage.
> > +.IP
> > +On kernels configured without SMP, this function is a nop as migrations across
> > +harts will not occur.
> > +.IP
> > +The following values for
> > +.I arg2
> > +can be specified:
> > +.RS
> > +.TP
> > +.BR PR_RISCV_CTX_SW_FENCEI_ON " (since Linux 6.9)"
> > +Allow fence.i in user space.
> > +.TP
> > +.BR PR_RISCV_CTX_SW_FENCEI_OFF " (since Linux 6.9)"
> > +Disallow fence.i in user space.
> > +All threads in a process will be affected when scope is set to
> > +.BR PR_RISCV_SCOPE_PER_PROCESS .
> > +Therefore, caution must be taken; use this flag only when you can guarantee
> > +that no thread in the process will emit fence.i from this point onward.
> > +.RE
> > +.IP
> > +The following values for
> > +.I arg3
> > +can be specified:
> > +.RS
> > +.TP
> > +.BR PR_RISCV_SCOPE_PER_PROCESS " (since Linux 6.9)"
> > +Ensure the icache of any thread in this process is coherent with instruction
> > +storage upon migration.
> > +.TP
> > +.BR PR_RISCV_SCOPE_PER_THREAD " (since Linux 6.9)"
> > +Ensure the icache of the current thread is coherent with instruction storage
> > +upon migration.
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
> > 
> 
> -- 
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.



