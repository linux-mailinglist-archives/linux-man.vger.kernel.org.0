Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6A99E1A3B9B
	for <lists+linux-man@lfdr.de>; Thu,  9 Apr 2020 22:58:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726714AbgDIU6u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Apr 2020 16:58:50 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:36273 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726650AbgDIU6t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Apr 2020 16:58:49 -0400
Received: by mail-wr1-f68.google.com with SMTP id k1so13697661wrm.3
        for <linux-man@vger.kernel.org>; Thu, 09 Apr 2020 13:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mNI61+ZjQmMNk/GUl8N7IzOacl6ZymtZYuw2LtWlxK8=;
        b=bxQ6kHvqTSNtwExyZvbilixrenho8lGIaE7FhfVCQ2aiqKsmNYZ/tbkIa2UlJ+5bJo
         SjRyRb+gTru2c/dpZW+lA5Co+CEyCHzbppjV4zpUI/qdRRAuidBoLdk/uPRGnisA0MQf
         Bed+IEZyKOBdxyrVvoVr4WMTTybuz+iH6RgZrYM3Doffb1hBVZEkRMknEcXDuusrIgH2
         f0Czif0yPJkr9MupV48EDSVKksMwIqEd7No7vuLm0TK6LH9Xg+2RcN0MhGjEINmWiYOa
         zpXL4o+0I4k8OEmr7R9vx2vtBQrSCYTbP8RQkhmrp4m5mr2ZakS96Rm8k7elctlFxODa
         tPfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mNI61+ZjQmMNk/GUl8N7IzOacl6ZymtZYuw2LtWlxK8=;
        b=HNmyHdSXIN4SvbfzLFJrcSXRGDksQPLyuqRgzfKSWIvdSZS5umW6lWqkd7ejL+Hbe3
         BWrTRy9v2pHcSN8mdB2tlpa6U0qbmrylz+WCGIQvy/aXf0lw9vlZ7Q0lRcM7CUgD3iac
         KRKutaQxJBJW0W3WhamFhWuOdIWVtK+tBjlNuhfIgVQ3SHbhINUUJHQAwbLn/qGFfmKX
         GJ8YcPtUApVv29rcDDCQuICxkcy/9dyPSGolB2NNeX62bEK1ZVZnAelUXoJd724CrF3F
         7S+RYIwoCfkyg7YUSe1SPcGDIOn+bjeeR9c4nuJBjE4/a9Ug4NyAOPgaMf1tjw7yUeDv
         /0Uw==
X-Gm-Message-State: AGi0PuaMhX5n6esc2q+F2lgnfA262iUkyers7DP9mPjIA8zDiOGcN7AF
        jJIwTY7Yi6kpf0VQQI1jpJf6bp6B
X-Google-Smtp-Source: APiQypJWtQTuaITA3ICumPISKQ/1apxcagtEmrdbiBT2FmLdpbX0qN7UnI3pjOWQ+M3UvDOPpFdp0A==
X-Received: by 2002:a5d:4ac2:: with SMTP id y2mr1154124wrs.340.1586465926890;
        Thu, 09 Apr 2020 13:58:46 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y22sm5415499wma.18.2020.04.09.13.58.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 13:58:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] io_submit.2: Add IOCB_CMD_POLL opcode
To:     Julia Suvorova <jusual@mail.ru>
References: <20190604150553.2168-1-jusual@mail.ru>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bfa36263-825f-7e56-b748-0c36142cee0f@gmail.com>
Date:   Thu, 9 Apr 2020 22:58:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20190604150553.2168-1-jusual@mail.ru>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 6/4/19 5:05 PM, Julia Suvorova wrote:
> A new feature of one-shoot polling through io_submit was introduced in
> bfe4037e722ec commit. Keep things up-to-date due to changes in
> linux/aio_abi.h.
> 
> Signed-off-by: Julia Suvorova <jusual@mail.ru>

Thanks, Julia. Patch applied.

Cheers,

Michael


> ---
>  man2/io_submit.2 | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/man2/io_submit.2 b/man2/io_submit.2
> index ed98da46c..58306d549 100644
> --- a/man2/io_submit.2
> +++ b/man2/io_submit.2
> @@ -144,6 +144,7 @@ enum {
>      IOCB_CMD_PWRITE = 1,
>      IOCB_CMD_FSYNC = 2,
>      IOCB_CMD_FDSYNC = 3,
> +    IOCB_CMD_POLL = 5,
>      IOCB_CMD_NOOP = 6,
>      IOCB_CMD_PREADV = 7,
>      IOCB_CMD_PWRITEV = 8,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
