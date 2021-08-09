Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFFA83E402D
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 08:36:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233381AbhHIGhA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 02:37:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233407AbhHIGgy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 02:36:54 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D10BC0613D3
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 23:36:33 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id l14so2938350wrw.4
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 23:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gSmrLbgLrmRZnjSziDLh6zCsDhvs5YPGwHEXWbtVAXk=;
        b=Ke+lfiSB4fMe6q1CJaDDQkqlnS+FjtgrDgyQBSIaPxXJJhbA7AyY3OX/iohs/Gj0s5
         NK42KClHqxzO54rRYlQqbs7VZOUwY7zYHQ/lSrnWKFmc9BPuy+geqQnffcMjfKDNPXk6
         cg1GLhL8l+iJwVnGm4ud8RiNxUfm8Eog7bPImS/ByNPwZNha/2LKykPY3BGKS3/W3FEK
         BoMjBbV+xS3r0r+DbEnQGY+q9V/RTOqVGuO7S5UPPJCwnUGqMVsshHr5yDhxFjZsPlXj
         yE4oio/KBKdYqqn+fNzgS+GLC84zfukhA0HQC3awJa5kc1Tm0r8Gs9LmRVoxNKKwOOor
         iw+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gSmrLbgLrmRZnjSziDLh6zCsDhvs5YPGwHEXWbtVAXk=;
        b=rdjYB+aYWW0VsCEjSfikd0fBVWxSqknXaMKSaM5dXKn7nt0Ix4VZBSYcP5ALzdxNKg
         O4m0LcvEfBvVCvDOzvuQx2cYliFtFzA7NyajPtDZ6+UBtfRnPmy4d4dKo9OT0XTJPC9C
         xTVCqmadTgg7lFbsFGg4pIanoeGlHRSHaYih33uYN+4xtZFLvzsA4kzsuWXr5Qq6ZkM0
         yMu3+rp6mioEx8BOwbWViRtSeGqK5C7ujCwjz2FCKsqlVr99J7Wy3tubsdrNP5sqCwHM
         1Y/lwUUA7rlkUWzS3qpxMaY6Zn7+rcOJqHyHaL8WSjS7eoRVETP1gIoWV7lJeIfDttt2
         PtmQ==
X-Gm-Message-State: AOAM532k952uyBjWGW3GqHqBD7VGaK0TJhoY8MZzLGd5uFmSo6Zhn2e/
        TXDh68P/t2Yd95qSTdQ2xFg=
X-Google-Smtp-Source: ABdhPJzZrNmeJva9My1Ce37H9g/E6W9zJBbZVE7ltHdVsosgqKXvzBreno/e5SGlWPjB0PEa3EXyPg==
X-Received: by 2002:adf:a41d:: with SMTP id d29mr5236127wra.297.1628490992210;
        Sun, 08 Aug 2021 23:36:32 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id m39sm558408wms.10.2021.08.08.23.36.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 23:36:31 -0700 (PDT)
Subject: Re: [PATCH 03/23] sigaction.2: Apply minor tweaks to Peter's patch
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Peter Collingbourne <pcc@google.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-4-alx.manpages@gmail.com>
 <767c4b00-be87-fda2-dd86-13d2433bbdc8@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <321af872-5149-ccb5-f822-215c1aab0e37@gmail.com>
Date:   Mon, 9 Aug 2021 08:36:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <767c4b00-be87-fda2-dd86-13d2433bbdc8@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 8/9/21 2:34 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 8/8/21 10:41 AM, Alejandro Colomar wrote:
>> - Move example program to a new EXAMPLES section
> 
> Not a big thing, but perhaps it would have been nicer to have
> two patches, the first doing the pieces below, and the second
> doing the step above. That would enable me to more easily see
> what changes you made below. But, I am not sure; maybe that
> is more work than is justified...

If you haven't pushed yet, you can drop it and I'll break it into two :)

Not so much work:  I could write a commit with a simple move, and then 
checkout the file from the old commit, and commit the difference into a 
second commit.

But I see you already pushed.

> All looks good. I also had some additional fixes (2 patches). See below.

Those 2 look good to me too.

Cheers,

Alex



-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
