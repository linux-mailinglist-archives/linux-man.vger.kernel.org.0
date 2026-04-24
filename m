Return-Path: <linux-man+bounces-5394-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eH5pIkcr62keJgAAu9opvQ
	(envelope-from <linux-man+bounces-5394-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 10:35:19 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0200245B8E6
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 10:35:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAA643022621
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 08:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5183368BC;
	Fri, 24 Apr 2026 08:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mongodb.com header.i=@mongodb.com header.b="ER+JO/AZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D19A31D366
	for <linux-man@vger.kernel.org>; Fri, 24 Apr 2026 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777019574; cv=pass; b=M+vwcfFqAAgbwbfPKpOsocwr2jxIR6fqXHtO+WwJogVJVVD1uNSY/uks0HNhI3J1xKcAws/TJMdmZAxqKyw6dHRFgMKohvDUZedqC91Vd0eQE5nzNn5r4wtIkMZngnoreajzHU7/1ZggDtLaKY/S9LaNcMqCij2PkrkVh6uB8n8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777019574; c=relaxed/simple;
	bh=fHd592fobwdTWqnUNJFyuiJGQEtz3MizalfeABFs5so=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QDsiL70ZegGoKQccDa9P8Yc3xxa8hCr0XGcSHqsjKKFXRuCfDevv3+eSjceMu/2cc/yGSCt9k4853IRLm98jfpNTqMOml2kBVwRJiqr/0ZQVlpmO+urofGZtZ29NrhOoXQ7YsHrCn+1wJsMQVwcId7n+xoaCx+fTea+Q3EjySFE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mongodb.com; spf=fail smtp.mailfrom=mongodb.com; dkim=pass (1024-bit key) header.d=mongodb.com header.i=@mongodb.com header.b=ER+JO/AZ; arc=pass smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mongodb.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=mongodb.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ba51e69988aso1019136766b.0
        for <linux-man@vger.kernel.org>; Fri, 24 Apr 2026 01:32:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777019572; cv=none;
        d=google.com; s=arc-20240605;
        b=StPJhMIzBTBwzU6CgJ4S49jn7HqiGvArh1ac1p61rC/UjVB3VflyfF00DPAdxLF12d
         1AjEqWWuyRg4t65LyDefhcgi7k8ZlSybhG4JatjHu4Eew6dv8e71JsyXWK3Sa5cUvdgF
         hIvD/2d13AR/0hEW6LrILngL6vbLEqIwzFMFf+DHdyowMQVhWOerdX1lJpD0SEuTne91
         +5kgoK/JKih7QA2jvcNGU1z8nsNKrae8EEIIRSLzGumHOqcshwIQkKRNVUV6fEEhysRD
         817cfWii/r7J2yk+cIptWVs3Mwe4MjA36eeCORms7Qb4Ez1COkgBlCFsj/BF9YFCWv3y
         kn6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fHd592fobwdTWqnUNJFyuiJGQEtz3MizalfeABFs5so=;
        fh=MKLNhqCKqn5iVNCnM5/c/qTq9+/xZQufGYS2H9sRP20=;
        b=dAOI2Nu7UstoTnVrDb1Y+VH0/8yOFgEwZLVfAQc5o1XZ8h98GqcUl6NOkGzAITlJp8
         GrehhfesKDPW3TZKbxl+LfUUwhOei5S4fEwP1HdllfSUV7RTxfXASzUjMJpXg4nru18M
         +i5fs8MH6ySU66W7MZEWlcOAvm2bo/96uGjkuOpjaVtafdfFUyr/ge4CTEDOjv8wcKlK
         tMnfiDTNQrOmytwQhbk2Y6M9LpUbvQuY9wamkDVn5rSv/mG7JIxRoeNoKtMUonKhc8N/
         LQRKvqvdkN/nRzKJLExhrARYyiYn2iuhZreeOGHGFnIG/y/7gQwg5rZ3yifALWItzEcG
         5FYA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mongodb.com; s=google; t=1777019572; x=1777624372; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fHd592fobwdTWqnUNJFyuiJGQEtz3MizalfeABFs5so=;
        b=ER+JO/AZzT+brc2MMvZYVDuDghrqlOiKJz5UwcQpTslu+3mR7H8njo0ojNjH06ctVw
         eAHW1ZnJ49lcC1CJ63VFJ/XpJ3FtR3uOuxAdbwTtJ1qRhnRDeqILIK2ibrNAFSGceVlE
         u2Pj0XSP5nSRWpKbqjIYsfpfLwRBvSkVEWZLQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777019572; x=1777624372;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fHd592fobwdTWqnUNJFyuiJGQEtz3MizalfeABFs5so=;
        b=rTqq+v+O4uoZxnHAjmw6gfSxayMwoDJp7Qa4xma/bCA+MBs2SKP6omgedtTP1smo9c
         ZdrdU/cqt09uYPWERT7WTrCb5veYxhxSWcqbmoTGy/Wc+hHT3xrg1qIhOsW6f/taySzQ
         Ql4OM2UxZcwITTzXkph7+CDiGCAbt3NoawztsUB/uKbSFo1DXNn2lxxN1Jju8Vz+mt8B
         y8dAyZOhUg+cWkyL4Gdt16odhRzq0/Z5Tl7u7tkKeqbaCHjKz64+XInxne7jZMHA3hDs
         uaRANlkw1SGwagcT3av9E0PN8YmnQdVUysN2AmSHzOe6bRY0y7g9ExszkZXn5hDX44Dk
         Bvdw==
X-Forwarded-Encrypted: i=1; AFNElJ/5JY3unOS5IfkoL63rfFEAsWo66A9rF0llA1mcqGGbKg59ftgGoLCAv1YCY/hGOAcI6iLRLtdcck4=@vger.kernel.org
X-Gm-Message-State: AOJu0YwhU75Vu0Bj9OTABHJ5Hi1d4K/AkGpjUm0tD8GQygHhkDxuecap
	BtJUp4HQhVmXqLdH86Ht/T8lioNlhsyLopQn8YcxYhZNcZVan7vN2lwV0ATgwj9Lc7lV4bqlaDi
	xfqEyvaIf1CmE2+DUJnijjdPqIE0a+MHaa0YTf85TnQ==
X-Gm-Gg: AeBDievq0IRA5HRstW9qAoUjjfzAzZhMuFgEgeSIER6QJS/H4GFw+UQF/zWouN74Tu0
	tzZ3farTiH5orOT7zUHe3XeFnnHR+bltbhFXL9BG13dl7N+IyMWHf8tKUOUOjH3WkfDzC28IsQq
	kg/CuuoECzKxfKAS/UjAOl2QMWdsdwtmQeKmTLMWkgzjHrL4qmC37F4sSa8go/u00I+D0Y4wAZF
	rPYXKLPvHg7yT1iy6L5O9hQvLfRt0Eg7pkUciQWtVcPlGAdDnFUlQkDBfvalH8vTs5J7sbT5gYn
	3+3GFIRqfAVvcuH+
X-Received: by 2002:a17:906:fe4d:b0:b9d:ed9a:5f30 with SMTP id
 a640c23a62f3a-ba41b1dfccdmr1577746366b.48.1777019571404; Fri, 24 Apr 2026
 01:32:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com>
 <aejCaG6n9s7ak5TO@J2N7QTR9R3.cambridge.arm.com> <87zf2u28d1.ffs@tglx>
 <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com> <87wlxy22x7.ffs@tglx>
 <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com> <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
 <87ik9i0xlj.ffs@tglx> <CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
 <87a4ut1njh.ffs@tglx> <CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
In-Reply-To: <CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
From: Mathias Stearn <mathias@mongodb.com>
Date: Fri, 24 Apr 2026 10:32:21 +0200
X-Gm-Features: AQROBzCHcP8gD_lsen-_9uWdGTZxPs_ZNz8gEN7uOeloBdhtK06l3MK7cQ3RsCY
Message-ID: <CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org, 
	Mark Rutland <mark.rutland@arm.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Boqun Feng <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>, 
	Blake Oler <blake.oler@mongodb.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 0200245B8E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[mongodb.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[mongodb.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5394-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[linutronix.de,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,google.com,lists.linux.dev,lists.infradead.org,infradead.org,mongodb.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathias@mongodb.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[mongodb.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mongodb.com:dkim,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Fri, Apr 24, 2026 at 9:57=E2=80=AFAM Dmitry Vyukov <dvyukov@google.com> =
wrote:
> > So if the code only requires to know when it got rescheduled to another
> > CPU then it still should work, no?
>
> This was my first thought too:
> https://lore.kernel.org/lkml/CACT4Y+a9GnOh3wHKSRwzoKF6_OSksQ8qehnHfpCgkQS=
t_OOmYg@mail.gmail.com/
> The only problem is with membarrier (it used to force write to
> __rseq_abi.cpu_id_start for all threads, but now it does not).
> Otherwise the caching scheme works.

I almost wrote a message last night saying that we didn't need
cpu_id_start invalidation on preemption. However, I remembered that
the Grow() function[1] does a load outside of a critical section then
stores a derived value inside the critical section, guarded only by
the cpu_id_start invalidation check in StoreCurrentCpu[2]. It really
should be doing a compare against the original value inside the
critical section (or just do the whole thing inside), but it doesn't.
I haven't reasoned end-to-end through this fully to prove corruption
is possible, but I suspect that it is if another thread same-cpu
preempts between the loads and the store and updates the header before
the original thread resumes and writes its original intended header
value. Ditto for signals, which sometimes allocate even though they
shouldn't.

I was really hoping that we would only need to do the "redundant"
cpu_id_start writes would only be needed on membarrier_rseq IPIs where
it really is a pay-for-what-you-use functionality, I think existing
binaries depend on invalidation on preemption. Luckily that should be
cheap enough to be ~free.


[1] https://github.com/google/tcmalloc/blob/8e98046ec5639bffbe70a53770a2699=
dd355b26d/tcmalloc/internal/percpu_tcmalloc.h#L964-L980
[2] https://github.com/google/tcmalloc/blob/8e98046ec5639bffbe70a53770a2699=
dd355b26d/tcmalloc/internal/percpu_tcmalloc.h#L551-L605

