Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DB961B01DC
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:53:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725930AbgDTGxh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:53:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725815AbgDTGxg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:53:36 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C446C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:53:36 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id z6so10036556wml.2
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NbOXsWVixXgg+Upc9ofURnGTrvMcbHQxP1D+oePe6L0=;
        b=Iilq4l/DbK03Q3EpLxdjSRNzfZWnwrNLU3xDb1JO/8Qzc6acGljmsSomvbmLxBf8LH
         0rsqdQ2wnQb4xO/GGwejuqswwepUZgAuvaLDK68NT6+/375JrR/NT4lk4WLiLdEV1+wu
         lwS3Iuu+gWhY8O2tTyCD5pPe6Ja621m4wJdvv5N42BcolHCeS0PT/Q+NIiv6F6jVR9af
         FeDvyKtfQQafVN0A8mgnJimCFpOaUwESfputDM9J9sXa1nqAFzlqUeUr+/araQkBQwNm
         N0cpfxSeqI6DXOB32QVLFvLCR9TZF+ZLI4sfPx1SaJKswDVD9vMJnNdWjDmDuHoMUxKz
         7gCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NbOXsWVixXgg+Upc9ofURnGTrvMcbHQxP1D+oePe6L0=;
        b=NYWiz2nki2GmCSE480AsN5WLkEYtaerbmk6wzblQcRr73zqWmskqIFtAHlHy0PHUeT
         nuSBO5s7wWHRnh/v6FH0ntAUfz82yeZxp/TQfkdzysL0MT4HkhihJPaR18v4dI+Rvy/K
         vrjGxgUn6NWsYQNyEfi7CFdQ+cslTs7NdOmsI4ZdfIiukITx+JO3xEna0+Bgmg3PIzk8
         VlxJjIoNIaaJG9i6p9rteCfJ1l25zAXlp96Oz6KEnmfdfhCqk3/hWoOywvC+NWzJG9aT
         vozz9a/UP8ctw1nVkkWgsIr4/lXBw53s6b3eSqZI4DtmHLLQQRgIRGib68EWbgEquqey
         2PkQ==
X-Gm-Message-State: AGi0PuZadZsQwKBMUHG7I3fOQLnSwGW4mZIXsNkM0dPa2K2RSqwA+OJw
        z9kADQyVhPwFZMc8tWrZOWatwbso
X-Google-Smtp-Source: APiQypLDPU+Yw6v2mMhTskfXI/OqyP8I1drTwNnrteouMqZ1UUVzH16mFMKHi+4SGhhxaIypcmVPnQ==
X-Received: by 2002:a1c:9cca:: with SMTP id f193mr7110684wme.71.1587365614954;
        Sun, 19 Apr 2020 23:53:34 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id h13sm31189906wrs.22.2020.04.19.23.53.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:53:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: charmap(5): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064751.GA30074@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b0ec27f5-645d-4a1b-174d-07ff11bd24ba@gmail.com>
Date:   Mon, 20 Apr 2020 08:53:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064751.GA30074@Debian-50-lenny-64-minimal>
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
> UTF-8 in Debian Squeeze:
> 
> "is followed by the maximum number of bytes for a character.  The default "
> "value is 1."

I don't understand this report. Please elaborate.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
