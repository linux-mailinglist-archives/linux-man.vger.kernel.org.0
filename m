Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 465EE1B019A
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:35:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725896AbgDTGfv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:35:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725865AbgDTGfv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:35:51 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A2BFC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:35:50 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id 188so3509499wmc.2
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rW/AoKVigTDE44V2+p2OOWpC7OIDhseVUnq1YwfOeuM=;
        b=UArKmD6lrCbugwcCgSVj08z7tLjGTnTguhLau7carp8sbsWUc1/YmTkCjA6h4mRiov
         R/j4dACTclQA6UrXtV2guTF0YwpsM6wPqN5r+wAtIrsbcfjfgOr9HEqC7GkHjkWQM653
         hKXt0mPl0iS9cmsqoh36WoL22JVLyBsGNDvQAEjV7o0+PxgYLDSC6a/Ipz0bcLE7iBte
         77TWku2K7ssH7pgsaADcHSHlHSD2NOUbeUCXeelATukVIRmtiH5wBthnE8w9149suD02
         +5qUSy1IICYMoFzP8ZPIzAaD6f7HRFS5GtulEatpBEf2YoLQ1i9BEEWu0MO+5Wm+nXpX
         D8lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rW/AoKVigTDE44V2+p2OOWpC7OIDhseVUnq1YwfOeuM=;
        b=H+9rL+nnOv4KVZEFJD+JWYXf1t/GpBhM142vjiWNLVWrJhSLUu5cLhqW/oIIMb/v/x
         +xGWqaEnE46IzDtrFdHUE7mLce3Gvyn5eLPBqCo43PmXEWkkhfPT7tnoUYtGbntqmRxC
         HXHpSFcv+6mGL17e2x6b0as6eMuf4akWKm844Q1QWcUkdDZ+Kp/2gHZqHA2WzYbVMS6l
         J5AobNw4kT/KQ42tf2CnthphDIC4CXFw3htlziFJsntSxnMH1XteoaJQiAfhXyIEcP48
         8bUhaDd8xhooMx7jJ7qABa0abvZMRcrfxF4Hd0RzyLJHZ+DZi3QrUygOQggiEyYuLJ0T
         m2cQ==
X-Gm-Message-State: AGi0PuZXA9mO8DNKpUFJOPl47u1Zx+XGnHeNG/pO/zYSiUqAnVzpjjcz
        K9Hpef3s46TahgHwQelYZKE0YZbu
X-Google-Smtp-Source: APiQypJbMBrP1CVTJnPlsHgU7OZ5wVKhdGxb8NVK8pZlcmJJMDP8ICbr6xv69Rs+b1k7uyRlN9UKbg==
X-Received: by 2002:a1c:b38b:: with SMTP id c133mr15616254wmf.24.1587364548616;
        Sun, 19 Apr 2020 23:35:48 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 60sm13281025wrr.7.2020.04.19.23.35.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:35:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: dsp56k(4): Formatting
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064754.GA30260@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fd828f05-acd5-c848-431b-5e12f4587da3@gmail.com>
Date:   Mon, 20 Apr 2020 08:35:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064754.GA30260@Debian-50-lenny-64-minimal>
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
> The formatting is inconsistent and incomplete:
> 
> a) Formatting bold?
> 
> msgid "#include E<lt>asm/dsp56k.hE<gt>\n"
> 
> 
> b) In this string the formatting for dspk56k seems missing:
> "The dsp56k device is a character device with major number 55 and minor "
> "number 0."
> 
> 
> c) No formatting, italic?
> msgid "/dev/dsp56k"

Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
