Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A84F294299
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 20:57:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390677AbgJTS55 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 14:57:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390533AbgJTS54 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 14:57:56 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85FA0C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 11:57:56 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id i1so3547817wro.1
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 11:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rWHXuTfPcGqL+LKX7sv96ORqmh4YApZSyJl0T4I3cRs=;
        b=arkg+Mi5l/fJ9Qpz8eOpkRKkI2Gy2HUTDGQE5Bh3sE0jcVXwRT6KC7j5STl/Ul7OYP
         ic+RQH1IdZtMqLp9DvL9/UKibC8eAnAf7+BnSmvaFQS3qJ0C2bbZk4KJ3NQCO5GoQMRE
         twmVoEphFoH50Uvov7Ul1rBHHo1jUB8gFWOwZYaznsz5satVbX0qbXw7jC/p0Qfx2D9u
         ZbrHhR+3lXQPdHbxXtzIDslCqg6fhcIf9ntYGo9o7SzP/re0mTqCbBQBitpBUGO1AOrn
         a5DDBQH2xsK+hMxNCefLdQAQ908CpwHZ9DuO22TFjm+BnaEirIg0BY2CfH+l274UOznp
         u+rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rWHXuTfPcGqL+LKX7sv96ORqmh4YApZSyJl0T4I3cRs=;
        b=fVDQdho4dIi7siTNLtREH6yWKHMAGMi7XlU5D9qyRjS7Y5PpsrG8sR2fRnJfAsMo7h
         mLvDhQ4c8r4z+nR5Q1rx2QxJu/wP4pV4X24Vn+PAIJ0iddJKjpb5YQF5u0RTrxEQsqLl
         Lc/F0GNgshmHe9rCnDCYoCTXS3vbktl0xzNWruk8ovUr7r2uORgjw3CDkTa8acMZ83Bz
         nOIANwrkNeUfnNkMDE9JkJiyqfsiAeQfyQzvVEpHjjfpBnadDKU+17q+TQAAuqHpxGyB
         iX09mbQrvli0Jmbu+uzt34bxKjrDS7nrZlWC3/jsTnlWBsIQaFUEGVCaULrEvRW0lZD0
         sPDA==
X-Gm-Message-State: AOAM532QZ7LIY4dDBjJyrW/+6jcmGAvu/xsRTm7JtaCv8t8uzKDh53HR
        AeAs9PzpEGfw7xV/jV/Vgag=
X-Google-Smtp-Source: ABdhPJxXcSMxsbW/vvgjR8wojO1iThMYDJBmitfp+ZNiO4WNE3nX9156jfRU6yOivyMRsbdXaic1aQ==
X-Received: by 2002:a05:6000:118c:: with SMTP id g12mr5236743wrx.246.1603220275269;
        Tue, 20 Oct 2020 11:57:55 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:597:6d00:9446:7902:22d6:6f78? ([2a01:e0a:597:6d00:9446:7902:22d6:6f78])
        by smtp.gmail.com with ESMTPSA id v4sm3756028wmg.35.2020.10.20.11.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 11:57:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 00/22] list.3: New page forked from queue.3
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <438e747b-2307-d3f4-546d-5db90317d91d@gmail.com>
Date:   Tue, 20 Oct 2020 20:57:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/20/20 4:21 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> I finished one of the pages: list.3
> 
> Would you maybe call the page LIST.3 instead?

I think list.3 is okay.

> I didn't write the link pages yet in case we call it differently.
> 
> Please comment any improvements you may find.

Overall, I think the result is fine, but:

> There are too many patches, so you may prefer to pull from my repo,
> where I created the tag 'list_v1' for this patchset:
> 
> 	https://github.com/alejandro-colomar/man-pages.git  list_v1
> 
> As you can probably guess, if you prefer to pull from the repo,
> I'll create similar tags for revisions of this patchset (e.g., 'list_v2').

I suppose if I was doing this work I would chunk it up into bigger
pieces. I appreciate that you are trying to meticulously show the
steps that you took to build the page, but 22 patches does
really feel like too much. And I would have combined the
"Use man markup" patches into one step at the end, and I'd prefer
you do that for future patches (but I can live with things as they
are in this patch series).

In terms of fewer patches, how would you feel about squashing the
patches as per the blank line separators below (and consequently
having bigger commit messages):

> Alejandro Colomar (22):
>   list.3: New page that will hold the (list) contents of queue.3

>   list.3, queue.3: NAME: Move code from queue.3 to list.3
>   list.3: NAME: ffix: Use man markup
>   list.3: NAME: Add description

>   list.3, queue.3: SYNOPSIS: Move code from queue.3 to list.3
>   list.3: SYNOPSIS: Copy include from queue.3
>   list.3: SYNOPSIS: ffix: Use man markup

>   list.3: DESCRIPTION: Add short description
>   list.3: DESCRIPTION: Copy description about naming of macros from
>     queue.3
>   list.3: DESCRIPTION: Remove unrelated code to adapt to this page
>   list.3: DESCRIPTION: ffix: Use man markup

>   list.3, queue.3: DESCRIPTION: Move list specific code from queue.3 to
>     list.3
>   list.3: DESCRIPTION: ffix: Use man markup
>   list.3: DESCRIPTION: Remove line pointing to the EXAMPLES

>   list.3: CONFORMING TO: Copy from queue.3
>   list.3: CONFORMING TO: Adapt to this page
>   list.3: CONFORMING TO: ffix: Use man markup

>   list.3: SEE ALSO: Add insque(3) and queue(3)

>   list.3, queue.3: EXAMPLES: Move example program from queue.3 to list.3
>   list.3: EXAMPLES: ffix: Use man markup

>   list.3: BUGS: Note LIST_FOREACH() limitations

>   list.3: RETURN VALUE: Add details about the return value of those
>     macros that "return" a value

Squashing as above would yield 10 patches, and I'd kind of prefer
that so as to avoid quite so many commits in the history.
(For future patches though, I would prefer to split out the
"Use man markup" into a single  patch at the end of the series.)

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
