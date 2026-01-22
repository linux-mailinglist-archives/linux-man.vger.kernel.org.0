Return-Path: <linux-man+bounces-4924-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yM+mG++ccWmdKAAAu9opvQ
	(envelope-from <linux-man+bounces-4924-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 04:43:43 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EE6616C3
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 04:43:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4F4614A6024
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09D7E1DF742;
	Thu, 22 Jan 2026 03:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XdHiabxK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BAD93EF0CD
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 03:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769053071; cv=pass; b=Szw0aJ+vEPOFfX6j/gAGKqiTp2spnFSP2j331aybmIzmkZat6SktCwQrJrxD/xvehYDitNsVMjGonnay8HXyJlGcgUdr3AXFc1vdfjhfhJDj4G2mwcEAN8dDX6vNKis/vYOmBbiv/uc7Bow/rKd6t4CBQhunQpVsXlC0blQP8Sw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769053071; c=relaxed/simple;
	bh=DWhSt8ZOgoiY2P35jJdlzTUmHiq850Ykb51+dGja+P4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KYfxNnC4ZYq6yPUnnGHJhRgXNGO++VAHT8R0X2NiuUcr9jNPOTeIOagaMuvMmgKpceKA4I7wqvggHA2PSDmvZold3EsnR3b8AiQE0aJovTHHp6BW/A4htWd0WW6sKU3Yo3hg/5NFudJkHyi7a4rVUiFmeJj2mBrKOT6KztFjjeA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XdHiabxK; arc=pass smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-59dcd9b89ecso622070e87.1
        for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 19:37:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769053065; cv=none;
        d=google.com; s=arc-20240605;
        b=BT9Vgm3GX0uQjlCK9pirYfzFMUTcXx6pEsEtxqBMyUxyTIjjhhBdaw+ChSYSJTG7cR
         A/wUjqhu/XLSrCJkDUtzg5K3DWFYo+wsQPFTC2ZDltiU58RwATSiW8EvmZfmccFpO7py
         2guNpVtO9Gh7uW0h7BPOI9YVhg519oX9egNKYChoS9EbfQDkVIbvOs8yyWI1mUtc5lKV
         tIhoIqTUcu3xBysxJIJ4FuIRWCYApAlShNJIZIW3tzHeuJyBRTa3Qg1k04iTiL4pscIX
         SD3vRQ0MRvdyGv4QGR7qIOMPBq9p9z0WflSeR+dqst4JO/b3fhrSe200MPDBO6lezjoR
         /hWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lQYyMPfqJLNgTSKgIByIK5uuabOI4zxIg8Lz2qQHlSk=;
        fh=KXY0kdu5tBToFiVFhJFV9bOHUoHvXkUoStdNoLwFTho=;
        b=IgMFjgDfUoHlDtVxyQod9x+h9/sc+3D4omgItjbtUW4BqGERlNVDqJtUrRGFhzK9hW
         Gtbc05sfljFRn1lj2T1Vhvl5xf8T6dKfIERLMjXVHa+Q2HSX/BOJ0kY4C18jZbiqwUeo
         r12vpYS+598Vxx/bINzMaWWjra7dxRn8blQ6MNSdq3x5hd9dwI2TCWGC95xB0d3O6eov
         rcx7G8LmRoKRtEpY4yAodzOeMQPbFl2TKgpIe9aRjMiTkW+bePNYcvks1Vo7dFyEhjHM
         5dGVMZ0np5vFFFTZCFo3PkgEXLQ4oqHsgJ7zLo7yrAa6fMRUZ+oaWP+vyG+rS3ecIq4G
         NHiA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769053065; x=1769657865; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lQYyMPfqJLNgTSKgIByIK5uuabOI4zxIg8Lz2qQHlSk=;
        b=XdHiabxKES7yecy+XwymH1UOpAxhpHu0kB92ZBKnazv4eOEBJOyyPLBslYlTdbusaE
         0eT7PVj2Wbbl3nmm+bPncgD6TvpnmTf69q4HOr+MGrzge1RypfMD5+XTJ9lNTUCzfPyO
         QVsWMBNg1NoTbJ7GHXkojotz8TntIDRNI4xEaP9csF1uB1QSIlY5+TT4VptDUaRQ8eOj
         8fisl98gCpSEbQ7djmNPW+K9d2yA/yZhzsdevZTHXKFx4qewJwmzW66PkKC5Cx8hlS37
         SNEnHznDXw2vGypUzVnz4UDp/WaTawPQtjulqqTs9d+n2/JKWuWAf1WlJ1xaPXcFdnov
         MFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769053065; x=1769657865;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lQYyMPfqJLNgTSKgIByIK5uuabOI4zxIg8Lz2qQHlSk=;
        b=LoxZkXzOgoBYe+8xfq3pC2rmTCfPR9bpvMp210puEn7VKanZi1vdfiXuvm1UNq1nbt
         vJ2+9jT2xW4S8kPwhFzehukZGHRWymNZ6lz08omXUNUMnbPQovd1NjBQ1p4syYhEKaRg
         gpErPpFLKdnH1xHzBLMAXLJPnqzoAHhoV9fuHCFGCAmV9fO3Q9AMPyqJZoRBiJbgBGAG
         24dPxOzev9hqZRVxf4JyT9DNjiFdpX1OltCUA1Zfx+8lI4MrT8SRskvAnVevf0OrhhOv
         QyLTNYZOE7s7Lu4LEMQRwE4Fz/8rFoRm6MF5NM+1KxoGQupy+YyUA5HaYSKMaFT4ZsLI
         kjlg==
X-Forwarded-Encrypted: i=1; AJvYcCW6Xii2IcBImGoaQjaYIbJ3bVOAWh1p24RiIkAFGHnJvNSPN/PzPxE8+KZjcFd2dq6e4045LWZaagk=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzqvk7MRwmMWd9ufogcKvhquX2edj6UXUUkJFrfwt6FpwdHe94e
	nGFtvYgeBzNqHNo8+Gz5HKpHW/tWjta/yIOOG1tActu4ebX4nTYUBmwXC2Rzo7gqnp988Mj9PNf
	6J9eomhKreH0hpL0/3l0nQ6AGpF+07RjyGHc9
X-Gm-Gg: AZuq6aItL2d1RGP199efR88tNltD2z1c6/SpgEklt6AMXBI+Px5PpC3fXryXvN+RT5c
	V2lsYYtHXdS3YKyTPXKDpRxJAEzUeViDWqZFWSEomqC9zmdfd0/GyuUF3M/U5qonPx7goGg2ewm
	HHUe5RWfIvciTDCng/RmYQUF4DGiL0YIoxjvHCRgmzVFwm5eP963j6G8Q8/f4sp6CAPGhAXjm9f
	1RlwJd8Io8D+84mUVLQhcs1qc7O9jQeviTU/MKsEMVqCMAHgtrNkDZSkFaQim82/WzeZglS3YZw
	FLyPfaNLTGPBAkA7iHVtdHQKUA==
X-Received: by 2002:ac2:5b90:0:b0:59b:7804:f149 with SMTP id
 2adb3069b0e04-59dd7d23e06mr375748e87.17.1769053065002; Wed, 21 Jan 2026
 19:37:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
 <1a421b5ee130c1d5892791060b6fdf8d911d8362.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <1a421b5ee130c1d5892791060b6fdf8d911d8362.1769047228.git.sethmcmail@pm.me>
From: Mark Harris <mark.hsj@gmail.com>
Date: Wed, 21 Jan 2026 19:37:33 -0800
X-Gm-Features: AZwV_QidbCtTvS-7AD2zpOiDtZx3ZonWQ-9OYxNNy91B9OJ0IJOSWZYqw-WKMEE
Message-ID: <CAMdZqKGj6r7RcYSTGgvFj_z+xDJyOqFv3oc8g6tT+Gnh4W-NQA@mail.gmail.com>
Subject: Re: [PATCH v2 01/23] man/man2/clock_getres.2: HISTORY: Update first
 POSIX appearance of clock_* syscalls
To: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-4924-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 42EE6616C3
X-Rspamd-Action: no action

Seth McDonald wrote:
>
> clock_getres(2), clock_gettime(2), and clock_settime(2) first appeared
> in POSIX.1-1996.[1]  SUSv2 incorporates POSIX.1-1996, so listing both is
> redundant.

Technically these functions came from POSIX.1b (1003.1b-1993), which
was a set of optional realtime extensions to POSIX, published as a
separate document.  POSIX.1-1996 integrated them into the main
standard (1003.1-1996) as part of a Timers extension.  In 1997 X/Open
adopted them to SUSv2 as part of their own X/Open Realtime extension,
which includes the POSIX Timers extension and other extensions that
had been added to POSIX from POSIX.1b.

 - Mark

>
> [1] ISO/IEC 9945-1:1996, Section 14.2.1 "Clocks".
>
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---
>  man/man2/clock_getres.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/man/man2/clock_getres.2 b/man/man2/clock_getres.2
> index 5f8ed14f1555..1a486c886229 100644
> --- a/man/man2/clock_getres.2
> +++ b/man/man2/clock_getres.2
> @@ -369,7 +369,7 @@ .SS C library/kernel differences
>  .SH STANDARDS
>  POSIX.1-2024.
>  .SH HISTORY
> -POSIX.1-2001, SUSv2.
> +POSIX.1-1996,
>  Linux 2.6.
>  .P
>  On POSIX systems on which these functions are available, the symbol
> --
> 2.47.3
>

