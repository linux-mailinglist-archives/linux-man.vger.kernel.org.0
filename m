Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACE4D1AFE31
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:39:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725891AbgDSUje (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:39:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgDSUje (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:39:34 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BFC7C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:39:34 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id u16so406009wmc.5
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=F/TNsKZZRtwNVWB4WGcSF2P2b/XI3EzApe5ybtv7gyw=;
        b=a42l3jQP1KfGuh2o8LhhQaw+3hxZfsI6RPr6FL6BEEre6NsJxbSD3AT1G/lhkzHbyV
         CC6Dc5zm/KMXCfZt7yfD3MOsPxdq00c2RrEcd9lOX3ZzvnfOzxrOw86iduB8CaVRdCFZ
         vP9e6KKUVEFUMFtH9fZ3A54PsbzuKC2p4jpnuUmkyaGoYGekXeVbzl8C3r5tQ5kN+QBt
         /k3j/21hgnRjoVHxmKBsoYQUALy3A2P7HDT95xmUG6icqnxLDpKsqkCIMYBTR0YzTtFA
         0PajkHTbqZJkBOpbQHgtEjatEB4EbAWBoAXQG5nV33V+vSt4nxGuZ53MsLUhEL/5fUdz
         WTbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=F/TNsKZZRtwNVWB4WGcSF2P2b/XI3EzApe5ybtv7gyw=;
        b=LPrDLsOsutT6zELSdHRb9Ah2LqkG4D5IwWXIIzZPZXht+zeJWejMAKafGmWRbjoy0E
         p4mF8UsIqyqdqSZ0Lw2j5ovRnWacBoI9+1L5+VBlwUx87PzfO79JEIU+XkC5z8SQP/h7
         lE0UBZvyHc7Chv/9R+IbLQKBkySNgyg+UaUonC2++cEjtxfavQGz8NFJbGneLcTssDI4
         bc8fjwdeD0C0VYJW9/PCbEBE9lJmy6DflxC4xp4q0Eo2D5GrBn15B09h1T3CphGNPQqO
         mkHks1T3KTrwhy9HZJut17S3IX0azzIKbLanHTfUYfWyM2Au2bB7W0zGPs+630k+bCe5
         Fdrg==
X-Gm-Message-State: AGi0PuYjlVWAEGB+Nq6oVAOLrbIqPPyUSsiKYxbEhJecZMxOS8WUTxqH
        q5YPEviMO10Arc2aKduygmLp3LOr
X-Google-Smtp-Source: APiQypK0LUTHZIzCxVtV+7EjVCpRRhXbhrQlnKRlxcWd1wxvjDf6AlzFjx3FRoPTrTD65Ns4RM2MpQ==
X-Received: by 2002:a1c:23d4:: with SMTP id j203mr5670432wmj.49.1587328772542;
        Sun, 19 Apr 2020 13:39:32 -0700 (PDT)
Received: from [192.168.178.34] (aftr-62-216-206-150.dynamic.mnet-online.de. [62.216.206.150])
        by smtp.gmail.com with ESMTPSA id u184sm7477955wmb.13.2020.04.19.13.39.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:39:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: strstr(3): Question
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064830.GA32306@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9441804a-da94-cecd-fcc3-921cfeca7a63@gmail.com>
Date:   Sun, 19 Apr 2020 22:39:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064830.GA32306@Debian-50-lenny-64-minimal>
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
> Is the following intended to be (translatable) text?
> 
> #.  .SH BUGS
> #.  Early versions of Linux libc (like 4.5.26) would not allow
> #.  an empty
> #.  .I needle
> #.  argument for
> #.  .BR strstr ().
> #.  Later versions (like 4.6.27) work correctly,
> #.  and return
> #.  .IR haystack
> #.  when
> #.  .I needle
> #.  is empty.

No. It's commented out text.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
