Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53DAB1B0352
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:45:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725815AbgDTHpg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:45:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725773AbgDTHpg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:45:36 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D59D5C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:45:34 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id j1so5415924wrt.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Rcw2uhLp1kK/ZLffgauqb6Jk7LBt076yiNvas2X+Wbw=;
        b=uDhUJaO+ZXQOYw5748GcIQ+TVDqN/39bIhtTr/EA1RWBrp6MxJ6Nwg024Aiime0MVy
         TFCpz+jwQ+BWcaH+cnIZqlLCTyIqaSez4spZ1qJRgEypmWnt0vpyiOpcHSdMtEItmnG3
         kTX/oacCGt4Fmr3SsNDSxZLEaZli50cJFhVOrfpTEjJfo8KI8W2VjlTCx61uUv0NoDOm
         0MXywrGzjYF43csdwgghoQeQnYUvZ8r1MwR3k20qbQ00GlhoN32M+uBPUMRckvsJdlrD
         Sq7Bm2YLR/22EDObxibHT7LrABoZJ8i3DHICl7flEhjWotQNATatXiwyYXnGjADdmx0v
         7C4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Rcw2uhLp1kK/ZLffgauqb6Jk7LBt076yiNvas2X+Wbw=;
        b=lBFD6B7r6vGWwy4pC4v4FrT8AFDnSNAewDyKgW0Vl9JsejHoP+NaILahUD2HMjwm13
         CYfWka8hQwEqemBUiHTv/cHbCt5XzMsWsnNQkJgeYojQ6L0A1ewlWfEVG4o30idW99kI
         AVndP7k3CywWd5GOSKfqwno2fEjARIM5yk7wUVOdFpWsaPzxVipT1pFBjuNs8I8L175h
         vTG6DgHbcvgPf/1ppooMKWfJfYsCn5wk0oYlPMQBx25EBcJAgCsSO4bxBW6BhKhK5A9p
         y4von8fq5TiP6xUH6BPCClws3g3KAAkYbsuFg4ouYWHBz/Kgzfm5PRjGSX0iH0BFZyHd
         /WqQ==
X-Gm-Message-State: AGi0PuYYcJPVKqmaata5hre26iK58Q8zmzhbMv0gHWdIB4thBGEWRFmY
        +1mOwrupCwJA0eRtm301aRMhxnNm
X-Google-Smtp-Source: APiQypJT1yOYOJQLFNsJiPZzheTiAzutlTHZK9SMBAiEp86heb8thAD5j9RmcujqxIJAkSMvk/p2Ww==
X-Received: by 2002:adf:decb:: with SMTP id i11mr16562910wrn.140.1587368733390;
        Mon, 20 Apr 2020 00:45:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y63sm257287wmg.21.2020.04.20.00.45.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:45:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: dsp56k(4): plural/singular
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064755.GA30283@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <09edb420-e9cc-6a6a-9320-b6b1533436f3@gmail.com>
Date:   Mon, 20 Apr 2020 09:45:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064755.GA30283@Debian-50-lenny-64-minimal>
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
> member/members? There is only one?!
> 
> "resets the DSP56001 and uploads a program.  The third B<ioctl>(2)  argument "
> "must be a pointer to a I<struct dsp56k_binary> with members I<bin> pointing "
> "to a DSP56001 binary program, and I<len> set to the length of the program, "
> "counted in 24-bit words."

This repoort appears wrong to me. There are two fields, 'bin' and 'len'.

By the way, this report made me notice that the name of the structure
itself is wrong: "dsp56k_binary" ==> "dsp56k_upload".

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
