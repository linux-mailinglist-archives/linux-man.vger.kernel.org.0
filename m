Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B8018AA4F1
	for <lists+linux-man@lfdr.de>; Thu,  5 Sep 2019 15:46:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731128AbfIENq3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Sep 2019 09:46:29 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:40007 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731456AbfIENq2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Sep 2019 09:46:28 -0400
Received: by mail-lj1-f194.google.com with SMTP id 7so2536697ljw.7
        for <linux-man@vger.kernel.org>; Thu, 05 Sep 2019 06:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EO/1fhHCNKpWEyEugRRT3s6FPZeKE2kprT3x1Echc+M=;
        b=R/TnQaS5tz+SW+sQTSVZ5bAuoxKAq34pLwTyM9Cw1auMbiNpg7hIwHfphosNZajpF0
         7kd3Nt7FVINz02cr+CoEbaMyGrMz4CqfDWOez1Ijt72K3DyxWfGV+r3GMJOmARWHj2DH
         poIHSLmGBmwh7c/yP7ey+aRvqLjzLAPQHGn2sg+WOdnhbyXHPt4LHJs2Np2ilS7MDo6P
         f66GPq+ZqB6nU7fU/gXjuu7TK3/+1/LQDdhGawhetqzSnmPSmuvnNLZaK6XRy7Gp/RdL
         DO/fV6Nnhn8v73D38YF1dXH4GoBHk0NLONu7oxW85lYOJqRfv48Y+ekyNW1XMfZqp6B4
         7z9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EO/1fhHCNKpWEyEugRRT3s6FPZeKE2kprT3x1Echc+M=;
        b=BmdfgjR09D5CdS+g6kqj2olhv3CyrBr7LOp2cpNKuGvMJ5xjM9sG+ros1HHDvY7Efd
         xMEHYz/SjMmhBvYmtBsRoWolsPrczWIocgIvEzyYomamMcWwu368cx6KrTnsS7kkBwvq
         iSJXkigvUEW2gDJhB5tu7Gzy5fgtmehmuMe4H84c40FExyHcV58jW3Yr+IlZsK9JICMs
         UrD1/YdLyTqxqUzMAVTnx5Q+Z2LH5kFNG9yNsTW51IuPoLcJro7knsbCODPF6AVRRi7B
         1w+n6RpaxqAj/QozO8bZZXW227XtPsmqFa58giTVss34EgSs43HU8rQVneIihpOTUMAS
         tw+A==
X-Gm-Message-State: APjAAAVo0dHLRGqXH7Vz2a16733snnb0ixxofN0RoWxfjjm0KBv1LvHq
        NlU2Dm76+/MS681xZwEqSQShNkK8qHs=
X-Google-Smtp-Source: APXvYqw4bgD/0k24mjuaxDWGsdbWVM138nDkKCOUMFyZvyCIOxBXwu6AJx3TokxspfJHyLXMwmvm4w==
X-Received: by 2002:a2e:9c03:: with SMTP id s3mr2061852lji.109.1567691187021;
        Thu, 05 Sep 2019 06:46:27 -0700 (PDT)
Received: from [192.168.101.104] ([138.62.237.153])
        by smtp.gmail.com with ESMTPSA id v27sm384914ljv.86.2019.09.05.06.46.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2019 06:46:26 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/4] fanotify_mark.2: ffix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190902065536.4878-1-jwilk@jwilk.net>
 <20190902065536.4878-2-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1bd8a15d-35dd-9022-23d7-ac15e42dcf19@gmail.com>
Date:   Thu, 5 Sep 2019 15:46:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190902065536.4878-2-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 9/2/19 8:55 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks. Patch applied.

Cheers,

Michael


> ---
>  man2/fanotify_mark.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 67e3a3d70..7a497f29c 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -176,7 +176,7 @@ Create an event when a read-only file or directory is closed.
>  .B FAN_OPEN
>  Create an event when a file or directory is opened.
>  .TP
> -.B FAN_OPEN_EXEC " (since Linux 5.0)"
> +.BR FAN_OPEN_EXEC " (since Linux 5.0)"
>  Create an event when a file is opened with the intent to be executed.
>  See NOTES for additional details.
>  .TP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
