Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01CDB265AC9
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 09:49:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725730AbgIKHtE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 03:49:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725550AbgIKHtB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 03:49:01 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A713C061573;
        Fri, 11 Sep 2020 00:49:01 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id e16so10507178wrm.2;
        Fri, 11 Sep 2020 00:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BOY6mIGly2PeCZYbpRsY8qOVyIj0XWjJjEwg7QCJuXU=;
        b=nMC2P8M6Xepb79pxSEDaRTi5shuXscdiXiFNXLFw12yTPqVoBb1KV30ticxQ4EgE5r
         H2yLazjgFACjt8p65A/lpo7hWQUMOFt2WPtqtQgxNVFurGCEvVXRHmOBwH3DG1UeKxKW
         De7MInQRuB8KAmCKSZDII+YxfAViSQ2rxVE2dr+0FAF/wuD6Aw+++Fpz4d7hY5dRPghZ
         iDsOgTvKWrNvG5p/wElgxD5lXp9dHUZn62aO2XtKe/e+dWrs5tiIk+x2ElhjwRtjCv83
         tmjRT+qF0HpltUbp4YMmUDG/UL4eawz+tCbrx/AWWGMZv0IEq/oeRbFdZ1WzTp0jBlcs
         1BrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BOY6mIGly2PeCZYbpRsY8qOVyIj0XWjJjEwg7QCJuXU=;
        b=Iw2jrX0AHi0sMMaSQKR9D5a9NNLSmIrPN8j4Bn1v7ajCiJ2kBWQApUG9mxJxZB29zo
         DdL6lK17zBzM0IpIJhte0wgoIoZwhUgXRR/rCDMqM5Da1LJ4lx44jDGqxnPYCwrAhoAo
         91N/nae+dAjjJydzat5LbBQdMYygDaToSZwTfWJfiE5Ng1dQnKKhVfuSzov8lGItRFJp
         o8yDyRW4Zr1TbxLWEhXXD8J9uNwlaP/xUHGN5vcFjQQhljlYdLnRn3y5XheXdqvGCw2N
         T9NjYLBeggkKxXsj17WFZGHeFaZCCPvUYhDN8bUzTw/yLpPYL4lOL6mxJY9zfqgvGZXF
         vIAA==
X-Gm-Message-State: AOAM5323YQjk8n71HZeeZvFXI79CftcQVbmKZ3UUNkvCT98iAFyzeZSD
        rLYhYV3eVu1s+fGKEy6kjx+Vmou5uHE=
X-Google-Smtp-Source: ABdhPJwZ1yUgX7V+52J0H2ug4QkfVuU6PadHgeU8cxIsLXT4fICKUkEJCFNUgUhvf8QfOlxGgDi94Q==
X-Received: by 2002:a5d:69cd:: with SMTP id s13mr664917wrw.379.1599810539363;
        Fri, 11 Sep 2020 00:48:59 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id g131sm2523901wmf.25.2020.09.11.00.48.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 00:48:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/24] clock_getcpuclockid.3: Remove unneeded cast
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-10-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c2ac877a-3491-2044-aa87-b9cfcec25e44@gmail.com>
Date:   Fri, 11 Sep 2020 09:48:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-10-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Member 'tv_nsec' of 'struct timespec' is of type 'long' (see time.h.0p),
> and therefore, the cast is completely redundant.

Good catch! Patch applied.

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/clock_getcpuclockid.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/clock_getcpuclockid.3 b/man3/clock_getcpuclockid.3
> index 283f92557..050d7ad13 100644
> --- a/man3/clock_getcpuclockid.3
> +++ b/man3/clock_getcpuclockid.3
> @@ -154,7 +154,7 @@ main(int argc, char *argv[])
>      }
>  
>      printf("CPU-time clock for PID %s is %ld.%09ld seconds\en",
> -            argv[1], (long) ts.tv_sec, (long) ts.tv_nsec);
> +            argv[1], (long) ts.tv_sec, ts.tv_nsec);
>      exit(EXIT_SUCCESS);
>  }
>  .EE
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
