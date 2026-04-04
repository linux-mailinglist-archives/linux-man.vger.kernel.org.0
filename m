Return-Path: <linux-man+bounces-5294-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qm0RJleI0WmlKwcAu9opvQ
	(envelope-from <linux-man+bounces-5294-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 04 Apr 2026 23:53:27 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0395939CA7F
	for <lists+linux-man@lfdr.de>; Sat, 04 Apr 2026 23:53:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D7CF300B989
	for <lists+linux-man@lfdr.de>; Sat,  4 Apr 2026 21:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F59D355F2A;
	Sat,  4 Apr 2026 21:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RfED0OSX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C946137750
	for <linux-man@vger.kernel.org>; Sat,  4 Apr 2026 21:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775339602; cv=pass; b=pLgRz+OV+aeZE9QU5EN37hg1Iv0SJaMrBKio2HgU065+BJpSeN2r1XSt9MEAxrF8yTOZ1rPyhdEcwRvahCfRc0uBsK2T1h2Oi1WW3Uuuwl85+WGnnDE9H2b4vbKzOgkP629Wp43Bn4r/XvZlMhtFFLMTtuiGCkPPOA2VZKYWCp4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775339602; c=relaxed/simple;
	bh=uxvegPxral235VAMMvpL0ZoLrKgA3Hthr2AaZjXlahA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=T94lhF+5ooF0cXoBDHuY9aRLpX3lf0QPRAlaiRlBaOOzuusoH7M0gNIyXVdJDPwJr/wR4C952s+w1GC7GssZt+mpumzHegx4ayiyylaH/SBTrPVqzmrKqVo4hYc9C/mEL7Ggpv/0dL+bgjrRxUaVhpIFIaGRIpjtACuKZ3og388=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RfED0OSX; arc=pass smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-38bd15d82bdso21694951fa.2
        for <linux-man@vger.kernel.org>; Sat, 04 Apr 2026 14:53:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775339599; cv=none;
        d=google.com; s=arc-20240605;
        b=DPbejxl41xOXWz/twmax05UBNgql9+HZyNZHI1gBIUFhdO42M+MPMu3odAVV9IDlMw
         84aWKpSX5BiLmWmBWtLvNRtTanNDsbSwL1ZLQT4WM3OQSd42YnVodQPK6f+yx3ERS5g/
         cYNSCCAtOkp9EJnd3xCdd8kJNBN+oNfomGgyqEeFakW1UcemFzJjVWNb/XZfgGCYFd9b
         ZDbT+UklAJSB3Q+kaqXosdAA2SGK4GhlqEVMtfnRs1JNDZD8JXqx6MfYdZiPn0ARDGyO
         J7M2fTFMQQuKjuk2iMTMFPfbAoKod9y5JbOcPaYX6EZysD7O2CiDJjFzCxNuSoHnArAe
         B2tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=aer768iY8vB+hmBUzRJQ2Nstxhq0KBjt2zlkrTWxk0s=;
        fh=SWA4TJsqy/XJZElZPNAWoHY2eGOrWyXROxEkRbgWxSw=;
        b=S38VtpD17+ZYtQkLUPQlsUAMnWdzt02LRuq7yxiXPe/8igd6hEsMAd2yjBkqObEM4t
         cHQovtE4D6fjBMJLD/xPg4lmhqMaUmw0gwHhat2l1KhOFNaXQl468rTnNl+/b0+kgC5M
         qwkW00rtyjbKi09QsgkERg0PapWSghUqMWgEosD6uRGnvUj1jXAnkl6iYRUzV4cGna0i
         s+RTxPjZlzfzRRioYj2OXK0cX6VZkiK7R99oglMpZjJaSEvvDLWi6ZocF2+oI9UQGSWR
         QKxtJNCj70v2mHappGk2PH9iXejJi1eBAXZH861jZuNgLW/v8ieMopga4tokqst3GSPW
         wKnw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775339599; x=1775944399; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aer768iY8vB+hmBUzRJQ2Nstxhq0KBjt2zlkrTWxk0s=;
        b=RfED0OSXLvycJEQDl/KYi4u5Ofn0oyovwFM01tx8BDTM643C5UNhUNDjfZTF8w85au
         MnQzfkFWXgDZwF7/HOfbTn+J3VsFStH6uUlzgT0NVhtHF5LR6Z3FxzuKi7Om29jrjHPV
         ph/q80RJqqjDZb1DmvO2gcV8bPsiqRQym3b3w7EkqQEaVIqSM/neUXyp6Tey+bjebyet
         +mHl422tbDoZ27q6JVT6nfCqQdt2Qc1btz7zX34wd3q4zKtXIeYokSCZSiPRl00Queuv
         o3xwZZEdUP2pzO890n7nxlMYBmFrMpvmYtKvd+lZlp2/Q2/Qql7W4PPrXo0BN9nYF9nL
         aDIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775339599; x=1775944399;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aer768iY8vB+hmBUzRJQ2Nstxhq0KBjt2zlkrTWxk0s=;
        b=fOZMGUac8EFLMp02SQkn+G9jXmDYs0zbp2Ag3dcXUQpKsjdTLl89MVr9W7Nr90LCd6
         gftsWwfEfx9QYOOyVy5SoqWcXNPvff2fG5l9uG0H9yBTZ568sgFHKLWbSsRQ7QkImjS0
         BipvOIEVQobgfKvpDG2aV0geIDhOqryVO7vZpoMcJIq3SUz3uFvI6pf6l7kaBUM8jsHe
         SuyfFgqvgpGbfsQ8bzZD3n6y5gzcoVdvz7v9JfuwDgJ99vbVyZJjmVGRvay9LyUm4DiV
         ML5HV22FRnDRsy4eyVzpQhf7xo76jJTEsz87LiQktGAoMhPwjbm6UkCSLYCNlOuYoyDd
         aZvw==
X-Forwarded-Encrypted: i=1; AJvYcCU8xQr3+2S1XOo12JmRBeljdzP27KKO1LlAtc2UTQY0ZAQmf6RCC3TSGsKQCNEzog9LQMH+apLNRaQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YwOnx1tXdKzYCb+VzbXkOAEJ7kzb5Ae7i4CcuIdTz47joAiJasB
	4/+IVYwgmJKrUOyovHCTfImAwUCcPqq9G1JFPokXWq7OjUEoYFoyoinzZhi3xbfxsdGu5xLcoe/
	iPL2rgOOSX9P7xUIx0kd7LotlQTamh5Q3Nw==
X-Gm-Gg: AeBDiesbUdlzUeb9yV1s6+F4AE2li1oIQtG3GdohUPipHjYsvE/ZKw7JAwD+37nmBNZ
	GPvH1Py78cFSB43LYzy8/U6ZZooxOKRpPOd6oU/ZytDjARY0ST3vN39+94AjJxp5QVgyeqJ5k9w
	9ROboEUSKSBM9Nh9keRt5iCoQ1pv+tUu9IYj+KJYAVhPMw4SfUiptNtbnwiMCykHfoB214w+ZmZ
	bQ0oKPvlv5MHiVhLOu1qgmfFf7MBHVO4J/5+jnSv+oX3Q+oTnjOWCgL7SgzRLpyeNIY42RkFsEG
	TaeT33XQRo0Om8t7skgCzQSdOQw9miBoT6tfjA==
X-Received: by 2002:a05:651c:3249:b0:38b:fa1a:5927 with SMTP id
 38308e7fff4ca-38d8d4abe8cmr22034801fa.14.1775339599172; Sat, 04 Apr 2026
 14:53:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260404074909.92900-1-vursc@vursc.org>
In-Reply-To: <20260404074909.92900-1-vursc@vursc.org>
From: Mark Harris <mark.hsj@gmail.com>
Date: Sat, 4 Apr 2026 14:53:07 -0700
X-Gm-Features: AQROBzB_ZF2eePNV4rWnXLSgu6B4hci-vhnU-Lpfuy_q7RjmelKenL5SjMxcR9s
Message-ID: <CAMdZqKGyG3vksBugjZ+WOt6xV7dqtc40L-vESmoAB9HZHfV7FQ@mail.gmail.com>
Subject: Re: [PATCH] man/man2/getdents.2: Fix incorrect argument type
To: vursc <vursc@vursc.org>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5294-lists,linux-man=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,musl-libc.org:url]
X-Rspamd-Queue-Id: 0395939CA7F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

