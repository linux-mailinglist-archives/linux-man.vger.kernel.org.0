Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7C2E2008E1
	for <lists+linux-man@lfdr.de>; Fri, 19 Jun 2020 14:39:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728068AbgFSMj6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Jun 2020 08:39:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725806AbgFSMj5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Jun 2020 08:39:57 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24187C06174E
        for <linux-man@vger.kernel.org>; Fri, 19 Jun 2020 05:39:57 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id d128so8980041wmc.1
        for <linux-man@vger.kernel.org>; Fri, 19 Jun 2020 05:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=66ZMnfL0uwTtAp0m09D+EVB9NxO3UAuZ3kjl6lVV4vA=;
        b=Kwu1a4ou3lwOZyPv0vMdH0PzVxmcXWffAgro9Ek1uGnTH50qA8nG2KDffcy053vLfZ
         TWR/XxqkOeXA250JY/b1kY1Yg43XtNHi1MWTy1JQITjuIRd6ZORYTfKXKYcpCy2bz1DM
         9xClGOG1TgLx7NPFqnoY5JDpajHoPf+OJDS0mpJ3Y64elFvHX6lSeY5uMUGAnxTWUu77
         tcVv0+tVnCoYzgr8C2ZybpengFJz4iNiv7TyLAkSm4Yx8uNBPy4uW6JVNkbwR1pShz0z
         LYEo89WnPSWsCtVJ7VcJG+M85K4CWRwnMyQJrFwZByU/5fakkYynYT61t5vPtXmpulTk
         SmTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=66ZMnfL0uwTtAp0m09D+EVB9NxO3UAuZ3kjl6lVV4vA=;
        b=rNJc5qgQUka6eBQnvm1gE20iAnZApNz+Sx2RR1QhYTAhgSJDearMPBIAg2OlEpr6bg
         jyq+buSSChpWlBQYwOS5PqUR4ijBiyeX6KFdl3anuag7oAwEfvxp47fKKdVP99/RLBOo
         ca0IeWavHkzABOW4KTjzPq6uysg5Kn1RmTQy1QCEuFVxqWMnei/XJf2tRCV2CwZw+QG4
         +JZyxzBNK6eHvfnRmslWjbEy9Ri+hFAZmUnJnxMA68kff+8QMx1KcQZpRNbIBCLMLxuo
         lnDQkqCcBfjHBP4jzljUTqqZu0H6iodNmfRIki1dVME5Mw2H8NCQiJMz84dmIeUJS37g
         v2OQ==
X-Gm-Message-State: AOAM531vldAnN0AUvPzWH0KORwWwx3DR3g/2VpmiZSsNBzfWCVbjo9oI
        js5X3KxS/8Ui0rUMtqRH71E1e3a1Ruo=
X-Google-Smtp-Source: ABdhPJwWEgUyaYWfuXg7lIUBiFQ0QhpLxQZWCf1N4fPVZUPj8OsoFDxkQ0DWFboLsB41toMPsoYQzg==
X-Received: by 2002:a1c:154:: with SMTP id 81mr3485921wmb.23.1592570395591;
        Fri, 19 Jun 2020 05:39:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id c206sm7346680wmf.36.2020.06.19.05.39.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 05:39:55 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] fread.3: Add example
To:     Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
References: <20200618142232.31022-1-arkadiusz@drabczyk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1ffd0ea3-824b-26e8-99bc-0b9b85c537e0@gmail.com>
Date:   Fri, 19 Jun 2020 14:39:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200618142232.31022-1-arkadiusz@drabczyk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Arkadiusz,

On 6/18/20 4:22 PM, Arkadiusz Drabczyk wrote:
> Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

Thanks! Patch applied. One glitch below edited.

> ---
>  man3/fread.3 | 55 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/man3/fread.3 b/man3/fread.3
> index 2dd7be9..4af3850 100644
> --- a/man3/fread.3
> +++ b/man3/fread.3
> @@ -113,6 +113,61 @@ T}	Thread safety	MT-Safe
>  .TE
>  .SH CONFORMING TO
>  POSIX.1-2001, POSIX.1-2008, C89.
> +.SH EXAMPLES
> +The program below demonstrates the use of
> +.BR fread ()
> +by parsing /bin/sh ELF executable in binary mode and printing its
> +magic and class:
> +.PP
> +.in +4n
> +.EX
> +$ \fB./a.out\fP
> +./a.out

I removed the preceding line (which did not render, and I assume was
cruft you meant to delete).


Thanks,

Michael

> +ELF magic: 0x7f454c46
> +Class: 0x02
> +.EE
> +.in
> +.SS Program source
> +\&
> +.EX
> +#include <stdio.h>
> +#include <stdlib.h>
> +
> +int
> +main(void)
> +{
> +    FILE *fp = fopen("/bin/sh", "rb");
> +    if (!fp) {
> +        perror("fopen");
> +        return EXIT_FAILURE;
> +    }
> +
> +    unsigned char buffer[4];
> +
> +    size_t ret =
> +        fread(buffer, sizeof(buffer) / sizeof(*buffer), sizeof(*buffer),
> +              fp);
> +    if (ret != sizeof(*buffer)) {
> +        fprintf(stderr, "fread() failed: %zu\en", ret);
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    printf("ELF magic: %#04x%02x%02x%02x\en", buffer[0], buffer[1],
> +           buffer[2], buffer[3]);
> +
> +    ret = fread(buffer, 1, 1, fp);
> +    if (ret != 1) {
> +        fprintf(stderr, "fread() failed: %zu\en", ret);
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    printf("Class: %#04x\en", buffer[0]);
> +
> +    fclose(fp);
> +
> +    exit(EXIT_SUCCESS);
> +}
> +.EE
>  .SH SEE ALSO
>  .BR read (2),
>  .BR write (2),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
