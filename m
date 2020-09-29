Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD0FB27CB19
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 14:24:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729865AbgI2MYq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 08:24:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729826AbgI2MY3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 08:24:29 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8C50C061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 05:24:28 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id c18so5140022wrm.9
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 05:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ODcpmbF7LcqJ/4Uk6LuZELIVtudhbacDnbSYnim+4jg=;
        b=KP1DCsba04CBxKvJFsZqh9J6NC3/iZhBIlDTrkRbygh+vwNseJVjgb1RHPjf6eaLIt
         62p3oVGE5IjXi+PVlhvE+eTBvtLR6vsAtpwdRPxYx75bvhenzImCbVUgfsvT66fjBtdd
         JCECV2zpAZJ8kqlhLhuSqlMFIMqCzRaYypWVksfUmnjPlgDLM9Y1DlLJ/QNuGgh0aYDz
         74Gc/2O1+s85r48hMDGs72mBPhxdYFCe2vzJcR/FAHBTk9uP6+UGZGm+/lAXWSoA3ejH
         5chifUppQjbL6qx7IRrVRqtys4XkuW1BaK//fL6r6TIzELnQSALj0mVyHMeJBnAUPp3e
         Jp4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ODcpmbF7LcqJ/4Uk6LuZELIVtudhbacDnbSYnim+4jg=;
        b=DtZJl0pllgKHqKyXkCP7j16sW1cAIuIB9Y3xyLbKh9YDxTxcFHUM8dKZJC6CiPZLIy
         YSVfpPLR+EaFbTUUxcNY9/kkyH89Pb09pFgV2eY/5vk0/aRuHTo2w6FoAQXS5AVmFiqC
         D4+1P3Y0DZUYs9ELcL2056v8i0TjtLqVdIhQHX2O6X1gnm7uHZxXKabIdbeCYZRHRtr0
         AmpGXuCtRySichW5jPIUmf/l563o+aETSgNEWvvGx4+04H89+6Jr2d8XCkJ6z1iAem0o
         JYzqS2R2RuBpuYAI0qH4H+raPQbK2TxwDOHHPhod9aT/sKjz7omYlUn7TXj+Z8H2ZdqU
         T/fw==
X-Gm-Message-State: AOAM532WuS9/DDro2OcdonSA4FgHz7/lNe7ryigZc3G2qRxjAc1sXs6I
        xGLZTOGaOdoZk+cNkMm75U8=
X-Google-Smtp-Source: ABdhPJy1kJBVlBmzy44xRNHi9NPO8p0Mo3B/KOBJR6OpixP2t+D+BfTjc+4WLB2TA7ZLKS88yfA7Xg==
X-Received: by 2002:adf:f7ca:: with SMTP id a10mr3957339wrq.321.1601382267482;
        Tue, 29 Sep 2020 05:24:27 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id m3sm5995362wrs.83.2020.09.29.05.24.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 05:24:26 -0700 (PDT)
Subject: Re: [PATCH 0/8] Add some <stdint.h> types
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        gcc@gcc.gnu.org
References: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
 <CAKgNAkiicqXrCMnr=DbLdFO27yg307wdrMh=QmQu2r2TPZfkuA@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <60b619af-f7e1-2a80-ade1-50fef33c83b6@gmail.com>
Date:   Tue, 29 Sep 2020 14:24:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkiicqXrCMnr=DbLdFO27yg307wdrMh=QmQu2r2TPZfkuA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-29 13:50, Michael Kerrisk (man-pages) wrote:
 > Hi Alex
 >
 > On Tue, 29 Sep 2020 at 10:26, Alejandro Colomar 
<colomar.6.4.3@gmail.com> wrote:
 >>
 >> Hi Michael,
 >>
 >> I started with <stdint.h> types.
 >
 > Good. I wanted those the other day :-), but then I saw they weren't in
 > the page yet!

They were complicated, so I left them for when the page was a bit more
mature :-)

 >
 >> I joined them by groups:
 >> intN_t instead of having an entry for each int8_t, int16_t, ...
 >> I think that way I could better explain the types, common things,
 >> differences, and exceptions.
 >
 > Yes, I think that's a good approach.

Good.

 >
 >> I'll wait until you review them to write about the remaining <stdint.h>
 >> types: [u]int_leastN_t, [u]int_fastN_t, and [u]intptr_t.
 >
 > Although the patch at
 > 
https://lore.kernel.org/linux-man/20200928151646.20271-1-colomar.6.4.3@gmail.com/
 > doesn't apply (can you send me a revision please), and even though
 > these patches employ the "Include/Alternatively" form, I've applied
 > them. (Everything is now pushed.)

I had the following commit history.

I'll rebase again anyway and check what is pending, etc,
and fix anything that broke.

* 736f143b4 - Tue, 29 Sep 2020 10:05:33 +0200 (3 hours ago) (origin/alx, 
origin/HEAD, alx)
|           uint8_t.3, uint16_t.3, uint32_t.3, uint64_t.3, uintN_t.3: 
New links to system_data_types(7) - Alejandro Colomar
* 3afc79ba6 - Tue, 29 Sep 2020 10:04:26 +0200 (3 hours ago)
|           system_data_types.7: Add uintN_t family of types - Alejandro 
Colomar
* 3e317d073 - Tue, 29 Sep 2020 10:03:37 +0200 (3 hours ago)
|           int8_t.3, int16_t.3, int32_t.3, int64_t.3, intN_t.3: New 
links to system_data_types(7) - Alejandro Colomar
* 46f64d53c - Tue, 29 Sep 2020 10:01:52 +0200 (3 hours ago)
|           system_data_types.7: Add intN_t family of types - Alejandro 
Colomar
* 30f375485 - Tue, 29 Sep 2020 10:00:27 +0200 (3 hours ago)
|           uintmax_t.3: New link to system_data_types(7) - Alejandro 
Colomar
* 1c95c8701 - Tue, 29 Sep 2020 10:00:02 +0200 (3 hours ago)
|           system_data_types.7: Add 'uintmax_t' - Alejandro Colomar
* 8b1faa88d - Tue, 29 Sep 2020 09:58:08 +0200 (3 hours ago)
|           intmax_t.3: New link to system_data_types(7) - Alejandro Colomar
* 0beb4210b - Tue, 29 Sep 2020 09:57:31 +0200 (3 hours ago)
|           system_data_types.7: Add 'intmax_t' - Alejandro Colomar
* 40b39dc1f - Mon, 28 Sep 2020 17:08:46 +0200 (20 hours ago)
|           system_data_types.7: wfix + ffix - Alejandro Colomar
* 4cefd8302 - Sun, 27 Sep 2020 23:11:43 +0200 (2 days ago)
|           FILE.3: New link to system_data_types(7) - Alejandro Colomar
* a65f25603 - Sun, 27 Sep 2020 23:10:36 +0200 (2 days ago)
|           system_data_types.7: Add 'FILE' - Alejandro Colomar
* 9cdd2e051 - Sun, 27 Sep 2020 23:13:43 +0200 (2 days ago) 
(upstream/master, master)
|           system_data_types.7: ffix - Alejandro Colomar

 >
 > Thanks,
 >
 > Michael
 >

Thanks,

Alex

