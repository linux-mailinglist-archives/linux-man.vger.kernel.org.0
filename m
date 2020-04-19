Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F4B01AFD9D
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:44:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725848AbgDSToZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:44:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726224AbgDSToY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:44:24 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 305C1C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:44:24 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id z6so8925509wml.2
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tTqlHNbCggLJ+lDqgkMnKqLoScPz0LPkFbS9H+6ybfU=;
        b=DVoRGXxe7ovIyp7mm1/nW35ljrT2aO/d0VqWa0lX6WLLgXJ+AXfF3b0QxdDC/6Ysmx
         lIIQVUkTZkxTdlx+2SN+NKYvp78qNsoqAU9MZNEHmNQxFwKeeYRerkuZP9hux+4raJ+3
         15VTOA4cQsUC+RsRc4nZVyx88jKfcHzPgmWBYg4CdJUaWREpXE/HUxgSadkzAay38ZqT
         WgsA9UVLeUUwxiN4xLLqqL3maVifBKJKRKTkT6ZbqC1Ey7234hCSDp1GE0QN7Mo2Xnfa
         TncPRA00s4A35YJYo+ggHvGKIngfeQrRwMYBHQDV7RZlOJFOhGjM7OK7EFTpixZfkeB/
         U57Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tTqlHNbCggLJ+lDqgkMnKqLoScPz0LPkFbS9H+6ybfU=;
        b=QQz3vO4ao1GbaIL/1LoAEvZ/1yEH3ddPqQnwB8rz4Mj3jbpIfaYRc+KeLxX4iPTqCx
         rT7rp65Tj4UtysaJWA4JBo916JU5oBWPCCDWhQEwDoNVrkPnBy47q8S64TlnHWrL923P
         kqhDgvG4k9qL2tB0+VHI/nI15p5eGRyhj8rsFQ6j6D1WGfsGl9n62tyzh2KOJstoMXX4
         Q31fm1ipplFi26mbdyh0wDxSw2ZtWjh21YKQ02yX2cVlt3XfT0mcEASyIx6o5/mReZDZ
         ZgneksW8Ef5GuwEmKRYK3Y+JYOym/Oc6cOJXIex5uStFscTzvYTwzfRVXhmDHgZFlu1U
         w/jw==
X-Gm-Message-State: AGi0PuYusNBXaIaPqNSbWSe6aHFSSlOnwd0AVRUqBNznPRfiVtk7Zopo
        QeUW4SSjo2wrUOaxd8puk1UyWCmG
X-Google-Smtp-Source: APiQypLWQs6cCifgfx4fvMp7xTINbqHeyfjwbquJm3sQRx03miHOQqvPUISV3DulrVPGD7K/jgEV1w==
X-Received: by 2002:a1c:dc8b:: with SMTP id t133mr14128036wmg.117.1587325461632;
        Sun, 19 Apr 2020 12:44:21 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id l9sm10945871wrq.83.2020.04.19.12.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:44:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: rename(2): Typo
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064820.GA31725@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <73ad12af-d973-ae52-24de-febdf68c531b@gmail.com>
Date:   Sun, 19 Apr 2020 21:44:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064820.GA31725@Debian-50-lenny-64-minimal>
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
> etx2 -> ext2
> 
> "Support for many other filesystems was added in Linux 4.9, including etx2, "
> "minix, reiserfs, jfs, vfat, and bpf."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
