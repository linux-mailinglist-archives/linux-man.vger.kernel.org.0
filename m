Return-Path: <linux-man+bounces-5447-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Lk/KMfR8Wm3kgEAu9opvQ
	(envelope-from <linux-man+bounces-5447-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 11:39:19 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9A94921F0
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 11:39:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7EC9A3032A5E
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 09:35:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27AC73C5DB6;
	Wed, 29 Apr 2026 09:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="KoOcQU23"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A073C553B
	for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 09:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.174
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777455312; cv=pass; b=Nr4k0hE1gtSEe0xPyoGe1vJ0Z66gSvCrGVAKnQgW0R80Mkzacf0AuBDFDPuiqvpziQ/z4FqSPHYaAhh95iFoACg4kYCkVWOGSRcJh4QnEavwXFB6IIHRK/jyFK6uL414L7rlvDXge+YD9mDAzEo6ZavNuViC+3d5WkoOssx4/KA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777455312; c=relaxed/simple;
	bh=S5MuuWSfoyw73iP1eJmsCjTDCgYri635RLzaXHFJZpo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IEVjfH8skpWAcoiPcdUWli52QALNXH6aVatXCH0/fOAOsKXLT6HC9MV4oZqSujZaRHKTV5ozRv216VnaFZt1sTPracvmRGmFH7x462p80Y6n6NVV8k++PUZ13+Yl0pHtCpUifu00VUlNPdMAVzksbRq+iDxaZKVBGHM2NBEgA9k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=KoOcQU23; arc=pass smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-38e7d983f91so126322361fa.2
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 02:35:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777455309; cv=none;
        d=google.com; s=arc-20240605;
        b=H8wMy4RX5ncXepG/GWyQE/XrTw/rTZkVKB6+QwpwAIU1FC085UCdouSRFoht1pIBff
         F1o3zeTY/5dKCKNMN1XDSXag8Eqvf1/vWFCEWIszJTYV+l5IijtKobqe1+3Lc0qTlmJ8
         gNr86fq/l9EAwAat7AW2lcVN8laI9Ea1Lz5BP0VyFsqFBFPKvx8KxBSMaK6FxeizNwI/
         to468gI7G4rd2UMI4wMv52akba8ygY4jRnoKYOEDRfcm6upmQ3I9ooWbPqkR+8lTqINN
         5PM8UMqwJa5SM9PYAKY2EssVoBDL7sGABzM1RFLT7nx/eLurQpaC++c4N5Qi26jyIeDE
         umEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=brWuWPY89CTfDNaEhrviElR2rVty0h6kwi+l19oN98E=;
        fh=rcwHp6YCRcKNki6vgS2QKiia3pe2W7uKmTG5KDaCBnI=;
        b=bBPVUgqQdlx6tBIaFG1zww6Xe9y0tgFRD5Vb0VCNV9vFlLoJbKq/oxVKMohiZEPNIL
         UmBRFdXLTxKqn0o6NCP0OfFButQ6C0zrcQeClaYzKYRv0PNiWcSDERfNVtCQBSHTXge+
         VjrpU0vp+TPGzuW/xdNt9uHSv841XbkDsLql2Kt8oPw5M0UPttuCri9I29FhS6tw92B6
         x0KyvE6I/Ads7Mw/q2zCutEz+SjI5OabI6OwCglDH7Kz2hmV5NyXtFvFyH4xPCPinLxU
         43h5qP5JzWy1LjcZShs2NbiZ5ic3bEh3dckXWzD12L4XizvDqo0B/gtZsyI1ZusJLNYC
         AzWQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777455309; x=1778060109; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=brWuWPY89CTfDNaEhrviElR2rVty0h6kwi+l19oN98E=;
        b=KoOcQU23LA1MyNlke6+WzBkmrH2L1LMjESyQsT7KdtoRfEQMPOMA5W+lTWX+RhNRNQ
         bt6Bwetej/M83Jef5hKP5RE1khvhlTg/li1g5f+OJGv0sEJkgRsQpqjVsergxEQ0sK6W
         rGHovqro0FZpGwlvxTk44JPzWdgGV8LOV7JmE5TIKiK8HayEriQM8g25cGbVteqR8wfE
         lYrCfEPv4/gN9LrmLwF/SETDb2MMh3VvhQ6KX7jkf35DLICjiljRJeQFq2bD1+qZAkaR
         KJYvcTpsN9A2/9XaGMxQZkNXbSi540i9d0IiYGUyxVJ8P5nDMykssjcrWEoVljXLn09K
         7BDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777455309; x=1778060109;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=brWuWPY89CTfDNaEhrviElR2rVty0h6kwi+l19oN98E=;
        b=pQ7OP1l5JdBybqAKjMHoIAWTLM54OClleOxWxrqK6Wk+rfFm0WtoFvcMIzOjx6yvOD
         RUWp4oBgezzcC4YrmsUQ+8bGFyOqlCAGF9hGh+SVQVSpoOTC89JVOmtnb7sX3dYPdMu9
         A4bRyHvFEmoVeDdPRS9lG2H82+SiBajoKBOwHhcCXWINHYZBsx9np6pZCu6c/cR/51WM
         EGq1XeLMa+q3dv6nxaAJBDnr/tMPgr2fHCgN+0uOXFMOucuVuy07AU3P4iF0BWASIfyU
         e3REH9zSannYWPqumgRy2qz92PYfyyk8T4GVrurDTdJd1mBn+N9hRXo4KWQhOKZxR4PN
         o1ug==
X-Forwarded-Encrypted: i=1; AFNElJ+iAwNm3fHhMY9WTZVfS5VkBnA73PHRfJXXpKWSCEMfKZKRvK5UWj4qqj/GzY+6SiKY4EVcZLaBPdo=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4P+z4DgwXIflKZIPRXYhubsbVzNLMoR7c4EbrLNEIu14XLIAU
	ghzZwYD6ZzWJkkn7jSsUc5cOzVnqLn88V9QdCcByF8/kHtYH+qLpX5MV83Rt0vXVfDUNAYqhNvK
	2eHOb9e7fZdxoPHXw3XY/KMAt91+n3n7BbZKaVCW+
X-Gm-Gg: AeBDietb/qY8YiHhxUe3rxa8OoEk7Brla5AijdyN8yKOpOxoAVNmqP4q60NpUPP1AyB
	cPh+Qs08DTgLyPcNMLbR4SzC3Y3BqFtagN8iibwoFhurr/h5dHlYgUqkX+2ougwZJORtD+4jebo
	okFakvJU63E+0+s0IT0y0iAFGhHzfpnzQ1ERFCweFLqonY1uGrdHtfvTJ9WxTkfu+2BoctLUMC8
	UCyWBgEoGlhyslRCQ+Fj/EA379a9c1NpZh6w0PCiLbF+7ridX815o9nZ6pxS4VsjHqGVif/cnWS
	U5+y3WL2v4JOkiM29tHrqFNMFEY+RSm4djKk90Krh7SANLxn/exlsNH3VWK1jHad+v9sTvrOeQu
	hG6R54WN27gjDW4FVKw==
X-Received: by 2002:a05:651c:4408:20b0:383:7f85:8eef with SMTP id
 38308e7fff4ca-3924bcf8a65mr9455641fa.29.1777455309014; Wed, 29 Apr 2026
 02:35:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260428221058.149538293@kernel.org> <20260428224427.677889423@kernel.org>
In-Reply-To: <20260428224427.677889423@kernel.org>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 29 Apr 2026 11:34:55 +0200
X-Gm-Features: AVHnY4KatYoOwo_YnhD-qXa2QQx_2AyGQ7G3pT4cdF8ID3U7__8a6VHgTjA9qg4
Message-ID: <CACT4Y+Z-KnUe2DUPUT7omLjqETNXQwOP3CxpsHua5yG3=dqbAA@mail.gmail.com>
Subject: Re: [patch 06/10] selftests/rseq: Make registration flexible for
 legacy and optimized mode
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
X-Rspamd-Queue-Id: 9A9A94921F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5447-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]

