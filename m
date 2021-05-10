Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B6F537953E
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:17:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231308AbhEJRSu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:18:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231381AbhEJRSt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:18:49 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51D9AC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:17:44 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id m190so13834419pga.2
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6iVxLhg3MTXEg2wPEjm4gHCzfQbp1LNmpse22i/0YRY=;
        b=j5TKvXbkQtW93KGJoTqfN2HFQ0A1wISNy8IMjwLhBG/8P3AjBG8BuK16acc30/21IL
         jOlOG+v7fSKS8HkGTh+gJMUoej/DjuOpn1RiEAdYctDW5MXpNimclSmSoxPuvPs7+Pr9
         PUkoIUXUfmHZ9zycC3xj3+4VHJLxH6I4cf97t1PtwQqDoBHGJ63tchRQX1FB6buwp4Jy
         jk3LlnittbmbXi76Vi1/Zx+SMrEwpceZPIoC8kTlazZ6ksIJsUAqVheD53AmsV42yTQg
         hTm4TYzu0wHzH2YJrnYVQmZIRpWeL9/k4mJZ1SrH6PwO+kY8v5/w5n95GZ18ZZfjY/IO
         vvoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6iVxLhg3MTXEg2wPEjm4gHCzfQbp1LNmpse22i/0YRY=;
        b=hmDXljzXD8wQErYykdbQQUqi0OwKbZ6B0j+7TIV7+wDDwrPaMEcBBJ3LPGnXrkjOgb
         9ATU+mBRNkyEzQp/ee18E5DHg3rdMXeD087q2VYGDmvC1B4KqBTMZSLti1t+LT0ctPa3
         mmDNHBwoAG11dkIOdQhNOrarkeiEtbJIQoB+ioom10L27SDKtdtpHKZO7d6aHDKMNJQy
         hAA6V95SxscbdWu2nna9aNJy68xnNkforu5Br0rnCcpqo3lv9T8WXrdh+7CdcTAUXhpK
         DVaw+F66HDug5/jM5uyP6xCrIKqgm0L224VI4I88+oyfUKwGyVN62g2Qi1Jp/ynMbwkn
         4k5Q==
X-Gm-Message-State: AOAM533jwaROD203Yo0kZF7ADsY/fMyCan/2VZaYYZq/tWlhrqsfSlXR
        MW/PjVTZmnoaj9KSUgxde7gjb5nuzNU=
X-Google-Smtp-Source: ABdhPJxXI7FQ37CPd699a99DqHYH133za3U6SRLx7DONU3GVUDuMmDUrc6HBM47p2IcxSqZIcqek6A==
X-Received: by 2002:a62:8fd2:0:b029:28e:8c64:52a4 with SMTP id n201-20020a628fd20000b029028e8c6452a4mr26267719pfd.3.1620667063595;
        Mon, 10 May 2021 10:17:43 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id t19sm12116171pjs.23.2021.05.10.10.17.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 10:17:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] execveat.2: Remove unused include
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210510130209.4578-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a1e2e2a8-c998-bcbd-62c7-c1ee8f75ae17@gmail.com>
Date:   Tue, 11 May 2021 05:17:39 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210510130209.4578-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/11/21 1:02 AM, Alejandro Colomar wrote:
> This complements commit e3eba861bd966911b38b7ebc572f0c092ca7bdee.
> 
> Since we don't need syscall(2) anymore, we don't need SYS_* definitions.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/execveat.2 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man2/execveat.2 b/man2/execveat.2
> index 11ae04a9f..495617b09 100644
> --- a/man2/execveat.2
> +++ b/man2/execveat.2
> @@ -29,7 +29,6 @@ execveat \- execute program relative to a directory file descriptor
>  .SH SYNOPSIS
>  .nf
>  .BR "#include <linux/fcntl.h>" "      /* Definition of " AT_* " constants */"
> -.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
>  .B #include <unistd.h>
>  .PP
>  .BI "int execveat(int " dirfd ", const char *" pathname ,


Thanks. Patch applied.

I've now pushed everything from you that I have applied.
("[PATCH] Makefile: Simplify error handling" remains open.)

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
