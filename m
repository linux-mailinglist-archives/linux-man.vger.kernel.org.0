Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28EFB3777E8
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 20:10:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229666AbhEISLD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 14:11:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229662AbhEISLD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 14:11:03 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B53A5C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 11:09:59 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id m124so11657032pgm.13
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 11:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DLSguyH460zQoMU5VIFMqWH5TJKsDaTFx54sIlPXXmc=;
        b=rG1pX16eFG/2YY266NwazFiikZ3DFx4twgI07XlSlN5+smKRvbdKe4Sg0kLQV0aCsy
         Fom9I5I4+Lu5/heX4KEQdz9NG+c6aBifBrJ4nVAhKkEMzf9+tDQyyctSvk3koa1WCEJs
         MRsntX6ccxQ73P5RddBuoySoQAEIOmyeVZs54yx8WwU6qxsw1yJe86Dk5We6TZ3xsdsk
         GthhbxJJNAdtAm5lNiW6BRI0sZS06IVWUBXz/4rYPKDuz68e5KFwdSXXL8aqDiMyIJKw
         uu636VGeuMKx6SVmgh0B0g9K2GclQLoGsp7tgMTaj7RW1IffYs4Owz42Eskj9gkXKFKn
         HtDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DLSguyH460zQoMU5VIFMqWH5TJKsDaTFx54sIlPXXmc=;
        b=RrLKNemV2iMaDC5J4rUAmmwdPd5kOCky1CTj1BLoRdf3I7IWp9kUh7A6w93q1sbLbA
         x/GPzOiKiX/g1tGb5B1DhfZkk/2+i2CV9JOd4lTLYM9bU9zAdrt0690Vvp+9+C2VWd8Z
         +wYklqtRNfhqDtDQk0fEvUCAfPLW9CC8+piNdjMaLpbvN9Jes/38TLHVD8iN5VBD/lwj
         VE9kH1lQVEjVvwe+aLFt2MGaPcxpph5+aT7503SkZN4LfdJIZuXiTz+r1kZkQWU1l4US
         zNusMtdbvAkIh6d8Gc4Z2AqDdFzB27vy4oztWHz+TVbJLyE8AkNVBn2UEYe4RHKh16+C
         gprw==
X-Gm-Message-State: AOAM530tVt6ozeLVaDgHbhJYlY9TARklOraU4qVOs3OqnHTK3crHY55e
        p2kKbZNCnSOVa3jUDtBVeaKWfvFsP8s=
X-Google-Smtp-Source: ABdhPJwxo5gGOclbDTI4d6YUWsR4nWoufdW3nP8eBSBhm/4MOGgVVWZzkRXRNa78fnpiKbIzz2uXnA==
X-Received: by 2002:a65:6705:: with SMTP id u5mr21842151pgf.418.1620583798993;
        Sun, 09 May 2021 11:09:58 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id h24sm216155pfn.180.2021.05.09.11.09.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 11:09:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: perfmonctl.2: Is it up to date?
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <fdec43d3-bb0e-cbcc-8d65-db26222f6a0a@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <be24029d-ebe8-06c5-2f94-a3b50b3052a0@gmail.com>
Date:   Mon, 10 May 2021 06:09:54 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <fdec43d3-bb0e-cbcc-8d65-db26222f6a0a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 4/23/21 10:31 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> I haven't found any of the constants (PFM_*) used by this function in 
> glibc.  Also not in the kernel, although in the kernel I found other 
> PFM_* constants different from the ones in the manual page.
> 
> I checked that this page hasn't received any patches in a very long time 
> (except for "Various pages" patches), so I suspect it may be out of date.
> 
> Also, does <perfmon.h> really exist?  I couldn't find it either.

It's certainly not up to date! In fact, this system call was removed
in Linux 5.10. I have applied the patch below.

Cheers,

Michael

diff --git a/man2/perfmonctl.2 b/man2/perfmonctl.2
index b376126a1..319712e6d 100644
--- a/man2/perfmonctl.2
+++ b/man2/perfmonctl.2
@@ -196,12 +196,18 @@ On error, \-1 is returned and
 is set to indicate the error.
 .SH VERSIONS
 .BR perfmonctl ()
-is available since Linux 2.4.
+was added in Linux 2.4;
+.\" commit ecf5b72d5f66af843f189dfe9ce31598c3e48ad7
+it was removed in Linux 5.10.
 .SH CONFORMING TO
 .BR perfmonctl ()
 is Linux-specific and is available only on the IA-64 architecture.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
+This system call was broken for many years,
+and ultimately removed in Linux 5.10.
+.PP
+Glibc does not provide a wrapper for this system call;
+on kernels where it exists, call it using
 .BR syscall (2).
 .SH SEE ALSO
 .BR gprof (1)


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
