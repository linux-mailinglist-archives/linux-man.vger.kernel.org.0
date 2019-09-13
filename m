Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6EEC9B1DC5
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 14:37:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728521AbfIMMhA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 08:37:00 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:39445 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726771AbfIMMhA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 08:37:00 -0400
Received: by mail-wr1-f65.google.com with SMTP id r3so1795425wrj.6
        for <linux-man@vger.kernel.org>; Fri, 13 Sep 2019 05:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TlQMpAOsoJ0jL44CHVjqZ93W7sR10+ReIvi6F7bsj5o=;
        b=OqHevAfC2yty8eUQO+P+j3rJnhqoYXCDwMcFC8sr59Tzm16dXKVknL0aC987cv8bOq
         L7BONvA3cK8zqr0TC1Slew4QfFpzH/HE9lrCBrwLIA4+uPDL5e2neghCcvjFa79ddaOR
         +RwnH6T1CVdOSNv9TE+ORorqtr3cr4pccf22UeB5PLEA9NOzzA1/mZHYUs6xkVyy9EOo
         iFbeo4ot0gXUv4oLkSHhL0+K3d81nlcmcm0KKo7Z79lr5vera1IUZOaNwR8Kmsj0pzpb
         1O91POUnxz0JA71a322LIQxigzfB6wSbvwqWe2t5+nkJnVu74lbqMgrvXl+WzNJnrVZ4
         LEbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TlQMpAOsoJ0jL44CHVjqZ93W7sR10+ReIvi6F7bsj5o=;
        b=UeYW/rAzveo81P02edhJ4RkzEOkA9uRa+PE8undnQcythHjGtBwr4P7jP3pElyAxY2
         UoXgp27qUu1yWTR4ExJo3yC2ORNr8opzpHuXYl0p9UPM9v17EgBC61GSHNLbkdKUm6Zo
         3zQlcqpliWzfcTsLpQ0YzpTqKivZxYWl9aGknCAHvkYU+X4Ga4dYTcHa1AZIWbopcFxZ
         RXNshkW5haVjmVz5fTLJxr9ZsOYC45918vgA+la2PQ72zTjn0dtqeQHUbAu6VDX7zwLY
         bqeIVgGM++68sHHQum6OJv0U3vWZF5vYtjcuTyE6IUz8wYh5ynD3oiE2MwoiiMOxyWmm
         j1nw==
X-Gm-Message-State: APjAAAWszMn1mowhWmpsLox9O9f1OevJwdBMmZjtzJopUBRFdh6s3eNq
        QiTuDpEC0FEogj/ZdYt02L3p5hhx
X-Google-Smtp-Source: APXvYqyXX7e7ayLnI/iZcikITnmncwMsg0RMuFW13+17zYSntKw3DXBMT2MJ4b9Xpkv8XZpwaqOV5A==
X-Received: by 2002:adf:e881:: with SMTP id d1mr19344030wrm.301.1568378218306;
        Fri, 13 Sep 2019 05:36:58 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id v4sm43418215wrg.56.2019.09.13.05.36.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 05:36:57 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: fececve man page
To:     Simone Piccardi <piccardi@truelite.it>
References: <044d4f18-fe49-7e25-ddae-844ce6a50b7a@truelite.it>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1a7418f3-8c05-ff91-1635-5c448ea304ec@gmail.com>
Date:   Fri, 13 Sep 2019 14:36:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <044d4f18-fe49-7e25-ddae-844ce6a50b7a@truelite.it>
Content-Type: text/plain; charset=iso-8859-15
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/21/19 6:44 PM, Simone Piccardi wrote:
> 
> In http://man7.org/linux/man-pages/man3/fexecve.3.html in the reported 
> errors there are only EINVAL and ENOSYS but in the BUGS section is cited 
> also ENOENT (I suppose coming from execveat) for trying to use a script.
> 
> Furthermore I think that ENOSYS should be cited as present only when 
> fexecve is not implemented using execveat.

Thanks, Simone. I've applied the following diff.

Cheers,

Michael

diff --git a/man3/fexecve.3 b/man3/fexecve.3
index 25cf049dc..73b086881 100644
--- a/man3/fexecve.3
+++ b/man3/fexecve.3
@@ -86,8 +86,18 @@ is NULL, or
 .I envp
 is NULL.
 .TP
+.B ENOENT
+The close-on-exec flag is set on
+.IR fd ,
+and
+.I fd
+refers to a script.
+See BUGS.
+.TP
 .B ENOSYS
-The
+The kernel does not provide the
+.BR execveat (2)
+system call, and the
 .I /proc
 filesystem could not be accessed.
 .SH VERSIONS



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
