Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62EA022C470
	for <lists+linux-man@lfdr.de>; Fri, 24 Jul 2020 13:37:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726503AbgGXLhF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Jul 2020 07:37:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726483AbgGXLhF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Jul 2020 07:37:05 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFB52C0619D3
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 04:37:04 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id ga4so9618578ejb.11
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 04:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gEKC/NZk3GhNbs+FPOLOr5/hYGM2NNV1qqwX7IPaLVo=;
        b=pWQuechkkqw9d6qL8LVTpxzgmubHx/3ZM+T8qgJ/+zdVt9I7Tvj0ifXCLvFZf9Hc1G
         5Ks45rTRPjy9z+GK0FEUBJgXFPAtze1ooblPzL1df+UWBCYh19/FatVU2gFroeYT0+B1
         3GwWeTN+B8qse9tiiE3R3FKiiiDfF1h57IGIugsZ/mPvqpyhnVbyoz+V+fHqOCTMXEXP
         v9geW6PFjvtXv0PYQwz83npD20m8HldEHIHSABLpezeCAn6JQv/gu5D+ZEdMZLS2aMDD
         E0OMTiO1sA1FmViWiWNZwBwa0aoqTUd1sMNsnUBR/GCl/J0yLdaua+Hah2Op/DqoLF3J
         rt5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gEKC/NZk3GhNbs+FPOLOr5/hYGM2NNV1qqwX7IPaLVo=;
        b=rpIXI3QCpmx2Nc4jovPUnVT0N21KaP4JbSkytit4J+baiV7U7adS0/ux6Y9+NkRJwz
         LX134TAZpfPZoMpLsDeUpiQwFhK2akjYYax3VkgkwLABOuHcJEzFwP5F0im6BGIzASW9
         DCbJZMPWm7tGU3th6qYNBrVxLbq/+FhT76j1WGiXcS8N4jKvyul/odZRVeJ6BtLguE6k
         RjePpqkwsFS/y8h/bpco+IwYlhrk7ncufObrLsPAsLsaNOm9i1/S/YtWwSTGpRQst0hd
         gTpiex8hjItiX7ekUlItnvnhEZl0S8DfOzRj23cjknwgrou3lZ0jo9QeTLhDWy94vUrT
         SwSQ==
X-Gm-Message-State: AOAM5306o8NjaGWcc7W73p7JLK/zesHlOsQQQn+PbTFa2sBegLm4tpWm
        sft3/TEpn18R1P5n+/5wk9jGtwda
X-Google-Smtp-Source: ABdhPJxS9ld+/Y4qOuwbQhtEUFNNDVpfBm9WIJi8hgXZPUtAJ3LbEHqBF2FUsNQ37uHtVVtIa2bj8Q==
X-Received: by 2002:a17:907:20c4:: with SMTP id qq4mr8427842ejb.85.1595590623321;
        Fri, 24 Jul 2020 04:37:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id v9sm483494ejd.102.2020.07.24.04.37.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2020 04:37:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] Add note about there is no default permission mode in
 umask man page
To:     kevin dankwardt <kevin.dankwardt@gmail.com>
References: <CAJUC52H2YPD2B7Nh-eDO-QzbwuyYiNokYAWYQU1z0hWRpJ3y8A@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <31626a3a-6d3e-c8fa-af98-b98b356fcdcf@gmail.com>
Date:   Fri, 24 Jul 2020 13:36:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAJUC52H2YPD2B7Nh-eDO-QzbwuyYiNokYAWYQU1z0hWRpJ3y8A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Kevin!

On 7/23/20 8:39 PM, kevin dankwardt wrote:
> man pages version 5.08
> 
>>From 884004f93893cb01002d886387c78ba58d1aff53 Mon Sep 17 00:00:00 2001
> From: Kevin Dankwardt <kevin.dankwardt@gmail.com>
> Date: Thu, 23 Jul 2020 11:31:55 -0700
> Subject: [PATCH] Add note about there is no default permission mode
> 
> ---
>  man2/umask.2 | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/man2/umask.2 b/man2/umask.2
> index e74e8ef..6bc8ba1 100644
> --- a/man2/umask.2
> +++ b/man2/umask.2
> @@ -138,6 +138,8 @@ Inspecting this field in
>  .IR /proc/self/status
>  allows a process to retrieve its umask without at the same time changing
> it.
>  .PP
> +The Linux kernel has no default permission modes for created files or
> directories and thus the permission modes are non-deterministic for a file
> or directory created with no requested permission modes.
> +.PP
>  The umask setting also affects the permissions assigned to POSIX IPC
> objects
>  .RB ( mq_open (3),
>  .BR sem_open (3),

The umask(2) page seems the wrong place for a note such as this,
since this doesn't really relate to the umask. I assume that what
you really care about here is a call to open(2) that wrongly 
omits mode:

fd = open(path, O_CREAT | O_RDWR);

The open(2) manual page already warns against that, but I have 
reworded the text in that page a little to further emphasize the
point.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
