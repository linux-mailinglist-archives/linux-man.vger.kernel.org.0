Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE97C1B03EF
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:11:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725994AbgDTILG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:11:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgDTILG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:11:06 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD78AC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:11:05 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id u127so9146866wmg.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kTt5sqytVmVtrs53f8LZJzmD5c/lEhtyH/4r6ZNjc4U=;
        b=t+xy8nYeoa2pRQ9OBdGyFjE4LxENvlgkQLOYhkCowYUlG6DkZMoc8zjSlKNj5kw3Nv
         X+dP2FyzIi8x8SJAs7gsLuO9lcptDLmK9ow5SyAVwf5XIkeFYH+fEdptpnM/sCCAi9Ha
         fHkl6OvFEKv2JfnxAr86LTcMRcx7ZliCAoKwTTSVwt0q2tclRnWTQQlP8x86uyKZSfnq
         3dzNqGKuFwjibt+PcHUuIomCPm1142v4TNhZItvGgzsbg4vtaQmUTkKOxT37lbaiVrFs
         NsHb2Ovj9kRoAmdx8Wz4AdJb7zefE7HPitT3ag3ZEd/w9TkrpbchuF/qVjBEwAVEnPHs
         JONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kTt5sqytVmVtrs53f8LZJzmD5c/lEhtyH/4r6ZNjc4U=;
        b=Swt4ultUIb4y+vbo7DWK5KquVhAVpm2v+wedy9mw4JiXiY7mbk+/wAHsuyIyJ9L0Q/
         7yf2fYnbsxAsZtVoNoGMfLSWVPoGioOTRnV+1ccdmtE4a7zfVLFbEZZpkAnEpfTNAoXN
         j0Eortiq+IFlB1z2QozDMSVIv7Hw9PDQuRpzBbDi1j9MJ/puUbPAWJw9QwpH6kp+0zDa
         hMPQTfQQQlqtfedfbaIpghM+6xDk7WFhg8bXiZnIncJv0IihxJMT6xNPyylv4pdClOmW
         5Q2/M7FQXEHPDhYc9SrYytuA1YKwyotjmQg9QNQ+V4meZrkqvdtKkOZtYW3SSkdIGXV5
         Vi+A==
X-Gm-Message-State: AGi0PubLdYhcp97IYHRbqvKnbiM6lzMI8As4+BlKx7DNMqDy8brtThqV
        kjLYlkIK8aSsV2+DaYz8/X8=
X-Google-Smtp-Source: APiQypKrGW4YmBXppBNJ9YRdQjXoicnUPl77mtJ/j9MINshuk1UWXcNSSKFvLZZTM2G9i/WhmLKsRw==
X-Received: by 2002:a1c:3b0a:: with SMTP id i10mr16073762wma.26.1587370264440;
        Mon, 20 Apr 2020 01:11:04 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id q143sm338697wme.31.2020.04.20.01.11.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:11:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        =?UTF-8?Q?Kai_M=c3=a4kisara?= <kai.makisara@kolumbus.fi>
Subject: Re: Errors in man pages, here: st(4): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064828.GA32141@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <532e2c98-09ca-ee0c-be4b-0c51d4b42eef@gmail.com>
Date:   Mon, 20 Apr 2020 10:11:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064828.GA32141@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Kai]

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
> Is the statement true or is it swapped (locked when closed)?
> 
> "When this option is true, the drive door is locked when the device is opened "
> "and unlocked when it is closed."

I do not know. Perhaps Kai can help.

Kai, the text in question is

              MT_ST_AUTO_LOCK (Default: false)
                     When this option is true, the drive door  is  locked
                     when  the  device  is opened and unlocked when it is
                     closed.

I believe Helge asks whether the text should read:

              MT_ST_AUTO_LOCK (Default: false)
                     When this option is true, the drive door  is  locked
                     when  the  device  is CLOSED and unlocked when it is
                     OPEN.

Can you help?

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
