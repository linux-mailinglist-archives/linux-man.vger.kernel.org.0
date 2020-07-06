Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7A6C2155BC
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728422AbgGFKl5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:41:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728414AbgGFKl4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:41:56 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66F2EC061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 03:41:56 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z15so28982058wrl.8
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 03:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ndqbO5D09tSW+CP18c10QosrZgdZusi0AHf21Y/aedM=;
        b=PTb3pxwXTsTsCYPq97RM/7Jfnc7Wc25XXeJ8NPQTpN3S5ES9c7QnSriY6i7b9zPNNg
         Wtnx2f/Rjj+4RDUNO/wr3Xbeul2X0hZoanljypMMZIJzwfJ79lfX6R7IiJsaIBLTt2It
         qkx/6E8jaHWgN03wZNlcr54BBtBYI5JxmC1qSDJyyLT2VGRBLYJfZBn+XO6ajo9hq5cK
         HKBUMJLiMb7foeoykRkAwPmqbqNhoKq6V30bNfBChJFRyTL8p9huZWfzl75Lprkzbjnl
         Oco+kQ6DqOlxg5NG0inYAIDPRA/odBaWg69Pm+YcOOPAsQB3s3j+CP6j3xElqvgVQiX5
         xhWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ndqbO5D09tSW+CP18c10QosrZgdZusi0AHf21Y/aedM=;
        b=udh7b7maejng9flaUgRTJFpCVl1S/GcIFpiqGEGhOMhWY9tY5LYtMCDcLAqnYEdRsK
         4us9uht44kVqk4Th0RbhnxRfDc6LioqZLO6PZVm00ezrn0CvD6ZWV/FuQQAGnEVnYWXW
         tf7vasfTk5osMn+XRJSBk3ms3ZmNhDCFnS5iC5fqF6Cjd50iM6hSexhzoys+JTdYOQCc
         9W9StizzHSWr12wOVkL9sLOFwPpOhMs49mlT7GdUXEaLZx2kph4Kw0rSNGrl9jborOTL
         vqJIXwsES1gdg/DS5NSEgG2uiX4lfegKTtjMkqbpW+UUsYbCPhVyJecEG8UyZGUF9EoD
         QEhg==
X-Gm-Message-State: AOAM5303MlXDvfftnJ/eDLafsRkRhfqITRgyoJ/dU7k3QI+Q4d1vqGkX
        mH3iMtF6usTl5ZWAG0+45tb+SrSK
X-Google-Smtp-Source: ABdhPJw+kVSwVfQxVIMCmZJPjDLssQmOLT14dKluzKU+RUDM4w4+M5btlrMSEozwGWXgachNhLq03Q==
X-Received: by 2002:adf:f751:: with SMTP id z17mr50242729wrp.114.1594032114908;
        Mon, 06 Jul 2020 03:41:54 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id s15sm23445179wmj.41.2020.07.06.03.41.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 03:41:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, herer: mmap.2, spelling
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101431.GA26642@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <10d5d2e7-a89a-fc01-c0d5-d0e976f209c8@gmail.com>
Date:   Mon, 6 Jul 2020 12:41:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101431.GA26642@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:14 PM, Helge Kreutzmann wrote:
> Dear linux man page maintainer,
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including linux man
> pages) as well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometimes this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a
> convention not held up and sometimes we simply do not understand the
> original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once in a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to convert into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. If future reports
> should use another channel, please let me know.
> 
> **
> 
> Man page: mmap.2

I think you meant: mremap.2...

> Issue: Randolf → Randolph
> 
> "Your favorite text book on operating systems for more information on paged "
> "memory (e.g., I<Modern Operating Systems> by Andrew S.\\& Tanenbaum, "
> "I<Inside Linux> by Randolf Bentson, I<The Design of the UNIX Operating "
> "System> by Maurice J.\\& Bach)"


Nice catch! Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
