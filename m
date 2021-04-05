Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C84E3541D9
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:50:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237041AbhDELum (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:50:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235438AbhDELum (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:50:42 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79CBDC061756;
        Mon,  5 Apr 2021 04:50:36 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id ap14so16498655ejc.0;
        Mon, 05 Apr 2021 04:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HDc06TXRZz6iT2prsg6SqhlvlXBakTlGgShoP1ZWD7A=;
        b=oJyiNJPibQVsUQJK5yL3M0rRUvBQqyufzDicChoo1SOfSTl4nv/bbj4BOQePOb/3sy
         MsQaEj2WuCvYwYRJSM4Gw1czh+5zd+1Ae4dY7h1e6Sx7ufqkLNEpEDNaGd8iu1cDriAN
         iow8k5LE40hOvrc+XwSi9F9/kHW16/YQg+vliq5UZqv/BFZfs5bmOaKPWTXqR9bDDokR
         RDpR8IM9C8JIXniqTJP8/OTnZDJCm+uc1XlkrqtKjTRExLzEM4AQU8YoQCXiyCmdiqaI
         XRPFd1N2rLcr5NyGosWBF8qsRLMESiNWAAaf1xaxkXy2VsAqkW/WarAeAGizruLiZYUj
         Pb/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HDc06TXRZz6iT2prsg6SqhlvlXBakTlGgShoP1ZWD7A=;
        b=oBEmdqxuF7CO9FV38rNM6Z+d6YHpNFkf8MfGAbeXMs3oI6haE2UO7splTj0uZBRiY4
         a8iZIlRvq0h1PkSTAX5sTsn3JcWftc+9yG6Ynx4irTPex2Lgh61Pdpp9WV/GIH2wypmN
         Ld4+txzPHgra0clk7dmHWEXMOEHVqF9iPR7n8j98odTlD9jofHpQgRr1m9pldJUcRLsE
         k/+d6vOAq6rnJO3+FUGxMR8jLRXJt7NwxiIAbTiTskIze1deRdy3Rz3oJZHVJN2TAEvN
         vbets9eWR5zrRlFfeAjNM1MdMkfrAVwxmfe86ldvBh5h57B+p/di0l4zsZzAGIZyQLmY
         zR5Q==
X-Gm-Message-State: AOAM533wTRSkqBzJwbj7meFh35jGtsq6hno8Zo3ta3H8c1fVgluTDjf6
        q5H/okuqYpQHvPyezNFAf0I=
X-Google-Smtp-Source: ABdhPJzk23k2wDpV20axj4RtQE1Rsz/6Nb9j26a1UWGvArx48/xyxA8EAGF2ZR3KgjjgER2PMlBCEA==
X-Received: by 2002:a17:906:8242:: with SMTP id f2mr10624939ejx.478.1617623435263;
        Mon, 05 Apr 2021 04:50:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id bm21sm8581469ejb.36.2021.04.05.04.50.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:50:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Axel Rasmussen <axelrasmussen@google.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v5 0/4] man2: udpate mm/userfaultfd manpages to latest
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Peter Xu <peterx@redhat.com>, linux-mm@kvack.org,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
References: <20210329221833.517923-1-peterx@redhat.com>
 <76f5d3a7-626e-563b-c1bd-d318a476a8ed@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <09da1b57-14c9-58f4-dd35-0b9aba2d944a@gmail.com>
Date:   Mon, 5 Apr 2021 13:50:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <76f5d3a7-626e-563b-c1bd-d318a476a8ed@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

> I applied all 4 patches (with a few minor fixes to 1/4 and 4/4 (cosmetic 
> fixes; some of them about the 80-col right margin)): 
> <https://github.com/alejandro-colomar/man-pages/tree/eb8f2001d493d458d08b9b87605ed2ac453c7f5f>

How big is your current queue of pending patches from others?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
