Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 41DA7155BCC
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2020 17:31:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726874AbgBGQbU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Feb 2020 11:31:20 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:40024 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726974AbgBGQbU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Feb 2020 11:31:20 -0500
Received: by mail-wr1-f66.google.com with SMTP id t3so3401755wru.7
        for <linux-man@vger.kernel.org>; Fri, 07 Feb 2020 08:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=q6brbGOAxN+84Rd/od3iSlMOTeSG94SxHHrZgrkI9NM=;
        b=s8gdUbL0RYbIlmu8phnuCZ3NbYI7n/Yv/ee0BUBkNAscORJEc3Hljv4IEr1+9IRD58
         CRYfxQwn844DYpNYdzrObAQnePbJM3xmIpGxHLjGOrO7MM+HMl7ipgK8k5qBPsE075nW
         jI7QSaIkdkYAUDtLe+Ypb8f9eIjjLtcldxM9mPYNxQ239wW/20hnY8NxQYPrVHgdhTjd
         F6ai2KU8pfo7ejmxs4M1SiKbMQtg61XcTrlAi+yS0sB9WxAUIBJR+2Kn51cyVjIT2KmS
         +t8wBcsteFl+xz5gZWLbmJO2FL2GuRuS1Co89EMSJsVLMsfvgeQTZ9hvJqNLJxXtyR/2
         bN+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=q6brbGOAxN+84Rd/od3iSlMOTeSG94SxHHrZgrkI9NM=;
        b=iKV3Z5lQ/pPf8rXrpSvWKqsQX7vCmo/uzHM5ISxwqAceCwp8JfR2h3f0996Qp7EA9S
         iGgK5p3OJKhpk5BUZ+NcZDZFrs/eRc92wbiuX4eaI/pCeBf8dKdzhPGi9KaqMk0g9AS2
         vFglmNSCDfC6HHIPhV7p/bYE12Qh+Q18K91JT4GW/3jD0/L+ZfXE6CSKRZW3mMCisfPU
         4Vgrx6TZQiGUnqptNQRzyeB0mn0GCbiPzVQNh4w/GkMWlKYyggkMTXHpHiPwV2crhlfb
         I2sAuU6Wn4+ho6ZU2d/vsyYjRnZ+8BfX1M+N/uOrAuSi9atuatoWnkrDAQtb2IBEP8H+
         C1IA==
X-Gm-Message-State: APjAAAUu4ymPGg0DdA0MXD3ObelUm3VdvZwKp188mevPGmtsDtn9nhZn
        fwb0KjbDI51eqefA8qwxh24=
X-Google-Smtp-Source: APXvYqwv8MqdydaCBoPg8Cs1Xf8rI00LNQ1A/Ur2EP0I4BeOR0favIKJJM7wVpXYggNwH4bM+vdcIA==
X-Received: by 2002:adf:fe43:: with SMTP id m3mr5881250wrs.213.1581093078098;
        Fri, 07 Feb 2020 08:31:18 -0800 (PST)
Received: from ?IPv6:2001:a61:251f:d701:c8c9:6ecf:205c:abb7? ([2001:a61:251f:d701:c8c9:6ecf:205c:abb7])
        by smtp.gmail.com with ESMTPSA id k16sm3891516wru.0.2020.02.07.08.31.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 08:31:17 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Theodore Ts'o <tytso@mit.edu>
Subject: Re: [PATCH] open.2: No need for /proc to make an O_TMPFILE file
 permanent
To:     Adam Borowski <kilobyte@angband.pl>, linux-man@vger.kernel.org
References: <20180925230929.14449-1-kilobyte@angband.pl>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <48a55d5f-74bd-e001-ca7f-d7d968960216@gmail.com>
Date:   Fri, 7 Feb 2020 17:31:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20180925230929.14449-1-kilobyte@angband.pl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Adam,

On 9/26/18 1:09 AM, Adam Borowski wrote:
> In the example snippet, we already have the fd, thus there's no
> need to refer to the file by name.  And, /proc/ might be not mounted
> or not accessible.

Thanks! Patch applied.

Cheers,

Michael

> Noticed-by: Theodore Ts'o <tytso@mit.edu>
> Signed-off-by: Adam Borowski <kilobyte@angband.pl>
> ---
>  man2/open.2 | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/man2/open.2 b/man2/open.2
> index 5d0ce66d8..1c775b6b3 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -811,9 +811,7 @@ fd = open("/path/to/dir", O_TMPFILE | O_RDWR,
>  
>  /* File I/O on 'fd'... */
>  
> -snprintf(path, PATH_MAX,  "/proc/self/fd/%d", fd);
> -linkat(AT_FDCWD, path, AT_FDCWD, "/path/for/file",
> -                        AT_SYMLINK_FOLLOW);
> +linkat(fd, NULL, AT_FDCWD, "/path/for/file", AT_EMPTY_PATH);
>  .EE
>  .in
>  .IP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
