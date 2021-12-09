Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1796546E012
	for <lists+linux-man@lfdr.de>; Thu,  9 Dec 2021 02:10:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234907AbhLIBNc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Dec 2021 20:13:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234813AbhLIBNc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Dec 2021 20:13:32 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80FCAC061746
        for <linux-man@vger.kernel.org>; Wed,  8 Dec 2021 17:09:59 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id c4so7040404wrd.9
        for <linux-man@vger.kernel.org>; Wed, 08 Dec 2021 17:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=oML9wbERAjD9qfEhNvI4VWwg5zkJcmd7DZtN63gEVWc=;
        b=ax9gXJNq7BQZ1r9csJaIR/ia4uGLZvNbIazFb8wI98tbssG/eYJxc3Rlvel0PxF/Gm
         ljduvBH3+LZJ28kbBaxkUOLuYsJ4rx68QEg/PTCy0gSRvC/Y8e1L91nqX9kj2wnd0/9a
         dWJf8k79/4jWWxZVBnLoM8nljXso+MYIU2TN+t95qbgIgTXWj3iiXUzJJ92TKR/1D21x
         zTlr/KplNiqqAwcEBHmMrmaGZPQbC/NYDaQkuVevYsNFRKVSHd5vpB7LPfHUpN7eoQ+I
         N5KS7qZhCx0/PJ3FtsSoa1PL5kI8yQRvp38+EmE+UIgbAQybhaSmIj06NEDpRi0/8QIh
         VD0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=oML9wbERAjD9qfEhNvI4VWwg5zkJcmd7DZtN63gEVWc=;
        b=4hhaa1ELwuWCORudzZL0nFoWKiEiDZC6zquuBvUqDjVOGX0T4FR+bOL/NIl8mYprAj
         JiIy01Np6LP9quMd8fNiyB7gP922q6fE9NP3qDLYoCKgeTk/PU+kAMkEi80rqvsIhZ2s
         DRlcwbptoNqvWe7QarIymD4ZPJK1DrBAUCs5KFMGltken8sO8ap1ySFLB9xLWH44ZCkL
         g7o3T3RDROM9DUMpM/d1+HI5QEl+FzqnmanbEyeOq0yQEWEi5s6NDujFPqhocL3QaauL
         iLeHretdHSa+/h2+yVK6RZUEcx4cyPEDtq66U3O6XUvCDtQ0TDJJ9HYa9qGwT4N78zjM
         n8Dw==
X-Gm-Message-State: AOAM530Jnzb8yZh3D8o4XAjB7XYNb1X3ZFQYsM/6ykSldarYKoGg/0cQ
        V+TIzTPiZqMVdIEBXtosT4eGrq3nNgU=
X-Google-Smtp-Source: ABdhPJyo3YEqRasXIVpftqUz+QNV9i9tf3OsoS30Syn8WLrQwiWeqztLdiWzfmn5mOhLv/GFcGUUWg==
X-Received: by 2002:adf:f60e:: with SMTP id t14mr2792561wrp.112.1639012198090;
        Wed, 08 Dec 2021 17:09:58 -0800 (PST)
Received: from [10.8.0.22] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id y12sm4178038wrn.73.2021.12.08.17.09.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Dec 2021 17:09:57 -0800 (PST)
Message-ID: <15d7e025-255d-798b-81a1-1229b5ae16e0@gmail.com>
Date:   Thu, 9 Dec 2021 02:09:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH] kcmp.2: still depends on kconfig
Content-Language: en-US
To:     Jann Horn <jannh@google.com>
References: <20211208234433.2392940-1-jannh@google.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211208234433.2392940-1-jannh@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jann,

On 12/9/21 00:44, Jann Horn wrote:
> The manpage claims that kcmp() is now available unconditionally. That's
> not true; from kernel/Makefile:
> 
>      obj-$(CONFIG_KCMP) += kcmp.o
> 
> This new Kconfig flag is forced on by CONFIG_CHECKPOINT_RESTORE as
> before, but also by CONFIG_DRM, which means that pretty much any kernel
> built to support desktop systems will implicitly have it available.
> 
> But if you compiled some kind of server/embedded kernel without DRM and
> without CHECKPOINT_RESTORE, you'd have to flip on the expert config
> option to get KCMP.
> 
> Signed-off-by: Jann Horn <jannh@google.com>

Thanks!  Patch applied.
I slightly modified the patch for the following reason:

man-pages(7):
    Use semantic newlines
        In the source of a manual page, new sentences  should  be
        started  on new lines, and long sentences should be split
        into lines at clause breaks (commas, semicolons,  colons,
        and  so on).  This convention, sometimes known as "seman‐
        tic newlines", makes it  easier  to  see  the  effect  of
        patches,  which  often operate at the level of individual
        sentences or sentence clauses.

So, instead of this:

> diff --git a/man2/kcmp.2 b/man2/kcmp.2
> index 7acfa8ef8b47..2e4495539645 100644
> --- a/man2/kcmp.2
> +++ b/man2/kcmp.2
> @@ -317,7 +317,9 @@ checkpoint/restore in user space (CRIU) feature.
>   process information via the
>   .BR proc (5)
>   filesystem; this was deemed to be unsuitable for security reasons.)
> -Since Linux 5.12, this system call is made available unconditionally.
> +Since Linux 5.12, this system call is also available if the kernel is configured
> +with
> +.BR CONFIG_KCMP .
>   .PP
>   See
>   .BR clone (2)

I applied this (only white-space source-code changes compared to yours):



     kcmp.2: still depends on kconfig

     The manpage claims that kcmp() is now available unconditionally. That's
     not true; from kernel/Makefile:

         obj-$(CONFIG_KCMP) += kcmp.o

     This new Kconfig flag is forced on by CONFIG_CHECKPOINT_RESTORE as
     before, but also by CONFIG_DRM, which means that pretty much any kernel
     built to support desktop systems will implicitly have it available.

     But if you compiled some kind of server/embedded kernel without DRM and
     without CHECKPOINT_RESTORE, you'd have to flip on the expert config
     option to get KCMP.

     Signed-off-by: Jann Horn <jannh@google.com>
     [alx: semantic newlines]
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


diff --git a/man2/kcmp.2 b/man2/kcmp.2
index 7acfa8ef8..278eafb02 100644
--- a/man2/kcmp.2
+++ b/man2/kcmp.2
@@ -317,7 +317,9 @@ checkpoint/restore in user space (CRIU) feature.
  process information via the
  .BR proc (5)
  filesystem; this was deemed to be unsuitable for security reasons.)
-Since Linux 5.12, this system call is made available unconditionally.
+Since Linux 5.12,
+this system call is also available if the kernel is configured with
+.BR CONFIG_KCMP .
  .PP
  See
  .BR clone (2)



Cheers,
Alex


-- 
Alejandro Colomar
Linux man-pages maintainer; https://www.kernel.org/doc/man-pages/
