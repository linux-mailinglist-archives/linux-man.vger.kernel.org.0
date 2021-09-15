Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 562C540CD67
	for <lists+linux-man@lfdr.de>; Wed, 15 Sep 2021 21:49:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230451AbhIOTui (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Sep 2021 15:50:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229732AbhIOTui (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Sep 2021 15:50:38 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCB69C061574
        for <linux-man@vger.kernel.org>; Wed, 15 Sep 2021 12:49:18 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id d207-20020a1c1dd8000000b00307e2d1ec1aso2855492wmd.5
        for <linux-man@vger.kernel.org>; Wed, 15 Sep 2021 12:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7bAq8XdHY8AJLBt9sJEiawQqZmV38Xug3ZCJXGdfiNg=;
        b=p4kPfge60ERgNXFczqugrckdjmgxfLZfbCM2reaf4zWzmdfv0hEwCAeSTs+idNNCgH
         P7TxwKzETLwHgh5DMgeSlbJ3Mng+RQg0KEnZnltYXRzaUbCv5ejSc8dL45ZbFtncc/bb
         mPEaJLKqED+HDALkNzAI/0PUV1y/gNaX8Kwez21r5FtlMziGzjFRCzYgIODfsFp0XzJO
         sShvjqZhndMigejCAY5jZu6w2J9QAm5jbzmHdvdxbOWWHU9acHaLr44WJxZfpmo/peuh
         Tb0VmZd9Y87jPmoYlNE5Hs8lo2GNO/2E1VFrsmNhDC1/n6GvrXWjgRWNtWEduRwNbyOF
         XuGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7bAq8XdHY8AJLBt9sJEiawQqZmV38Xug3ZCJXGdfiNg=;
        b=GGOEIGpzce03FbTIBZBSMwfpPvFAiCmvhvffi1zs6s+qoBI3l9rOvgWRBf0YrXxF/T
         lrNrVYEbNzczuX5zKUHWWN6Clzza4qXXShOqNd1Y0MDvy//jcyYrquOwxfLglK0VkQXg
         s+dsowYEzzW8vnIBAnXttX/zU1lCY6teuZ7mYQoeLN3gwti4f7FhD6PmfY687tWaGb/k
         xzV8cw3HEGE6XV5KMG3PMQFovxjSQqtWl8w/bKAYRf8akJ5V+cSTUuxPX2fiBfI0yUtE
         oqe5n5YubKUbxIoaR8c7dIrqr0V7WsveqSZcZqxKG2LIKMdV7d6xCE18ijW+chlbDVle
         Z9Qw==
X-Gm-Message-State: AOAM5317dv/UkYwho0mpNnmLrLhQo9D0GENhFAXAwRdrYuW6nrFC7L4F
        TzJUIAMWaQwKwzBZdGyCB5k=
X-Google-Smtp-Source: ABdhPJxlJPXX0cav5rNuVaoL2SnmtIFTApg5zD16xiGnC0bqOmDoVdLe2iDWZfEPMKEfsx3xvWFXxA==
X-Received: by 2002:a1c:183:: with SMTP id 125mr1416714wmb.186.1631735357405;
        Wed, 15 Sep 2021 12:49:17 -0700 (PDT)
Received: from [10.8.0.26] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id w14sm981069wro.8.2021.09.15.12.49.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 12:49:17 -0700 (PDT)
Subject: Re: [PATCH v2 1/5] strdup.3: drop mention of "the GNU GCC suite"
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <89a40c652664dfc41425625d1ec5c15151e2e964.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3635eb02-a6eb-5f61-3987-5ee4ad2e393f@gmail.com>
Date:   Wed, 15 Sep 2021 21:49:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <89a40c652664dfc41425625d1ec5c15151e2e964.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/14/21 2:40 PM, наб wrote:
> str[n]dupa() are available on every modern compiler platform,
> incl. Clang, ICC, &c.
> 
> By shortening the third paragraph, it now reads
>      strdupa() and strndupa() are similar,
>      but use alloca(3) to allocate the buffer.
> pointing squarely to alloca(3), which is scary enough,
> so drop the extraneous warning, too ‒ athis clearly points to

(I fixed s/athis/this/)

> "see alloca(3) for the limitations of that allocator".
> 
> Plus, it's not like malloc(3) doesn't have its problems, too,
> but I don't see those being touted in the first paragraph;
> reducing these to the bare minimum,
>     strdup() copies into malloc(3) and you can free it with free(3),
>     strndup() likewise, but up to n, and
>     str[n]dupa() use alloca(3) instead ‒ be wary of what alloca(3) does!
> doesn't really make sense ‒ it's obvious that, ex definitione,
> alloca(3) suffers from alloca(3) problems and input limits,
> just like malloc(3) from the malloc(3) suite's.
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

наб, patch applied!

Thanks,

Alex

> ---
>   man3/strdup.3 | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/man3/strdup.3 b/man3/strdup.3
> index 1e1ac34de..963de7d48 100644
> --- a/man3/strdup.3
> +++ b/man3/strdup.3
> @@ -99,9 +99,6 @@ and
>   are similar, but use
>   .BR alloca (3)
>   to allocate the buffer.
> -They are available only when using the GNU
> -GCC suite, and suffer from the same limitations described in
> -.BR alloca (3).
>   .SH RETURN VALUE
>   On success, the
>   .BR strdup ()
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
