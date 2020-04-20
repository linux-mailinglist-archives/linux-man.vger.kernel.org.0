Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 212881B035B
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:49:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725971AbgDTHts (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:49:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgDTHts (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:49:48 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC842C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:49:47 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id x25so9860747wmc.0
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BFsKBX8MpjC+d5TnH/ePOT9CbTSh9O9auMGzn+x0mGs=;
        b=o9eNKOGZzJXgAR+UrwhL2FcIvErLKOF9UaHflEeWGvtTzxbSWL50pNG1rtKxZi29Fa
         9ABrPNneYlRdQoF9rTz2WxYEWZmftP/JvgnGFVN+TDNJSR/HLI16IEPfVBmPU4BbXLgw
         Fv62XIx+/gjYT7XMwBTKCvvGOVsw6ddSSvPlg4alW7g0E2FDa231iR1p2tFEzHpkGgWO
         p8YILycMjUpyrwJzgWv2jLIoV0EfEcnl7YH/klHMcPLvKRa5sygPzcj8FjpVY8yH1K9t
         T9ugzLUUqBgKwt14trXSYY6vacl24+HM/RuDqOSSkC6dF4JKzkgPBk9QmIOpTjePNJMO
         sgoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BFsKBX8MpjC+d5TnH/ePOT9CbTSh9O9auMGzn+x0mGs=;
        b=ATICfU2u9UqcDfZ/P13cakTh02wUbvzWccpNhvpm6NO5trbWCSfRu/LXgS77mQTZdq
         VcuZJmleMCG9p0vNVaBzT6OMYvRah6xI3f2sSm/dkdtuKohhUOqbvs6ne1J2chliN74j
         mNfgFM6lGUS6cOLjpB1zxD9GI2LgwEE3y+2oOl3dnJjaRyz1iIf3aKP4ov84Q89p2NqF
         FuDoHud2HlLsGkei0ec3CMSbrs4GaJmdK+3qs2DaDa54Yz1yCAUOBbzPhCXYqUCqTL9+
         QokOVMaZrziFawcUts7TKFSbRKY5LzreJv7pSG0rJkbZJqLCxPW1gOrU41SjYxX3O2dD
         zxUA==
X-Gm-Message-State: AGi0PuaFA/qVF1srAxtl04i1XBQka9hSEph/KBBBrg4tf7GCmCzEFLlr
        dZVuK6Wxcvdpr/g/FvkHGUFE3sTL
X-Google-Smtp-Source: APiQypK2mwhX8boV1+P14ukOwp4bFJXRKKLUu7SMB+Q9M4IdJmAldbLfvb9VM+2qJEren7L8FPW31w==
X-Received: by 2002:a7b:c0c5:: with SMTP id s5mr1762791wmh.134.1587368986407;
        Mon, 20 Apr 2020 00:49:46 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id x132sm289848wmg.33.2020.04.20.00.49.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:49:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: hosts.equiv(5): missing markup?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064804.GA30794@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9cdea164-b0d6-db19-984b-b2e2b420a460@gmail.com>
Date:   Mon, 20 Apr 2020 09:49:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064804.GA30794@Debian-50-lenny-64-minimal>
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
> Markup in NAME possible?
> 
> "hosts.equiv - list of hosts and users that are granted \"trusted\" B<r> "
> "command access to your system"

I agree that it's unusual. I'm not sure it's a problem though.
Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
