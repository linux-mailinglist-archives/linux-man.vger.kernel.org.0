Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5EB21AFDF5
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:12:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725953AbgDSUMT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:12:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725949AbgDSUMS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:12:18 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 802A2C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:12:18 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k1so9600930wrx.4
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WEhc6oRsOrGl76XyRdplKplEFiESOcQNVTVq6scjFUc=;
        b=dBF7mYEg2RTjpy3ZuThmtHaDnnQNF+1OK7qWOeYiKb3bjD5lgr7xOgsYhb+sZNVQE8
         yatRIt6S0LC5UumSfPcjJOEmaagy09k25cCjKRs2tqEokaCG03xZIiIW+LpCQSoUbmAe
         L1qVC7bXkAsS85CJDZvXn/0rWF3Rs1O6peJu35fJCBbS8sL9wCxWq1agJa+ggRKxuIlv
         ImH0q3IA0PcAL9KnddcKU3kxYteZ0j2RoKBIauFxK4ke+LfPihxnGH0CcHqXNs7mewWT
         1knByz2j25evcMt0xBYjriUoBcKL6nXaNfq05cs+sqzQ+zf8JmU3X+xplMFz+AtjYtyh
         rG+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WEhc6oRsOrGl76XyRdplKplEFiESOcQNVTVq6scjFUc=;
        b=qOCkl1q8X2xOrTLw6NWBgeENM+yF4LyfmsNUwMCOSaLfFBQ5o5CbHK101glgxy9deR
         ptj8dWArCPvDesaMiPV84kp/BpHSH47XTSvQ21j0zMq/eF4CPusV3IM+JSri/1DRF55W
         Lk39skRl+jMgl/yWN7FV8h7CUpgKrte63ADTSoJOmxHhBLH9pzGhgkD70ZbaHyWmYNLb
         7TTnaCsHi4zVovhPfiDWDvigT8fJDhAXucRjCFHPYFpX9bQrzjihYrXdW3y9++mljEzL
         QhtESAXLIjqmHhkc7DDAtK3+SoTnj6QzZKctdc8wgIXzQw3lmy/0tDq1aPu6IybLBJf5
         /paQ==
X-Gm-Message-State: AGi0PuZNn6BqzLr8nWUY4re0O38BeE6prsqW8Sbi0lD6qodpb+HDGOMS
        VWeWVuPxpGe10eAFhKpRel1INQcc
X-Google-Smtp-Source: APiQypI7QQjRIjqLHbhEwEWAoy6LjNnSlrqhQrGFLjbIyI2EVy8IlYMD62Zs11CylnuKUpkKn4r1RQ==
X-Received: by 2002:adf:9cc8:: with SMTP id h8mr14443886wre.167.1587327137004;
        Sun, 19 Apr 2020 13:12:17 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id a7sm16512491wmj.12.2020.04.19.13.12.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:12:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: rename(2): Incorrect punctuation
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064821.GA31748@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <35ca93c1-e562-9adf-4c39-c3d803bf8a0f@gmail.com>
Date:   Sun, 19 Apr 2020 22:12:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064821.GA31748@Debian-50-lenny-64-minimal>
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
> Incorrect full stop after f2fs
> 
> "B<RENAME_WHITEOUT> requires support from the underlying filesystem.  Among "
> "the filesystems that provide that support are tmpfs (since Linux 3.18), ext4 "
> "(since Linux 3.18), XFS (since Linux 4.1), f2fs (since Linux 4.2).  btrfs "
> "(since Linux 4.7), and ubifs (since Linux 4.9)."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
