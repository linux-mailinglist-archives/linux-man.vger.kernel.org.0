Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F9E71AFDE8
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:01:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726224AbgDSUBc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:01:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726123AbgDSUBc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:01:32 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 356C6C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:01:32 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id f13so9527031wrm.13
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OUsFGgi7zTlVP0sq2h2WrophOS//+5WGDlrOe0z5yKo=;
        b=dltA+szkItO3qQYvHsassJLRBJL4isax85yKuYGfGDmos7jX933AfEVfY0Ic3kC1Vb
         sp2FnvNcRP2LJjk+T1IWRpfcXjb8czd85EJn2yTbOgd8ljjS6aE5u5dJfqQGqVkEMzAB
         iHnFWKVGZrbqwNGFvU8iIjQeu7iOHckpQrJ75grMbZbkSP51gwFsCHm7M/oMJ3iZhLfV
         Uyf5LLFF86CfCRI1P5qL5K3eNjK73ptn3ENyk65d792y1zNY/HnKF0HW+S7Epj6inCAa
         6cgFbGZiVs243DLouWnHrIQIygPPjTDfUl/SstReUp9ps8nlBCdq38akh4Q610hYiScY
         pihQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OUsFGgi7zTlVP0sq2h2WrophOS//+5WGDlrOe0z5yKo=;
        b=ZIioWr8QQOr/W1oY/+5E4gr3q+zTAgh+y7HETGDtOXtKBL0h1f/w3FQfKUOxBjNcHg
         JQRazNowz/mfwy37yj1WbNrFzZf6jCg/ENfY47h6RdRdOMfY0vjXSm5r9D+1R9lkmXH/
         KK3v15sylyk4MUiQtJAaMkgcYXoawCjlam+SLyQg+6+BCGjRv/+BfQ89wg6fZukl/uwW
         jBoC/c//7uWvXhvIOkPgGNqkn7o6MGuI7QvfaAU/OpEr9NCfBMxBnAL6z/AQetLHf6mi
         V4vhLqLU1wlIkFMJ6vBTNEWHymV6afONNWCgV4mG9DDcJqbIpd7nZWUuJaN3StUS4c6/
         yESA==
X-Gm-Message-State: AGi0PubkbKXlj2TjS3oqEe6Ju905cP9IQJi4cUsDCb5hgSB2r+GceX6o
        X6BgRiW15dAxb/c0mod7PiEYAMSW
X-Google-Smtp-Source: APiQypImPqIhiU475OOnS6B2XWl3j0XEeG2agtMKxcpyEPjv2zhnCiCRWWrXE7BlifskBsLRVy0lAw==
X-Received: by 2002:adf:e2c2:: with SMTP id d2mr16206405wrj.55.1587326490838;
        Sun, 19 Apr 2020 13:01:30 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id r3sm12667895wrx.72.2020.04.19.13.01.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:01:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: execve(2): typo
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064758.GA30469@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <25925b32-690b-3586-c820-fc1adcecc613@gmail.com>
Date:   Sun, 19 Apr 2020 22:01:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064758.GA30469@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
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
> set-group_ID → set-group-ID
> 
> "By default, file descriptors remain open across an B<execve>().  File "
> "descriptors that are marked close-on-exec are closed; see the description of "
> "B<FD_CLOEXEC> in B<fcntl>(2).  (If a file descriptor is closed, this will "
> "cause the release of all record locks obtained on the underlying file by "
> "this process.  See B<fcntl>(2)  for details.)  POSIX.1 says that if file "
> "descriptors 0, 1, and 2 would otherwise be closed after a successful "
> "B<execve>(), and the process would gain privilege because the set-user-ID or "
> "set-group_ID mode bit was set on the executed file, then the system may open "
> "an unspecified file for each of these file descriptors.  As a general "
> "principle, no portable program, whether privileged or not, can assume that "
> "these three file descriptors will remain closed across an B<execve>()."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
