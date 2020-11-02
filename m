Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AB8A2A2A99
	for <lists+linux-man@lfdr.de>; Mon,  2 Nov 2020 13:20:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728644AbgKBMUR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Nov 2020 07:20:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728537AbgKBMUR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Nov 2020 07:20:17 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A42E6C0617A6
        for <linux-man@vger.kernel.org>; Mon,  2 Nov 2020 04:20:16 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id c18so9184055wme.2
        for <linux-man@vger.kernel.org>; Mon, 02 Nov 2020 04:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=U2tijFcvctBIz/3caC9Htt64LoYkeaLEIgb2C9fgcBY=;
        b=DCf/KI0FQ+/Zl9NnHDZTYzgCFtgSD+RD2QcD4ajCBawCS3uMP0uMg+yIcN7ZFThl6I
         UzMHHQ9duKuKLHVpo9zOoITCwPrMd/mb+e/71UdRSONISAAAVhsRdNJQQpOc5rX3DCI9
         4fMViTPz4ylAkeBDeTAErWjIcZFcPb7magc2RThIJJUEGw+A/Ua20V40b5LFtA0hse1a
         1vjm5qOy6hrgZKnqyh86flPTPhoXBzmQewWWog6SJWI15SgPjWWWfV3HXj0Hw/NXmmHw
         uexAygV3Hf8FYP7gmKKmoVGHm/9C8Ukb8sN0h5FcKpJKCL6os3y1fYDIN0yUn0X1j4xO
         y96A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=U2tijFcvctBIz/3caC9Htt64LoYkeaLEIgb2C9fgcBY=;
        b=Icd6CIWoil/J/mK6UjiSLHmPgUZaZBXZ/QlpoCRtmP9cyMGglTtZlEmFRAWiDFNNdt
         IcazUOVjoUftvx05TMBG/SR1HKgxQcF1HkyS5/DWS1oCZnhZEizl9eJOERwKzA0m/uSo
         FIfeiG7Iq/oLkrIMY43+Ih2dIx5kb31opq41Fbeoo1w8zymNZHYRhQM1Aio7BuSRW3/F
         RWjFX4NIb3WVmJI3IBDJVeaPQvCpQ2YpoYMsGSbvwcMW9WjO8ZB5zLd3dG4U/6DnxohH
         SyU2K8Oz9RZm1pGizHBIyTL4bYa9zI2970TmInmTfK/+pLARIjXNcAPlmBS2VZ4UFJpD
         Y6RA==
X-Gm-Message-State: AOAM532PJ9EmEtA+XmdH/AU2gFML+xsSOUt5ZyOW5YK1ah2p4iuMoZqs
        BkJaJ50+T1jA6CmuWqGAt2T7UmToepo=
X-Google-Smtp-Source: ABdhPJxDFp9pgSAYg73DGjF/Ra+AglkcjlL+4x9fZl5lpG6t8WcjDRcRfARcywe0AoXpbcTjFmedPA==
X-Received: by 2002:a1c:a90e:: with SMTP id s14mr17897462wme.46.1604319615188;
        Mon, 02 Nov 2020 04:20:15 -0800 (PST)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id x10sm21299157wrp.62.2020.11.02.04.20.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 04:20:14 -0800 (PST)
Subject: Re: [PATCH] io_setup.2: SYNOPSIS: return long
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20201101135957.90237-1-colomar.6.4.3@gmail.com>
 <6362993f-88d7-5dd4-91b2-03d31ebc8bab@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <4de611f0-27e7-164a-bd40-21d276c015be@gmail.com>
Date:   Mon, 2 Nov 2020 13:20:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <6362993f-88d7-5dd4-91b2-03d31ebc8bab@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2020-11-02 08:37, Michael Kerrisk (man-pages) wrote:
 > Hi Alex,
 >
 > On 11/1/20 2:59 PM, Alejandro Colomar wrote:
 >> The Linux kernel uses a long as the return type for this syscall.
 >> As glibc provides no wrapper, use the same types the kernel uses.
 >
 > I think we need this patch for all of the io* pages, right?

Hi Michael,

For some reason, no.  AFAICS, only io_setup() really uses 'long'.

Then there's io_submit(), which also declares a 'long', but gets that
value from io_submit_one(), which returns an 'int';
we could use either 'long' or 'int'
in the manual page too for this one.

And then there are the others, which use plain 'int'.

See at the end of this email the sources for this answer.

Cheers,

Alex

 >
 > Thanks,
 >
 > Michael

fs/aio.c:1312:
SYSCALL_DEFINE2(io_setup, unsigned, nr_events, aio_context_t __user *, ctxp)
{
	struct kioctx *ioctx = NULL;
	unsigned long ctx;
	long ret;
...
	return ret;
}

fs/aio.c:1381:
SYSCALL_DEFINE1(io_destroy, aio_context_t, ctx)
{
	struct kioctx *ioctx = lookup_ioctx(ctx);
	if (likely(NULL != ioctx)) {
		struct ctx_rq_wait wait;
		int ret;
...
		return ret;
	}
	pr_debug("EINVAL: invalid context id\n");
	return -EINVAL;
}

fs/aio.c:1855:
static int io_submit_one(struct kioctx *ctx, struct iocb __user *user_iocb,
			 bool compat)


fs/aio.c:1914:
SYSCALL_DEFINE3(io_submit, aio_context_t, ctx_id, long, nr,
		struct iocb __user * __user *, iocbpp)
{
	struct kioctx *ctx;
	long ret = 0;
	int i = 0;
	struct blk_plug plug;
...
		ret = io_submit_one(ctx, user_iocb, false);
...
	return i ? i : ret;
}

fs/aio.c:2008:
SYSCALL_DEFINE3(io_cancel, aio_context_t, ctx_id, struct iocb __user *, 
iocb,
		struct io_event __user *, result)
{
	struct kioctx *ctx;
	struct aio_kiocb *kiocb;
	int ret = -EINVAL;
...

	return ret;
}

fs/aio.c:2084:
SYSCALL_DEFINE5(io_getevents, aio_context_t, ctx_id,
		long, min_nr,
		long, nr,
		struct io_event __user *, events,
		struct __kernel_timespec __user *, timeout)
{
	struct timespec64	ts;
	int			ret;
...
	return ret;
}
