Return-Path: <linux-man+bounces-469-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4306585CDED
	for <lists+linux-man@lfdr.de>; Wed, 21 Feb 2024 03:24:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76CADB2368C
	for <lists+linux-man@lfdr.de>; Wed, 21 Feb 2024 02:24:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B138F9CC;
	Wed, 21 Feb 2024 02:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ZtXk758N"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A24946A4
	for <linux-man@vger.kernel.org>; Wed, 21 Feb 2024 02:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708482243; cv=none; b=lRyXnM/Ry6kvRkSWjXaRbmqhydSm01Pe1fQIpCbKJ06pow/Riv/in7ZxOJ9gQUckxp/l2Hdba14AHZ21nbYZrE0l4WNb4QU6QFNmVdK96EsGoodtzCTOL4RlOz6QpV0W0TpLZWvZ5Y6GfuVKR/gMw0xcn4mtRqJeb9651bmfvHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708482243; c=relaxed/simple;
	bh=5w41zd8cSXmSe4uVwH+OPphWtSQYoSJMkMfZdRPdI9s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WutgH6Mn55YwUm3MdTphpYaiZqcHuzsheb9URIMeVGIxJv/wdvCdmvwYFQdX6jp3saN1bjjcursCfjIWVSAV5Q5fz3lOQt+sbY7sSCB1huWJ8xxFHEZpRb+cbQudLqOWXCvmBKTDJ0TRQVMdidJap9vzcTelF0RSN1Dqqj56T8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ZtXk758N; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1d7431e702dso60736825ad.1
        for <linux-man@vger.kernel.org>; Tue, 20 Feb 2024 18:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1708482241; x=1709087041; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UTIYfH5Zz5kYZjdPUnaVM+bRZCOAt4HrI39Z+jb5P88=;
        b=ZtXk758NZxg9CGJOMllb2eCMB7qSod0xQEdRhvNzhpg+wtPXtH/ULZJmW260nvioDw
         ErH87ASQEUrGx4Rg0AgBLP2JtkWNNufRXopeo6X935RUXF5SJjvaBV/RsjTeoWQZ08XN
         1Y2WGFPpCHdoHeHp01D50vGyysfHmvnPXW3IHnMs/89ta8pKwI6gfT8A1NTUNNydOBQy
         Z89Nfb3auFuNIZBxH1rKEKwN4IKFPlvRlUe2i13UQoahkrjoL9mtFUNuXJDLkXzedt6Y
         l6BfvqWaFy8RyXdp7AWyLDGr7VJJds/BHQ3Txi5wcqIsj0FcukC/3su9qRjc8LOgNstL
         4Fvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708482241; x=1709087041;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTIYfH5Zz5kYZjdPUnaVM+bRZCOAt4HrI39Z+jb5P88=;
        b=R5czggFI6xDshvVS0U9CMMGnm9rYSvO8ox1avG96mg7aWAVRekfI0oVRoz1MKOBFSr
         Csg9Zdy06t8b37bMpQKyQuhhXxFzet75cjcy+iN5zmj8ZcrbWLNSv0N9mo4wI2SKu2z8
         6X2v6XooIp5mup0XG1OhhbG/q4U29+uxVp9/nx8/njmGSd1Tnu+RdOgIsvjNuogvZQ6Y
         x2ejY5GkCN0tw/snYyFbo7sE3UHgRyWkpC0Ip8DiIWeRb/tbrxvfKkyaSwGdO9yuSozu
         /aWFbrDCmh9c94HdyIReWQHeITjsoZrBbnwmHy+a/MzNujjMfIJ0HLHY58MATgZ4MqaO
         CRiw==
X-Forwarded-Encrypted: i=1; AJvYcCXeqAi1HofC6gtC+P9zM8FTDq63BWQym4kdQ5CtjCJL7q2Dd3YTxFCm9t4hfYeUwOuwQQk5SEcLM+ROyT5hSPrbp8ilc5wmB7YB
X-Gm-Message-State: AOJu0YxeveMj/gwaNdDZD1CEuUdLX28CjgaSMj/4ToihiLaSjZ/aqR7+
	P9s993uxAgxpOdkTMHUJLLAC0b/n9CdziG28TQcfMHfYSLSezkq9d1p5mAiu4Hg=
X-Google-Smtp-Source: AGHT+IEUa2TE9jYx2CuPkx/mMgDyOwE4VH96vzoQBoN8eDJfVAXzR4YXyPrsGBUq3MFYPeSVuuLGtw==
X-Received: by 2002:a17:90a:bb8d:b0:299:41fd:a59d with SMTP id v13-20020a17090abb8d00b0029941fda59dmr9107082pjr.35.1708482240717;
        Tue, 20 Feb 2024 18:24:00 -0800 (PST)
Received: from ghost ([12.44.203.122])
        by smtp.gmail.com with ESMTPSA id pq11-20020a17090b3d8b00b002966a13f2e9sm388905pjb.37.2024.02.20.18.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 18:23:59 -0800 (PST)
Date: Tue, 20 Feb 2024 18:23:58 -0800
From: Charlie Jenkins <charlie@rivosinc.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Message-ID: <ZdVevjnZVqNHaIqW@ghost>
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

Sure thing. Thank you!

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



