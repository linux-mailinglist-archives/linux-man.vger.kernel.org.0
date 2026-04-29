Return-Path: <linux-man+bounces-5443-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCldI+S/8WkbkQEAu9opvQ
	(envelope-from <linux-man+bounces-5443-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 10:23:00 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC4A491234
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 10:22:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19EFC300FC41
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 08:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 202C93B0AFB;
	Wed, 29 Apr 2026 08:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="pdbYyv9y"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE5D3AF674
	for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 08:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.172
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777450971; cv=pass; b=IxrkqnccKjOFPPV1A9kiYWAhFKsBj6xREmH+/TUV0n42IHjoz1iEAM8w4Fa+JKKmaIOPHgzqrcOpfTtNNykYV3hHxRAXhxSYdtiZxmfuAJCZu5L0uE44yaiENYltxL6iaI1b/UznpXc1Zh40O5/cTY0MvwGQOVVU11RiZBT81lk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777450971; c=relaxed/simple;
	bh=QMIexiS3w30F+i/rgGUir2GUYE7nYg8msUQh5MMI2IQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AOGWObkTzjk8n0Ipwqb5z7ZUn7qFGTEZlUyo1tDDFbaiUrXcwA/eUhMeR0v0L542oTihSnFaxVxJyJINnwLbs+/+buJxhryDi92cdS6gtczpJbG6dO4gbybnlzVdtAIy4B4Mq2ofmfgPO29t4B1/9WUpK/m+O4uFh9R6irLmf9Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=pdbYyv9y; arc=pass smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-3878de20527so95268621fa.3
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 01:22:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777450969; cv=none;
        d=google.com; s=arc-20240605;
        b=Q/wMR5HMzgCuQV9SnKBqdJXBLPYknx0u1Kwdt1qrb9z7ogGNmtx2uokEQ1cKMp4gFA
         7LOFF8DwacEZOATRCm4QOXLXXT6uYM89VO9nA4jLXbwODaaokxfbCzJdLvjRDb/YusW4
         sE7+aOx2h05zJf9hhQDjTWQ/CZw6o4IXUsB8HzhxDxvqEjd3uP5evpFor2SrE3630UoJ
         xtMYpxpeifIGv0n27sST28+X1sDiyu0EaXE69K1FZ3cruj8e5V6uvqT1w0vOQQjhyWHU
         nlvtq0VnUKuJ0eqlJXi8RvufCpGs7cvISdggEyOuBqumdWOUhC7Q7v7G8oIkKlDZnObA
         cZPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cR+LIUqKtMciQbVPi5gi+r/yye6H6/khj2zavabOARg=;
        fh=Co6A1xTAOrqFjsLv1VEl8WsA2e9JhY8cESqoDFF9eqM=;
        b=Na//qUyVeW5+/eLY7fDVp9mbGpLtyayco0JO99uUzCSNzRPEOzQD7YWckgKyDGgTIl
         xtLxSGSrYKZf62r8aO/ThUSa49ICUQ1ItPmWdbxTylX+sP6TFpdqLc3pcx4lz9CfKnoW
         ryVAcq/uvR/oa4YI9rvbAqtebaU8l/19WKIrqMHLHql8S6kt/0ZK5Yd8f1ItbHTjz4fx
         qrQyjSm3Kps8PJd7mipGHv7Soyb0mnW0J8JWvx642FvMTcHWSNyacv5iWDEiY9qOWMdw
         WM70CAEMglDPTpfIOeh67nXJ1YD77OrZaRzhN/EIdE5WpXH3XnoUAzXtth1lCE0642bb
         BZFw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777450969; x=1778055769; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cR+LIUqKtMciQbVPi5gi+r/yye6H6/khj2zavabOARg=;
        b=pdbYyv9y7ClgVH1cAJiecwGmpWsA9aRkpxMZ94fxekr0FQckKECU90vNsKsk99YJYS
         jkqPgNwqTvNatr7d0I85mCqTiqwW/cbeBUnQe3aU+sLr//vRsXq9yIRoQenTbW9SKTzy
         xFDfEkxqLIxCfydl3vLWs/d28jjryetc6JNwYCCd3zMsy1aCyHqqsINDJAN4M5ovliCl
         RturjpLADVasG5YikK+XpchQ0KOmMOGCn6jexUlc8kvxcJPk959/FnMeSvb7W21zsv/j
         BgZyqlonLA0UC2M3bP6vE95ovWS8oJeaQ9n/y9kCDwNbVTa3jOwmqdZdcq6/UfFts++E
         Vi+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777450969; x=1778055769;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cR+LIUqKtMciQbVPi5gi+r/yye6H6/khj2zavabOARg=;
        b=m4myo8MGPNGWG/uqkIWHZHb1EddMVlyVtHn6ub2ZxX3ytUaFhJSRiKsp3DuN0WV+QB
         oTz9Pj6sX6pFEkOtJCsAdQMS3NPE1fGf5MkMYXPbc570RoQ2gVuIADjfnRgQR9R3DtJS
         /jOsciKA18UZJeWIyUl1y3YkfWHdZvaIQa8ULnqezSDfCH+Nap4pVpxTrqCKKw+BXKzx
         PHJK2wGWtPIGNq6GRnAviSPWq9E4vGIurWVHEi2XvX+EzRpKaj2KeBi2oZ3/XbczQwK/
         pPvHUJCju42080rHBm/s7ca57MsABdFfEu4uiawWcJCWDrif0PCuJFwiySjYAqXCGk/v
         u/hw==
X-Forwarded-Encrypted: i=1; AFNElJ8BBlna1i5PqSf/vPPYah/pmEdK99RJcawZwkZAvtkRSFMnw3nWEGROAY01otolXuKUwE4h1oBqOR8=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfn31HzA1jnZb7/nPBG7liTWFmxFm9rumUN92La9OlHuZL2vOB
	BNy6I+C+llDQMXNIL4K6CrVml08QIMcebSt4FjhDEwD52/x6kTjwN+0FPT+yJf6O9n44mRC960i
	TJVCVJe/vQ7shBkwJ1j8xBH/s5nRDxgGF26quUjAjaHMRHlSDY/XqZuUgINQ=
X-Gm-Gg: AeBDievVVWmxsRu6/jyHGZwbv4+97KuOxLkRMmPAi6+vrCiChqHFrmz98pte7Rf4nlB
	s00bbYZLG5rADrnUJ0kiQxlZFInF3zCG2ITFg8grOkCXOhOg31kS4Kizj/5MDWJpiHGSXCsj4rK
	Q95URjjJf85/jmYmglPHMol3J+UccA7oXNviBni6oDgj/Ltis3ngWeWDx3IsQz09i+vpTwLyzBe
	lClda/Dp3LCzupvhT0apwYY/Y3EnoCWD8ZX6RgsQc5JQ8wgFAjzKOTAEOvpr//4Ti1jJD1YrxEc
	bUZ6nwmQuOBiCkyr8h8Wv3qdnu46xw+4MYxZ+B/moJG2O3kAVNxXiEd4Ulerv6svDIbW7EmOSHH
	BRh8tRNghf0Yzf9Iavw==
X-Received: by 2002:a2e:9fc8:0:b0:38e:bf20:2758 with SMTP id
 38308e7fff4ca-39240ccfc4bmr23514281fa.9.1777450968292; Wed, 29 Apr 2026
 01:22:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260428221058.149538293@kernel.org> <20260428224427.353887714@kernel.org>
In-Reply-To: <20260428224427.353887714@kernel.org>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 29 Apr 2026 10:22:36 +0200
X-Gm-Features: AVHnY4IX_PemTXtwPIZdYMebOlq58du3lkZPLQ-D2jLt8xvBVvze9Js-VpSakHE
Message-ID: <CACT4Y+aSmUJOwdKdiNP4mKhGwjSOvS42ueByLdCj_P_aEZvu8g@mail.gmail.com>
Subject: Re: [patch 02/10] rseq: Protect rseq_reset() against interrupts
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
X-Rspamd-Queue-Id: 8DC4A491234
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5443-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Wed, 29 Apr 2026 at 01:33, Thomas Gleixner <tglx@kernel.org> wrote:
>
> rseq_reset() uses memset() to clear the tasks rseq data. That's racy
> against membarrier() and preemption.
>
> Guard it with irqsave to cure this.
>
> Fixes: faba9d250eae ("rseq: Introduce struct rseq_data")
> Reported-by: Dmitry Vyukov <dvyukov@google.com>
> Signed-off-by: Thomas Gleixner <tglx@kernel.org>
> Cc: stable@vger.kernel.org
> ---
>  include/linux/rseq.h |    1 +
>  1 file changed, 1 insertion(+)
>
> --- a/include/linux/rseq.h
> +++ b/include/linux/rseq.h
> @@ -119,6 +119,7 @@ static inline void rseq_virt_userspace_e
>
>  static inline void rseq_reset(struct task_struct *t)
>  {
> +       guard(irqsave)();

This may deserve a comment for future readers, but otherwise:

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

>         memset(&t->rseq, 0, sizeof(t->rseq));
>         t->rseq.ids.cpu_id = RSEQ_CPU_ID_UNINITIALIZED;
>  }
>

