Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 687061B0498
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:39:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725775AbgDTIjs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:39:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgDTIjs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:39:48 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABD9BC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:39:47 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id g12so10345240wmh.3
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Dq6UBr7A18leUh6sFeClrbY3WKxaqlnnWooLjpoy7QA=;
        b=WMe6nCsxQfUoWIR4bCIuvhriP8edfY3cgrfjBaUoZkbxhPs7c/bNisUlWwh2yE6azB
         wE/qV3zioNsrw2XxtrjxNTNyalcLDpHcobDB+pUDE7TY2eBIF4iHzJmtyyZL6Xk9Z1qx
         jx5SpNAZTsq23B27x5c2OOXtY5kCYu/t441blGmKewGvlw32yEQ5BwX9/FVyuPlJnbKi
         ltRVb8vWzzl7tPzfIyttpTiEk+MBm8XumgxqP/fZVyo7RRR+SDinmoIeuGK8wWMXNez4
         /g8ZZw17iN5hJOLvGjIFS+uiqO3XnHKQkTFuAMmoLkMDDLLkh+l9DK5bcXIyUvEUwbhS
         A/Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Dq6UBr7A18leUh6sFeClrbY3WKxaqlnnWooLjpoy7QA=;
        b=f2Bts7CIo4+2poMjMahOpINA35SCyV9Lo8KOZVnZe0+quMZF6bLcW3PDuKWfAOJaTi
         +k1hFCiT+fShfCfjUIkc6qR1UoXbGtunk5EfDitbaWfTYfP7Z7ZKKzOND1QXexY+X8ez
         UjQbWqjRUxFlh/uok7XyvOwvNDH46WtGgSDjbvcXTjF0+OaRzZmCnNNEZkO0UrNRyxTB
         7+b+x1jrnBOL+rhiuwlZ411TSxSMnN5e7u59+88Pgfzljzc1/trdYUjVPE92zU7bJfyj
         W08M+UCjCe22nbWkqw88SELAhKecL6dnugyC9CB7Rmj814HF/1fj4swoO/ssX4g6Lz+f
         8Txg==
X-Gm-Message-State: AGi0PuZnEYT3YtNm9hroCNF9JNxa1DayYa3A8y4JMIyCvVorveFRmj7y
        afGDxF5orEzXsorYGL9P6h7NXitz
X-Google-Smtp-Source: APiQypKyzDj54DbfauZOEPR2bS8vLpaUxDVnezB4D5oNijTUcPOGsO3VN9q3wpDx4RaMNPfeQvWxOg==
X-Received: by 2002:a7b:c0cb:: with SMTP id s11mr17836068wmh.180.1587371986185;
        Mon, 20 Apr 2020 01:39:46 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id x18sm393174wmi.29.2020.04.20.01.39.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:39:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: signal(7): Strange word
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064825.GA31979@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a0e75713-e652-f29b-caf9-848cfe182fad@gmail.com>
Date:   Mon, 20 Apr 2020 10:39:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064825.GA31979@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> Dear manpages maintainers.
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including manpages) as
> well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometiems this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a convention
> not held up and sometimes we simply do not understand the original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to translate into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. As requested, each
> issue is sent in an unique mail for easier tracking on your side. If
> future reports should use another channel, please let me know.
> 
> **
> 
> other word for sanction?

Why?

Thanks,

Michael

> "On Linux, even in the absence of signal handlers, certain blocking "
> "interfaces can fail with the error B<EINTR> after the process is stopped by "
> "one of the stop signals and then resumed via B<SIGCONT>.  This behavior is "
> "not sanctioned by POSIX.1, and doesn't occur on other systems."
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
