Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B64B52B3940
	for <lists+linux-man@lfdr.de>; Sun, 15 Nov 2020 21:55:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727622AbgKOUzA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Nov 2020 15:55:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727442AbgKOUy7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Nov 2020 15:54:59 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A278C0613CF
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 12:54:59 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id p22so22001043wmg.3
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 12:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jJneODbUPrX3HubPMnNvbRySuzVlAXBvR/2csHFGgew=;
        b=m6TiFUY/qABjwlt1hlqgJC+uhXosC6CIdmnzq5b96HAtO+hm6ABGNCbZBeSqEr9Nxe
         gAYGil/FPtutKYamPemDlozATrQx7fiH6Q94oEwMsY5plHbK3/4Fr700pv7nRkNHM1XF
         8hdYgD555ekbNONiHs79B5UuBBvsgZoSptRVoeIaFcPVNlPZWCRDOZ/r/ttol/3d1Oly
         O9jhXwRRuL/cqGFPggmDMLbeWjufSo9/p7n+gsk4iw2oW4qvQmbovM5YRWd9TY6tI/6F
         QDvUFUspvPxo/UJOHXCgBy2+cfg4ZovjI63kjlboeFy8kpIeqAt2Ko32BrBl/NG0ZacN
         g7HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jJneODbUPrX3HubPMnNvbRySuzVlAXBvR/2csHFGgew=;
        b=c2Fb5pnfZJpnzcenxwuNQfrK5jXqKRmxEp3/oRc4wbZJp5C58Nrw5DKf6e6mDgfkZv
         o9J59UeIZzHce3B7T0F+MxujZUyYKv/0k6SDP6F1vLyfZlvflwtZAZBcWvX7j0w+E67L
         5XTxAIk6pbK1kvrSlrl8Zho1IP12mFITbWEmvQ7yX9NyfJpD7Zy79vb6NXylNtfhqGY6
         bSBfxCDKa7nEp+hHnDP9K1bXgy/EP0LbBRcBAgiJ+61RKpyXxw6SgNoP3njsj4+IQ1Ir
         pn/Rjaf2D/NzV7Yzm9MYU7uVVjtDzvt0nCkY+0uBa3hOlfupalo/7hS6OBy8w0Sm4vU/
         knPg==
X-Gm-Message-State: AOAM532pcQ3qjfJLQqwfnwC5t8wd8ly802tVqm6muU7pEk/FbkYSInnx
        3HXgDuW8yAZGaW80tXECqoU=
X-Google-Smtp-Source: ABdhPJztnjxPv9Z/0DVOoMTYpz5lAaWHxOcd5/BZ1VwRhgih4lqtK7GK5mLjkOygb6+COWmyt7dL8g==
X-Received: by 2002:a1c:7e11:: with SMTP id z17mr12843350wmc.83.1605473697374;
        Sun, 15 Nov 2020 12:54:57 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id p10sm20205459wre.2.2020.11.15.12.54.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 12:54:56 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        g.branden.robinson@gmail.com
Subject: Re: [RFC] memusage.1, uri.7, user-keyring.7, user-session-keyring.7,
 ld.so.8, tzselect.8: srcfix: Replace \f markup by .
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201115165256.497403-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <accea029-e467-4928-af40-d4cc1bc0be21@gmail.com>
Date:   Sun, 15 Nov 2020 21:54:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201115165256.497403-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

Briefly...

> And I also found a few weird files (such as zic.8 and zdump.8).
> Where do those come from?
> I'll try to rewrite them using man(7) markup.

Stop!! These pages are special. They are periodically imported from 
the tz project. It's an odd situation. Glibc imports these tools
from the tz project, but does not release manual pages. So,
periodically (when Paul Eggert reminds me), I resync the pages from
the tz project. In general, I try to just leave them alone (although
I have suggested a few fixes upstream to Paul), although I see
I have touched some of those pages in global edits.

> In the meantime,
> I would also have to omit those files from the input to the script.
> Do you have a list of such files?

AFAIR, the only other special page is bpf-helpers.7, which
is generated from the kernel source files using scripts.
Every few months, I try to remember to run the scripts
to resync.

Thanks,

Michael
