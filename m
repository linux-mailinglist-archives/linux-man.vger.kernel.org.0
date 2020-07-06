Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDDC821568D
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 13:42:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728881AbgGFLmm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 07:42:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728441AbgGFLml (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 07:42:41 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 750A6C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 04:42:41 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id n26so28050341ejx.0
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 04:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2RJDdVXxh4wymMZNFiG7n5e2Tg2Pb2PH/5zvKzu4WzQ=;
        b=P8mrd6zcmAQmjpzslIQcS4+A+JjpaQtdeMeWcrUfpuxOOiWqdLT7+xC8OttdAvJU6a
         OYBr62EJuFU4PglORwhj3soq3ltovhgn3hKoGNddZp2B519zJXhiZMQH9bukkh6PkVmh
         tM38+5A7brOVLK7jy8lmKWIPF0jKERq0kapxjoeROZFs204m3q5YGmJS8jFgY1SA/XGg
         oPVLdSMOxelZEVYg/Il1VTbrhljHvglIQtOprBv9mJfoDf3LVt3l3wqwvBRpZNlyWDuu
         rWtWv/wtXsGCQtcP3Q+GNwomUXZS5uncgbTO0AfNhHFr0oIBDrXCTeEajpiK3LWG8KnN
         Fl4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2RJDdVXxh4wymMZNFiG7n5e2Tg2Pb2PH/5zvKzu4WzQ=;
        b=oogVQCvdTRp9r3ZouHvHpFqT8QZ9ysWCpGj1AiO/5YpyBlPAozpaMc3VKl1s5RiVaR
         2La4YHVWO9o00xAJeHJuJdc6NzJOQPhjERkEhN1eNzgmOzTmpbD7nHx3hTpttiJ4mxfY
         aQ90hN9AAPD4+Z8QORReXF1OyfPizDQxk0sdOyPsvF/ver0uyPtq4ZMWexYdVoM+Wamc
         shVJ0ydkRsIpQVGDhZ8vRV+4I7wOpOvyYwrecdBEzQSEBJXWP99BwDP/jZwE+ckx715F
         Jui7VS4d7zPKXs4fZu6GQGBwb0H2IRu7VJwJuNHivYY1G8v8woF4yr8V7KYfIOMcHNLb
         S+bw==
X-Gm-Message-State: AOAM533yiW7iTPd+BADBZM7cMiTQB8PNAiqoXddIyHMJofpRG4Di/8bY
        vYpt63pLxFLt4FFVu/mhVYDOjjF0
X-Google-Smtp-Source: ABdhPJyutqtBg3YwZSSQUYsIPbnJH9nbCbkPmDjoa9H6MDFBSnCmkGZu96Pyg6XCiiJPj98MQXKS/A==
X-Received: by 2002:a17:907:2489:: with SMTP id zg9mr41214421ejb.48.1594035759983;
        Mon, 06 Jul 2020 04:42:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id p9sm16269004ejd.50.2020.07.06.04.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 04:42:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man[13]/*: ffix: change '--' to '\-\-' (options) or
 '\(em' (em-dash)
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200705163747.GA18495@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f918b44f-6fd6-cfef-1a58-9dfaa6125d3c@gmail.com>
Date:   Mon, 6 Jul 2020 13:42:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200705163747.GA18495@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/5/20 6:37 PM, Bjarni Ingi Gislason wrote:
>   Change '--' to '\-\-' for options and '--' between words to '\(em'
> (em-dash).


Thanks, Bjarni. Patch applied.

Cheers,

Michael

> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man1/memusagestat.1 | 2 +-
>  man3/dlsym.3        | 2 +-
>  man3/posix_spawn.3  | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man1/memusagestat.1 b/man1/memusagestat.1
> index a1c40cd86..809f4ba3e 100644
> --- a/man1/memusagestat.1
> +++ b/man1/memusagestat.1
> @@ -33,7 +33,7 @@ memory profiling data in the file
>  that file is generated via the
>  .I \-d
>  (or
> -.IR --data )
> +.IR \-\-data )
>  option of
>  .BR memusage (1).
>  .PP
> diff --git a/man3/dlsym.3 b/man3/dlsym.3
> index 2abb0b1d0..58519b5d8 100644
> --- a/man3/dlsym.3
> +++ b/man3/dlsym.3
> @@ -145,7 +145,7 @@ function is a GNU extension.
>  There are several scenarios when the address of a global symbol is NULL.
>  For example, a symbol can be placed at zero address by the linker, via
>  a linker script or with
> -.I --defsym
> +.I \-\-defsym
>  command-line option. Undefined weak symbols also have NULL value.
>  Finally, the symbol value may be the result of
>  a GNU indirect function (IFUNC) resolver function that returns
> diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
> index f425a39e3..cb7faabcc 100644
> --- a/man3/posix_spawn.3
> +++ b/man3/posix_spawn.3
> @@ -429,7 +429,7 @@ If
>  .I file_actions
>  is NULL, then no special action is taken, and standard
>  .BR exec (3)
> -semantics apply--file descriptors open before the exec
> +semantics apply\(emfile descriptors open before the exec
>  remain open in the new process,
>  except those for which the
>  .B FD_CLOEXEC
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