On Wed, 29 Apr 2026 at 01:34, Thomas Gleixner <tglx@kernel.org> wrote:
>
> rseq_register_current_thread() either uses the glibc registered RSEQ region
> or registers it's own region with the legacy size of 32 bytes.
>
> That worked so far, but becomes a problem when the kernel implements a
> distinction between legacy and performance optimized behavior based on the
> registration size as that does not allow to test both modes with the self
> test suite.
>
> Add two arguments to the function. One to enforce that the registration is
> not using libc provided mode and one to tell the registration to use the
> legacy size and not the kernel advertised size.
>
> Rename it and make the original one a inline wrapper which preserves the
> existing behavior.
>
> Fixes: 566d8015f7ee ("rseq: Avoid CPU/MM CID updates when no event pending")
> Signed-off-by: Thomas Gleixner <tglx@kernel.org>
> Cc: stable@vger.kernel.org

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

> ---
>  tools/testing/selftests/rseq/rseq-abi.h |    7 ++++-
>  tools/testing/selftests/rseq/rseq.c     |   39 ++++++++++++++------------------
>  tools/testing/selftests/rseq/rseq.h     |    8 +++++-
>  3 files changed, 31 insertions(+), 23 deletions(-)
>
> --- a/tools/testing/selftests/rseq/rseq-abi.h
> +++ b/tools/testing/selftests/rseq/rseq-abi.h
> @@ -192,9 +192,14 @@ struct rseq_abi {
>         struct rseq_abi_slice_ctrl slice_ctrl;
>
>         /*
> +        * Place holder to push the size above 32 bytes.
> +        */
> +       __u8 __reserved;
> +
> +       /*
>          * Flexible array member at end of structure, after last feature field.
>          */
>         char end[];
> -} __attribute__((aligned(4 * sizeof(__u64))));
> +} __attribute__((aligned(256)));
>
>  #endif /* _RSEQ_ABI_H */
> --- a/tools/testing/selftests/rseq/rseq.c
> +++ b/tools/testing/selftests/rseq/rseq.c
> @@ -56,6 +56,7 @@ ptrdiff_t rseq_offset;
>   * unsuccessful.
>   */
>  unsigned int rseq_size = -1U;
> +static unsigned int rseq_alloc_size;
>
>  /* Flags used during rseq registration.  */
>  unsigned int rseq_flags;
> @@ -115,29 +116,17 @@ bool rseq_available(void)
>         }
>  }
>
> -/* The rseq areas need to be at least 32 bytes. */
> -static
> -unsigned int get_rseq_min_alloc_size(void)
> -{
> -       unsigned int alloc_size = rseq_size;
> -
> -       if (alloc_size < ORIG_RSEQ_ALLOC_SIZE)
> -               alloc_size = ORIG_RSEQ_ALLOC_SIZE;
> -       return alloc_size;
> -}
> -
>  /*
>   * Return the feature size supported by the kernel.
>   *
>   * Depending on the value returned by getauxval(AT_RSEQ_FEATURE_SIZE):
>   *
> - * 0:   Return ORIG_RSEQ_FEATURE_SIZE (20)
> + *   0: Return ORIG_RSEQ_FEATURE_SIZE (20)
>   * > 0: Return the value from getauxval(AT_RSEQ_FEATURE_SIZE).
>   *
>   * It should never return a value below ORIG_RSEQ_FEATURE_SIZE.
>   */
> -static
> -unsigned int get_rseq_kernel_feature_size(void)
> +static unsigned int get_rseq_kernel_feature_size(void)
>  {
>         unsigned long auxv_rseq_feature_size, auxv_rseq_align;
>
> @@ -152,15 +141,24 @@ unsigned int get_rseq_kernel_feature_siz
>                 return ORIG_RSEQ_FEATURE_SIZE;
>  }
>
> -int rseq_register_current_thread(void)
> +int __rseq_register_current_thread(bool nolibc, bool legacy)
>  {
> +       unsigned int size;
>         int rc;
>
>         if (!rseq_ownership) {
>                 /* Treat libc's ownership as a successful registration. */
> -               return 0;
> +               return nolibc ? -EBUSY : 0;
>         }
> -       rc = sys_rseq(&__rseq.abi, get_rseq_min_alloc_size(), 0, RSEQ_SIG);
> +
> +       /* The minimal allocation size is 32, which is the legacy allocation size */
> +       size = get_rseq_kernel_feature_size();
> +       if (legacy || size < ORIG_RSEQ_ALLOC_SIZE)
> +               rseq_alloc_size = ORIG_RSEQ_ALLOC_SIZE;
> +       else
> +               rseq_alloc_size = size;
> +
> +       rc = sys_rseq(&__rseq.abi, rseq_alloc_size, 0, RSEQ_SIG);
>         if (rc) {
>                 /*
>                  * After at least one thread has registered successfully
> @@ -179,9 +177,8 @@ int rseq_register_current_thread(void)
>          * The first thread to register sets the rseq_size to mimic the libc
>          * behavior.
>          */
> -       if (RSEQ_READ_ONCE(rseq_size) == 0) {
> -               RSEQ_WRITE_ONCE(rseq_size, get_rseq_kernel_feature_size());
> -       }
> +       if (RSEQ_READ_ONCE(rseq_size) == 0)
> +               RSEQ_WRITE_ONCE(rseq_size, size);
>
>         return 0;
>  }
> @@ -194,7 +191,7 @@ int rseq_unregister_current_thread(void)
>                 /* Treat libc's ownership as a successful unregistration. */
>                 return 0;
>         }
> -       rc = sys_rseq(&__rseq.abi, get_rseq_min_alloc_size(), RSEQ_ABI_FLAG_UNREGISTER, RSEQ_SIG);
> +       rc = sys_rseq(&__rseq.abi, rseq_alloc_size, RSEQ_ABI_FLAG_UNREGISTER, RSEQ_SIG);
>         if (rc)
>                 return -1;
>         return 0;
> --- a/tools/testing/selftests/rseq/rseq.h
> +++ b/tools/testing/selftests/rseq/rseq.h
> @@ -8,6 +8,7 @@
>  #ifndef RSEQ_H
>  #define RSEQ_H
>
> +#include <assert.h>
>  #include <stdint.h>
>  #include <stdbool.h>
>  #include <pthread.h>
> @@ -142,7 +143,12 @@ static inline struct rseq_abi *rseq_get_
>   * succeed. A restartable sequence executed from a non-registered
>   * thread will always fail.
>   */
> -int rseq_register_current_thread(void);
> +int __rseq_register_current_thread(bool nolibc, bool legacy);
> +
> +static inline int rseq_register_current_thread(void)
> +{
> +       return __rseq_register_current_thread(false, false);
> +}
>
>  /*
>   * Unregister rseq for current thread.
>

