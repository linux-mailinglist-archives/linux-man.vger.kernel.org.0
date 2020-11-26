Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4C512C5196
	for <lists+linux-man@lfdr.de>; Thu, 26 Nov 2020 10:48:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726062AbgKZJsO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Nov 2020 04:48:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726099AbgKZJsO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Nov 2020 04:48:14 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FBD4C0613D4
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 01:48:14 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id c198so1541002wmd.0
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 01:48:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eForVpxJRsDC4A3ytvEhi01PegVj9JnWfp5v97QhVKg=;
        b=lqL1vRitRVHHrNUyRqEVNaTWgAQVnxU05iMWyN7pLMnt2eEmSWZf8557oq2VAGwTP3
         EpoYWe8VQBEB1jbZzANDfTtN0PoaL3mkVoGmBDbcQ7gxLDKNMlByqoKir8AMdCuN9WNj
         cg1Zv3AlTopANwajSMADQh8YyjI/9KOB7Ka0rZ8g/HK1vZMGdT4/V/sye4t2YjRkYTd7
         UjB+WbelGU6h/y11xqxn+5jQVXTaK8I0vlam1yHye5YCsBl8XOzV7CnxlFV7EQaWYH0l
         CZ44quFUiTDrfhBS3qxl67a70T/cXCkP33HN2i/Ior/OdUZSbdNNN9fo3hgh4mEbO+Mv
         7YYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eForVpxJRsDC4A3ytvEhi01PegVj9JnWfp5v97QhVKg=;
        b=s8soOpuj1BSm9I+LSo2pRkpXmRQnn3dyOrh5VGzf6H+K1XwHKFsb/wDEhKXVMY+Gwq
         C2u8ybkbIQxi/gdfzYHZKooW4/vbkYP/opMrCLKBNX+DDEqW5De8r1VM6Ogl+UJeiOTp
         IKqDRiO2JrB1Hw8StMi5dRL1fnK5kVakHtxgpo3uQ/4kM99q7vpkkqhO5OujNRtSSBnF
         fzewd6YhWp5i2yav/DMZ3JS0Z8MqjB91vtZ65hU886wCfS7ugkr0hcC+70beIkfOmldC
         eYp5cjrUnjMo7GqvbYz5leVb9qGbAhRh5+Xb4Mr9qvlP00H5TpnoYbeoYuGoigQuxfsw
         zQ8w==
X-Gm-Message-State: AOAM533Ff3N6soKYHx66+Z5gep6DzI8J+9LUutE+apjFmUSTPXHgJ7hE
        jlEejJ5evUSI+EJMF9sL+rk=
X-Google-Smtp-Source: ABdhPJyqEwb5eYEFtwnuNL6rnhIGd7WZ1YrMh8csrTJxomIKp1jI2J/T+zFzfK5Omqube+oWNUrb/g==
X-Received: by 2002:a1c:b742:: with SMTP id h63mr1465199wmf.122.1606384092697;
        Thu, 26 Nov 2020 01:48:12 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id f4sm7642525wmb.47.2020.11.26.01.48.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Nov 2020 01:48:12 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org, Steve Grubb <sgrubb@redhat.com>
Subject: Re: [PATCH] fanotify.7: fix outdated description
To:     Amir Goldstein <amir73il@gmail.com>
References: <20201124152109.30027-1-amir73il@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d698116e-4f7f-1b50-538f-7f5d83c9e697@gmail.com>
Date:   Thu, 26 Nov 2020 10:48:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201124152109.30027-1-amir73il@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/24/20 4:21 PM, Amir Goldstein wrote:
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> ---
>  man7/fanotify.7 | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index c4f5397e4..5804a1f30 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -29,11 +29,12 @@ fanotify \- monitoring filesystem events
>  The fanotify API provides notification and interception of
>  filesystem events.
>  Use cases include virus scanning and hierarchical storage management.
> -Currently, only a limited set of events is supported.
> -In particular, there is no support for create, delete, and move events.
> +In the original fanotify API, only a limited set of events was supported.
> +In particular, there was no support for create, delete, and move events.
> +The support for those events was added in Linux 5.1.
>  (See
>  .BR inotify (7)
> -for details of an API that does notify those events.)
> +for details of an API that did notify those events pre Linux 5.1.)
>  .PP
>  Additional capabilities compared to the
>  .BR inotify (7)

Thanks, Amir. Applied, with Jan's Reviewed-by.

By the way, I see that there's still no documentation for
FAN_AUDIT/FAN_ENABLE_AUDIT, added in:

    commit de8cd83e91bc3ee212b3e6ec6e4283af9e4ab269
    Author: Steve Grubb <sgrubb@redhat.com>
    Date:   Mon Oct 2 20:21:39 2017 -0400

        audit: Record fanotify access control decisions


Can anyone help with that?

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
