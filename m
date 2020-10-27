Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44B8829A52F
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 08:05:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2507280AbgJ0HFg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 03:05:36 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:52868 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390236AbgJ0HFg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 03:05:36 -0400
Received: by mail-wm1-f65.google.com with SMTP id c194so302386wme.2
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 00:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0Uzi3RvXZDdd/vEOArqhL4/rMcsMRvXi+9GkyM30so8=;
        b=SxaK+ZeInnKzLmeGOydI0kt9GYmAFn9l50XfKN+oxTu55BDjv3edWvMsth1f5NXIJs
         Q1bQXDygcn6a1RKmVmgOI8OBBfi40qQXII5EtuJZFzB1XZrB5maBMpz3KENJdcjsWe8t
         NwD/G6gZGd1jgnayBnJuFVYMcbzIB7QqxgblsFzxTpWSiDf9tnLo18msOKjX2viaa1K1
         VxWU7Cc8XtZDrLF5X4rM+uMTubw1iP8fgKkEWLdwovgXPMLcAJKxYD6RFXBe96eMtBbK
         Kk0ApbKkGamaeB3YQ2h08wi/GMpnQ5iyIx5/rP7JfSD49LoIPLNYKhcNcKGK/Y3JzAgT
         PUUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0Uzi3RvXZDdd/vEOArqhL4/rMcsMRvXi+9GkyM30so8=;
        b=ovHoim3mR2s7s2EQw/K9f+yf0DZexwfW5iQv6ofX9V4BUpmREJSIwQNDR0DXTzsfBA
         WYyWGU1jAVisFlVUgjuIKZMNPT0Ub4mouCf7nt4LgnR1GMGKTeWnV29gvtDZ1vjhWHku
         e3YZsqeJAuHlwARdqeZ9//O2YcBYSO9msarM6P8DnD5dKvtjY16mCFZp+5Bapl1Ct/k7
         ilQewxq3uLX8UxH/f3U+nKP7LqEgPu8d0u4TSfcA/wRJgXJmLn6hKYz8QdCOVj6U+3g4
         ZUlvtJH1m+HefvT5Ljh/iq9Kccr+zwCa6Fsw2vy8ZZRfogUMSFGuAB76OGYHmAsEfGv9
         C9+Q==
X-Gm-Message-State: AOAM530aiGnlHPZY+4ul/YoUA3u7Yrst4IAO/DZWNtpe521I8kPPib+p
        grxuNJj/54BkJvP93KEw7II=
X-Google-Smtp-Source: ABdhPJwjBGvn6y57kqTcEM6MKExa+3rO1678y48C5X9yLu++T6iR3qbIGJ7GEqTTN7cExri1njk9ow==
X-Received: by 2002:a1c:cc07:: with SMTP id h7mr1078946wmb.55.1603782334422;
        Tue, 27 Oct 2020 00:05:34 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id y2sm823787wrh.0.2020.10.27.00.05.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 00:05:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Linux-MM <linux-mm@kvack.org>,
        Mark Mossberg <mark.mossberg@gmail.com>
Subject: Re: [PATCH] proc.5: Document inaccurate RSS due to SPLIT_RSS_COUNTING
To:     Jann Horn <jannh@google.com>
References: <20201012114940.1317510-1-jannh@google.com>
 <CAG48ez17=x9eHLGR-Uyx3xsVJv3W=4WsTs3HG5Fam5UP=CWXbQ@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0a090c14-6b70-4284-bb2d-4fbfd1146aaf@gmail.com>
Date:   Tue, 27 Oct 2020 08:05:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAG48ez17=x9eHLGR-Uyx3xsVJv3W=4WsTs3HG5Fam5UP=CWXbQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jann,

On 10/12/20 4:52 PM, Jann Horn wrote:
> On Mon, Oct 12, 2020 at 1:49 PM Jann Horn <jannh@google.com> wrote:
>> Since 34e55232e59f7b19050267a05ff1226e5cd122a5 (introduced back in
>> v2.6.34), Linux uses per-thread RSS counters to reduce cache contention on
>> the per-mm counters. With a 4K page size, that means that you can end up
>> with the counters off by up to 252KiB per thread.
> 
> Actually, as Mark Mossberg pointed out to me off-thread, the counters
> can actually be off by many times more... 

So, does your patch to proc.5 need tweaking, or can I just apply as is?

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
