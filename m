Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 908BB2CC173
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 16:58:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727394AbgLBP6H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 10:58:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726935AbgLBP6G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Dec 2020 10:58:06 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86000C0613CF
        for <linux-man@vger.kernel.org>; Wed,  2 Dec 2020 07:57:26 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id k14so4566989wrn.1
        for <linux-man@vger.kernel.org>; Wed, 02 Dec 2020 07:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xq78wbcP/vHYMVZzLGjq6kmFEU0xSy3qLk58Jzvdflk=;
        b=cngXJ0L1gN2tWmGbd9Xk6eI57SuOsO4UoTYCqLYax4aB38mMRFb8mobbnu2/pPy5DB
         laWAn7wqyhdOdTHp0yPGHtsEFaJ/29bLGlvrJKier9UWPXA4QCCvmOpOzBeUG4xoSkKc
         fy0vH0n+iIRuIlq01/P18cv52VyDbQydrz7w42ZYg1UJM2G4MxNgjwm9YA+gRFItdYTq
         pwCkg2DK23+XXKzk0H344LQcx34iri9SnXADoJXMVTouw714LMSS+6MuYCHuAaGAje6U
         jHl3akkTrllQ0TW0r9JtmKQNDaqOQ/j62RxBo0yBT1NCSkzMYdHAzSsumVRP9M5JUmzK
         +rhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xq78wbcP/vHYMVZzLGjq6kmFEU0xSy3qLk58Jzvdflk=;
        b=sfIa7eEScW/47CA8bz79jin5X1eNayt7GeLBJ6uBfDpniNzoWPjrY0de/KwD3Ub/o/
         ZEwFpt/p4ye/u/1OYY5N5eJv/RlL62kMrYIwr0KlaqbyrlRhVk8hBYsASiD9j/9604rK
         GHqlojsVooZEw9KNxx0ZPpNe3cNXkq1SbN2G/YgVECcHhSjkrwFMSe7oMr06vW2RyVlp
         uAEt2HkmuBILbODABDjUTzcP4S3BLkHubv35t6OT5qzuMYk9bRZaH3ftQYIajo4D5qFs
         qr6hOK7MAMRrn9F9kArVeT61hbhduhijQeyfS08H922qWaIhy8gC66P3BZER/dKUGQj8
         10UQ==
X-Gm-Message-State: AOAM530Txyj+RGSAzGdDNVGSsSz+pQbzaitDfEa5CBa3mYFfG6Z41Fqo
        25O1Ze8ghcKYM8BKMzbk135I3HVjgnTmzQ==
X-Google-Smtp-Source: ABdhPJyuE8BMI1gptKd2gUSHWgmj/9IcMF3cPgVoAaUca/nxEDahFKYoPuIcCz+B8ScKPH+hWGEHYA==
X-Received: by 2002:adf:b64f:: with SMTP id i15mr4351788wre.125.1606924645050;
        Wed, 02 Dec 2020 07:57:25 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c5sm2741770wrb.64.2020.12.02.07.57.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 07:57:24 -0800 (PST)
Subject: Re: [PATCH] fanotify: Document FAN_AUDIT flag
To:     Jan Kara <jack@suse.cz>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Amir Goldstein <amir73il@gmail.com>,
        Steve Grubb <sgrubb@redhat.com>, linux-man@vger.kernel.org
References: <20201202154354.30778-1-jack@suse.cz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d7a6ab1f-c852-700f-c88b-93baef1ca148@gmail.com>
Date:   Wed, 2 Dec 2020 16:57:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201202154354.30778-1-jack@suse.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jan,

Please break lines at significant points,
instead of just when it wraps at the right margin;
as I did in this little paragraph.

See man-pages(7)::STYLE GUIDE::Use semantic newlines

Thanks,

Alex

On 12/2/20 4:43 PM, Jan Kara wrote:
> Document FAN_AUDIT and related FAN_ENABLE_AUDIT flags.
> 
> Signed-off-by: Jan Kara <jack@suse.cz>
> ---
>  man2/fanotify_init.2 | 7 +++++++
>  man7/fanotify.7      | 9 ++++++++-
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> OK, here's my attempt to document the FAN_AUDIT flag. It would be nice if
> Steve glanced over it from the audit side to check things are sane.
> 
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index ca03b11dc98a..6becc7a680db 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -155,6 +155,13 @@ supplied to
>  (see
>  .BR fanotify (7)).
>  .TP
> +.BR FAN_ENABLE_AUDIT " (since Linux 4.15)"
> +.\" commit de8cd83e91bc3ee212b3e6ec6e4283af9e4ab269
> +Enable generation of audit log records about access mediation performed by
> +permission events. The permission event response has to be marked with
> +.B FAN_AUDIT
> +flag for audit log record to be generated.
> +.TP
>  .BR FAN_REPORT_FID " (since Linux 5.1)"
>  .\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
>  This value allows the receipt of events which contain additional information
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index 5804a1f30d6c..b5f096304cf4 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -588,7 +588,14 @@ to deny the file operation.
>  .PP
>  If access is denied, the requesting application call will receive an
>  .BR EPERM
> -error.
> +error. Additionally, if the notification group has been created with
> +.B FAN_ENABLE_AUDIT
> +flag,
> +.B FAN_AUDIT
> +flag can be set in the
> +.I response
> +field. In that case audit subsystem will log information about the access
> +decision to the audit logs.
>  .\"
>  .SS Closing the fanotify file descriptor
>  When all file descriptors referring to the fanotify notification group are
> 
