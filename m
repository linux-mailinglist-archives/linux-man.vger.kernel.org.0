Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3599232AAF
	for <lists+linux-man@lfdr.de>; Thu, 30 Jul 2020 06:06:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725974AbgG3EG5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Jul 2020 00:06:57 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:53553 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725765AbgG3EG4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Jul 2020 00:06:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1596082015;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ri58RVc8xyj7uh9XWX5WNOKYK8sDjejsiXuDfIp8fXQ=;
        b=ZJqi77qS9kWDyUzFkn44fMFkHEByfHb1Zh5qMJv0A5mj4oBUxHcVL2g1XlrqHJ/WxS4jRf
        NL1L2XrWIdTIFuiHqOBR4ceULEYmrUC7CxBgefp9Ry1NpPZWFQHW66OmbNhzObvrdygWaa
        o4FD+vblZbH/KDEJfJvZiP9lH54pGMg=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-xmXK_0xmN7arr9D7KByNQQ-1; Thu, 30 Jul 2020 00:06:52 -0400
X-MC-Unique: xmXK_0xmN7arr9D7KByNQQ-1
Received: by mail-qv1-f72.google.com with SMTP id q4so9718961qvu.6
        for <linux-man@vger.kernel.org>; Wed, 29 Jul 2020 21:06:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=ri58RVc8xyj7uh9XWX5WNOKYK8sDjejsiXuDfIp8fXQ=;
        b=Da7IWavcCdMe/tkkHwhFYLgAo1GKp4Gre7/XodFcA1L0h/v67sKYJTw4YTrfGWX6s6
         JFtBZ4UjqpO61XpeattUGmr6uLB+D3lQ7mvZb4kDtFS6Gt0YvZMhsOXUTqILzEK1fdUI
         RysfO8hHKpKHI/v2omopyradksRPS5aeq1xy+MUrdpaR9ypM9f8598BHT4aT4tL7HisS
         a7NII5dfd5RAfua8J5x9iAMxYRh6I565Rdg/TnCHbawngVDKJkjs3JFxaKulaE+qiHM0
         qlEzlzcndUUr4YqQKdbwv2YP6pygn3EYfQ11t5fNjXAOCh3yyB/V0bL1/l7tNRNEKg8o
         YBqg==
X-Gm-Message-State: AOAM532wesABNjFX7LZXafU2KakcMqZPjetN37ocgo0cvfBMNDJsiyEB
        oMtdeDUx1OkrAMOD7Qy/IrWAQN4xRVlEr/X9/OTVKfe7TbSKnbA0Vm8hfp8Pw5ipHeR1gpmAmC+
        dyRQicpuM8SZ/u8ujyfks
X-Received: by 2002:ae9:e882:: with SMTP id a124mr35490477qkg.24.1596082012217;
        Wed, 29 Jul 2020 21:06:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxKTIcKS6nwYMjRZVlXBM47wRBsXxz9PRvZjroxNvygmR83NWvkBHxyhfNA9IcK5tQsiby9+w==
X-Received: by 2002:ae9:e882:: with SMTP id a124mr35490460qkg.24.1596082011948;
        Wed, 29 Jul 2020 21:06:51 -0700 (PDT)
Received: from [192.168.1.16] (198-84-214-74.cpe.teksavvy.com. [198.84.214.74])
        by smtp.gmail.com with ESMTPSA id 94sm3592209qtc.88.2020.07.29.21.06.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 21:06:51 -0700 (PDT)
Subject: Re: [RFC PATCH] Replacing "master-slave" terminology for
 pseudoterminals
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>, enh <enh@google.com>,
        Zack Weinberg <zackw@panix.com>
Cc:     Florian Weimer <fweimer@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Joseph Myers <joseph@codesourcery.com>,
        Linux API <linux-api@vger.kernel.org>
References: <b3b4cf95-5eaa-0b4e-34cc-1a855e7148b6@gmail.com>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
Message-ID: <88273c2f-ce21-db54-688d-5bebd4a81ecd@redhat.com>
Date:   Thu, 30 Jul 2020 00:06:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b3b4cf95-5eaa-0b4e-34cc-1a855e7148b6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/29/20 6:39 AM, Michael Kerrisk (man-pages) wrote:
> As per some discussion on libc-alpha [1], many of us are interested in
> finding a replacement for the problemantic master-slave terminology
> used in the description of pseudoterminals.
> 
> Elliot Hughes (enh@) suggested a replacement based on an idea from 
> an analogous change in the golang libraries, and I've taken a shot 
> at implementing that idea in a branch [2] of man-pages. The affected
> pages are:
> 
>  man2/ioctl_tty.2    | 23 +++++++++++--------
>  man2/poll.2         |  3 ++-
>  man3/getpt.3        |  2 +-
>  man3/grantpt.3      | 17 +++++++-------
>  man3/openpty.3      | 35 ++++++++++++++++------------
>  man3/posix_openpt.3 | 10 ++++----
>  man3/ptsname.3      | 10 ++++----
>  man3/ttyname.3      |  2 +-
>  man3/unlockpt.3     | 11 +++++----
>  man4/pts.4          | 26 ++++++++++++---------
>  man7/pty.7          | 65 +++++++++++++++++++++++++++-------------------------
>  11 files changed, 112 insertions(+), 92 deletions(-)
> 
> Eventually, I think we should take this discussion also to the 
> mailing list, and also see if we can raise this within the POSIX 
> committee. But let's see if we can fist off find some terminology
> that seems agreeable.
> 
> I've added the full patch below. I am myself still reflecting on 
> the change. At times, the language feels a little clunky, but overall
> I don't hate the result. I welcome comments from all, and especially
> I'd be interested in feedback from Elliot and from Zack, who was 
> planning to work on this issue in the glibc documentation.

Overall I agree with Elliott that the changes are positive and make the
pages clearer. In some case I find the verbosity slightly longer than
I would want for reading in English. Since I have an EE background I also
find multiplexer more natural, but I got lost down the "agent noun from
a verb" rabbit hole and I agree with either position.

-- 
Cheers,
Carlos.

