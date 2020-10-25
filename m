Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9259298112
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:46:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414933AbgJYJqy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:46:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414916AbgJYJqy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:46:54 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0F39C0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:46:53 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id dg9so6231284edb.12
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2ZpHECCrFQGxiyCvhxElUGy1CfpbwkgLrdToPyOJH4w=;
        b=smWTGFB787Thcv6PusIqEYSG7LL6CGVkThl3VMo2tJAXSEprfIi8aGqEr/b6H4JWFM
         bD69HShhoyGBLSlWlvPkCsE3QDXBJaqnxa/o/bDvrKbkgEOL02lkWuJqu7d1nL0VzK6/
         Q2NwAJgHmidqW85w4D00x8FVcGx8lH9FCkty7U7/og0bqw47smE0uo1Vz7X1FaKYzYBR
         DAi8ItZKPC814NXhPIcWh2ZW71Kh9qy8EmA/C8JC4ap4RQQkYD9yIVn/Qn4BWFde4nzn
         Q3VvCQITtfmPA1+LtQFz5fr1peDNSHKxOj+TnrFfHZgPRUckZjhVW7JkcpFFTwGMHy1J
         UgAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2ZpHECCrFQGxiyCvhxElUGy1CfpbwkgLrdToPyOJH4w=;
        b=F0twcyhl25NHDmrZGUM0WD6G4y8ivx6r6bJbJ3zL0PkYvSsqItbBYijYKlAmtpfhv2
         PBhJx6ABvkGLaPuIQOHPmz51E43q1u9tqWJyMPe2lPtMnXrIinMNMt7u/yzFlCUrRrTb
         pouw4YPWdGgC1eVTLpYo7EoAliguQdEijOPTFxG31CYhxv1b4O0pFjbW7hJk77VnlXst
         nmFz484GIbuctc9DfOZ6SLXfPFYAC6mK3jxm9TCIPLE52tI8xzY0qyJ0FFRa+ti5nZvG
         L70eZWbNqEQk+g8IVGnHDrhHKU9YWB82V9J12BxKxTPHWDXkmVqnpnKGsKSxKShP7wD8
         xITw==
X-Gm-Message-State: AOAM530mhVZdM3Osn3IYZgb8QQEjUzUBZe2czJ9XB+shSDlgfXCeTRVT
        LBAY8jdWNUo4llTQDSOO4QZS/9xvQ1g=
X-Google-Smtp-Source: ABdhPJzoVAstlwOmSBUKqxxajbFg6R0FnIbfxERfsNWKyDyC+oWetums42fAo3VkVghw+Cyo0qS1Yw==
X-Received: by 2002:aa7:d58f:: with SMTP id r15mr10496058edq.381.1603619212583;
        Sun, 25 Oct 2020 02:46:52 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id mh2sm3659539ejb.30.2020.10.25.02.46.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 02:46:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 00/10] tailq.3: fork from queue.3
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201025093651.4616-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f15fc80b-b59b-70df-3fa4-4e3b634eab85@gmail.com>
Date:   Sun, 25 Oct 2020 10:46:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201025093651.4616-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/25/20 10:36 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> The last page is here :)

Yay!! Patch applied.

I have now 238 commits from you for the next release!

Thanks,

Michael

> Alejandro Colomar (10):
>   tailq.3: New page that will hold the (tailq) contents of queue.3
>   queue.3, tailq.3: NAME: Move code from queue.3 to tailq.3
>   queue.3, tailq.3: SYNOPSIS: Move code from queue.3 to tailq.3
>   queue.3, tailq.3: DESCRIPTION: Move code from queue.3 to tailq.3
>   queue.3, tailq.3: EXAMPLES: Move code from queue.3 to tailq.3
>   tailq.3: Copy and adapt code from queue.3
>   tailq.3: ffix: Use man markup
>   tailq.3: Add remaining details to complete the page
>   TAILQ_CONCAT.3, TAILQ_EMPTY.3, TAILQ_ENTRY.3, TAILQ_FIRST.3,
>     TAILQ_FOREACH.3, TAILQ_FOREACH_REVERSE.3, TAILQ_HEAD.3,
>     TAILQ_HEAD_INITIALIZER.3, TAILQ_INIT.3, TAILQ_INSERT_AFTER.3,
>     TAILQ_INSERT_BEFORE.3, TAILQ_INSERT_HEAD.3, TAILQ_INSERT_TAIL.3,
>     TAILQ_LAST.3, TAILQ_NEXT.3, TAILQ_PREV.3, TAILQ_REMOVE.3,
>     TAILQ_SWAP.3: Link to the new tailq(3) page instead of queue(3)
>   queue.3: SEE ALSO: Add tailq(3)
> 
>  man3/TAILQ_CONCAT.3           |   2 +-
>  man3/TAILQ_EMPTY.3            |   2 +-
>  man3/TAILQ_ENTRY.3            |   2 +-
>  man3/TAILQ_FIRST.3            |   2 +-
>  man3/TAILQ_FOREACH.3          |   2 +-
>  man3/TAILQ_FOREACH_REVERSE.3  |   2 +-
>  man3/TAILQ_HEAD.3             |   2 +-
>  man3/TAILQ_HEAD_INITIALIZER.3 |   2 +-
>  man3/TAILQ_INIT.3             |   2 +-
>  man3/TAILQ_INSERT_AFTER.3     |   2 +-
>  man3/TAILQ_INSERT_BEFORE.3    |   2 +-
>  man3/TAILQ_INSERT_HEAD.3      |   2 +-
>  man3/TAILQ_INSERT_TAIL.3      |   2 +-
>  man3/TAILQ_LAST.3             |   2 +-
>  man3/TAILQ_NEXT.3             |   2 +-
>  man3/TAILQ_PREV.3             |   2 +-
>  man3/TAILQ_REMOVE.3           |   2 +-
>  man3/TAILQ_SWAP.3             |   2 +-
>  man3/queue.3                  | 343 +-------------------------
>  man3/tailq.3                  | 437 ++++++++++++++++++++++++++++++++++
>  20 files changed, 456 insertions(+), 360 deletions(-)
>  create mode 100644 man3/tailq.3
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
