Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A270231F961
	for <lists+linux-man@lfdr.de>; Fri, 19 Feb 2021 13:24:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230184AbhBSMY0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Feb 2021 07:24:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229636AbhBSMYZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Feb 2021 07:24:25 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8B6DC061574
        for <linux-man@vger.kernel.org>; Fri, 19 Feb 2021 04:23:44 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id v1so8177706wrd.6
        for <linux-man@vger.kernel.org>; Fri, 19 Feb 2021 04:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sS8SUO1KjMhvCUePmSB7iqygVlv4QvTjwKGzqNzz6zs=;
        b=UPbGpjRMqjfoAAWeEltuuHkhYOX0lYNmQzvImF5o+QMtyZw0LKwecqgxfE578dW88h
         /4IddNH6d0NgTCnVgVwZORDwle5uy4MpycNS46MddDtIeiTHqzxm9B+/W84SpIKZgZRj
         2IZ6+g9OjaXHIcLnerWJVldarcHSGTFpEVdtAfdCj1n87v7407+xcP/rBD0n8JO+XZFv
         f50fvUdLXHHSwS8ZjMElgM+yXBD0Zw5FbKnIrwfACx8PgZb+UlGP6A69OXXmVhCxj+Ga
         oCER+5nYGM3/IkRow8Ya2c7vdKlhu8kL1Ab5qhBFrjK0wcixpG9cPSuVzzqQ9Tr3jfzy
         8ynw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sS8SUO1KjMhvCUePmSB7iqygVlv4QvTjwKGzqNzz6zs=;
        b=KaEfVvUdTgSnWjiHGepw/s60rCEEAF3GKZnuBWOg1jhy6qqdXHfQzZDEaOQv2mmqi/
         jWVoXuaVcKpM8lDA2+dACslRaLtG58nZpOFLbiqb2AIOCAnEZJDqLJr9/q4QnvFz7mO3
         TO3GPUha9svfBwSa6wCkSUh5oxCNViRNaTnoSuDQScOkopOKJHQPb8/pZnI5ItXdkABo
         BXuczpnl0KwaocwN4J5nV2cT9bBKNcEOh2UhZ/wT6Eht20VVsDVvExFCwYwUKnTeKCls
         XRYwvanrG/265wWZNuef6hcz4bkGbvk9fJglan/DCY3fXeXO5dWVvhcRRYolOpOASbqL
         uKww==
X-Gm-Message-State: AOAM532h+rJBe+dELGwggCVxFAsfZC6pvmO8sjW/kGbhfq6+bIKM4tTr
        KfDNKH8lDuHxFG6bcUXecwq/sSGDiJYfkg==
X-Google-Smtp-Source: ABdhPJyRytMk77c4QyKaBS/wqSgSV9lwCw7C2u+1zgSwMjjepvAihiZWOa9btT7pTtBtjv/42S4ZoA==
X-Received: by 2002:a5d:4583:: with SMTP id p3mr9000290wrq.305.1613737423531;
        Fri, 19 Feb 2021 04:23:43 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id j125sm11858133wmb.44.2021.02.19.04.23.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Feb 2021 04:23:42 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: Re: AW: error.3: What happens if status = 0
To:     Walter Harms <wharms@bfs.de>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <089a65d2-3dec-b9c1-8c8d-dddcd28f756b@gmail.com>
 <9c7d3296e4894ec3b118f0f130c51415@bfs.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <618eb31f-614d-9865-2f9a-17ad00ae4420@gmail.com>
Date:   Fri, 19 Feb 2021 13:23:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <9c7d3296e4894ec3b118f0f130c51415@bfs.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex, and Walter,
On 2/19/21 10:09 AM, Walter Harms wrote:
> Hi,
> yes, error(0,...) is a bit like warn(), it returns to the programm.
> 
> That supports what my man page says:
> 
> " If  status has a nonzero value, then error() calls exit(3) to terminate
>        the program using the given value as the exit status."
> 
> may be you want an add on like:
> 
> "Otherwise error() returns."
> 
> re,
>  wh
> ________________________________________
> Von: Alejandro Colomar (man-pages) <alx.manpages@gmail.com>
> Gesendet: Donnerstag, 18. Februar 2021 22:55:13
> An: Michael Kerrisk (man-pages)
> Cc: linux-man@vger.kernel.org; libc-alpha@sourceware.org
> Betreff: error.3: What happens if status = 0
> 
> Hi Michael,
> 
> I think it's not quite clear what happens when status = 0; for
> error[_at_line](3) from the text of the manual page.  From the glibc
> documentation[1], it seems that error(0, ...) is similar to warn(...),
> isn't it?

Yes, I think so. Justin and I could have been clearer on that
when the manual page was originally written. The point is
that if status==0, then error() simply returns after printing
its message. As Walter notes, the page implies this (see also the
text on 'error_message_count'), without saying so outright.

I applied the patch below.

Cheers,

Michael

diff --git a/man3/error.3 b/man3/error.3
index c3b4ccba4..87e454608 100644
--- a/man3/error.3
+++ b/man3/error.3
@@ -75,7 +75,8 @@ If \fIstatus\fP has a nonzero value, then
 .BR error ()
 calls
 .BR exit (3)
-to terminate the program using the given value as the exit status.
+to terminate the program using the given value as the exit status;
+otherwise it returns after printing the error message.
 .PP
 The
 .BR error_at_line ()


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
