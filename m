Return-Path: <linux-man+bounces-5446-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QE+QOs7Q8WlrkgEAu9opvQ
	(envelope-from <linux-man+bounces-5446-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 11:35:10 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5439C491FEC
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 11:35:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B320730071C2
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 09:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 996033A783E;
	Wed, 29 Apr 2026 09:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="weso8+46"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADDB739B969
	for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 09:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777455301; cv=pass; b=JOIYs6SWfDvssbBBiv+KzCJPD49JBU3ILu8ay8lVYka4/akJ1k0WUEvuSJgHSnvs6SesffQ6CY84Xedb2kEzIkqN8RX5RhgvfRRf8XofpjYBwOOuvlXB5ZD4Kt/VIsN+Q0SLIjOek2qws/NN09a/tfpjq6CtMrBe415NGb1jTFc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777455301; c=relaxed/simple;
	bh=WFPXOdUfUhcQJaT3wQld7jY48Pzs+QBJm0E36HjZ4kE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kp/eK2Hn7DbcJl4vrFZgSaG+c2RFdLdzJRsBWsa2OWquyWFAfxjpaGIAPgwPkm8kqbcPnTE0ZIW04b0v0La0b4245B9AZQjFkX/FmG4ib/IVLdbFjLhP1bL4jIsrDtWIUEOp3KTCoAIU3sdtfw/nYE5s97W7bIc8j9d7cHEbH1s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=weso8+46; arc=pass smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-38be5e86918so138344251fa.3
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 02:34:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777455298; cv=none;
        d=google.com; s=arc-20240605;
        b=k+XeEqzwcflj9XvC8w312lb/itwKVeOag3/9mInfdlHINl0wQRfPy5a5hs0BrH15xx
         KXCQTrKzha5Rf+mPts8anoVpfNwaJcpDLbM8LV71kPYvI8nq7ZbCdTgOSH73M8h17jj3
         ISbMCOeILIqQaweEjlLGCC6stLNGv7dZHu1DNe2So9i8ECSHQVOMgkNTukE9D7p2t0BD
         zTD5YNiMIuziadkpBRLWsbQVzl8Ioq7e8sWEZxmabLpa294IZRZ8L6aJf/WoIxfFrlie
         repd7CewhS4DWas8DH+u0cfB01ISlN9PaQ+90Vy4p//B3B2s9uCKAr3Fj6nu3JDZjDuy
         Zw3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=w1xdBKoNA4HLEY1i+Fc9mPzzBOsyjz9NyeijIXVfvpM=;
        fh=BI9cj8rXl0XU28oRhNbg1bSIs1gsE+HgoeLtRaZ1aMs=;
        b=gqbCwo6rQz095QD/2t0ePgkmXNaYb2V8Bti1WmDsW7EqXeRxu8x9TNRUhUlMjCiQB2
         b1YDZ/t5TTCevmZtFD6TSfQBFxUTJlJSw3g9WlTfBwiw0qrT/eraT1oDQBCPw8Pip5Hi
         I+2xln1sceMSVNwBIZwLuAOxTDgUq+cvIPuBeD5eFgCFVaU8m31YgChX36rb7h8YL1xY
         7ZlGCsDwyFwv3p8N6fXGyRBEJzdFdkW9HRLzB39Z5eoQzStbre0Yy0vXZjrPYZR5VHpu
         w3ItuliD2B9RYRuVEj/qCXqEbCIhfCHMQvRJISGHwdjyMio4Q/OGiHJrs2StGpyGThmc
         csJg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777455298; x=1778060098; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=w1xdBKoNA4HLEY1i+Fc9mPzzBOsyjz9NyeijIXVfvpM=;
        b=weso8+468Jp/DFn6W9l/vbI8p8GdBhfk5NbiVhfTmOmyWjsU+SqTC9qTexvK1o/c+H
         P6Bkwub8/D1nge4+ejW6ati/HCBfzC8WvENF81zfj3M5ZmozfBuUCuzCe+4l2RX12KDj
         4z8m8XmmvlpkWc2ZkMakP9teH87ROfLlonahfv5DeQDkim4G0pEd7TYfza3sQ8Mt5ijJ
         ZwBpYMwMxHata7F+/wtpvzm3W/utwO/XE9xVaOBPHaV4SYBWBqjBcrq/UEUqmj4TzNPp
         JRcHvZHgCxliYXp1Zyh1/0ZLWkUf7yBocHUMXgsi6ZiaIFpGcR0SyH5gQYj52ZQW3/Yk
         6+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777455298; x=1778060098;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w1xdBKoNA4HLEY1i+Fc9mPzzBOsyjz9NyeijIXVfvpM=;
        b=A8dc9H30nFKxlgeaHeb10bAKVIP1KiePJl0zzURusgfsecqkSW8rGNnKivfeEqy+r+
         UJhE8m0xkgTlB19zRdhTYCKvuYUreYtjo64EYrEDcZFEtXS1dW5n3RCwwFhE9ea/aTGi
         UF9CDV9x1KsKRxwAfgwuUX+z8AGG+FBaqiQUGkJCPVv7VUo4QZ8lOWGFjMKtpFRrtRTL
         kThrLh20VlOEf3Id4WHCKWnMw1K1WXzhJ3ao6jUPN9B7T/fov5m9nFYCt6FOChu7zi9V
         Z1iLxZiHJFu0rFwI2Sm8nKyqOVmGFGZLGZIw2Rw7XRi2L+9/HfQujCIoHmNFWVijpTY9
         4Cgg==
X-Forwarded-Encrypted: i=1; AFNElJ/BGjclOAQXCZBvgFFaLn0JXhERI2gDZTkK2Bp2MozRqPqp4EfzB+AX5RCDfbQqyAQnZXMKPiZI8uw=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzata1YeBA1xanYgjEDy3JYabbZDQllZTrU9N93SbpuarSDUAm1
	O89DNg/bfERGjBNi2QiVD0jL5llzG9JGW1aVIMjO0A4fpPgaQCn04JaF+jcDmfAmPOEDByaLzYW
	5uEKydyc5gOBjx9gFXIkJsCe1sxZ45K9mv6pxgwvQ
X-Gm-Gg: AeBDiesY3aRy9TVE+/g7WJG0zccyPuPV8BUOVv5WBv6T7IF46W6jkSceTTUinI3ChQ1
	hEWo61Oy/NN5I7tGAHowb6VLEKZb+JmDBKDq7LfRinPeDW7pq9/llAVx0PNzYuNkbTKYTaTnFEK
	exWkhn8Ym+mJYJH2ROJq46zaFB+vwhuVeyWoYq7IndXEmGncl+Gat9OTA7m0gtzxmaH/J2msBJi
	w5Br5P26EEA2ntBDRz1hieX2IjwIBLVUy3lfhFkk9ht1dAZI5SZvF+Wm4ISoyYAEuUTTav8V75v
	HUCf2dMA+TydlyTaJUvWicrWxJcoZ7v08TkxN/9slGFvx/wSbWl2vFv/gl3kJyoEnz0a0wLX/vE
	3na22eyk0MAMD7v890A==
X-Received: by 2002:a05:6512:1252:b0:5a4:10b5:624c with SMTP id
 2adb3069b0e04-5a749d1682dmr1067228e87.23.1777455297409; Wed, 29 Apr 2026
 02:34:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260428221058.149538293@kernel.org> <20260428224427.597838491@kernel.org>
In-Reply-To: <20260428224427.597838491@kernel.org>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 29 Apr 2026 11:34:45 +0200
X-Gm-Features: AVHnY4KJd4U7ViczoZaXlFVyX0WX1LNEwyKWM4VUnvWQAXUjM1EuSCHIjvhHzY8
Message-ID: <CACT4Y+YG6u=PzvcvDHdG9FZ-QCdVTjnkevp6FJAXuiFoCq9AcA@mail.gmail.com>
Subject: Re: [patch 05/10] selftests/rseq: Skip tests if time slice extensions
 are not available
To: Thomas Gleixner <tglx@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Mathias Stearn <mathias@mongodb.com>, 
	Peter Zijlstra <peterz@infradead.org>, linux-man@vger.kernel.org, 
	Mark Rutland <mark.rutland@arm.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev, 
	Ingo Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>, 
	Florian Weimer <fweimer@redhat.com>, Rich Felker <dalias@libc.org>, 
	Matthew Wilcox <willy@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linus Torvalds <torvalds@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 5439C491FEC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5446-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dvyukov@google.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linutronix.de:email]

