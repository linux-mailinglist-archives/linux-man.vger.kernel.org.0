Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1884B42809E
	for <lists+linux-man@lfdr.de>; Sun, 10 Oct 2021 13:05:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231599AbhJJLGy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Oct 2021 07:06:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231561AbhJJLGy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Oct 2021 07:06:54 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC518C061570
        for <linux-man@vger.kernel.org>; Sun, 10 Oct 2021 04:04:55 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id k7so45455521wrd.13
        for <linux-man@vger.kernel.org>; Sun, 10 Oct 2021 04:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=scylladb-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:organization:in-reply-to
         :content-transfer-encoding;
        bh=ycwZdkni0eKfrXP2FXBl27QWdKckuATYf0bGzvfXDXM=;
        b=j+zkLd6EAbJVYO0ivUW0HE6e+oYXhnCGmTbxDh+XgA/MGql2qn+U5yya8jIDpwTK87
         6rNd/Oe9cY0r5uLbtnEvc9PxzmI1tKhfNdenED9K9S0Rh30ro+l9/EYdNKLAYwhbb4/C
         gAc8LzIXsXzh9oIJ8g4PgozfqztbB0GuJ0oPr2N+oxEezGONhqBWaFtvuSOZgWEx1n1G
         h196lrumRltSAtxKRiTQfO9xfPe7o9oqZglMAMTm1KWHPLZ73BcB+qZux5hE4qtoDAvK
         yKTrU+TSdiekl5cW9YMJa/nIDmDB6h+F00jOCpJ0OERZyllNLWQV3EiBBzRcHNpSZCdO
         Op0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:organization:in-reply-to
         :content-transfer-encoding;
        bh=ycwZdkni0eKfrXP2FXBl27QWdKckuATYf0bGzvfXDXM=;
        b=vn+T/3Z0MwVUsP++OZCIEsQ6u4pXrhwVj1y4OHhZmeXkNyraonbKeixqC8b+G4KBIV
         38lkRlXxvritdXeWQ/S5bMIxPCyBYBDCMmymnI/sGtCMK0nxDGoISMW6qEhcTp7oECx0
         ItCXkg8lb4iQt1ygnXw7kAD+wdJihxLTRwC98IURMD6xDfFumRIScVHBoOEvHLA0Et1z
         uEo85vGMTxMWTtSTec1+pMBZqWhVR0WknT/ZI6erMqrKOUem+NW3b1ikUi/Ym4x+rdpJ
         JAeGmvz5O6Lii+ag4r3dwLzbknpVwCA877kjrjaE7wNJlLdxG/j8nBBIvtogFm2ao4QB
         2T0Q==
X-Gm-Message-State: AOAM533fgMEk9tSOcD2RkDATHfWCjQjXNlyEhQl9bDCa5G4+WzEnHOmY
        gtbD8UGmgwDOgb0GEdN+8QuB9i2exyxULw==
X-Google-Smtp-Source: ABdhPJyZibA51SXHMSK9SnCtEKORlSm/AIz/aFIymXWsIHhOnFkc93R49RTvl8zP5vnprbkEHZSSYQ==
X-Received: by 2002:a1c:9a4d:: with SMTP id c74mr14374106wme.139.1633863894049;
        Sun, 10 Oct 2021 04:04:54 -0700 (PDT)
Received: from [10.0.0.1] (system.cloudius-systems.com. [199.203.229.89])
        by smtp.gmail.com with ESMTPSA id t18sm4753914wrm.81.2021.10.10.04.04.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Oct 2021 04:04:53 -0700 (PDT)
Message-ID: <f8a6aac5-4b3d-24ee-da67-a16b9985bdf0@scylladb.com>
Date:   Sun, 10 Oct 2021 14:04:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Subject: Re: [PATCH v1] perf_event_open.2: clarify and expand memory barrier
 requirements
Content-Language: en-US
From:   Avi Kivity <avi@scylladb.com>
To:     linux-man@vger.kernel.org
Cc:     mingo@redhat.com
References: <20210919173639.2100661-1-avi@scylladb.com>
Organization: ScyllaDB
In-Reply-To: <20210919173639.2100661-1-avi@scylladb.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Bump

On 19/09/2021 20.36, Avi Kivity wrote:
> perf_event_open(2) instructs the user to issue an rmb() after reading
> data_head to ensure that user-space sees all writes to the memory
> it reads. rmb() is a kernel-internal term that might not mean much
> to the reader; and further it is too strict. It's enough to require
> the weaker load-acquire fence. This is an industry standard term
> that does not require the user to understand kernel terminology.
>
> In addition, require a store-release fence before writing data_tail.
> This prevents the user's reads from being reordered with the kernel's
> writes to the just-freed space. The documentation in <linux/perf_event.h>
> also suggests doing this.
>
> Signed-off-by: Avi Kivity <avi@scylladb.com>
> ---
>   man2/perf_event_open.2 | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index 81c1b10f2..db5ce746b 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -1837,18 +1837,19 @@ The value needs to be manually wrapped by the size of the mmap buffer
>   before accessing the samples.
>   .IP
>   On SMP-capable platforms, after reading the
>   .I data_head
>   value,
> -user space should issue an rmb().
> +user space should issue a load-acquire fence.
>   .TP
>   .I data_tail
>   When the mapping is
>   .BR PROT_WRITE ,
>   the
>   .I data_tail
>   value should be written by user space to reflect the last read data.
> +Before writing, issue a store-release fence.
>   In this case, the kernel will not overwrite unread data.
>   .TP
>   .IR data_offset " (since Linux 4.1)"
>   .\" commit e8c6deac69629c0cb97c3d3272f8631ef17f8f0f
>   Contains the offset of the location in the mmap buffer