vursc wrote:
>
> The count argument of getdents64 is an unsigned int; see
> SYSCALL_DEFINE3(getdents64, ...) in linux/fs/readdir.c.
>
> Signed-off-by: vursc <vursc@vursc.org>
> ---
>  man/man2/getdents.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/man/man2/getdents.2 b/man/man2/getdents.2
> index 8c5bbebbc..3890943ee 100644
> --- a/man/man2/getdents.2
> +++ b/man/man2/getdents.2
> @@ -23,7 +23,7 @@ Standard C library
>  .B #include <dirent.h>
>  .P
>  .BR "ssize_t getdents64(" "size_t count;"
> -.BI "                   int " fd ", void " dirp [ count "], size_t " count );
> +.BI "                   int " fd ", void " dirp [ count "], unsigned int " count );

The third argument of the function has type size_t in glibc
(https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/getdents64.c;hb=HEAD)
and musl (https://git.musl-libc.org/cgit/musl/tree/src/linux/getdents.c).
According to intro(2): "the manual pages in Section 2 generally try to
note the details of both the (usually GNU) C library API interface and
the raw system call.  Most commonly, the main DESCRIPTION will focus
on the C library interface, and differences for the system call are
covered in the NOTES section."  So rather than changing the function
prototype, adding a note to the NOTES section may be more appropriate.

That said, the DESCRIPTION section claims, "This page documents the
bare kernel system call interfaces", so that should be corrected as
well.  It appears that that was written before the glibc function
existed and is outdated.




 - Mark


>  .fi
>  .P
>  .IR Note :
> --
> 2.53.0
>
>

