Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0907379F0E
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 07:19:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229900AbhEKFUc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 01:20:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229885AbhEKFUc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 01:20:32 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F5DEC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 22:19:25 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id a5so8183830pfa.11
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 22:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ziweCAGxOL7/B6+5L6TLBK9L7c5LxE3QifUd2Sqs7P4=;
        b=I9SBvrE0jDvzJltJUSBhvFdlIJOdOYS0NqKEbkU/60LY7O4Hmd2iXZACqqXY355wKh
         5u8DvHAEW/pB2/r2HVqzy6vIjRg9btDQ2CDxd2eshnOIaWTsz2z2NuCgd+ubex72GF5T
         Ed+CQ9xc6b/QRRL2r1r3j6MHTOANeSzQftrKh3/Epd1veNOzLw2fRf+rwAIzAinjFuQw
         3LOzuXt8Bt3HvY/8lekY9alNIXOkxGWz8bcrN2yOFDdIv5DSfMu7terHkCe3+yr//XIq
         f07rnu+YoY601pVRzs7y5kRR5Swo5xQxv4qSCGus3ZjbSCLlvu3+/pyML5SJZjDr/FqC
         JJRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ziweCAGxOL7/B6+5L6TLBK9L7c5LxE3QifUd2Sqs7P4=;
        b=g1L6rHRABAhGb7c+GTnblnhrojSIAtquB8NsH/7QwlKe/vZ4H5VFyICshD4hujtKBI
         Qpq5AF5m3n5yAzClWr9AOqFPbb/101t0lrH5Wx1mQ34dxgSYJxR894Eh0HXGMZ1q0BzP
         Nvgo/2QDOPLa38LyH7Bw71zG5jX5F57mVMopGwHIs3snasaVi0Wh/MUtHyMznFvTcDbS
         rtbguWTO57nokqzlsZskFxMRxcsyuUFZaGwhg7EroocK0q9A+HGEq5QvuNCIRmtK3Dge
         +FpW0YzvoQrBB4hs1D+Ihv0khOnchgrKBuIE4ejsAlEPcKqK8OW1QU6s+fRv9+gUASrD
         O2IA==
X-Gm-Message-State: AOAM532TT6WiKhptB+8CuJKwVsFytE/n73GmZa8RTz4fxKUJP7BWEU92
        +zw09UsivXGnZJ8GsUWW4I8=
X-Google-Smtp-Source: ABdhPJzKXikDuOBwh6M3Iv4nmLNDii41I0UTijzVTXsltg1OKjjNxDfgGu6n9RgKEYPrxXPpBsXRTA==
X-Received: by 2002:a05:6a00:8c8:b029:27f:40b3:8c5d with SMTP id s8-20020a056a0008c8b029027f40b38c5dmr29509327pfu.48.1620710364889;
        Mon, 10 May 2021 22:19:24 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id x4sm12684759pfr.160.2021.05.10.22.19.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 22:19:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Florian Weimer <fweimer@redhat.com>,
        Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 39/39] reboot.2: Use syscall(SYS_...); for system calls
 without a wrapper
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
 <20210510175546.28445-40-alx.manpages@gmail.com>
 <8dce0a25-ba60-9e84-3b33-3773b8cfe8b5@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5e297149-3678-b2b0-aa82-8fe472b94062@gmail.com>
Date:   Tue, 11 May 2021 17:19:20 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <8dce0a25-ba60-9e84-3b33-3773b8cfe8b5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/11/21 6:02 AM, Alejandro Colomar (man-pages) wrote:
> On 5/10/21 7:55 PM, Alejandro Colomar wrote:
>> Explain also why are headers needed.
> 
> s/are headers/headers are/

Done.


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
