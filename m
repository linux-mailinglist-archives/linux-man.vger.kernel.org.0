Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE572307FE0
	for <lists+linux-man@lfdr.de>; Thu, 28 Jan 2021 21:52:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229658AbhA1UvI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jan 2021 15:51:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbhA1UvH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jan 2021 15:51:07 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B8AAC061573;
        Thu, 28 Jan 2021 12:50:27 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 190so5342351wmz.0;
        Thu, 28 Jan 2021 12:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3On79yt/ogpOXZmRquUWRYpKWHvhXFj1EOlDrRJaacA=;
        b=EKkldwFsnT54HxqRIn5pmq7P+Z9ErTIPYpfjgGLZws9ENBzlFH48eqRX2S6YfGzJDW
         +oqKq9E4k04t/wZ9Nzj287mtjKqKo3qbAPdau5r+K2+o8Sv9ppYlWFBPXU1FAUj1MNpF
         NV4YE8kReYSejwqnTTglI4Pj4Iu0uPgBdlIdEf/cWqZsZs/PDNtkhNvIWnMHPWaBproK
         BLKxHh99AwE7OFoB/tW5vbXfYMSeYOYPHhFreyCM/KeU+A3j3s/O4MebmXBBygjZT+Op
         nrSXLDRJ4lY5fxaJBfZCjgkCAVTK2kW5R6CKcxi5hBoGwOo6Mdw775tgEd655O/NGyOU
         WkIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3On79yt/ogpOXZmRquUWRYpKWHvhXFj1EOlDrRJaacA=;
        b=ozWWaZMtBa5mtli4nruvTSxDkBrPiRqFrbGK9VNv1C1rrLt4mUzWMxkXxGqIOxmFgO
         lAAJsh8xatwGxEf4XObJklsL/eSqtNgSUWyYWRYlY5mrrm5ixOV+VGfV+F7WlXaeqzvm
         J+QdQzRTpEmpAmLgHShIuUCsuwBGsSE5EgZjrty2slHlnRF+kC+fOVdj087CHgG55uKm
         3L0/6cJucM0jflBU1OzpjmXk3Lbkmwxez0kyxakJWFEIsmCfmhGp3oHaNNb5ZchP3TB/
         JRrbQqSfThO3SsHKHbnVPIDHrtABd9EqsxRpB4kUyT62+dbQ5pTLjjegBayKDUys5UWm
         EUgg==
X-Gm-Message-State: AOAM532evKR5ppOcUgaC7sdDtuuUQq7WznlSnyG4NOT7AjM/vcLYJEx4
        RIpJV3l1SK0TC5Zx/lzWdIIeB9ksmK0=
X-Google-Smtp-Source: ABdhPJzUvupS7lIYlOlVMFhIRc+8rrw2AhPsangPLc9V1N3Lf5ojVdX18q9FjEwOBDAMKz8XRU8pug==
X-Received: by 2002:a1c:21c6:: with SMTP id h189mr858347wmh.173.1611867025854;
        Thu, 28 Jan 2021 12:50:25 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id z15sm7962448wrs.25.2021.01.28.12.50.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 12:50:25 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6] close_range.2: new page documenting close_range(2)
To:     Stephen Kitt <steve@sk2.org>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
References: <20210123161154.29332-1-steve@sk2.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e761f00d-751f-f782-9af1-c5f868d52df0@gmail.com>
Date:   Thu, 28 Jan 2021 21:50:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210123161154.29332-1-steve@sk2.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stephen, (and CHristian, please!)


Thanks for your patch revision. I've merged it, and have
done some light editing, but I still have a question:

On 1/23/21 5:11 PM, Stephen Kitt wrote:

[...]

> +.SH ERRORS

> +.TP
> +.B EMFILE
> +The per-process limit on the number of open file descriptors has been reached
> +(see the description of
> +.B RLIMIT_NOFILE
> +in
> +.BR getrlimit (2)).

I think there was already a question about this error, but
I still have a doubt.

A glance at the code tells me that indeed EMFILE can occur.
But how can the reason be because the limit on the number
of open file descriptors has been reached? I mean: no new
FDs are being opened, so how can we go over the limit. I think
the cause of this error is something else, but what is it?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
