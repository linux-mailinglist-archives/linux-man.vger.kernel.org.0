Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 182B145A0E3
	for <lists+linux-man@lfdr.de>; Tue, 23 Nov 2021 12:07:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234012AbhKWLKP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Nov 2021 06:10:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233462AbhKWLKO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Nov 2021 06:10:14 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC301C061574
        for <linux-man@vger.kernel.org>; Tue, 23 Nov 2021 03:07:06 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id a18so1708315wrn.6
        for <linux-man@vger.kernel.org>; Tue, 23 Nov 2021 03:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IGqsGytO9zyyEmX6jRMRs46pMylOeOs2lL9478wK6fc=;
        b=DTrJrRXE6cjO/WrxlZoa3ZhwG+vqp3caDBoKp0oCJAJlNsTOPUFTBD+b3eE/XZk6ck
         XVFBhrU+fyAlc1ue+ff4wPCH2x7UJdDxo7PzVSDO/RHmECwZ4GhCBhR/uhqJQjruse2d
         emFYb7HBZCxgLN2h49kXXe2+Ja57CkkcsQf/qzYRcH5U76BjAJSks/qJp2L3PTCZFn0l
         KeIUqVZusn1hOi7K+ciNiZ23Pegm7ItiitCbsPKnSmjZiku/XkFGnXTsNmdOk9R0WjjA
         joLxyE6CYqMaSZPKlxOgsbi0nzPkcgmJCZZ7+Y++oVNXk1yyiZSZnzwEBM2AjaiQF8td
         nMAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IGqsGytO9zyyEmX6jRMRs46pMylOeOs2lL9478wK6fc=;
        b=yQ60DbMIciGHcKBtqD2B1DN4JOMy38tUhJWAiEmN77KmsjaT0ynI/57iuJJOq4BDEf
         VrdlYybNYu3VxI5+CJBiFoGSrLHMNzoJmc42Eq4G9tHrle5a56eQ+6yoH/s43jFB0eir
         7Lh0W27rbZ1ogS7A/o29ItTlYVZ56hS2fKixwU+VHHWwbkFmAvPGmRAc+CPpy3CHyQi7
         rQ4kHjjEtvGdT/0EPEKV0Qu9Pxkdex+M/nvdHXmU78IaG9cVWAyTfzBAJt4ElrFbgw+G
         Rig9SoGv8V//Qt9enJ7RlEUCiUoJtRwLihcTjysl6C0NNrPQto+Rf/Hfsko5lO5794IE
         EoCw==
X-Gm-Message-State: AOAM532OI2tFw6z67xG15/ytTf6d/Us9UNPYF2i/oTxoZelLJByHGrLh
        k0WL70+POYWp5aEUc7YPw64=
X-Google-Smtp-Source: ABdhPJzyz3tcSz5loik07uTlXXHXAhm5avdh2Q6InJ1OCGroMkvbBoepgxMNixGI50aD18LQUP6MHA==
X-Received: by 2002:a5d:424c:: with SMTP id s12mr5947703wrr.370.1637665625520;
        Tue, 23 Nov 2021 03:07:05 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o10sm14425038wri.15.2021.11.23.03.07.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Nov 2021 03:07:05 -0800 (PST)
Message-ID: <cce23bd2-a320-5ab6-4e7d-7365b3917a1a@gmail.com>
Date:   Tue, 23 Nov 2021 12:07:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH v2] init_module.2: Add ETXTBSY error for finit_module
Content-Language: en-US
To:     Yang Xu <xuyang2018.jy@fujitsu.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <4a08d1e1-4bed-2428-e29f-8b7cb37294b4@gmail.com>
 <1637629149-2255-1-git-send-email-xuyang2018.jy@fujitsu.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <1637629149-2255-1-git-send-email-xuyang2018.jy@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Yang,

On 11/23/21 01:59, Yang Xu wrote:
> Since kernel commit[1], finit_module fails with ETXTBSY error if fd has write permission.
> Since kernel commit[2], finit_module fails with EBADF error if fd doesn't have read permission.
> 
> So we can use read-write permission to trigger ETXTBSY error all the time since linux 4.7.
> 
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39d637af
> [2]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=032146cd
> 
> Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>

Patch applied.

Thanks,
Alex

> ---
>   man2/init_module.2 | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/man2/init_module.2 b/man2/init_module.2
> index aac0c6631..77cd8c4a6 100644
> --- a/man2/init_module.2
> +++ b/man2/init_module.2
> @@ -242,6 +242,12 @@ is invalid.
>   .B ENOEXEC
>   .I fd
>   does not refer to an open file.
> +.TP
> +.BR ETXTBSY " (since Linux 4.7)"
> +.\" commit 39d637af5aa7577f655c58b9e55587566c63a0af
> +The file referred to by
> +.I fd
> +is opened for read-write.
>   .PP
>   In addition to the above errors, if the module's
>   .I init
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
