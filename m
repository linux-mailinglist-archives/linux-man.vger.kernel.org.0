Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AD901AFDDD
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:55:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726011AbgDSTzb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:55:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725932AbgDSTza (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:55:30 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8736FC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:55:30 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id f13so9512922wrm.13
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Jb7XVwZ9EKUdOQBZfFUWRXv5Q9KF+Dmpn25VXvv+Cl8=;
        b=pqq+zG2UmHUNJdb7qVMFWbmMLfBOQPYC2Ifibqea8v9GnIuaMjEdpbBX5fSUllc6r8
         iX4AItBWSvtD++3AXlJf6MRy7uqoVNoFLogZ04wfTSXeE0pRmjLwxBqfaOfzCj4nEX5G
         lTvI+/CVk97xpSlbPttFP9BLw7+/0BN4kIK4hnwfPkMN+D1kbNTlZJvo2qFy7UEDehVp
         3BGibQuD9ZWPTqQtwj9+BFecBGmB8c7/o9SXoZagutt+JrquOrvvfshzGgEBAgt+aSHN
         ad9CF2M/G8UZsDVGqJoyVWr+wdNJG6WxaE4bSlj7+0beRqjEpwEtJy99nlvuF8rczMCA
         i7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Jb7XVwZ9EKUdOQBZfFUWRXv5Q9KF+Dmpn25VXvv+Cl8=;
        b=qtJ2ZOauCVJkKJDn2vY/z9hh/Avb3fa4i5eu9ynf42aw/IUEnAPU70/Jih++kMl48G
         y0l4HxNK4b/xkfqyf0NqmjuLyY+UgUmZeN1F9c4gvu3wE0M5Rhd2/avgK5YbIl/Z9trv
         C3bMTKhTgbADRZ+BFx+JL4gzxzNMAz862Sn5L0h+OgsPKFbWOAXohX5comZh2eud2V0g
         WnJGAXet6UC9Oezi7vfRhwgc66pP81Ay9KjFHcqPMLJRzfKZ/C2gKKai6mSX+lB4YFUl
         D3rdvK0kkCbxAMhc119YupXPBanhDVVJay2yxVjIsEVu6qAXt/xc8g5A1eXQN7VQ0E59
         R57A==
X-Gm-Message-State: AGi0PuZey2HYC5XH2anQ10nooGGKrZmL1QYL74gDgnhojc0g765o8Knk
        Vt59n3FYbqQvCGNoi2seUC3+K5Gv
X-Google-Smtp-Source: APiQypI/liQ7RtHTn7Cu/3ruZi9Hfbs7raKGHgG4dNiidUtxY3uv3+YF9/97o8qBeDvTiyOkyGzAqw==
X-Received: by 2002:adf:bc05:: with SMTP id s5mr14709432wrg.70.1587326129116;
        Sun, 19 Apr 2020 12:55:29 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id t2sm16777878wmt.15.2020.04.19.12.55.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:55:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: getmntent(3): Markup
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064803.GA30747@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2973dcd0-f597-89c2-9e58-a86035285e61@gmail.com>
Date:   Sun, 19 Apr 2020 21:55:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064803.GA30747@Debian-50-lenny-64-minimal>
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
> ? returns an I<int> ?
> 
> "The nonreentrant functions are from SunOS 4.1.3.  A routine "
> "B<getmntent_r>()  was introduced in HP-UX 10, but it returns an int.  The "
> "prototype shown above is glibc-only."
> 

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
