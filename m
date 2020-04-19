Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BEE81AFDE4
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:59:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726362AbgDST7G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:59:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726123AbgDST7G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:59:06 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FA4BC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:59:06 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id x18so9585658wrq.2
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DaoYkaAepL7sX1GIv1ETfURnucw1EelXpQbqCtJXt9Y=;
        b=EEXJlaHp0gYglw0BmzwZK3gDiQBZDeOIDPo+dL3YC6aCFubX0A3BKuLnfmhcPVBmgf
         JoRJtVcYR0ITrl/IBr0RLYITcafasYpY8kNjHt4zGMRDb1Tq2lF4VXHZlDj01GQr9toB
         7DoVzmu75rizEcwebNmk6N2MDbrTDDWmUpmZmFRDXYvc2R8fLZiZnQEHYajhUo4JMjbe
         JXfuVCheFtu8E2OZXA0V0yZpBgK2ZaQUJ8LYfZSWm9jPc7uxysRbxg2H4ZLg1elGuROR
         KbsNpSLAoQukNs+mmTIq7yuhZd1zhSoxFm99m1L3Irbydj9vuGyagjLQek1jMYTRcIg5
         TovQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DaoYkaAepL7sX1GIv1ETfURnucw1EelXpQbqCtJXt9Y=;
        b=iuV30fZy/5p8Rr7UhzhDDYJmKFfCkITtbARccr6NZ2BzqhXXRE/T31Dcgg+pCF1ceF
         5u61uQxtb/3hLUtRU7U18thuzAZS+fifKUhKKNzj+5NLkfWah4S7VZ3zU2VHFcwwZxbg
         tK4J/a+C0ahIKrJduoMAMniiawKnJVsYFElo9GnuVSxZf36j2QNXng8fuRKBxeeQkrff
         FdUkP3IM919HbjlZSZ20H06pJM/Q6YKyD2JQtd4k8Q+4WNVcgulMvk8IpDNIi+urwFaV
         TUC4zwl5rP8EhhGAppFK6bY/GnzlASUklLCygdiFfHNdNJjg2xq1cRpveQSVGZxZIH25
         sEBg==
X-Gm-Message-State: AGi0PuZv6fXEsBUbcndbVtA8CPsFn4u6HCCXqs544J2t5ep7QnU9+YY8
        WDBb+0FDNTONCMSOF94rrmS5wWF5
X-Google-Smtp-Source: APiQypLLA7v6Sb2L/HngZHUm1GJH/SySB0iy1PBSc4CLmEDIrpQHGEiwN5oO23EpP9kSANnDOCC6Eg==
X-Received: by 2002:adf:f508:: with SMTP id q8mr16017364wro.117.1587326345002;
        Sun, 19 Apr 2020 12:59:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id e15sm40127742wrt.16.2020.04.19.12.59.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:59:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: hypot(3): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064804.GA30817@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2ba46082-525f-713d-e55b-b490d52cca85@gmail.com>
Date:   Sun, 19 Apr 2020 21:59:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064804.GA30817@Debian-50-lenny-64-minimal>
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
> What is the "lenght of a right-angled triangle"? Do you men the Hypotenuse?
> 
> "On success, these functions return the length of a right-angled triangle "
> "with sides of length I<x> and I<y>."

s/length of a/length of the hypotenuse of a/

Thanks,

Michael

> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
