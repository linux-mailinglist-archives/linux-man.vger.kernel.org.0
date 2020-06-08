Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05A8C1F2123
	for <lists+linux-man@lfdr.de>; Mon,  8 Jun 2020 23:02:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726758AbgFHVCO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 17:02:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726740AbgFHVCN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Jun 2020 17:02:13 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 130CBC08C5C2
        for <linux-man@vger.kernel.org>; Mon,  8 Jun 2020 14:02:13 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id c71so847957wmd.5
        for <linux-man@vger.kernel.org>; Mon, 08 Jun 2020 14:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ExtL+hdUiZhnZAUnrhEzSyNRmfFq9UWnIyPu+fb2K20=;
        b=Rm9Bo0JCQOXe/D1Mx5FSkbcPoZKNGwkWEBBuBd5XN8zk4JwIqgUcGie8XHEJmV3Udm
         MgJZ23DncMlQTtMposCcUC2SLtE3NNvOpKdXegqvUjNgx3UcqXBVAF3wrLiyODlUUf6Y
         Z8mBP8b1uwo3RtS5mL/vVAQiw5jO0huz0M1L4eizOcnFiV2yVAXh4J5LDY2lbASQdX7l
         3mTywvZAbR+RUe7O5MKLXc3g1zHwWm7m7XpFEEi5oAANKiUxlkQbzwl+QTorP0mcMrg/
         R4gpTQykUm/AvffnIc4lUU7KjIijoBcX7IbvVAExnU/70L1Wz1HEKF1y+ejptMHCQ3Cr
         gZrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ExtL+hdUiZhnZAUnrhEzSyNRmfFq9UWnIyPu+fb2K20=;
        b=sUqt/fXpEwlL0eIpZGMrtSTcBVI4N3YdYlJt0U+q+k4K5O4Bd9/f0moUC8hhPlr7WK
         8+yvXjylPFkZBhuq4YE+Ayv7xxswh8uJUaoHUy0JcLkLnRK22HbgQk6Lb3qkhg6SDMRr
         4bY5GDAihpwxacdjCzOvEmHaqWAb7GSAA1fI17vNr0Var1RNt+y1HYuxaCMfEkcMw8gB
         AghtLzIaZXw1hfAP1TFY45LCeVqW44+MuFVcJ7LQ46GIfBb0HKJSm88qJG5+qE7Uc83R
         ZyCqe8CtOIu9fsj/pEqPxtaKP1hmoRrgPPnKu4pec+2Tug9bfINPJx7cfc4+ynhQojAF
         uOsA==
X-Gm-Message-State: AOAM533tFIE3AhFas3JJgsSiuQkVSzrYWZdENDbsvpy7qcsOBaiewJga
        IPIO12iR0UuoDLsahoMrMPXXMnSs2Ws=
X-Google-Smtp-Source: ABdhPJzfW98QJgUN4j5mA3ZuPyF89Sg/KVT7SVEh7l85P7h6iv3IAR32iTlBtNhVxK2AnkY0dO9xCw==
X-Received: by 2002:a1c:67c3:: with SMTP id b186mr474802wmc.167.1591650131659;
        Mon, 08 Jun 2020 14:02:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id u12sm908326wrq.90.2020.06.08.14.02.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 14:02:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: syscall man page
To:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
References: <60a31e2e-d0a5-95f9-54bf-be1d8455fb77@jguk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9020118c-1d62-a4a2-a3ba-d8dbf01df550@gmail.com>
Date:   Mon, 8 Jun 2020 23:02:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <60a31e2e-d0a5-95f9-54bf-be1d8455fb77@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jonny,

On 5/30/20 12:16 AM, Jonny Grant wrote:
> Good evening
> 
> Quoting part of the syscall man page:
> 
> RETURN VALUE
>         The  return value is defined by the system call being invoked.  In gen‐
>         eral, a 0 return value indicates success.  A -1 return value  indicates
>         an error, and an error code is stored in errno.
> 
> 
> The last sentence doesn't quite sound right in English, and
> different from other man pages eg closedir. I would propose 
> updating it to be :-
> 
> "On error, -1 is returned, and errno is set appropriately"

The thing is, syscall() different from your average system call
or library function, so I think it's not unreasonable that the
wording is somewhat different. That said, I applied the patch 
below.

Cheers,

Michael

diff --git a/man2/syscall.2 b/man2/syscall.2
index 2fd94db53..382c40b22 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -82,9 +82,8 @@ when invoking a system call that has no wrapper function in the C library.
 .BR syscall ()
 saves CPU registers before making the system call,
 restores the registers upon return from the system call,
-and stores any error code returned by the system call in
-.BR errno (3)
-if an error occurs.
+and stores any error returned by the system call in
+.BR errno (3).
 .PP
 Symbolic constants for system call numbers can be found in the header file
 .IR <sys/syscall.h> .
@@ -92,7 +91,7 @@ Symbolic constants for system call numbers can be found in the header file
 The return value is defined by the system call being invoked.
 In general, a 0 return value indicates success.
 A \-1 return value indicates an error,
-and an error code is stored in
+and an error number is stored in
 .IR errno .
 .SH NOTES
 .BR syscall ()



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
