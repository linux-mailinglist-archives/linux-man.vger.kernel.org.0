Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F04041AFDE9
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:02:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726296AbgDSUCl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:02:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726123AbgDSUCl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:02:41 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85A8AC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:02:39 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id u127so7863830wmg.1
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hTXms4Hbf4XQbf/UyFd/f7vMRoMRTernO1XTOIE8ork=;
        b=hjgmT/QkhltgwCpxrRwNbPFLNsNe8GpkbYPP1FvP5O9uvbpjSkT5xrLpwpgXYSX029
         ujpr6gjWDxslNaBKfpBhXoX6O0AJptxoJWRVYjLk2+/4YHMoVZXoinhfQJZ/ASWmRJ9X
         5g2dua5yytF7I93ekATpOvX8P2BQhWH9R1c5CQRj3fG3VT3E57Hu5RIJPIsOit9WXg/I
         4TOkN0hiMZlY2r9vVJA2WV7bL4rzJEWr+DnY0/kCGy9TWmOyWdAsd47N9heeUZUn/kPb
         s+fbJy5WrNMXO7twioHICOoRFk3TgOy7H7eLjk8nXhb+Y1b0J13g+12JZ4nny+R6SuOh
         ECcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hTXms4Hbf4XQbf/UyFd/f7vMRoMRTernO1XTOIE8ork=;
        b=oTKStT92jsbpJFMxks03P+V1rSxtdaCi1LWh4ZgUbUlQgAPjF/uzFkC+Fx0WIKn6aw
         sXjGkjy3vfDIXXRwIcSNkS2ChVRznDBHomi0n9kdZQEZmo2dgezjioFLKv5n7ye+thIm
         iqFn4ZqeqQ1+ZRWbVo13ycsZqrTTa1yIBlZTTXnZFV0VxD67msfklArD2KT+EGGpy0B8
         OIxywXBE2p10BYOI/pkxadk1np8QceyUoVzx9IbG8DmN1tvqxFmoZ9HJv2dD1hVbtvsg
         0pKYo3qEhqQeSME3sKecCoh+nRmGFWZE0j4eeSrs16x+mzwL/pMWiKCW5xap0PeuvVyP
         PLmA==
X-Gm-Message-State: AGi0PuZ/0nRBJBzT/zvlRNrxLWrRqU2H+nb0DMLn2vFbQtTUHMFTemaR
        9U3HULC+dwxmSAowDt7qEUlD2RkE
X-Google-Smtp-Source: APiQypKiIe4Rk61Pi0yNhJ3NgdVadXiOOseWopJK6C1gdguqKPiLa/YIgnR3B/dxYrjlovK4upA2QQ==
X-Received: by 2002:a05:600c:2194:: with SMTP id e20mr13925638wme.22.1587326557175;
        Sun, 19 Apr 2020 13:02:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id x23sm16694382wmj.6.2020.04.19.13.02.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:02:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: carg(3): Missing word
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064751.GA30050@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9029dab9-aa23-8336-9fa6-78125347db66@gmail.com>
Date:   Sun, 19 Apr 2020 22:02:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064751.GA30050@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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
> s/is/is in/ 
> 
> msgid "The return value is the range of [-pi,pi]."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
