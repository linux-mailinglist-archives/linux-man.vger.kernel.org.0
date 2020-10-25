Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 305F62980F0
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:13:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414735AbgJYJNf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:13:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389337AbgJYJNd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:13:33 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80219C0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:13:28 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id dn5so6196647edb.10
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cCl0FuNt+VDw6+LehcbD4ReBHMAvAmhi79fpWyVgHa0=;
        b=iCDJfB3iSoChoew9iDt9GS1vOH+HJE4pGB5esEUG0RGFWTd1Mr6NXna9b32K3oxHKi
         WmNVyJOJ9QEcPFTLZL8RqyhNQqewe6t2CJxRAZptAS3Pw6mNTsQP+jyIAge82DvueYmn
         OPHQXe/9NTNb2bt8f5BRVsHXoUMJysiLwinOq1jm3k7m8XHxjSibVUfcO32rtM6iJMeD
         rr+KZ7Wpz/6zAZn+9YACGlpX9mXffumdLxL6mKjZDEuQ9rqSyR0wZUl1A+Jhn6UvG+p9
         nfG05DLbRRsQCpuOSj4RSdciT+AWAehbMfecqD3cy04Vz2TXwfIC6fs+4YghK+W7r9Xk
         LGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cCl0FuNt+VDw6+LehcbD4ReBHMAvAmhi79fpWyVgHa0=;
        b=UjX2QYqmvrgK8rHrJwOOP5J7e+dQbqX0qObY+Gm/AYWZiZ0FACmWAt1bugvJond4K1
         VLCNLrW5r2rEFnw9/qVOgb6XHArHJWxB/qWquQdWcJUwIGm8VAkcPb2+CA8LN43PPsos
         HGT06xw0BQlwVkh/uksSLJDuJwU6W/43wBAncTxjRiqlPjCZPNllpYI+BcpgadBs+vVx
         XSL8YvslS91Stxg+OGHPb/bamppqs1+Ike0bo/9xj9M/o+x4FOO8LsQOns4C6CZ5DKoK
         hGfmS1Xq6P4TkUaxi0q5Ds1ko0j2qv14+d4colrJbqHdczEW9Um9bZbce0oIZhc6c9LD
         GqDA==
X-Gm-Message-State: AOAM532HaLcPjq3wCq64W9AwDZRidoCmRfsqTMzNyBkckqbC/yXlAmBH
        9AOxBe7rBJsWJt+bWvtJ+dg=
X-Google-Smtp-Source: ABdhPJwkxcLVDZ4zNd0usjpirQSjSq+5511QN1pF5lCP0iu7g3qbS1dkVs8NvUolylM1fhVxQtLn7A==
X-Received: by 2002:a50:9e82:: with SMTP id a2mr10350956edf.117.1603617207039;
        Sun, 25 Oct 2020 02:13:27 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id u26sm3278418edt.39.2020.10.25.02.13.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 02:13:26 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 0/8] stailq.3
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201024222115.6362-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3cf3ba82-cca3-7b01-3874-e374f40eb830@gmail.com>
Date:   Sun, 25 Oct 2020 10:13:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201024222115.6362-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/25/20 12:21 AM, Alejandro Colomar wrote:
> Hi Michael,

Thanks! I've merged and pushed this series of patches.

> It's almost done.

Yup!

> I'm thinking about what to do with queue.3.
> You can see its current contents in my branch 'queue'.
> Do you have any suggestions for it?

How about:

====

Change

[[
These macros define and operate...
]]

to:

[[
The <sys/queue.h> header file provides a set of 
macros that define and operate...
]]

====

Split up the remainder of the DESCRIPTION using subsections:

[[
.SS Singly-linked lists (SLIST)
Singly-linked lists are the simplest
and support only the above functionality.
...
For further details, see
.BR slist (3).
...
]]

Would that be workable?

====

Rather than writing your lists as:

[[
.TP
-
Insertion of a new entry at the head of the list.
.TP
-
Insertion of a new entry after any element in the list.
...
]]

I'd prefer:

[[
.IP * 3
Insertion of a new entry at the head of the list.
.IP *
Insertion of a new entry after any element in the list.
...
]]

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
