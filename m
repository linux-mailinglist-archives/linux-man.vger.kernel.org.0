Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC8031ABDAA
	for <lists+linux-man@lfdr.de>; Thu, 16 Apr 2020 12:12:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2441470AbgDPKMI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Apr 2020 06:12:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2441467AbgDPKME (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Apr 2020 06:12:04 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 009FFC061A0C;
        Thu, 16 Apr 2020 03:12:03 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id h9so4124382wrc.8;
        Thu, 16 Apr 2020 03:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qTEfd37kaOdwPrQvQvWmJgIC7b/SCtwnC0pt/uisxFI=;
        b=LwTLxkPqs3XEILSIQenfTpjb68LVXlarq5oh0tBigkwMtave1mT2FYnuOjSoLYY/Ch
         Ms2m44HXkw0+BoTS4P9zjo//C/+6BOwtEF8L+POgJka5ZYkIpBoV9nhyLa3ij+wkayf3
         uvQbplOY+VavoSQ1aV2OHm4JorUqzqVUGVpL2Yjq9Sgp1T1zhBbQ5dejZ+9UOtTpuqcg
         kYJs3wHpva4yws5DPdBHNS4qj1R+zmg/97L1jTOkjuSyiwA38DJ1lKECBRSSCKEjKiku
         vUTvspNUgl+oMgRbt5lNwtn1jxFOAl6QxtBks4M5Rso/jmrqgH5ag9z7exHWEG/2/xW5
         YWfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qTEfd37kaOdwPrQvQvWmJgIC7b/SCtwnC0pt/uisxFI=;
        b=Na9n31z9LiHfT1eUfWglVB9wClfJkSP4pZYUB2sI61wb6uq/+L7PMSheUEakltkZHH
         g9iZgaEM3cOxjZ3hfBryKl4/goQmtCFS+NrXwQJSGQcKjFkPJtEGXkQv4/x5Iir4zCvQ
         YWqzSQgwFglyIQ90tnA8m7sxyVWtak55ZxfRxyvUOnTGK3f7sjEPEfahXCNEdoQpi4FE
         b451f5qwqUfj8oj3m96msiWjYIlMkjMgLmBO+S/1RV1HOyVmxBc5hub1XpnX1vw3SFA9
         jS7aPcHqixCAmehVU6veMnpWxMuNSUg2lATerkJJYqjNZfDSHI5f8/1tCPBmhmbpiGjh
         IfmA==
X-Gm-Message-State: AGi0PuZaJU/CWeBaZCBkLsuR5gArC8uY9ISp8GXuw1yChQ3zVv87LZGt
        vS8EwBexBD3VW9Kkizi10sM=
X-Google-Smtp-Source: APiQypIaJq1ffMIPEshV9PdW0Tptoj+NOx+i/Mdal2kh91sb56/lEc/QuV9mJyJQRJ3SO/Eg2iUMGA==
X-Received: by 2002:a5d:4b04:: with SMTP id v4mr809942wrq.358.1587031922657;
        Thu, 16 Apr 2020 03:12:02 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y20sm27709634wra.79.2020.04.16.03.12.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 03:12:01 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Martin Schwidefsky <schwidefsky@de.ibm.com>,
        linux-s390@vger.kernel.org,
        QingFeng Hao <haoqf@linux.vnet.ibm.com>,
        Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: [man-pages PATCH v2 2/4] s390_runtime_instr.2: document signum
 argument behavior change
To:     Heiko Carstens <heiko.carstens@de.ibm.com>
References: <20180414164342.GA15190@asgard.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d9666e21-d99c-cda3-70ee-374f416dc00a@gmail.com>
Date:   Thu, 16 Apr 2020 12:12:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20180414164342.GA15190@asgard.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Heiko, Eugene,

On 4/14/18 6:43 PM, Heiko Carstens wrote:
> Document that the signum argument is ignored in newer kernels, but
> that user space should pass a valid real-time signal number for
> backwards compatibility.
> 
> Co-Authored-by: Eugene Syromyatnikov <evgsyr@gmail.com>
> Signed-off-by: Heiko Carstens <heiko.carstens@de.ibm.com>
> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>

Thanks. Patch (at last) applied.

Cheers,

Michael

> ---
>  man2/s390_runtime_instr.2 | 24 ++++++++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/s390_runtime_instr.2 b/man2/s390_runtime_instr.2
> index 9ef293f..17665b7 100644
> --- a/man2/s390_runtime_instr.2
> +++ b/man2/s390_runtime_instr.2
> @@ -48,9 +48,11 @@ argument controls whether run-time instrumentation is started
>  The
>  .IR signum
>  argument specifies the number of a real-time signal.
> -The real-time signal is sent to the thread if the run-time instrumentation
> -buffer is full or if the run-time-instrumentation-halted interrupt
> -occurred.
> +This argument was used to specify a signal number that should be delivered
> +to the thread if the run-time instrumentation buffer was full or if
> +the run-time-instrumentation-halted interrupt had occurred.
> +It has no effect beginning with Linux 4.4, since support for signalling
> +was never used and kernel support was removed.
>  .SH RETURN VALUE
>  On success,
>  .BR s390_runtime_instr ()
> @@ -67,9 +69,16 @@ is set to one of the error codes listed below.
>  .B EINVAL
>  The value specified in
>  .IR command
> -is not a valid command or the value specified in
> +is not a valid command.
> +.TP
> +.B EINVAL
> +The value specified in
>  .IR signum
>  is not a real-time signal number.
> +From Linux 4.4 onwards, the
> +.IR signum
> +argument has no effect, so that an invalid signal number will not result in an
> +error.
>  .TP
>  .B ENOMEM
>  Allocating memory for the run-time instrumentation control block failed.
> @@ -89,6 +98,13 @@ to call it.
>  The header
>  .B asm/runtime_instr.h
>  is available since Linux 4.16.
> +.PP
> +Support for signalling was removed with Linux 4.4.
> +With Linux 4.4 also the check whether
> +.IR signum
> +is a valid real-time signal was removed.
> +For backwards compatibility with old kernels it is recommended to pass a valid
> +real-time signal number and install a handler for it.
>  .SH SEE ALSO
>  .BR syscall (2),
>  .BR signal (7)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
