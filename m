Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E3B12236B0
	for <lists+linux-man@lfdr.de>; Fri, 17 Jul 2020 10:13:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726201AbgGQINK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jul 2020 04:13:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726113AbgGQINJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jul 2020 04:13:09 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B488C061755
        for <linux-man@vger.kernel.org>; Fri, 17 Jul 2020 01:13:09 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id a6so10065074wrm.4
        for <linux-man@vger.kernel.org>; Fri, 17 Jul 2020 01:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vyggN1pO/+TZpkPy14Zqtb5YIial5fPlXq5zxy412x8=;
        b=oKTgHjmn9/LEkrMAsOwYNRfOC4od938SvLOhrwaAyNb8oID/95sC13crElHbXmN1pB
         6rQYgQx4TutC6hy6btv+Y8KIoEm+DuzxArGRzDwi8UsganUjd/1gc3555kdvlIuWgr+j
         6oFSRW9n9H0OpxiRMhK8GuDMPeWavxHDz2UKXHCxvTL5tDtw57DExR+ndW6m6DayQUoe
         +kvXsprM0VizgSn8nDie5LyUbxyqH16YI3qdsaL9OOKZ/xzFgzEoSqllWyku1NFPgUR0
         04aws2qwwcLP6zf8IRBcG9ACZ+PGPS8z6mxOi10nk0ArkcncoTGxTLvIthYcJUQGTfXj
         HGDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vyggN1pO/+TZpkPy14Zqtb5YIial5fPlXq5zxy412x8=;
        b=YL+tcyhtGvduYwrq1+boy+fICueavkpgx/E4NP2oGsWixSgtwKodifDcuAShGuUFq/
         yuh1QTj5KUuhXB4o26vcsd41ahbYAHoNwaJBJ2kOn5AiUwbEDb1uhlyXJHgLXlfqxQyt
         xrNR1gpT06RNMPuJM83pel1Rt3MV/p9OAR4dKEfIliQcY0vUa77iMdg6mhU2naR9WpPm
         LoyKy/rAx923228IxEfVqtkK9ROgcMTgEGT6Vjv8UoJQDDIcITTP8T14SbKP7TU7tInt
         yIjYza7y2EktGlnkBJ4N0BvP6Mn2qOkKXLgH0TqDdsDwSeVzIlSQGbOQ8WvR+KxaCaiq
         eTGA==
X-Gm-Message-State: AOAM531KfmfMFSOzWhkbnU1iQa3ncA3IIeqUiKzrNy/i5+l3to9Lg43z
        aRI6x8j0ugeqbO95PxjmHojXHlsx
X-Google-Smtp-Source: ABdhPJwq901simq2CFuC28M9IkSxeKG3vyIeV47cSt/yZc8uDmWW5j0vmpe0ukGfWhDU3LWGjMEIsQ==
X-Received: by 2002:adf:e6c8:: with SMTP id y8mr9657901wrm.40.1594973587986;
        Fri, 17 Jul 2020 01:13:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id s203sm13335771wms.32.2020.07.17.01.13.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 01:13:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] capabilities.7: Add two more items for POSIX message
 queues
To:     Saikiran Madugula <hummerbliss@gmail.com>
References: <20200708192935.18381-1-hummerbliss@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <38472b61-b603-e795-c54d-91c8222e1c8d@gmail.com>
Date:   Fri, 17 Jul 2020 10:13:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200708192935.18381-1-hummerbliss@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/8/20 9:29 PM, Saikiran Madugula wrote:
> /proc/sys/fs/mqueue/msg_max and /proc/sys/fs/mqueue/msgsize_max
> also require CAP_SYS_RESOURCE
> 
> Signed-off-by: Saikiran Madugula <hummerbliss@gmail.com>

Thanks, Saikiran. Patch applied.

Cheers,

Michael

> ---
>  man7/capabilities.7 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index fd841b4f1..adb8bad5b 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -722,7 +722,10 @@ to increase the capacity of a pipe above the limit specified by
>  .IR /proc/sys/fs/pipe-max-size ;
>  .IP *
>  override
> -.I /proc/sys/fs/mqueue/queues_max
> +.I /proc/sys/fs/mqueue/queues_max,
> +.I /proc/sys/fs/mqueue/msg_max,
> +and
> +.I /proc/sys/fs/mqueue/msgsize_max
>  limit when creating POSIX message queues (see
>  .BR mq_overview (7));
>  .IP *
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
