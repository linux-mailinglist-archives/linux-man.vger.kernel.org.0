Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C83A1AFD7A
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726211AbgDST3X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:29:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgDST3X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:29:23 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E46CDC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:29:22 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id d17so9445585wrg.11
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PdBS+7CdwGS64bTj87Gjeg1wWTkqvBKGraIgZidKndY=;
        b=ReBiQO82qfvJTp2Mn9sexkYEC2jIrwVL1eS+YJz5BDo+VUQ3UfYeI68JDc8DbKSjAU
         Czm/F7EcSZqsYaRkuYnWM9xZLeGyW4DbnE5Xh81x8b6bLsHPLeyC1JgqcqmAblrUUXwv
         Nk9dnR0T8lkn5LpuzstHGCLG3Aseb8nIlUV/oAbHCu7SCsjUno0/GlQhwNXaQ/DvJ19Z
         TQgX7vUM7WHTbrhmaiWiF7OeLWaV3EcP8UV3cErotP9p3BLNMKXbHjU1v3sJUDlnUOJ6
         sdTwBPYfB9AJYfQlSc3dJEvF+aD7ufoXDyFOl1eudyd+Ml6nkkRMxPxJVZOr/T1Dyu1H
         Mg2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PdBS+7CdwGS64bTj87Gjeg1wWTkqvBKGraIgZidKndY=;
        b=V8PcReHwFcWxsYQH6ZmdXbJRer+j7Mmsr3nrHRWYqJnk3Az/Vna9ug51hYsxZBkaMu
         Ij/x6CCK16pKnEcT97f+qTtR1A5Q38TAf16EG5gnfWcpO2ifiqB4xZQS2rGu/j9pFFRm
         kss04EfiBzupKD6/ZLgK3sgtXybGcoQBBVDGK3eR3ZLX2pAzh2b28GL8LYEfT8yxhAdy
         /UpwUE4yOEEVWtJfE0OYLBENY2XJlp5QVFUZrNfKMZ7lv5bgD2TVr5kidVCZjp6E617m
         U6/b9xx/u9FBioDKahW1vjfleG0GL9d4vuZ5ilJ54CJgSLM6Nt2or5plMdOnFnhFMAIB
         lpAw==
X-Gm-Message-State: AGi0PuabI7+OOClC+2vVeK7x/BFJC8XimhvtZ7AYH9GckKGh3sMzFH6X
        cdu9b9+gCfnqsIURVgF+bwMdL3kt
X-Google-Smtp-Source: APiQypLkcxiVfcd4Idtvuyrt6QQwHcoSFYGCUGkZu9Dcj88c6gD8UTnX4ZUHmk/02NusyNQEMOFqSQ==
X-Received: by 2002:a5d:48cc:: with SMTP id p12mr15716559wrs.170.1587324561531;
        Sun, 19 Apr 2020 12:29:21 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id n9sm9196253wrx.61.2020.04.19.12.29.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:29:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: erf(3): Missing words
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064757.GA30398@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c88d05c7-ad04-d9a9-138a-9c051c869c4b@gmail.com>
Date:   Sun, 19 Apr 2020 21:29:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064757.GA30398@Debian-50-lenny-64-minimal>
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
> return the error function → return the value of the error function
> 
> "On success, these functions return the error function of I<x>, a value in "
> "the range [-1,\\ 1]."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
