Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B18221A64C6
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2020 11:43:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728054AbgDMJnH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Apr 2020 05:43:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727968AbgDMJnG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Apr 2020 05:43:06 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A2BAC014CDB
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2020 02:43:06 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id c195so9755032wme.1
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2020 02:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LcwckfY0OqHeI5u6DjiFAH1K4/ruT4TBBT9No69jKuk=;
        b=TuiwiFNsfw0m5ia6xhQOCRzapPy6x+6/8GLLQUejmpH+HtuBqlbpNCRRR5TyDZOjvM
         q1G3tCapNBYgF+GSSudTc3fKMX0iaBuaZGbf5OylQczeDOI4h8pMwfGJ5JQ0ARkwqmgJ
         cONzWTz/z++/cnPsyfiU0dK/kxxA16SXbVXmXH+rX+KT1ErLo9vFDlc2q1df7PLzuWlY
         8RkXaewUngjIYbiEtizQT5ALjkyHiUJWOiJW+GB4BiZzkwZciUP0sQbwMonSj7VbzSlo
         FfZGjmT7gHR5x7RbfBaG5/iDOyQJfK11YWPITDvt2IGAUVmY6oJytllf6RaAdLr02V+h
         /CUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LcwckfY0OqHeI5u6DjiFAH1K4/ruT4TBBT9No69jKuk=;
        b=ZHAC8lV6MfEOJq8Lnb+zL9jIeMIudRfGsw6/J35pHopRQfssr7brs4ITlSINa+MgQr
         LNNp2eQQlSXPFLKfKg97P0ZgZvT4Bkobot9Vio/iY3aZqErU2IQ5F8oHLdWfdPQJKvtI
         CaYTSBV4bjCLAPbtonObd3DeS4EYVoOuvWQ6vfJ74EevyhZtiCWBmHT8prnIm7QWcIRL
         y2ojS+6XkZMGOcZ04AJts+xzA915UZBMZZgQKEP3v8z1IC9tGEZ6c/9BqiNRCo1hBViX
         fXZpxXyb1KATuaC2Atw1MobXHh6wB3VWSO24GDbLJA/bycxtnGSRAggw1dc36Wx1bzoB
         BxAQ==
X-Gm-Message-State: AGi0PuaUGFQzZcoJ/vshMZ5bKnAkvCJfr4RLYhunjC4FbtRfFyjhUjGc
        nIdqJf0sexOyEUUTUwC/valOM3q/XsE=
X-Google-Smtp-Source: APiQypLAu6w7UyhMH1aZQHzCW6HqAa4NoizuwCzmPOUlwjBOzG3JQLhDYQLAyUVQ1tRfIL/j/iYUOw==
X-Received: by 2002:a1c:80c3:: with SMTP id b186mr19352380wmd.117.1586770984675;
        Mon, 13 Apr 2020 02:43:04 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 1sm13377173wmi.0.2020.04.13.02.43.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 02:43:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] sendfile.2: Document the correct required syscall for
 offsets
To:     "Joseph C. Sible" <josephcsible@gmail.com>
References: <CABpewhGK4nEo6S8BwJyS5VRtOX3P50rx25UUYH9cpVeJC4GEmw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e61e6439-2165-d9b7-965f-438a728c8a58@gmail.com>
Date:   Mon, 13 Apr 2020 11:43:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CABpewhGK4nEo6S8BwJyS5VRtOX3P50rx25UUYH9cpVeJC4GEmw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Joseph,

On 9/2/18 10:56 PM, Joseph C. Sible wrote:
> There's not even any such syscall as "seek". (There is an "lseek",
> but it's not correct here either.) The do_sendfile function in
> fs/read_write.c tests for FMODE_PREAD before erroring with -ESPIPE,
> so it's actually pread() that's required to work to use an offset.
> ---
>  man2/sendfile.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/sendfile.2 b/man2/sendfile.2
> index 4f85fdb..f316319 100644
> --- a/man2/sendfile.2
> +++ b/man2/sendfile.2
> @@ -165,7 +165,7 @@ the input file or the output file.
>  .B ESPIPE
>  .I offset
>  is not NULL but the input file is not
> -.BR seek (2)-able.
> +.BR pread (2)-able.
>  .SH VERSIONS
>  .BR sendfile ()
>  first appeared in Linux 2.2.

I'm not completely sure of the difference between FMODE_PREAD
and "seekable", but the point is that in terms of what users
understand, what is relevant here is "seekable" (as even stated
in the pread(2) manual page).

I applied the patch below. But if you can show me a meaningful
difference between FMODE_PREAD and "seekable", I'd be happy
to further update the text.

Cheers,

Michael

diff --git a/man2/sendfile.2 b/man2/sendfile.2
index 4f85fdbd7..f0ead4a9b 100644
--- a/man2/sendfile.2
+++ b/man2/sendfile.2
@@ -164,8 +164,7 @@ the input file or the output file.
 .TP
 .B ESPIPE
 .I offset
-is not NULL but the input file is not
-.BR seek (2)-able.
+is not NULL but the input file is not seekable.
 .SH VERSIONS
 .BR sendfile ()
 first appeared in Linux 2.2.


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
