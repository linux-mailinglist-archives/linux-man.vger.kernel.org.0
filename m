Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 102761B019B
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:36:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725815AbgDTGgm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:36:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725865AbgDTGgm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:36:42 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9466EC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:36:40 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id x25so9667024wmc.0
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=78tguNL7JIhwZ+n8LnIZnYci/uKaNqQBkZ8vr4rHb58=;
        b=PM1oa/DlqqkWTIdio1Yc9eVj2Nq6aFxSJ2Xx9fZQMO5B+x527YrNFdO4vY7As+1o7b
         wHfjiCRceSV6hK9CU+E9mwPhF1ssk41mMr4g28WcFlB+6U48u165wSRWop74qkN8h8U6
         z+a5qgKLEjRENivAjIa9v9o9b7Hu0yzLqdGme2CUGIpGtfFQXVh9aTJg54CpKrR3pMWu
         P9+ZmJ7umnXD/YsPO90ySzGQfn1Wg2DYmP9uTzjDr54LcLzd1o84guGBtZjpc9gS+URh
         8D4Steb+lRjLNHZvaEIQKZTsQqGT01AXwoHyOd4bYzAlorjmQHdkFPId/dj2bM/tisUg
         w51g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=78tguNL7JIhwZ+n8LnIZnYci/uKaNqQBkZ8vr4rHb58=;
        b=Ym2aw8bWS6qC3BdZuHo9iDk5qp090Ug3zmEfZfyG2rntgVN7xsBJ7ietY2tQFyR+pS
         jhBlvFxLPKjnkwLWUvjFFox5ibnCFLAC8IBCnnXqIs2MT6KdJ+/qj1XDnUNjHNz2mNNn
         XOt6B5Ox8XG1oebVn/rsyGWaWZc1AuR1Aizouqb4LcLQIpqUtXshaPoCldoKrIJcv/bO
         v5uGGrbnSkp50dpdrn9OYfnVVIuhVA7XtNQqFUfJ0xfLsAmhIfbu+zwhyhjBVRjki4lv
         /H729sPvJRcIAvL9VDwZaCKSvHj6m27+1dOn7p5oJQi2nzropXMNVW2Rt5jFLGQgcE6F
         Os/g==
X-Gm-Message-State: AGi0PuaMmHD6ULR6k4HRpb4jfycNBilGWkZvy81vqqYV0K7F1ZhuC38P
        U+dHJaaJMMzz8cgvJDbrDoK5bfjZ
X-Google-Smtp-Source: APiQypLUrSzFKFkCOWP4gfaUfgrhPkt+JIxL/I8rTH6zxyAxzkxOyMo1AsezltqDmaF7kWJH7PJuIg==
X-Received: by 2002:a1c:2392:: with SMTP id j140mr15905732wmj.136.1587364599212;
        Sun, 19 Apr 2020 23:36:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id k14sm43872497wrp.53.2020.04.19.23.36.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:36:38 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: copysign(3): Suggested improvement
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064754.GA30214@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <84846ce0-881a-e882-8bbc-8fe93d7e4607@gmail.com>
Date:   Mon, 20 Apr 2020 08:36:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064754.GA30214@Debian-50-lenny-64-minimal>
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
> Description, of what is really done, should be improved
> 
> msgid "copysign, copysignf, copysignl - copy sign of a number"

I do not understand the report. Please elaborate.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
