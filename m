Return-Path: <linux-man+bounces-2075-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 073D89D9F1D
	for <lists+linux-man@lfdr.de>; Tue, 26 Nov 2024 23:13:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B5B01666F9
	for <lists+linux-man@lfdr.de>; Tue, 26 Nov 2024 22:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D9C1DF736;
	Tue, 26 Nov 2024 22:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=maine.edu header.i=@maine.edu header.b="cWLHgMtw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106FC1ABED8
	for <linux-man@vger.kernel.org>; Tue, 26 Nov 2024 22:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732659230; cv=none; b=KSq38Fz1ra7hTWQ3RIq0T9k6OqYeg9BD+VQnFBa0Rvu3VMxwqfcB1qV+1SGkV6xQW6WdhMKL/2Ed2lPdRdd/P2zmnwhrHyWyMvDiCBFKxvQw6ew6HvUjlIB++kPeI9HsaSxphsAZI991NvpLhhteBr0ykgQQUTyQOUl0905F+10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732659230; c=relaxed/simple;
	bh=taiOxPz4auFfF9OuAUGHYzdv/sSg5fLP6wEISmFWhPo=;
	h=From:Date:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=Q8dOun55jba4/ADX/Xe6lqh+mXA2lXVqPECK0rYLJa+hYV88WrbtiTX9Ir4gdtZ2Lbaryua8J2IoqgwQwzUZodLDo7b4lyBpXTGqHOkkG73EyArVpohey2d3DXADGVbbSRod3pFOyDJ/Q+ey/qlDI6/pX+ZuqqkIXS97y4bio1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=maine.edu; spf=pass smtp.mailfrom=maine.edu; dkim=pass (1024-bit key) header.d=maine.edu header.i=@maine.edu header.b=cWLHgMtw; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=maine.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=maine.edu
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-4668cec51afso24642591cf.3
        for <linux-man@vger.kernel.org>; Tue, 26 Nov 2024 14:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=maine.edu; s=google; t=1732659228; x=1733264028; darn=vger.kernel.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:date
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=n8vnet+jZUHVtbZiOVIfYJ+cqQVDEOSc7i4QhcykLOs=;
        b=cWLHgMtw2ZV+pIwXIG29W20tEgSm/6X236saPpvMJjnVSQusXq9fVixgljgKshWurG
         vmMOToJ8vWZPgP5AxUrLSdxspVdm7G3RyzSP0tsrGMD176GqUXLaPk1q3RNYwBi0YuBO
         4qKdQz9ki8LP14RoExZekXrXOaiyIvaa7JNAg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732659228; x=1733264028;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:date
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n8vnet+jZUHVtbZiOVIfYJ+cqQVDEOSc7i4QhcykLOs=;
        b=vmYH06KHKP/hzS8a6RI667h7VZ2kEhzujOM2G2ct6TGlfnZL1Rcxoi144bm+fPTF+T
         RYJ5yv1wmg5nMS37WnuE+hpm+1wFz/G7Woen2qCFIeSPhOQcK5Gp4Hs395xEdCd1nEIZ
         2HGa4r/oB5XvUQ0YOTlhWnZ/XrNPcka/ARdk2gGvNwrqVF4yIdWWYp1SIFYFnhl6pjgz
         Qa2NeA5WlWhP0/kULJvfkv0OlVqDK+0CQjmMeBkB4Y3k97+dIg0Nyox0nzyaevmhNn0x
         X7m1ucPjObL+Fcb5uWD0uMcTPFJARGIly6kRKOedxLx+axADvi9jnEPJet+/cFdLjI3J
         2q5A==
X-Forwarded-Encrypted: i=1; AJvYcCXCYvwiGvLfVZT9sphP+IJZ4Ln6+0m+iBZmha2MQ85f0FEIQjAUJtQHGNZWO/Y7u45v1JyeoB7rOLQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YzcrTblZqnOSbISEF1xMd9AmC+rFtAoYpUmt8ZzzGcKfSiP1vfA
	s3RE1b52XuH6wpE+r0FipcaWyo65m74S2jOyZNn/QAEgRdmMxw2LamJnPU9q/XmATwEhftKCPyg
	=
