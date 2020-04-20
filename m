Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEC481B042B
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:18:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725775AbgDTISo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:18:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgDTISo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:18:44 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 399BFC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:18:44 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id h2so9936427wmb.4
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PCV6aRguD791hT5nspBWenKjHtXNdz+w+2YKtABiH+M=;
        b=KXIswtqkXt//INaPHfCxaKrGkBD2VkYdoLNglCtsVMUej6pGnYLZFwOn246/f4YVBL
         cpBr7fZCz2VjHG2hcafdsgN8nN/6N3rmlPJCfVcA2oUfUgX4zJS2X36DSKeLYAF8FJ3k
         PwafjdjJy50+Ymn2oQ0ElB4RoFuVEL1MkW9tMb86hiPG55Uki8Q6VIra5Csf+exdmSEG
         mRUwTrDcw12GiS9ghBSt+kTR85dR61DZemmC5LAl42iJvyoVwjrFiPUUW4/svrZeWj0E
         m68nm20DkbZM6YSuldvZS7VM931IHEHnovEaAhAuvj9kriLS0slcsxIz75llggb+95De
         gVuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PCV6aRguD791hT5nspBWenKjHtXNdz+w+2YKtABiH+M=;
        b=K9nXIm2pHRNuZcLvxzkP2EefYHvv7XU2AUGGnPntdmQONjrImgz4w/U71JXt+N4qSM
         WAO2wc5OORAiIWD65GZDONMrto/diEdTAEOWFWW9wQprxwtNnMGV5kBManpigRDRPVOk
         YKxmZDn2CArtnmFqMO6cRwcelz8If8b+oM6JnwrzAjOJWRzHitOfWzJ9/5N5hknyMkuC
         ChYIDU2py4onkUg343TNoUrPre1T0lgO6X4LrGde8A/UxbpCfmNCtwORcX64Ja5Mg3en
         uR0/5N/80/r7/knTWkz3Ewb2dF2Jic2CQQaJyFV0JmR4iXSR6HlmMNOz+a0Ds2CTWCzw
         t4Fw==
X-Gm-Message-State: AGi0PuaJzt5NlsMMXti0FAhUT6nUkgHTd/tn7JXbPKWYS2qhZacMEIlX
        wb9OsOTJbt9Tv5FmwwDI7utaHoJu
X-Google-Smtp-Source: APiQypIOuj+q1dk4vxdpPrHy9yomTfU3TLw1ihwORqaIRP4Qslh3mx9s0+PCY4Usd+HE6h6SM7Eyyw==
X-Received: by 2002:a1c:35c3:: with SMTP id c186mr17207759wma.66.1587370722802;
        Mon, 20 Apr 2020 01:18:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id x6sm172029wrg.58.2020.04.20.01.18.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:18:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: initrd(4): Markup
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064805.GA30886@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e7c88c22-f8b4-80f1-a1bc-fa0179ea8290@gmail.com>
Date:   Mon, 20 Apr 2020 10:18:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064805.GA30886@Debian-50-lenny-64-minimal>
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
> Markup B
> 
> msgid "I<noinitrd>"

Fixed.

I need more explanation of all of the remaining:

> --
> Markup "linuxrc"
> 
> "It is also possible for the I</linuxrc> executable to change the normal root "
> "device.  For I</linuxrc> to change the normal root device, I</proc> must be "
> "mounted.  After mounting I</proc>, I</linuxrc> changes the normal root "
> "device by writing into the proc files I</proc/sys/kernel/real-root-dev>, I</"
> "proc/sys/kernel/nfs-root-name>, and I</proc/sys/kernel/nfs-root-addrs>.  For "
> "a physical root device, the root device is changed by having I</linuxrc> "
> "write the new root filesystem device number into I</proc/sys/kernel/real-"
> "root-dev>.  For an NFS root filesystem, the root device is changed by having "
> "I</linuxrc> write the NFS setting into files I</proc/sys/kernel/nfs-root-"
> "name> and I</proc/sys/kernel/nfs-root-addrs> and then writing 0xff (e.g., "
> "the pseudo-NFS-device number) into file I</proc/sys/kernel/real-root-dev>.  "
> "For example, the following shell command line would change the normal root "
> "device to I</dev/hdb1>:"
> --
> Markup "linuxrc"
> 
> "The main motivation for implementing B<initrd> was to allow for modular "
> "kernel configuration at system installation."
> --
> Markup "linuxrc"
> 
> "The executable I</linuxrc> loads the necessary modules from the initial root "
> "filesystem."
> --
> Markup "initrd"
> 
> "Last but not least, Linux distributions on CD-ROM may use B<initrd> for easy "
> "installation from the CD-ROM.  The distribution can use B<LOADLIN> to "
> "directly load I</dev/initrd> from CD-ROM without the need of any floppies.  "
> "The distribution could also use a B<LILO> boot floppy and then bootstrap a "
> "bigger RAM disk via I</dev/initrd> from the CD-ROM."

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
