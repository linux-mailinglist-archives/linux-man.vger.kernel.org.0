Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9888D43A499
	for <lists+linux-man@lfdr.de>; Mon, 25 Oct 2021 22:25:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233075AbhJYU10 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Oct 2021 16:27:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236681AbhJYU1M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Oct 2021 16:27:12 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F72CC06967B
        for <linux-man@vger.kernel.org>; Mon, 25 Oct 2021 13:13:59 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id d10so10852542wrb.1
        for <linux-man@vger.kernel.org>; Mon, 25 Oct 2021 13:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xnkXjR7w8FSBiflbZldUu6odqdaH6UX7VgLWYsnfI8k=;
        b=lV4wZDbWmbgC6QLBUhut9aGBnLcnm/oPNkiIwE2zB5S0XsD+PGTDkQzTEtJMwGRWTj
         GWPEMOYI/wQzdJhRZZR7I2J5ZY0VToWh4i6VLhurdspn1iDg/t6zbUDxzOcU70sSDfTm
         kXG1KCZS429o9k1gyiQOpIIS6lsLejBncaOKQp94V5C+GkrqeFmf0zZfoMxzRi1/vAga
         un3csPCO6lkbC75hgt1OOEWf4rzQNQb60lwdoOaSKrXdyH1mjfzq/f1IVSYHuWT/eIwU
         2fojKE8MOGlXIM4l8BxAPVaFPWqvRAe8P9am5z+kZ33S+QUzoJNAMm+2x6PoBA5OWxg7
         V0qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xnkXjR7w8FSBiflbZldUu6odqdaH6UX7VgLWYsnfI8k=;
        b=n0MsNG3uzYKbNbbnMNJqvg7BEyjKJ8l3mrPYzNYnTK9Rj7FUx6lAnv7KdhgQzs+l1f
         3VslLM+tfqrpZGdWCWfI5F32daRgf4I7cPOsaDEA+7v91wuxW2Yx8s0qD7/Zx10CCF80
         Ys55zaIvpwMZA34SZ7Ga+4NsZJMnLYz+IAIFHDgiBEuC6SlocQFzPDhH/H9UE8DNkoet
         a0oPX1+yN+btLURi7Q5t86KIOK+wnGkFoFbTbCI7Q/E/ecyFHso8lLG9CmBFN4kIB/DX
         xROZP+aeTo6lmDGH7c0ZkMzTd9ew1hSuNfzIFfhBANFX9uZnTGlz7TAybQFn0bj+1PWZ
         AVYQ==
X-Gm-Message-State: AOAM531W1JdAwcsjjUNDoJemhKb+G08EIkwpzjCyCSiRHzuHVvbUa49T
        PBWHjpR9yyx/oL1IWbrgi/PtZ6nFfkQ=
X-Google-Smtp-Source: ABdhPJyS0bfLAPydgcs3GTzcXYToyEpjpXQzyul1QlaXmRXXifxSmhm7EFM1om0GvuNWp+zHAtkqkg==
X-Received: by 2002:a05:6000:1241:: with SMTP id j1mr26353653wrx.419.1635192837676;
        Mon, 25 Oct 2021 13:13:57 -0700 (PDT)
Received: from [10.8.0.122] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id t6sm7647666wrp.63.2021.10.25.13.13.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 13:13:57 -0700 (PDT)
Subject: Re: [patch] getgrouplist.3: Improve example code
To:     Tobias Stoeckmann <tobias@stoeckmann.org>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <20211022160942.3w3zh2mxehzrdkx7@localhost>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <328986c9-9f90-7cfa-bc8e-00e46299c08d@gmail.com>
Date:   Mon, 25 Oct 2021 22:13:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211022160942.3w3zh2mxehzrdkx7@localhost>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Tobias,

On 10/22/21 6:09 PM, Tobias Stoeckmann wrote:
> The example code does not validate the supplied ngroup argument.
> On 32 bit systems this code can lead to heap overflows within
> getgrouplist call.
> 
> Verify that ngroups really contains the amount of entries for
> which memory has been allocated.
> 
> While at it fixed a small typo ("to" was missing).
> 
> Signed-off-by: Tobias Stoeckmann <tobias@stoeckmann.org>
You're right that it may overflow (almost every calculation may overflow 
in a program, if you don´t restrict yourself to sane values), but I 
won't fix that code.

Why:

- I don't think other manual pages that use malloc(3) do the same test, 
and consistency is (very) important.

- We use atoi(3) for simplicity in user input, instead of using 
strtol(3) properly, which a real program should do.  Using strtol(3) 
would add a lot of complexity to our example program.  Since there are 
already many reasons that number can be invalid, I don't see much value 
in checking one of the possible problems of that number.

- Sane values for ngroups are very far from INT32_MAX.  I don't expect 
any present or future real case scenario where a user may be in anything 
close to thousands of millions of groups.  Do you?

- I don't like malloc(3)'s API.  Consider implementing your own 
mallocarray() in terms of malloc(3), and placing there the code to check 
for overflow in the input.  I use 'void *mallocarray(ptrdiff_t nmemb, 
ssize_t size);'.  If the malloc(3) page needs some advise on how to 
carefully use it, especially regarding its input, we should add that 
advise in malloc.3.

- In the end it's not a problem intrinsic to the usage of 
getgrouplist(3), but a problem of malloc(3), and I don't want to clutter 
the getgrouplist(3) example with malloc(3)'s.  Let's keep examples 
simple, even if they aren't perfect.

However, I applied 2 commits for the side effects of this patch, which I 
liked.

Thanks!

Alex

---

$ git show -2
commit a1692d75260d96f7771a06bced4f36060474590b (HEAD -> main, alx/main, 
alx/HEAD)
Author: Alejandro Colomar <alx.manpages@gmail.com>
Date:   Mon Oct 25 21:45:49 2021 +0200

     getgrouplist.3: wfix

     Reported-by: Tobias Stoeckmann <tobias@stoeckmann.org>
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
index 533296370..5b173beef 100644
--- a/man3/getgrouplist.3
+++ b/man3/getgrouplist.3
@@ -97,7 +97,7 @@ groups, then
  returns \-1.
  In this case, the value returned in
  .IR *ngroups
-can be used to resize the buffer passed to a further call
+can be used to resize the buffer passed to a further call to
  .BR getgrouplist ().
  .SH VERSIONS
  This function is present since glibc 2.2.4.

commit c59aa7fc414eb3394ace200e4c71511232ef5801
Author: Alejandro Colomar <alx.manpages@gmail.com>
Date:   Mon Oct 25 21:44:37 2021 +0200

     getgrouplist.3: Place variable definitions on top of function

     Reported-by: Tobias Stoeckmann <tobias@stoeckmann.org>
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
index 1fe260bda..533296370 100644
--- a/man3/getgrouplist.3
+++ b/man3/getgrouplist.3
@@ -163,6 +163,7 @@ main(int argc, char *argv[])
      int ngroups;
      struct passwd *pw;
      struct group *gr;
+    gid_t *groups;

      if (argc != 3) {
          fprintf(stderr, "Usage: %s <user> <ngroups>\en", argv[0]);
@@ -171,7 +172,7 @@ main(int argc, char *argv[])

      ngroups = atoi(argv[2]);

-    gid_t *groups = malloc(sizeof(*groups) * ngroups);
+    groups = malloc(sizeof(*groups) * ngroups);
      if (groups == NULL) {
          perror("malloc");
          exit(EXIT_FAILURE);


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
