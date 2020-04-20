Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FA8C1B049D
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:40:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725971AbgDTIkW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:40:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725775AbgDTIkW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:40:22 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07770C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:40:22 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id x4so10015582wmj.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SKgpaQFOSPfPyqM1A1Vy9QDjiBpbjj0IEa+vptRTviw=;
        b=PyKi/j9I3wBdfkdVghwZ/zTjLUbiF/azioBshIytvvwxni9McmItTlKfBZ3hpQ9pjw
         /duHe63nvYlhMbf2dFDuhkm7eGOyK4OB5zL56qCnnTa9b9LM8l5MN2HdQ0NbiaYqYfvx
         snqbU/neIfem3ferPiAqrF5Aee6kKWa6sWl4Pfjs+jF6+JA+eguv3XGMVfrqf8AvSJGD
         TByH5HFF95Rh8R/3H+gpIEJXR1mCqEZshfCivyVCcEbfao2u/bgsgxTZ5ASyHS4IaNyi
         a4PDTqLh7Sh7PPnFoj94ZZbc8TnEh3y/lmrbzS6vL25iQgnXpeBfM6q+33xGdjP3LfQO
         6v9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SKgpaQFOSPfPyqM1A1Vy9QDjiBpbjj0IEa+vptRTviw=;
        b=DCd+x53mxT20UkhkqnlNkTsaqyC4ieEE1ozojES7KYigpzWHz1/7JOgo3mYV3PMZdw
         fY5EmRV4DaqmO4B4xPop//D4pNr5CoS6Eb6JsaV+acxhfqjb4CI1a8N1SjSODuBlVvJL
         WQxyhoUP/grzuDCClamJ64aOZGWei59LoEc3YmFNLVs00jOHC29GJnmg585YWwuHlosB
         jdDzVYb7R5aK5xHDBtRKH/bxJrYt5KT2lju7MiqEXnzKy4sdpW1y1muJ/vQmj82HCL34
         wqz5GKuYZFG8vvaBuM6qatA2OmeerBaM5foTIuEDNveeQ5nmNgAUiQczZoxfY4DW32NC
         Sm4w==
X-Gm-Message-State: AGi0PuYLetjgsA3ppxk+u0qjiMhMpA4hi2Bk5Bp1GNpxMLOXU/VM/nXa
        1AX44cPLTJnIzDTZuN5ceT96rS/E
X-Google-Smtp-Source: APiQypJ+9uqzIuObv/SFBuWBA8Zz+SfEr5LD65xKh6tlRvPCTFmBsLzvH3SuAk9uPeH7pBNkSUzfUQ==
X-Received: by 2002:a05:600c:2341:: with SMTP id 1mr15994780wmq.153.1587372020565;
        Mon, 20 Apr 2020 01:40:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id o7sm368015wmh.46.2020.04.20.01.40.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:40:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: st(4): Clarification
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064826.GA32025@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <97437b74-597d-e08c-d709-28f88322a026@gmail.com>
Date:   Mon, 20 Apr 2020 10:40:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064826.GA32025@Debian-50-lenny-64-minimal>
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
> The first sentence claims that no brand or model is specially 
> supported, however later special commands for HP autoloaders are 
> mentioned

I do not think this is a grave problem. I'm going to ignore.

Thanks,

Michael

> "The driver does not specifically support any tape drive brand or model.  "
> "After system start-up the tape device options are defined by the drive "
> "firmware.  For example, if the drive firmware selects fixed-block mode, the "
> "tape device uses fixed-block mode.  The options can be changed with explicit "
> "B<ioctl>(2)  calls and remain in effect when the device is closed and "
> "reopened.  Setting the options affects both the auto-rewind and the "
> "nonrewind device."
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
