Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 486EE1AFD88
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:32:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726011AbgDSTcf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:32:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgDSTcf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:32:35 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5819BC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:32:35 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id s10so335614wrr.0
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1xwa+esieHkgsRIyk/wZuz3dmFGv3eag/SeLjkEk2R4=;
        b=RqpXDhnS6ektBqxc0HbJXb1yWGRKfDVse+YnWnKylh6JBiYYKPLzSC4wOeJgSWMPN3
         s3WVpQjGhTo0z/xEI1zBPLZ4Gj9sBe884X01026hBsP/Zfjz6sEyO6IxOZEwOoqSsZ+6
         V+lZLqUoIRHE9cFyz0RAIWmsSkze8PmbgrrWWNc5Lhp+i5RHbbj5j/fS9CT/s1iy92IM
         FfAaEJWib5rRXcxqvd14o1VwPbz//2Z6A4hg5JwiXlRDnEr+lQlvMgc2nq2TX7ucYWu5
         n3BrGuoTgHd2Mt6wBz6jg3NRr8JLKp2bY4sN+HfprHaQJ+RHijxzG+UkoeFDwubplGjB
         QQyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1xwa+esieHkgsRIyk/wZuz3dmFGv3eag/SeLjkEk2R4=;
        b=EiPDMylJwSCG5ipe3wYIUl1j09mmCIHZZwLxaKo2mHyDkKT8AMm5F2d++fOvApRddo
         wTlzIB+aHtBrCiJSNDoM6X3YPi6SbruYapoAQRFEucjJNuK02ae0G6iLtvLqgz2PUmzx
         dclgu3sE7Cjtbv9V9MVP6LjRKZNlV0yP5vCsnytr/uAFIpEYKZf5NTce+1Aef/lromik
         TQpXo3FAsKoKDo1r1X74tz0P42nlNe1LmOiE3Njj6jKb9KvR1o7/KGeTvarD5jy3hrMu
         xvGET751AgI5kgsnsotDRisekRrtN7FK0y8a+Cla3oki3RNqWa3074T7HmNKwEaQt0vX
         8p2A==
X-Gm-Message-State: AGi0Pub13mmY0NMQMiM9V5S5eRlzTAC3BhBX+t5CuJdubOHS+VZXiu3b
        WXZKCoaQ71Livmb626JPvdnaCgru
X-Google-Smtp-Source: APiQypIW9QSgGOvPgG3tNdVNe2zLpDw2H1xGkxOAE+NGA4Dfp3wx0DkGoYyFtHg3dps0d5pG+HPMbQ==
X-Received: by 2002:adf:f1c5:: with SMTP id z5mr14821278wro.100.1587324753966;
        Sun, 19 Apr 2020 12:32:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id e2sm22302466wrv.89.2020.04.19.12.32.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:32:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: initrd(4): Typo
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064806.GA30932@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <34f19953-eeb5-53d2-e3b6-7db5e0e78034@gmail.com>
Date:   Sun, 19 Apr 2020 21:32:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064806.GA30932@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
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
> unmount → unmounts
> 
> "The executable I</linuxrc> sets I</proc/sys/kernel/real-root-dev>, unmount "
> "I</proc>, the normal root filesystem and any other filesystems it has "
> "mounted, and then terminates."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