On Wed, 29 Apr 2026 at 01:34, Thomas Gleixner <tglx@kernel.org> wrote:
>
> Don't fail, skip the test if the extensions are not enabled at compile or
> runtime.
>
> Fixes: 830969e7821a ("selftests/rseq: Implement time slice extension test")
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: stable@vger.kernel.org

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

> ---
>  tools/testing/selftests/rseq/slice_test.c |   12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>
> --- a/tools/testing/selftests/rseq/slice_test.c
> +++ b/tools/testing/selftests/rseq/slice_test.c
> @@ -124,6 +124,13 @@ FIXTURE_SETUP(slice_ext)
>  {
>         cpu_set_t affinity;
>
> +       if (rseq_register_current_thread())
> +               SKIP(return, "RSEQ not supported\n");
> +
> +       if (prctl(PR_RSEQ_SLICE_EXTENSION, PR_RSEQ_SLICE_EXTENSION_SET,
> +                 PR_RSEQ_SLICE_EXT_ENABLE, 0, 0))
> +               SKIP(return, "Time slice extension not supported\n");
> +
>         ASSERT_EQ(sched_getaffinity(0, sizeof(affinity), &affinity), 0);
>
>         /* Pin it on a single CPU. Avoid CPU 0 */
> @@ -137,11 +144,6 @@ FIXTURE_SETUP(slice_ext)
>                 break;
>         }
>
> -       ASSERT_EQ(rseq_register_current_thread(), 0);
> -
> -       ASSERT_EQ(prctl(PR_RSEQ_SLICE_EXTENSION, PR_RSEQ_SLICE_EXTENSION_SET,
> -                       PR_RSEQ_SLICE_EXT_ENABLE, 0, 0), 0);
> -
>         self->noise_params.noise_nsecs = variant->noise_nsecs;
>         self->noise_params.sleep_nsecs = variant->sleep_nsecs;
>         self->noise_params.run = 1;
>

