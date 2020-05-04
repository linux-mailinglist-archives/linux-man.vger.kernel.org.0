Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09D5B1C347F
	for <lists+linux-man@lfdr.de>; Mon,  4 May 2020 10:30:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727878AbgEDIaa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 May 2020 04:30:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727786AbgEDIaa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 May 2020 04:30:30 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1504EC061A0E
        for <linux-man@vger.kernel.org>; Mon,  4 May 2020 01:30:30 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id x4so7454320wmj.1
        for <linux-man@vger.kernel.org>; Mon, 04 May 2020 01:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=57RIBvnw692SJT6abItho2Xz2hC09SPu8jnu50cOLyY=;
        b=Jzdd19xA8dnD0sPIC4AnG3MeXHlT2bhJbJjNuKtVyI0z2DXF5QyHWLvK82xxQXOOxL
         s+jTiFYEnaoI3u4gXvsJFEKsf+HDQ4rkrqcanLYM1IqQzGzB4gajtij6uNLk2jmbzOYx
         Y5BwSK579uJFNXjExUZ2q9xNhTodTdCDUJ29arnODujmy1bImqPTrEhXH8eLpU59itAE
         nVUAQ9/J38GA/YghIpb1QTr6phGFlXuwSQ5brYSsDYcWm7bWxBsyg1ePBMdHXx3aWK2v
         3RRe7MsIgZnAOlqrh6XineC04m1VsbjnN4Qz/D0Tav232pXwfyms2PnnHvWsLhiuyque
         suwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=57RIBvnw692SJT6abItho2Xz2hC09SPu8jnu50cOLyY=;
        b=UTb2Av/xdPQCOWpllESKTNMfZT5ZIFz+QHy1WbarowVLYXdAXtrvHnBJ0RgD/QqiHw
         rdWyTvT7MZZ8+dTXCluZXurzQI40np5R0576ec9l4zhcmlj1NTkaKOXQCxHktfyIjL7J
         YxGbMZyocoAl3oHMk2nL9djyIaznkaHvUnVaNM85VvzGY6VDHGK77sLxYiAJ/N3gz60b
         SE266DkThK/DNhLltNLjnVfoiP1qqkCP1+mCwQAanVD2U6qG8fFhiWie82SYacxf4/rI
         oQ7Gv02/vbxxaH+WRkOJNfTDCF983Tvmi84RBekP20YvR/Z/5UMHBJHb1f/mXngZcK0L
         jrPA==
X-Gm-Message-State: AGi0Pub2JgnCj2VktnFX81VPG9BSFkm8sCUNxNPRCxgsLulMKYRaFsTF
        1+n60tfzpy/L+YrTU5pDnwqk3TAz
X-Google-Smtp-Source: APiQypKy5SsOOq/94Tm/0haEbCuUkGcTmClRnHdAKZONKOxRV/r8GdC/WjqtugmCTVfxhw4XFggkDQ==
X-Received: by 2002:a1c:4304:: with SMTP id q4mr14319825wma.152.1588581028645;
        Mon, 04 May 2020 01:30:28 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 145sm13036245wma.1.2020.05.04.01.30.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 01:30:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Typos in copy_file_range(2)
To:     Ricardo Castano <ricardo.castano.salinas@gmail.com>
References: <CAAhkZUtuvuPuzfnf74eOWB3PWGPUkXqz8nKOtjbz=Yow3JNbrg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c350ed41-d4c5-e601-d75b-099686754b7c@gmail.com>
Date:   Mon, 4 May 2020 10:30:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAAhkZUtuvuPuzfnf74eOWB3PWGPUkXqz8nKOtjbz=Yow3JNbrg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/2/20 4:07 AM, Ricardo Castano wrote:
> Hi,
> 
> In the man-page
> http://man7.org/linux/man-pages/man2/copy_file_range.2.html , there
> are 2 typos:
> file_in is used instead of fd_in in the ERRORS and NOTES sections.
> file_out is used instead of fd_out in the ERRORS section.

Thanks, Ricardo. Fixed!

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
