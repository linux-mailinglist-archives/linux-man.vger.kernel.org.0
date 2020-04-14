Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0062B1A7778
	for <lists+linux-man@lfdr.de>; Tue, 14 Apr 2020 11:38:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437693AbgDNJiS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Apr 2020 05:38:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729471AbgDNJiR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Apr 2020 05:38:17 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B480EC0A3BD0
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 02:38:15 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id g12so5331137wmh.3
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 02:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mMNZtN02acoeCuOyJwsX7hxC3WGsFiuYRyceIXQLdc4=;
        b=lrZ5LwNABxHCMlocj/EgdyS9drLDk4S2+PsI+0X7D1gDgCsabCHxn2+y9VpfIRavJo
         rsCRotaJ+N2jGWM1VkYL/WMDtnjnbPyuDEX5EW6n95kVK2c7lZ1m6d55602iXGMH5h4n
         TjFvQYdK1abMy+fJ0hFkABjn0yeqDRN7DFD861kt8PyXofXK1lw0Alr+fMDQZW2sNQ/E
         DWr09Myt0EcCcwrUvtS4iiddc9bCZMrpsBXrpKqOIV1za8uMWD9emsFLPQl4+6OwOpM6
         t5ZgkfKQoQ/2TmqNMM6+gF3wSGGNbGYuA0aYd+v4hKoqz3rWfMlwlHaNzRI3TLlCwnTA
         dREw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mMNZtN02acoeCuOyJwsX7hxC3WGsFiuYRyceIXQLdc4=;
        b=ktmPuy/FNhMEgewCvTagVJQeN+INS9Lo5i/ItBt5uTagWQ7qgMesHnn4YXC8tvuce9
         dWhy+xOKI6WGw9K7ObD2JD8pBuhC2/v3ELbYd3bkabemHiMS71FvCAPLXWAATj9kapNl
         WpMxaqIqU4h98DBfipe1kAH/jnbgDduVyepqb98we/aRslE2TsqFkbaqncXZwPDOBTFz
         M/YnBH4IbJkG1PUABEZejiwejnAbhwz9TguXsvC3ioPzbWc6Q47rwqyWnwzoG1Pgq4hX
         +LZ2g50h+DEXtg0vUhVFAFEEkibuO91z+rLwLytEWbilgzJb+33756/V8MaeEvt4bXoW
         PJLw==
X-Gm-Message-State: AGi0PubWFk59Q8mwKEOBaVIHJ78zosZprih02DJa4wp9rvNB5AEgMUU8
        OIRjZEoItzz4QSnEvKdBw7TF5Fcg
X-Google-Smtp-Source: APiQypJzxZIOkdvedqrhmBI3t347+cujTzHnWNTkm/9HGl0XSL6iTsDgqrk11FpoPPhLmpfKGFusRQ==
X-Received: by 2002:a7b:c313:: with SMTP id k19mr22631555wmj.100.1586857094033;
        Tue, 14 Apr 2020 02:38:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id u15sm16962721wrn.46.2020.04.14.02.38.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 02:38:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/getdents.2: Correct linux_dirent definition in
 example code; it is "unsigned long" earlier up in the file
To:     Chris Lamb <lamby@debian.org>
References: <1525986227.1317672.1367969416.64D64096@webmail.messagingengine.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <44bc6ceb-b57f-2430-5a32-1a89c7961f9b@gmail.com>
Date:   Tue, 14 Apr 2020 11:38:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1525986227.1317672.1367969416.64D64096@webmail.messagingengine.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Chris,

On 5/10/18 11:03 PM, Chris Lamb wrote:
> FIXME: attach files in /tmp/tmp.3KZjK7Sbx2
> 
> Hi,
> 
> Attached is the following:
> 
>   commit b8400aa54a61b59a1df7413e039aec3184fca786
>   Author: Chris Lamb <lamby@debian.org>
>   Date:   Thu May 10 21:58:57 2018 +0100
>   
>       man2/getdents.2: Correct linux_dirent definition in example 
>           code; it is "unsigned long" earlier up in the file
>   
>    man2/getdents.2 | 2 +-
>    1 file changed, 1 insertion(+), 1 deletion(-)
> 
> 
> You can also merge from the "getdents" branch of
> https://github.com/lamby/man-pages if that is more convenient.

Thanks. Patch applied.

Cheers,

Michael


======

diff --git a/man2/getdents.2 b/man2/getdents.2
index 30bbf9a74..024d147c9 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -254,7 +254,7 @@ inode#    file type  d_reclen  d_off   d_name
         do { perror(msg); exit(EXIT_FAILURE); } while (0)
 
 struct linux_dirent {
-    long           d_ino;
+    unsigned long  d_ino;
     off_t          d_off;
     unsigned short d_reclen;
     char           d_name[];


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
