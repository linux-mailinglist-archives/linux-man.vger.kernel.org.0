Return-Path: <linux-man+bounces-698-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E9C88D24A
	for <lists+linux-man@lfdr.de>; Tue, 26 Mar 2024 23:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 738D1B25091
	for <lists+linux-man@lfdr.de>; Tue, 26 Mar 2024 22:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D83413DBB6;
	Tue, 26 Mar 2024 22:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tXlqZH8t"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AED01772F
	for <linux-man@vger.kernel.org>; Tue, 26 Mar 2024 22:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711493723; cv=none; b=uEpz/BL5l98NOPc2yGbdp9aTIWGxfSE9Ga0A8mj6vEnOkAlJILZUbe2xk2IF84GH+GJ1skrmTkjEWgPJ9+t0KF7iVzS6Q/+JdY3FrnbSLvXbZOUMdK6wsRbPV89qgOH0a3ZteXisAC5b+g3G5X2HG4YOzAc4VYUpQwPBmo9eNTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711493723; c=relaxed/simple;
	bh=bM1ANzBkp5VUgJgK/HQymA/zZJ6/F3cWuRYMycneYeM=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=f1hcBcNX3F2scqBRhqFkRzgbArSIQMncsgyhDUrln+2DK5DFtkQUf9Z0XrKkn0tL8onNWH3j3G7NvmT74hAXiUV3QW8YF76wFjku9ubsi8x2sOI2sCFBvdZAzPN74yv9hwA2IHUKzjT23BoDVPUCmNFCJkmmd74i2tPwpCjq1/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tXlqZH8t; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-60a046c5262so58149567b3.2
        for <linux-man@vger.kernel.org>; Tue, 26 Mar 2024 15:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1711493720; x=1712098520; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BCpORnJFYFhUH3sUIwFB55HQ4X2BEGfQrKyOZS7SpD0=;
        b=tXlqZH8twt2ufqv+0rVyosR8VSgtNUmAL1OyjCyCFZ0gn2mt0Uk9Zoh+dGqTwyKNWz
         3gE0xPNYomN2kYrUTg/IlZZStsuSFiCHRAKgwtzJrBmCzvCLulhJemhl5675BZG5kV1B
         EaIQI9lthregiApdDr190UA4zqEbw3O9vUv0smdKWcF2gtYtc4fv+mgV9k6YR/0ZgxN7
         2ZM4RYST6mXfn/scdP1IYwycIRh2NFXx5P+SFWSbtCikRktqvPZgxFLvjvcKhArXAJtI
         HjmyHIMKG+ejgDL7Zv6f0reJ+SLk8I8rMm651yW5Y/s2qO3fBM20ThFenkU7O2iQeMSz
         4eug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711493720; x=1712098520;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BCpORnJFYFhUH3sUIwFB55HQ4X2BEGfQrKyOZS7SpD0=;
        b=PdtpQ/KUheAVTUj1Segg3oa0PM9KcnMiCGrtOCikjtc/Vmu0g/SuIr1brqCdT2udLF
         IgLQ8knXz6qnVpcvTwrkjlAOY6f0WdW7E5/iX8pBob1KrFSmQP7tThVQSZoUEssw0+MJ
         JfonJhi1/pueXLeBwbi0BO2qFQvW4BAul2RSF87o3eGqzw0RN0e1YSGqEJMpTW8X0RHE
         0TsWYng2SAXGjCxfxBHp4NOzj9IIZI6+JDIUJ6pLElcfrNk9nRCI0AER6ef3fBrhf5vS
         HCtA0aGEEhssNFQUDe5Xx2rvrwhORcM1IPwQhBrhT9yvOmgW7RFqJcqynkeVM+KP8AGb
         XGQg==
X-Gm-Message-State: AOJu0Ywh8eQ/hzh78r29eVmzGUnEhz80+YgILfrLrxhXWXdQFUb17uXi
	iJsSsobXQPDCBQy9ar4o5ywkUNEbNdiVvzdmjE+5geGznTBS7nXZljgmPhMT+0X4cTnvUNB2R1e
	I1lyCG/t/UoynHNKQUDNZ+4tJWl5eOlwOkvGbu5kSOQZiUE004QT7yMQ=
X-Google-Smtp-Source: AGHT+IF6JtTw2stxrFN2cC5KjpEn/5SsolQSHv7KRouDHyG+jqkaBZN9RgiyipB+SBsRQUQtfvrjegsIK9hRtxP1RRA=
X-Received: by 2002:a25:8a0f:0:b0:dd0:3a7a:fb70 with SMTP id
 g15-20020a258a0f000000b00dd03a7afb70mr9486080ybl.52.1711493720036; Tue, 26
 Mar 2024 15:55:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Tue, 26 Mar 2024 15:55:04 -0700
Message-ID: <CAJgzZorzr7u7ShTD-B=_p_rOebo3dzoSbCcuTFMQV488FVoHmA@mail.gmail.com>
Subject: getpagesize.2
To: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"

i'm not sure a lot of the text in getpagesize.2 is very helpful? for example:

       Portable applications should employ sysconf(_SC_PAGESIZE) instead
       of getpagesize():

           #include <unistd.h>
           long sz = sysconf(_SC_PAGESIZE);

       (Most systems allow the synonym _SC_PAGE_SIZE for _SC_PAGESIZE.)

is this a good recommendation _unless_ you've found yourself on a
system that doesn't have getpagesize()? on Android i'm advising
getpagesize() because it's (a) attribute const and (b) inherently
cheaper than sysconf(). (though obviously, "if it really matters,
stick it in a static".)

afaict the only motivation for the "portable applications" advice is
that HP-UX removed getpagesize() at some point? but given that HP-UX
has been kept "alive" in an artificial coma since 2007... does anyone
writing code in 2024 need to worry about that enough for this to be
good advice?

getpagesize() is available on Android, *BSD, iOS/macOS, glibc/musl,
and even mingw!

       Whether getpagesize() is present as a Linux system call depends
       on the architecture.  If it is, it returns the kernel symbol
       PAGE_SIZE, whose value depends on the architecture and machine
       model.  Generally, one uses binaries that are dependent on the
       architecture but not on the machine model, in order to have a
       single binary distribution per architecture.  This means that a
       user program should not find PAGE_SIZE at compile time from a
       header file, but use an actual system call, at least for those
       architectures (like sun4) where this dependency exists.

should this just say alpha, sparc32, and sparc64 instead of being
vague? (i suspect anyone who doesn't default to searching the kernel
source would turn to the man pages to answer the "which
architectures?" question :-) though i'm not sure why anyone who
doesn't read the kernel source would care whether getpagesize() should
really be in man2 or man3...)

       glibc 2.0 fails because its getpagesize() returns a statically
       derived value, and does not use a system call.  Things are OK in
       glibc 2.1.

1997 called, and wondered whether we're helping anyone by documenting
a bug that's been fixed longer than several folks on my team have been
alive? :-)

