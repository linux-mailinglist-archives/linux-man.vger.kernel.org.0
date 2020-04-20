Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B6351B0557
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:15:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725896AbgDTJPI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:15:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725865AbgDTJPI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:15:08 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF4ADC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:15:07 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id y24so10478261wma.4
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Y01s2bLQXXizrBXgNg6eHcRNMt9hDzJaM0uFlb3AH0M=;
        b=EkuxNKcLyJep99n2QoSw4qYEbJITWOhoEGlNS6wHzDhAj7Hl6jl3jJuLtKuwzou4Ae
         hYUQSdCxIuGNrgeqm+rITU3LGmYP6NHS8NI+TTRupkbVMlrUSo3pKf/fll3acbm+9MI8
         w3iGH3XF/uVl28qmQtIqfuT4lkkznyvNGLLg6uOxdA+V0/c+GlSyq31pGCvMFaqI4vEg
         q/Fpl5F7uC/2veQSE9CFhafAcKafIqQFXzQJhedBL4kWa1+0TnLnQBTLKUuM9Xnft4Z4
         Qh2wsgK/FMbOKLer1A+2RnS1eQiMHBylLC8u7yJekNLGsFdCqmlN/4I+TosNOUBKkYYF
         SGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Y01s2bLQXXizrBXgNg6eHcRNMt9hDzJaM0uFlb3AH0M=;
        b=P7VNfd8rprRPd/Nzz1mJMOPO2JBCJPhtvSp3ow20mXk9y2AvF8xevUoIJJcM8wc2yI
         twBhlwbRWJCMhR0klvwYsOtgx9N5UX8vWxUuU5MjUXFPQq7V2OIvFKT9ttSoKemJkF2U
         txSNJpdqxpnXXSS959sDuATN+teyFrCP7vBpLxiHqz0ldUlojYznD+B6JXIqW1StOEbf
         p8Mdw7eFRxz4obc6WAbQzwdfG/JFSmRGvDISNrjtydoehPsQAWFpJjkzJHqpB13DWE5U
         Y2coaRre5ggLPfGCubivu2j1G9YWK3HFQ9aDhrIE8Pe9xOZ3O/KYp+8r5HLrMRnAHUD5
         BK2A==
X-Gm-Message-State: AGi0PuZlJCwO1b1/WeyW5+VuUq9V1tTxCS335UOVS4VH3UUT1maGxs4V
        UHE5fxZEMYCr+nZqGbj4h1tiUmGJ
X-Google-Smtp-Source: APiQypKgfDFihZ4Sopr0s/8SDaFEoe6WLEHjUtQSM5Nzks5UuGsiB838i12L6xg7r+RU4awDW4F6Lw==
X-Received: by 2002:a1c:9d0d:: with SMTP id g13mr17490312wme.102.1587374106449;
        Mon, 20 Apr 2020 02:15:06 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id g15sm310515wrp.96.2020.04.20.02.15.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:15:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: termio(7): Formatting
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064833.GA32448@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b50cc304-38d8-1c7d-459d-a63fe4d71521@gmail.com>
Date:   Mon, 20 Apr 2020 11:15:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064833.GA32448@Debian-50-lenny-64-minimal>
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
> Formatting/Markup termio?

I think it's okay as is.

Thanks,

Michael

> "If you're looking for a page called \"termio\", then you can probably find "
> "most of the information that you seek in either B<termios>(3)  or "
> "B<ioctl_tty>(2)."
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
