Return-Path: <linux-man+bounces-1640-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9119C95A46E
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 20:09:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C18D1F21BBE
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 18:09:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D9E1B2EE2;
	Wed, 21 Aug 2024 18:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="3DV1QN1R"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381651494D1
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 18:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724263783; cv=none; b=gh/sGqGWbt+/mtCT6HmkAOwYCN1n0mdttBs6W+p/opAmqkQ7xWfOzxHcK9Hv3T7qZ8+ytlGePMidfFRmrnwWhws4i+ca7o2FtV6Q7QMl+iGWyeLfv50kNeV7xg5DmdLQcJNrTLra0L+/95ISiQBMmzHG+XA8rFCqeIGpin2+XrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724263783; c=relaxed/simple;
	bh=m+NRXc6KZ8ZbnHh9Ub5fX9y3jsB2yG//4zgP1g6nF88=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LYbdq4RXSc1qyrqsx2Ng6qUrdv9/IWCZijBph1NLRxOgb0EMZjQgn+BBm9zdiaSsnUjtaB41VsWlhrtrjZcLaApyZqBshmQ2TCM6mua23WrKw574Rlr6DBwlXlZyFNwPSE28SlkA7yOuugRfWc9MJcVW7FdCMLPFqCWc/dcGMrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=3DV1QN1R; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7a1d7a544e7so432785a.3
        for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 11:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724263781; x=1724868581; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1WyDu/z+Kg8Mnoy345f0rBD85BH+evmxIBUPPCCpNp4=;
        b=3DV1QN1RWpLxMK5lDtUKW14EX9SVJ+klUgGUfKVy74neEaTZ4UBCFXKkU0x0aTEAc7
         AVc5K9qx/u5Nx7q+b8s5jpP25DfCZzxyZwJh4kwr9/dZes4oZL6HyJ0zmPsNLkiADTx+
         eIqSr5gfgwl5NBl2NR4zqDQ9dHWCLeScUO6EU1llSpKZW3UQTRcVFv1S4OpJvDCSJcDZ
         XAhv3mnDzBTGKaKG+EgM5TKsmUoGM3sXWoJu/ORvvngQg6ysupw3d5uTN5+OHfJLOZD8
         lQAMplA3bViYjZCLM/A+hrZElypKI5UgS7NaHX5dGwejElMfgYtat+AsUuOwixj9n+M2
         bqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724263781; x=1724868581;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1WyDu/z+Kg8Mnoy345f0rBD85BH+evmxIBUPPCCpNp4=;
        b=DqWqjPIPr2MFOlSzeqIPx7n8O49hxZGx5IS1wuAtE4LMahjPXFlEeihdhaNiTFC2vR
         DNauXaGMVmkY7g3h0VqG+0/LSUKwDpvmNmuIxs0xuqFihQdkBXvs0Pnvg6jFRqKY5dNK
         lcNr6v1kno3mbfggDa/lieI46bQ5uG0uiu6Q8B2n2cp8TlFL3VwiWvGTtLCg7Xz5RbHo
         N7UO/6aVB4C9m6a/HAAOh3NfqMyO/qst/R7MZcZLw4smhAsbo5rnLCEdmXKUu5nZE1G7
         9+2gbts8krrsRtypylKenwMhdrPIaNQ55zJ7BWufAlvc1BeM2wan9sMC4M0WbPnzX32C
         trCA==
X-Forwarded-Encrypted: i=1; AJvYcCUbdTq7N+phVBgGHVisO8SOm/a7UDxz+obRHnQNdENkHHf5g+a7r/qIrRCZssB+NoViVJ9YJ1nei7s=@vger.kernel.org
X-Gm-Message-State: AOJu0YzY8U9ca1HcJl/xv/Z3oD/6l8yPtn0oNWAgtyAkGX/n7VXM6MNs
	VaOOROvJyw1REG4HYZhKB4bPzCxrDPP5Bcyfq1+S1dGI5KsWf4cROOI1CDhpZIMlPUN46YsLmqQ
	PA/ndT05SAph5gpE8QiFTNXB026xzDQCY4W4+n+jEemPbs9TZ1vzd
X-Google-Smtp-Source: AGHT+IFhCBeXvnxAXCAXttVT4pQdRwCojOhUR7dcKtSts9c8w6Nfql5NayDeccoF098cMr6vSl7HyNittqG05KSLMOI=
X-Received: by 2002:a05:6214:5f01:b0:6b5:936d:e5e9 with SMTP id
 6a1803df08f44-6c155d9aeaemr44738586d6.26.1724263780942; Wed, 21 Aug 2024
 11:09:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
 <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org> <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
In-Reply-To: <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
From: enh <enh@google.com>
Date: Wed, 21 Aug 2024 14:09:29 -0400
Message-ID: <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
Subject: Re: arch_prctl()
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: libc-alpha <libc-alpha@sourceware.org>, linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

it also looks like the relevant constants (such as ARCH_SET_FS) are
only exposed in <asm/prctl.h>, which isn't currently transitively
included from <sys/prctl.h>...

On Wed, Aug 21, 2024 at 1:59=E2=80=AFPM enh <enh@google.com> wrote:
>
> i wonder if part of the problem was wondering what the signature should b=
e?
>
>        arch_prctl() sets architecture-specific process or thread state.
>        op selects an operation and passes argument addr to it; addr is
>        interpreted as either an unsigned long for the "set" operations,
>        or as an unsigned long *, for the "get" operations.
>
> On Wed, Aug 21, 2024 at 1:39=E2=80=AFPM Adhemerval Zanella Netto
> <adhemerval.zanella@linaro.org> wrote:
> >
> >
> >
> > On 21/08/24 14:02, enh wrote:
> > > i see glibc has a _symbol_ for arch_prctl(), but there's nothing in
> > > the headers? a variety of projects seem to `extern` it themselves so
> > > they can use the glibc symbol, even though the man page denies that i=
t
> > > exists and suggests you use syscall() instead.
> > >
> > > is this half-existence deliberate, or should it be fixed one way or
> > > the other (adding the header declaration or removing the symbol)?
> > >
> > > i notice musl is the same, but i assume that's just for glibc
> > > compatibility rather than an actual decision on their part.
> > >
> > > before i copy the same oddity in bionic for
> > > https://blog.chromium.org/2024/06/building-faster-smarter-chromebook.=
html
> > > i thought i'd at least _ask_ :-)
> > >
> >
> > It seems to be a overlook from when it was originally added (a47fd6810c=
b).
> > I think we should add a x86 sys/prctl.h with the definition.

