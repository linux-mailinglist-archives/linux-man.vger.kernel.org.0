Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3C9927B03C
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 16:47:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726460AbgI1OrO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 10:47:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726344AbgI1OrO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 10:47:14 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25E9CC061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 07:47:14 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id s13so1400800wmh.4
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 07:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/XDEhI2ykTiCgkqkJju96goL1xvWQTp4bavAxLT/Zug=;
        b=khFuzmOehGuiyYitU/BDcgmCduRNx7YhNtQwDF/XhEQiRPlPAipDrzxNEnKFSZVHTU
         kZDkb/Hd9dAKFiHBQnIPl0T1mkj9Z+/myMV27C/9ybdNCuMjqNQcUKWvrzgeLVm4g9a+
         p/DwEWu2BrfT4Ia9zmvx5okbhfZiBvyV5JZTKBDcl7ZArzuJsAeX2djaMWpg6WjZJK0t
         W1xc7yfyyk8AIEGb2tF9bx86iOVD9L78LtAbAthuF2ZVwCFVUWarjhQCFh2zN9lBTLDJ
         Y6IaPZNDjDGooYjiFy9EC5llOeJ7YwmjtYOKEX0GY+FsT9VIbae+Ku0/QjrgpUO3tn+a
         wFcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/XDEhI2ykTiCgkqkJju96goL1xvWQTp4bavAxLT/Zug=;
        b=s6wOqzew4Csqj6eO7NBrDel6k0X7+y8KGZpY4s6phk4P0lFXNVYsPM2OKPDu3D0h5W
         7/lTYsmZij0OT5FaOoR4lMlEXnP+X8Zw/DNfL/x6X7DdX1lE6Qqohww+NNYwzpBDwbSX
         uhQG3JOZo68z7y43QLStqYa0tw7mFNX1eZI22YyUxHpJ8NQOEuskqdlCLiit8qsYbwyP
         2PPduAo7k1rE7GysMY7blOh/iGf8TSFqNE/YwWDJGHZ0xj1BJ+Y/vHcHxFu4zXu9tGUo
         tyebzc/ki15XpqyUzkZbHGRKYiszuBS/vLxMYCBjsDQZmlQa9/t1ikHVFYUxpHGyiSgt
         xVyQ==
X-Gm-Message-State: AOAM5325YnZpo4jF3nmCtW1AehW9fzSP8wrwOJRAjA6WW4sBu6TD9nB0
        1NEsBy608e7L1uWTPOcWYpE=
X-Google-Smtp-Source: ABdhPJzSrhjqbP3ynjSYFsyQu7+JHlbtrhpOW711sujkHXTZrFfzZZDHCCTMR4drZhtXzLosRLOGNg==
X-Received: by 2002:a1c:4455:: with SMTP id r82mr2004231wma.60.1601304432797;
        Mon, 28 Sep 2020 07:47:12 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id u66sm1541595wme.12.2020.09.28.07.47.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 07:47:12 -0700 (PDT)
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Dave Martin <Dave.Martin@arm.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
 <20200918112755.21428-2-colomar.6.4.3@gmail.com>
 <20200928134122.GG6642@arm.com>
 <8ce3d63c-445f-827b-a49a-914e8dd622d4@gmail.com>
 <20200928135506.2wsf3cwvkkbreqa3@localhost.localdomain>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <c6ac9bf3-4dda-341a-69e1-c80a6e5cdf84@gmail.com>
Date:   Mon, 28 Sep 2020 16:47:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200928135506.2wsf3cwvkkbreqa3@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 2020-09-28 15:55, G. Branden Robinson wrote:
 > Hi, Alex!
 >
 > At 2020-09-28T15:48:14+0200, Alejandro Colomar wrote:
 >>> Where does this arbitrary-looking list of headers come from?
 >>
 >> There are two parts:  left to the ';', and right to the ';'.
 >>
 >> Left: The canonical C standard header, and the canonical POSIX header,
 >> in alphabetical order.
 >>
 >> Right: All other headers that shall define the header, according to
 >> either the C or the POSIX standards, in alphabetical order.
 >
 > That's not a bad scheme but it is not inferable from the current man
 > page text; I almost commented on the inconsistency in one of my earlier
 > messages but deemed it out of scope.  Please document it, perhaps in an
 > introductory paragraph at the top of the Description section.
 >
 > Or, you could spend a word to do the same work:
 >
 > gid_t   Include: <sys/types.h>.  Alternatively, <grp.h>, <pwd.h>,
 > <signal.h>, <stropts.h>, <sys/ipc.h>, <sys/stat.h>, or <unistd.h>.
 >
 > Regards,
 > Branden
 >
Thanks!

We talked about it. I wasn't convinced by my scheme,
but we couldn't come up with a better solution, so we kept that.

For the readers, it wasn't clear, but for the developers of the page,
I wrote a comment at the beginning of the page,
which I hope was clear enough:

.\" Layout:
.\"	A list of type names (the struct/union keyword will be omitted).
.\"	Each entry will have the following parts:
.\"		* Include
.\"			The headers will be in the following order:
.\"			1) The main header that shall define the type
.\"			   according to the C Standard,
.\"			   and
.\"			   the main header that shall define the type
.\"			   according to POSIX,
.\"			   in alphabetical order.
.\"			;
.\"			2) All other headers that shall define the type
.\"			   as described in the previous header(s)
.\"			   according to the C Standard or POSIX,
.\"			   in alphabetical order.
.\"			*) All headers that define the type
.\"			   *if* the type is not defined by C nor POSIX,
.\"			   in alphabetical order.
.\"
.\"		* Definition (no "Definition" header)
.\"			Only struct/union types will have definition;
.\"			typedefs will remain opaque.
.\"
.\"		* Description (no "Description" header)
.\"			A few lines describing the type.
.\"
.\"		* Conforming to
.\"			Format: CXY and later; POSIX.1-XXXX and later.
.\"			Forget about pre-C99 C standards (i.e., C89/C90)
.\"
.\"		* Notes (optional)
.\"
.\"		* See also

But I like very much your "Alternatively, " wording.  I'll use it!

Thanks,

Alex
