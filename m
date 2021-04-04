Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07B913539B3
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 22:17:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231508AbhDDURh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 16:17:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231485AbhDDURc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 16:17:32 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BCF3C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 13:17:26 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id n2so8058791ejy.7
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 13:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LOEAq0Zh8QJGnCWDBtSEzf+wZ/n4XHL25PE3FvpLVds=;
        b=TIbTMbb7tv7B8xpUgz67Rs54da/ZZuqHToMNKM4F6qV0fH4ZR6uro720JYSMxiv4xh
         UqVQ5mbJ6m4g/V5tYlem2HFKZNV+yXKn9eArEu/LBJ8i1jDJrGf5bwBxVS+hKPKF9W0G
         uJ2yAIV6JWUS67qf7pDxY3o/tmtb5wDWNrheipFgqO+5rdzN6d+aXpLIxOqaZCmoPkWK
         bAVQUMHvtzZYOLYR2Eoo3VkxG1rzIvGlzy7rqxrsGRi3DE4IFHLt9EhrSo/fKI6WDDqV
         lbho5ZYsumOXV19e/r+WJhNU0nVcZRQi1d34hxDlJ4YSt5JL2dob7ZtX8vVwjak72HBl
         bEhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LOEAq0Zh8QJGnCWDBtSEzf+wZ/n4XHL25PE3FvpLVds=;
        b=B0Egukj0FqFGBmKeZknvxDUbGYXWc7vO5CfQkK7ZmuYENMK6m7DwtL5SU1qJqsEOmG
         sOdBuCnU8h4lmGVzUShdSW2xp6DdfArBeffW566ew2Lcx00f8eWOS5WoBmGMyHfQHY7Z
         xWPbF8iNy+opdu+zoy2eVB1YdksAA63AaSdEwm9ll57++YGrMVKHEY8l4CuvR/0dZ9m1
         pD5eNNQaj4KEMuRoA5R3r0b2xxnlr7ZsY6ikzp/mVxEtB+neQXYZKgolqv9wefyDtKKv
         01uLlTKvxP6i3xS9K5PHmPsepj8Bx+sVKX8BvyylqPXrTfl48h425aqdGxD5ibfjIWle
         3OQQ==
X-Gm-Message-State: AOAM531wVj2LnJBwWHoWX+EahJCuIpodGwowxGZC7gA3wj2ZehSU6zui
        0YIZyFjKqNxg7yT1Oxq6A1A=
X-Google-Smtp-Source: ABdhPJzFrduYVc9FZoxJMfMUrq28BsCq2dF3heYFH1sGgboLWlUDkkNg1bRhG38CXdNimOg7SIkbRw==
X-Received: by 2002:a17:906:52d0:: with SMTP id w16mr25026082ejn.172.1617567445149;
        Sun, 04 Apr 2021 13:17:25 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id f19sm9106740edu.12.2021.04.04.13.17.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 13:17:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Mark Kettenis <kettenis@openbsd.org>,
        Florian Weimer <fw@deneb.enyo.de>
Subject: Re: [PATCH v3] errno.3: Fix ENODATA text
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <87k0q1zk7a.fsf@mid.deneb.enyo.de>
 <20210320200115.95489-1-alx.manpages@gmail.com>
 <e8721099-3180-6745-3f9b-9c823f5f7d0f@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c7434479-d94a-bf2b-be1e-b76802bc1203@gmail.com>
Date:   Sun, 4 Apr 2021 22:17:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <e8721099-3180-6745-3f9b-9c823f5f7d0f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/4/21 10:16 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 3/20/21 9:01 PM, Alejandro Colomar wrote:
>> ENODATA is an XSI STREAMS extension (not base POSIX).
>>
>> Linux reused the name for extended attributes.
>> The current manual pages don't use ENODATA with its POSIX
>> meaning, so use the xattr(7) specific text, and leave the POSIX
>> meaning for a secondary paragraph.
> 
> Thanks. Nice work on improving the patch!

Sorry -- and I meant to say: Patch applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
