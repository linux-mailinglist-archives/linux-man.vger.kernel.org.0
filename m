Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B9993E3CCF
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:57:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229895AbhHHU5X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:57:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229686AbhHHU5W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:57:22 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D1CEC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:57:02 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id cp15-20020a17090afb8fb029017891959dcbso3493983pjb.2
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/jZdONFuaM3PTpAfWhom92UEhj1JN+lboZDwL84twBk=;
        b=oIYPWD1skEjUSBE6iLXRM+ZNTbEt1Qcnvd1wqN+bnQujJHnECL+kKG9mRZ3ZDNBH3l
         UoDOeTXp5AuV2KVD9obk55z7Po4AUT3M4T4FOw1/zHX7X0C1fL/8t1r2rt4eMtO4JVQ0
         k74uPyvTHvn2HNErPRPnASYMHpWC6FDb+w3pL3wUgVm3LN3aU56p39vGzGHB6qM9Q6Op
         m5wXHonc5KjA6+mUzcsc0WCxxdG9PL89a6M7zRbeHdqx8b7Y7DKUx1UnIhCyHG22Ng76
         zcjxOnf1v3NIyINb+R9/oOgBjX6uGlsgnJlyzHKh+IsWPsAH8wxpj4l0xlP4cfwa2ce8
         uDsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/jZdONFuaM3PTpAfWhom92UEhj1JN+lboZDwL84twBk=;
        b=Sy2N21uJx871vuOQGXB4VEzAJCLncUftU+PntAwGyV9M7SEzPxEHm3aoAtCyOzzAIJ
         u2Ld37a8ysDXqFZI1zOCSyYyHD7O/tj9c8YQSdmVFnoQ4qybt9OWMcZjwJ4GZddh/21j
         Itt/wb2c3BaqqnYYwwo55Wi0MNx9zV8TYfSdpH19znBrFkz5nCCT1gXvbe+eP61M+9Fk
         D5YDULhYELLHGdbIDeKJI8HkQBc/jtja6iehd1vCIFVezD2k0Gj4N79ZGeoBBmYMtNKi
         afII7W2gXmPnlO+anThgKo85UMMoCFJfxQYGiV8CCq+fA7hJxD2mF/eCvOv71KK27pqc
         1sEQ==
X-Gm-Message-State: AOAM532SA5nr+cvqRB0I/tLIaBXAkzdsV4w3WV1QCEexLe9oHzNzeQ9Q
        ddUp+v9oehHINcb+N2UGOXS8nEzpyGo=
X-Google-Smtp-Source: ABdhPJxaRGKz3OihLZywh/9lbJqLrGuQ1yQOrdtkfT4wfiV7/MlyX5ZjaKjH6eoHFgPPDuyfu09MWQ==
X-Received: by 2002:a17:90a:d686:: with SMTP id x6mr23270963pju.8.1628456221741;
        Sun, 08 Aug 2021 13:57:01 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id u17sm17535580pfh.184.2021.08.08.13.56.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:57:01 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 13/23] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2,
 TCSETSW2, TCSETSF2
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-14-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7a378d4c-36a5-be42-79fb-aeb1c160984c@gmail.com>
Date:   Sun, 8 Aug 2021 22:56:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-14-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Pali and Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: Pali Rohár <pali@kernel.org>
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/ioctl_tty.2 | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index 46294e63f..967b5c4c7 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -77,6 +77,35 @@ The following four ioctls are just like
>  .BR TCSETSW ,
>  .BR TCSETSF ,
>  except that they take a
> +.I "struct termios2\ *"
> +instead of a
> +.IR "struct termios\ *" .
> +If struct member
> +.B c_cflag
> +contains
> +.B BOTHER
> +then baudrate is stored in struct members
> +.B c_ispeed
> +and
> +.B c_ospeed
> +as integer values.
> +These ioctls are not supported on all architectures.
> +.RS
> +.TS
> +lb l.
> +TCGETS2	\fBstruct termios2 *\fPargp
> +TCSETS2	\fBconst struct termios2 *\fPargp
> +TCSETSW2	\fBconst struct termios2 *\fPargp
> +TCSETSF2	\fBconst struct termios2 *\fPargp
> +.TE
> +.RE
> +.PP
> +The following four ioctls are just like
> +.BR TCGETS ,
> +.BR TCSETS ,
> +.BR TCSETSW ,
> +.BR TCSETSF ,
> +except that they take a
>  .I "struct termio\ *"
>  instead of a
>  .IR "struct termios\ *" .

The Linux man-pages generally try to maintain historical and 
version info (at least back as far as 2.6.0), so I applied
the patch below.

Thanks,

Michael

commit 48a486dddefa20cddbc83610cf582acecf23e2b3 (HEAD -> master)
Author: Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Sun Aug 8 22:54:29 2021 +0200

    ioctl_tty.2: Note kernel version that added TCGETS2, TCSETS2, TCSETSW2, and TCSETSF2
    
    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 9854cfd3f..1d9a6dee1 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -71,7 +71,10 @@ Equivalent to
 Allow the output buffer to drain, discard pending input, and
 set the current serial port settings.
 .PP
-The following four ioctls are just like
+The following four ioctls, added in Linux 2.6.20,
+.\" commit 64bb6c5e1ddcd47c951740485026ef08975ee2e6
+.\" commit 592ee3a5e5e2a981ef2829a0380093006d045661
+are just like
 .BR TCGETS ,
 .BR TCSETS ,
 .BR TCSETSW ,


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
