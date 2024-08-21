Return-Path: <linux-man+bounces-1639-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1CF95A44B
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 19:59:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D53701F21442
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 17:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCA691B2ED8;
	Wed, 21 Aug 2024 17:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ca8UX58j"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19991B2EF5
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 17:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724263176; cv=none; b=AncG4LkBt27MX+0K1oBEf61nqihXQA09DsRJeHnw7OWwdErN50gKCJuQ2gTWfGf+xsMJkGMScIR5tB7FswWGknlspshscYJzfns1kokPfFgBcC+knHibBb9VDADk8t6yE3lPsyK0ztGEyeTTGoUh0XAecJh7sYtIP02NGNw6rMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724263176; c=relaxed/simple;
	bh=DD2DN2lqEW5hlhBcTpXuQfP5ZZhepPnokRxo0jA5IEk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YGLqOwIUew5L9H2nCnRujDDlk3VKDjfFBoBSAP6mxokUno+MfTNBGyznawqEv0wdbqYO4PUTT/OP8iLSLIGROrFMPj++YGuV0IunnDE3qhVRXJks8ublU6x5nWsrt9GWaBaDwSKmIIDRN//SYYr2gJQK4F7NbeAVDOOn7luDx+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ca8UX58j; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6bf7ad1ec3aso36008126d6.0
        for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 10:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724263174; x=1724867974; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+83IXXwAwhpybwqhjxZ2aNdOQgVzZyT3Yex1Qb6FMp4=;
        b=ca8UX58jXHK5mhxQAYv4Gg34gcfrdAog6VhIwp5W2zgweX6x9mg+4B6l4pC5e4GczJ
         xJBgQjIVRMe0/LMHiIZqFPPlKK38h2V1/PXLOKXjL9jY1NbroAmPdOOUXjfQdtxL/elr
         iyUs/dff4PD9cUmkv22cOLnT28qi/McipbIzb6qEwrI9dqsJr1wgBUPhjXoq7sJHmf/E
         y8rOMo/8BJZ4F2hW07xcOwOp95+tY2IWzELTkSzOdcT+ChFdvNhSsVL/poA2M4aQ1nfQ
         CzscaQTy5O+X/p3R7JEgRLJhKxDiSm7cp+kcvuBI4DLbJ6ducrzjOZNQQGBhy3zuHlZW
         MZcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724263174; x=1724867974;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+83IXXwAwhpybwqhjxZ2aNdOQgVzZyT3Yex1Qb6FMp4=;
        b=pJyPobdzUrwpAqpc/2ip/oCF6g/Ye9iBHHseS2t1zOn/ESdWI6RpPbRt6XTyHifnbd
         lwcLVMmhWXTIqGoQhKRtA5BNHoumdsetMulOHNUH8bJqM8HZmcuFC2LxPdZsdOVvX/4O
         +LDZdQRpn55BdsON+ZX012UdSTJseqP0fXrgx1c169If1BuGbmxqtz5nEB9CV8VqD7Ym
         54vP/XNucq7Aowl5qf/3Ou3Dw7sNR4QlL7eBVD5Vgh8M4Ht78av8+uaySPQHdhvBw+ed
         2YficPEfAJPxRS9LHoLMTONW+hy4jipA8BgPc1Cb82hbhddy8pGAoEq2ibdLkEDf1/bV
         N1wg==
X-Forwarded-Encrypted: i=1; AJvYcCVMgFx+Ma2ScQMjdkc0BRLFGq2INDxxQQ6gLso6GIO4xU4wEw07jKRcmu0Sjaef2c5SiTCJFlIHgnA=@vger.kernel.org
X-Gm-Message-State: AOJu0YzaPSfpkDpTu6KwWgbk/jmBTT7Rc9QnpDAY5GhEdzVlCUsqRnFX
	+6Jp2YZAcrq0GDXkTehCPqnEW8PerGNoQRS4oigzhrrHk9TejyqR9wrQ8nLac6ilhpkc0dYydxI
	HsA7Dsmtw9Xe/LBjzs/AFZ8wxrjozYzx3RSea
X-Google-Smtp-Source: AGHT+IFA1GoLv8z/A5Tb//vQG6LcPIgV5O/E3SUsk/uNJWcxge6TkBzSVoLIgz+MV4EGzk4DUAX+HhfCE0SqD49LQTM=
X-Received: by 2002:a05:6214:5a0d:b0:6bb:841c:ec72 with SMTP id
 6a1803df08f44-6c1567b4d46mr35798846d6.10.1724263173611; Wed, 21 Aug 2024
 10:59:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
 <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org>
In-Reply-To: <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org>
From: enh <enh@google.com>
Date: Wed, 21 Aug 2024 13:59:22 -0400
Message-ID: <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
Subject: Re: arch_prctl()
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: libc-alpha <libc-alpha@sourceware.org>, linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i wonder if part of the problem was wondering what the signature should be?

       arch_prctl() sets architecture-specific process or thread state.
       op selects an operation and passes argument addr to it; addr is
       interpreted as either an unsigned long for the "set" operations,
       or as an unsigned long *, for the "get" operations.

On Wed, Aug 21, 2024 at 1:39=E2=80=AFPM Adhemerval Zanella Netto
<adhemerval.zanella@linaro.org> wrote:
>
>
>
> On 21/08/24 14:02, enh wrote:
> > i see glibc has a _symbol_ for arch_prctl(), but there's nothing in
> > the headers? a variety of projects seem to `extern` it themselves so
> > they can use the glibc symbol, even though the man page denies that it
> > exists and suggests you use syscall() instead.
> >
> > is this half-existence deliberate, or should it be fixed one way or
> > the other (adding the header declaration or removing the symbol)?
> >
> > i notice musl is the same, but i assume that's just for glibc
> > compatibility rather than an actual decision on their part.
> >
> > before i copy the same oddity in bionic for
> > https://blog.chromium.org/2024/06/building-faster-smarter-chromebook.ht=
ml
> > i thought i'd at least _ask_ :-)
> >
>
> It seems to be a overlook from when it was originally added (a47fd6810cb)=
.
> I think we should add a x86 sys/prctl.h with the definition.

