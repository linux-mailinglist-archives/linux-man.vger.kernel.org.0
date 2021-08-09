Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92DC93E3D57
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 02:34:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229942AbhHIAew (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 20:34:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229903AbhHIAev (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 20:34:51 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B93DC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 17:34:31 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id u5-20020a17090ae005b029017842fe8f82so18233822pjy.0
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 17:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=O7cSGypQgfftqoKftOsWtHP+fd9pJTi1Xkf7nzkkqJU=;
        b=D1aYKSJOD5fC5ecE9oQcZry4cFbGl11wP5sHKu/8mKqjP247+F0pAfstCM90+pkgma
         9q86oHA5shKO1mNp6I+BJvRU4VYsuB9FKC/KzzoFphISzMD/IuOu10QqM0PMnnC7YSJn
         6wZ+QtbfePjI8CLXRGLG1YUX2aFi5cNwZgZMiodxfaFfZvlq+MxwqyRGOzmQOXCRFFwZ
         1tAHcRbekbQkUXhZNBTCXWnXRK4dP2eIxBdJIyTozHp3b/PCdgdtCiARYQRLSTwdjcLm
         1KVVIktdYjdIEmD+RynWPCBdHqzy9HILtxoPi3HJvT8wq0Te2rEl2xZ+jH3hUa2pCyQM
         vbBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=O7cSGypQgfftqoKftOsWtHP+fd9pJTi1Xkf7nzkkqJU=;
        b=mAGtAXm4BDzOrkWgbtaPS9KjMq93M6qUzm1IWV6D/fAt3gU2E6hjl7HUou1Iqxov+O
         RO244WIeP4w/1KcfYZI4xWsX5Ydjgc7iMPcSbJy0YF4Be14CdxFhvLfQxb/CqbmFEZHG
         OAW0QnfW8R2PbQ0c0TyZjS7AGzhQKNMUv3Bsc0q/KKr5/pOcDrXxWYPeSbcCjlEA8PMw
         gNhZnmwLjWWdtqmabB/MptcTcZGnQEzb00/FigDtRMDDg8boKmi+PWwU3okE76XpVtbo
         8yk+bYa+VviG8d9cY1lVIV1UucqpSSQS7KhIM04bGfcyQT8fPVlcpgn58zJH5B3FemJ7
         cyJg==
X-Gm-Message-State: AOAM530A4DbcV+rxnM5SvfL9plRTAvvQnG/DyxN+n8zBddbABwRHjSsx
        9vd5qTMUEKrOkyoTWGmyhfI=
X-Google-Smtp-Source: ABdhPJyvNiIFiKgUXvHwgMkJoPKY+YKy9k5pOcjYt/LkGnCQkefZVumqXkMOgp7y0Qj3E/rbDVL2OA==
X-Received: by 2002:a17:902:c20c:b029:12c:ef04:faa3 with SMTP id 12-20020a170902c20cb029012cef04faa3mr12725056pll.44.1628469270570;
        Sun, 08 Aug 2021 17:34:30 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id j77sm14399891pfd.64.2021.08.08.17.34.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 17:34:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH 03/23] sigaction.2: Apply minor tweaks to Peter's patch
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-4-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <767c4b00-be87-fda2-dd86-13d2433bbdc8@gmail.com>
Date:   Mon, 9 Aug 2021 02:34:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-4-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> - Move example program to a new EXAMPLES section

Not a big thing, but perhaps it would have been nicer to have 
two patches, the first doing the pieces below, and the second
doing the step above. That would enable me to more easily see
what changes you made below. But, I am not sure; maybe that
is more work than is justified...

> - Invert logic in the handler to have the failure in the conditional path,
>   and the success out of any conditionals.
> - Use NULL, EXIT_SUCCESS, and EXIT_FAILURE instead of magic numbers
> - Separate declarations from code
> - Put function return type on its own line
> - Put function opening brace on its line
> 
> Cc: Peter Collingbourne <pcc@google.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/sigaction.2 | 76 +++++++++++++++++++++++++++---------------------
>  1 file changed, 43 insertions(+), 33 deletions(-)
> 
> diff --git a/man2/sigaction.2 b/man2/sigaction.2
> index 4bf6f095e..18404dde1 100644
> --- a/man2/sigaction.2
> +++ b/man2/sigaction.2
> @@ -936,39 +936,6 @@ because they were introduced before Linux 5.11.
>  However, in general, programs may assume that these flags are supported,
>  since they have all been supported since Linux 2.6,
>  which was released in the year 2003.
> -.PP
> -The following example program exits with status 0 if
> -.B SA_EXPOSE_TAGBITS
> -is determined to be supported, and 1 otherwise.
> -.PP
> -.EX
> -#include <signal.h>
> -#include <stdio.h>
> -#include <unistd.h>
> -
> -void handler(int signo, siginfo_t *info, void *context) {
> -    struct sigaction oldact;
> -    if (sigaction(SIGSEGV, 0, &oldact) == 0 &&
> -        !(oldact.sa_flags & SA_UNSUPPORTED) &&
> -        (oldact.sa_flags & SA_EXPOSE_TAGBITS)) {
> -        _exit(0);
> -    } else {
> -        _exit(1);
> -    }
> -}
> -
> -int main(void) {
> -    struct sigaction act = {0};
> -    act.sa_flags = SA_SIGINFO | SA_UNSUPPORTED | SA_EXPOSE_TAGBITS;
> -    act.sa_sigaction = handler;
> -    if (sigaction(SIGSEGV, &act, 0) != 0) {
> -        perror("sigaction");
> -        return 1;
> -    }
> -
> -    raise(SIGSEGV);
> -}
> -.EE
>  .SH RETURN VALUE
>  .BR sigaction ()
>  returns 0 on success; on error, \-1 is returned, and
> @@ -1174,6 +1141,49 @@ This bug was fixed in kernel 2.6.14.
>  .SH EXAMPLES
>  See
>  .BR mprotect (2).
> +.PP
> +The following example program exits with status
> +.B EXIT_SUCCESS
> +if
> +.B SA_EXPOSE_TAGBITS
> +is determined to be supported, and
> +.B EXIT_FAILURE
> +otherwise.
> +.PP
> +.EX
> +#include <signal.h>
> +#include <stdlib.h>
> +#include <stdio.h>
> +#include <unistd.h>
> +
> +void
> +handler(int signo, siginfo_t *info, void *context)
> +{
> +    struct sigaction oldact;
> +
> +    if (sigaction(SIGSEGV, NULL, &oldact) != 0 ||
> +        (oldact.sa_flags & SA_UNSUPPORTED) ||
> +        !(oldact.sa_flags & SA_EXPOSE_TAGBITS)) {
> +        _exit(EXIT_FAILURE);
> +    }
> +    _exit(EXIT_SUCCESS);
> +}
> +
> +int
> +main(void)
> +{
> +    struct sigaction act = {0};
> +
> +    act.sa_flags = SA_SIGINFO | SA_UNSUPPORTED | SA_EXPOSE_TAGBITS;
> +    act.sa_sigaction = &handler;
> +    if (sigaction(SIGSEGV, &act, NULL) != 0) {
> +        perror("sigaction");
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    raise(SIGSEGV);
> +}
> +.EE
>  .SH SEE ALSO
>  .BR kill (1),
>  .BR kill (2),

All looks good. I also had some additional fixes (2 patches). See below.

Cheers,

Michael

diff --git a/man2/sigaction.2 b/man2/sigaction.2
index 5262b81c9..3225dc990 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -1161,9 +1161,9 @@ handler(int signo, siginfo_t *info, void *context)
 {
     struct sigaction oldact;
 
-    if (sigaction(SIGSEGV, NULL, &oldact) != 0 ||
-        (oldact.sa_flags & SA_UNSUPPORTED) ||
-        !(oldact.sa_flags & SA_EXPOSE_TAGBITS)) {
+    if (sigaction(SIGSEGV, NULL, &oldact) == \-1 ||
+            (oldact.sa_flags & SA_UNSUPPORTED) ||
+            !(oldact.sa_flags & SA_EXPOSE_TAGBITS)) {
         _exit(EXIT_FAILURE);
     }
     _exit(EXIT_SUCCESS);
@@ -1172,11 +1172,11 @@ handler(int signo, siginfo_t *info, void *context)
 int
 main(void)
 {
-    struct sigaction act = {0};
+    struct sigaction act = { 0 };
 
     act.sa_flags = SA_SIGINFO | SA_UNSUPPORTED | SA_EXPOSE_TAGBITS;
     act.sa_sigaction = &handler;
-    if (sigaction(SIGSEGV, &act, NULL) != 0) {
+    if (sigaction(SIGSEGV, &act, NULL) == \-1) {
         perror("sigaction");
         exit(EXIT_FAILURE);
     }


diff --git a/man2/sigaction.2 b/man2/sigaction.2
index 18404dde1..5262b81c9 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -266,13 +266,13 @@ This flag is meaningful only when establishing a signal handler.
 Used to dynamically probe for flag bit support.
 .IP
 If an attempt to register a handler succeeds with this flag set in
-.I act->sa_flags
+.I act\->sa_flags
 alongside other flags that are potentially unsupported by the kernel,
 and an immediately subsequent
 .BR sigaction ()
-call specifying the same signal number n and with non-NULL
+call specifying the same signal number and with a non-NULL
 .I oldact
-yields
+argument yields
 .B SA_UNSUPPORTED
 .I clear
 in
@@ -888,16 +888,16 @@ filter rule.
 The
 .BR sigaction ()
 call on Linux accepts unknown bits set in
-.I act->sa_flags
+.I act\->sa_flags
 without error.
 The behavior of the kernel starting with Linux 5.11 is that a second
 .BR sigaction ()
 will clear unknown bits from
-.IR oldact->sa_flags .
+.IR oldact\->sa_flags .
 However, historically, a second
 .BR sigaction ()
 call would typically leave those bits set in
-.IR oldact->sa_flags .
+.IR oldact\->sa_flags .
 .PP
 This means that support for new flags cannot be detected
 simply by testing for a flag in
@@ -919,7 +919,7 @@ in the signal handler itself.
 In kernels that do not support a specific flag,
 the kernel's behavior is as if the flag was not set,
 even if the flag was set in
-.IR act->sa_flags .
+.IR act\->sa_flags .
 .PP
 The flags
 .BR SA_NOCLDSTOP ,



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
