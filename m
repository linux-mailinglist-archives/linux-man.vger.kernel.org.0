Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ACB3814455E
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2020 20:49:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727847AbgAUTth (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jan 2020 14:49:37 -0500
Received: from mail-pf1-f196.google.com ([209.85.210.196]:38274 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727829AbgAUTth (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jan 2020 14:49:37 -0500
Received: by mail-pf1-f196.google.com with SMTP id x185so2021920pfc.5
        for <linux-man@vger.kernel.org>; Tue, 21 Jan 2020 11:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OouaVjQHMuEXSKzSUXAc1WlydrV/FF4E9fbPEy445R8=;
        b=S+I9C+U9ezJzAGj/L4W7NZCosINdqzwNACn9Jbz1OidzZD+ISghi27+i24xAwn5LLR
         z3qJ8fF9DncIIegb+5UTFk68CLo8MEq8QP/LlovHAvNAbqqzTy93rC6nE8M3ZZzo8b4R
         wd6dZWjGVT9BMBXER/QzbPL74q/JvzC5oBf4jUgmEyhDwef3PtjX6JsYi7lHy3Y5uRa/
         zP6rAcn8FDlKNxa3EsiCaqRWrBY+0hg1kiVQkXkKfbXrSEDmkXooZ+YN0jqR3+OHTreL
         9Sgzf6vkhNem9rlspho41NpV2Lk6JrrhYGraSJaf+i7VkH8CEqG1BAMm1/9wltMlLd/V
         JzmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OouaVjQHMuEXSKzSUXAc1WlydrV/FF4E9fbPEy445R8=;
        b=SoN/QbNBsqPINV7vvgabCY0QWjiWnaysntJciQbgpoZGOBeUoABn7JbuTcV0QyE713
         0l/t9QPF8O0yr82GUu2rVJe5Et4SlhiwmA8To/fJcRzFcx4OUMTHVUDZybRZP97Z5Mpk
         dZPgGRW7XXBw1YuaL46bbMIoUHGGoChBajNHELs1Vwr1mJGaA+likE28fYPgZ1Lw6wL+
         ZsUTdadA3aH0rCxij6oHGJLQjORbvEsP43o3HKaEp6SxbbFpeYyKX8aZlrdNp7guQQl5
         llC8aHxRoEuVGsfXI2fzPfwH3X+3Pc9fszYGA8O5CPkIoz+CXpO1DA2V0knahzAfO4td
         6bQg==
X-Gm-Message-State: APjAAAUMstdf/O7EnTO83CWHwDhZV2g+V9EcKP29NIer2mTliMMvIjrB
        Uj1Juewf3bxGZQE+51GftJ4=
X-Google-Smtp-Source: APXvYqzKLEyOe5qpauGJQQ8duIkzB/1Hd7GoNEL3om//tIB806LQV1FMSVP2c0P94I0UcshP+KLY8A==
X-Received: by 2002:a63:9d07:: with SMTP id i7mr7579848pgd.344.1579636176545;
        Tue, 21 Jan 2020 11:49:36 -0800 (PST)
Received: from [192.168.1.72] (122-58-99-230-adsl.sparkbb.co.nz. [122.58.99.230])
        by smtp.gmail.com with ESMTPSA id 132sm9607115pgd.76.2020.01.21.11.49.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 11:49:35 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Tim Murray <timmurray@google.com>
Subject: Re: [PATCH] Mention EINTR for perf_event_open
To:     Daniel Colascione <dancol@google.com>
References: <CAKOZuesChdRSgY+W90kPJkg8UQzqt66ngsg8sX1VCLCvVdfDUQ@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2d5539fb-7b21-64b0-7cee-9ef9858c1738@gmail.com>
Date:   Tue, 21 Jan 2020 20:49:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAKOZuesChdRSgY+W90kPJkg8UQzqt66ngsg8sX1VCLCvVdfDUQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/9/20 12:57 AM, Daniel Colascione wrote:
> Somewhat surprisingly, perf_event_open can fail with EINTR when trying
> to enable perf reporting for a uprobe that's already been configured
> for use with ftrace. Mention this error in the man page.

Thanks, Daniel. Patch applied.

Cheers,

Michael

> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index 25876c36c..b9128f542 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -3228,6 +3228,10 @@ values are out of range or set reserved bits;
>  the generic event selected is not supported; or
>  there is not enough room to add the selected event.
>  .TP
> +.B EINTR
> +Returned when trying to mix perf and ftrace handling
> +for a uprobe.
> +.TP
>  .B EMFILE
>  Each opened event uses one file descriptor.
>  If a large number of events are opened,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
