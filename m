Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 923C11B051E
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:01:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725865AbgDTJBa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:01:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725775AbgDTJBa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:01:30 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFB50C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:01:29 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id g12so10422498wmh.3
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qXiTGF6d+D020WFSPyu3uU5ouY/VJ8m6PJLl5GmLa1g=;
        b=bLKs7ubid0/oQ/kB/5xPgaV7rcV3xtrYZUg3Z0ef/72QngnLBdkuIYxNBSI6y6scCo
         CVajpQDhEzwNTXj4Q7OLB/jMtODwzqS6LpZyurH09oCrZLEoLCFJ2dB1LosDnPd4pGDH
         fSvx95rMVZdyzBNrwXOT22I0KyEr/fOGAN7JwtSl0lRp4rP4ney/+PhQwU2onS9OxBff
         j8H9BPwf0KsvDZztdrtLHaSQ+iIqstz6L2KwGLBVh3n5kRlqDVMTEO9iVOTkIfwQVF0n
         RkYo+0BAiA7GgiO246+4R1PVHLDaMdUfgSLY/tXtcv6+HSXs9e/+06cYn2YF1ClgKXFG
         VeEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qXiTGF6d+D020WFSPyu3uU5ouY/VJ8m6PJLl5GmLa1g=;
        b=s6aUdcZDcPfOoeS9DHCamRwJ/2Z2oCmD6m/RAmdcapxRtv28zMq7S08H8AdJ0aJ4ft
         tHOx3UT4qg5KtH/wh0RKvuGuBKPSypjZC8ZjRduGyPtyErhfs/G7Ya98QG9YJjVuVDUi
         CVzqWYpYH1bKGh36NusVrhVnTNEx7P6bQc/hbI2/H4TgISe0DRVroqpmTNAPRwXn+f/I
         2e8jhEHe8KCSQgf05gMOQ3I3HiTAhXA7+T0EJQiNmEfqlvCC3YxpW5adJ6g5docXiVYx
         w/9TZan+wg+HDe7RgdOyFuO8VrrVbL/y/z9c9GXQOiAEBb1BLfXhYwYQH+icLAET01Zc
         dv1g==
X-Gm-Message-State: AGi0PuaXrVcP8xvYRsKQFh/4GdEJcyTa4cJ+3fydn+BBK3J9L1336a7r
        Uy0h19mU22z2g32oPlff15XgIqC/
X-Google-Smtp-Source: APiQypLcdL4tyBVUhndCHwtXvT1muDvgpyw9x2rrwnyo3a2ZqcKtF/NP8vFeq+1XNb63h+WxqZv8nw==
X-Received: by 2002:a7b:ce8b:: with SMTP id q11mr16621691wmj.101.1587373288442;
        Mon, 20 Apr 2020 02:01:28 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id x13sm514714wmc.5.2020.04.20.02.01.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:01:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: man-pages(7): Wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064809.GA31093@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8e7a241a-936f-829c-42f6-984ce82c4e20@gmail.com>
Date:   Mon, 20 Apr 2020 11:01:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064809.GA31093@Debian-50-lenny-64-minimal>
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
> Wording:
> 
> a) msgid "Those functions which wrap operations performed by the kernel."

See patch below.

> b)
> "Overviews or descriptions of various topics, conventions and protocols, "
> "character set standards, the standard filesystem layout, and miscellaneous "
> "other things."

I need more explanation of the problem here.

Thanks,

Michael

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 2bc8610f2..9212ec114 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -50,11 +50,11 @@ for authors writing man pages for other projects.
 The manual Sections are traditionally defined as follows:
 .TP
 .B 1 User commands (Programs)
-Those commands that can be executed by the user from within
+Commands that can be executed by the user from within
 a shell.
 .TP
 .B 2 System calls
-Those functions which wrap operations performed by the kernel.
+Functions which wrap operations performed by the kernel.
 .TP
 .B 3 Library calls
 All library functions excluding the system call wrappers


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