X-Gm-Gg: ASbGncuQHKQPYCODMgJuKT2gO6CehzSk2f9F5CrCWHX/KaKdu2/SDBbfJFc71qPveyu
	ns+dgd7I9nQDCPvHazXrIcHnVYN9PDJOvj1Rd5kUOsed7/5ileovZHfbwf3A2ZSj3gzt+tEtWiq
	BRbsn1ZVpyC2IR6NO439gkrq03Q6fU6sguCK0xbJ1r2YZKW6jElds0wSHscMbyX0yzIhlkr7C9Z
	cg+MBgmSBj0ryffpsf0aAHYSAlbmk3XBZR8f5XfS5Hcme2+AEwyn+AvNc/9NYT9gxLcrYgu
X-Google-Smtp-Source: AGHT+IFB8EjeCvd8p/S9ybtXlr5lQgvIArr8w8e4rrRFHmsDecOakZA0PqppF8gLye0+x0vQpZ7ADw==
X-Received: by 2002:ac8:5d54:0:b0:460:e593:45aa with SMTP id d75a77b69052e-466b357ce9dmr11812211cf.33.1732659227830;
        Tue, 26 Nov 2024 14:13:47 -0800 (PST)
Received: from macbook-air.local (weaver.eece.maine.edu. [130.111.218.23])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46693dfe536sm29682951cf.8.2024.11.26.14.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 14:13:46 -0800 (PST)
From: Vince Weaver <vincent.weaver@maine.edu>
X-Google-Original-From: Vince Weaver <vince@maine.edu>
Date: Tue, 26 Nov 2024 17:13:45 -0500 (EST)
To: =?ISO-8859-2?Q?Miko=B3aj_Ko=B3ek?= <kolek.mikolaj@gmail.com>
cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, 
    linux-perf-users@vger.kernel.org
Subject: Re: perf_event_open.2: mmap ring buffer requirement for receiving
 overflow notifications
In-Reply-To: <CAHGiy68y37n-y_b0gR-dArxFRzYOAr93dCw_6bvkNReNWQ37Hw@mail.gmail.com>
Message-ID: <00910b8e-fdaf-45ae-8dcc-8c926d7fce65@maine.edu>
References: <CAHGiy68y37n-y_b0gR-dArxFRzYOAr93dCw_6bvkNReNWQ37Hw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-1463802360-1841494558-1732659226=:2159556"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---1463802360-1841494558-1732659226=:2159556
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 23 Nov 2024, Mikołaj Kołek wrote:

> findings. In the MMAP layout section of the page, you can find this
> sentence:
> Before Linux 2.6.39, there is a bug that means you must allocate
> an mmap ring buffer when sampling even if you do not plan to
> access it.
> Unless I'm somehow misunderstanding it, this statement does not seem
> to be well worded, or alternatively this bug does not seem to be
> fixed.

That text was probably written by me.

I tried looking at the 2.6.39 code, my perf_tests, and also PAPI which was 
where the problem was probably noticed but I can't find a firm reference 
for how the issue was fixed.

If I recall, the problem was if you were trying to create a sampling event 
without mmap (say you want to get a signal every 100,000 retired 
instructions, but you don't actually want any sample data).  I think 
before 2.6.39 if you tried setting that up you'd get some sort of error 
(an EINVAL?) when trying to start(?) the event.

It is possible this wasn't fixed.  I tried to be pretty good 
about putting relevant git commits as comments in the manpage but there 
doesn't seem to be one for that part of the text.  I'm guessing it was 
PeterZ doing the work on this so maybe he remembers.

Vince Weaver
vincent.weaver@maine.edu


---1463802360-1841494558-1732659226=:2159556--

