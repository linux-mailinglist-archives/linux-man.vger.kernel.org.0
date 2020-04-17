Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74EE61ADB87
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 12:49:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730127AbgDQKqJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Apr 2020 06:46:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729870AbgDQKqI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Apr 2020 06:46:08 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55A2BC061A0C
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:46:08 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id o81so2452222wmo.2
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MIL+MDk5apIEgnDrdq4ydEDS79vwcSHIFZtUiah+XBY=;
        b=L9i8VH6iTrgyrqpK3sB7jI2Zk2QSVcRIpyiVttnHFJ+h0S4v66TFsMv61nSR7sE9BJ
         Srxu2W56aCqUOjxhmA2hwrg/Jm/IikdZO//sEpp0UBUkPAt6QgvfYK32teaF12O3ehnI
         NMDDkO15rtG/LZ+pWUICHYR40JlJAjZCYR/AXdvgBszlLEPNFPvgeOC16LytoWSEa7nV
         eiAStthg53doNkoVbvirpXaSoOB2K2UDwNXXjx+L+IJmKowPIRL870ANB1tP+wPmLo3O
         qIGvj6+pbNjXE8T1sdNtpyVms5fjSEuipKsxwdtYt4cbNmJu+o5hhAFe+cv4EUSTj8BT
         mb3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MIL+MDk5apIEgnDrdq4ydEDS79vwcSHIFZtUiah+XBY=;
        b=V3XlA+dUnmil9vFecUBjMjT0L891ubINs+/b1GomV+UV+Y+cKekCGinUuTaWXXMe8l
         hvCRGXcBBDUhqF5qZwzmUIuvXuZ8R55WxJ+sSdDfDcsSGCVAOjEzPZLfKrz9Y/XSutel
         tFy9RqoB1AxdEFXDXp8DkN/zv1jH+CopEJJv/h/TWBbjv02QK63vxdsBNlvJl46WuHcj
         hvamdGzKXQO6/O3qF6mmhdmnfelt/KaGwrjRXXJsHGkdWOzZw1o6XJ4xp/o12OiBV50z
         J0hvLQDuX2CpIKFD83DiLH66qkPyWcMABHZ5eCxGoYwDBvU5Xzmb/5+2Tw+hu2yxP8il
         Kj0Q==
X-Gm-Message-State: AGi0PubuIED7oQVonYzjYZYum+5/5fkp9v3+8C0WLVI/SySK2IQSktXD
        ZACJ50/lS2HmStxJVxqrXdg=
X-Google-Smtp-Source: APiQypKnDkYO8bpdxPp3XVh1FZG7Lyol/q7F8dGUqH6OHeXuZph1ULJqWcJgCxVnQamYhqQR/vmF+g==
X-Received: by 2002:a7b:c4c9:: with SMTP id g9mr2673271wmk.171.1587120367098;
        Fri, 17 Apr 2020 03:46:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id z15sm18989339wrs.47.2020.04.17.03.46.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 03:46:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: Re: [PATCH v2 4/4] posix_spawn.3: Document the POSIX_SPAWN_SETSID
 attribute
To:     Olivier Gayot <olivier.gayot@sigexec.com>
References: <20181016193751.4473-1-olivier.gayot@sigexec.com>
 <20181016193751.4473-5-olivier.gayot@sigexec.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3c38120f-802c-caa7-7c07-a283dfb6a6e5@gmail.com>
Date:   Fri, 17 Apr 2020 12:46:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20181016193751.4473-5-olivier.gayot@sigexec.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Olivier,

On 10/16/18 9:37 PM, Olivier Gayot wrote:
> Since glibc 2.26, posix_spawn (2) function accepts the
> POSIX_SPAWN_SETSID flag. This flag has been accepted by POSIX and should
> be added to the next major revision. The current support can be enabled
> with _GNU_SOURCE.
> 
> Upstream commit in glibc.git:
> 
>   daeb1fa2e1 [BZ 21340] add support for POSIX_SPAWN_SETSID

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Olivier Gayot <olivier.gayot@sigexec.com>
> ---
>  man3/posix_spawn.3 | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
> index 72e7509d8..93f1124a1 100644
> --- a/man3/posix_spawn.3
> +++ b/man3/posix_spawn.3
> @@ -394,6 +394,20 @@ instead of
>  The
>  .B _GNU_SOURCE
>  feature test macro must be defined to obtain the definition of this contant.
> +.TP
> +.BR POSIX_SPAWN_SETSID " (since glibc 2.26)"
> +If this flag is set,
> +the child process shall create a new session and become the session leader.
> +The child process shall also become the process group leader of the new process
> +group in the session (see
> +.BR setsid (2)).
> +The
> +.B _GNU_SOURCE
> +feature test macro must be defined to obtain the definition of this contant.
> +.\" This flag has been accepted in POSIX, see:
> +.\" http://austingroupbugs.net/view.php?id=1044
> +.\" and has been implemented in glibc since version 2.26
> +.\" commit daeb1fa2e1b33323e719015f5f546988bd4cc73b
>  .PP
>  If
>  .I attrp




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
