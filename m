Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 297A21B04A0
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:41:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725775AbgDTIll (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:41:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgDTIll (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:41:41 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1783AC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:41:41 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id j2so11013389wrs.9
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Q5kkICUZVhcM8b0WcS2TWrGOzopMAJpX6zbQR+DRamU=;
        b=N6RGWZfQrFzrqwBQleJJ6YFxe40tomb2hnERv6mv6j1qYpy/x8PhVIFvKwhNpeKjk5
         B9E+eBl461X6t+duQC/SQZHrSiv3w9XAMyHIAh2bDgktAy/fwFC/Jx3PFuv6PYkV7tCK
         LimBHuvs7w0/zuBlgkEwIBXj9ZBDmezcpgMWENXubEViAHB0xMKoIV8FObS+Yn9k9KM9
         cIQN/FWcideT8JQ6jzH8dnu7Ky//KtKBMZkdEE7GQCbyw15xLwSsYm/wnZaVnFT1Ipck
         izZ31mZmFQnMUm9S0ruRfNNt4jIfyMAPEEW273fMwCxJMdLhAwmexU2S+KPj/5GNWuEg
         1Shw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Q5kkICUZVhcM8b0WcS2TWrGOzopMAJpX6zbQR+DRamU=;
        b=lkWrzbR2WmHbbHIVDjRjt/rZwr+L5Lsf2+uprXxvy1Ezm2NGJYslWUtCfzFXL7SaN/
         hJ0xbvJebxDhEktG1x119HzfzMVhHketPqzt+32gVF0GSxPJXUxhvM30WSqUumATV5DD
         DrbNf1e1AvLSm8MgHiEgiKp7GD1gcQI6SyAQkDzO0/lH6z0ukhmnZbyLLz+ckTxnwJue
         gu6htvDhRr4p7KnTX55F32R18kxo820fd+6DjxP5keSdDOgLJiUgr1sWbQhdau9458Xe
         AlRxE7IqNxCl3FVawdc+eRCVn1FUrf5vYbYjeGXV30NSOAET2MEavR4JspeOiggSMim0
         lEgQ==
X-Gm-Message-State: AGi0PubD+HzM3WNwJV/C5tVJMKT9GT3xEUuV6JAQjIbAOvs/Mr5UT/aT
        51gG1i/CJSxfhA6QOuTGV+2kPU1v
X-Google-Smtp-Source: APiQypLRVJU2DLxS3PoiEiodAsRtVRQpGyIuBHRHTmTxWvLf9xhLwIGKgGet6PE+q2noFbubAtSwsQ==
X-Received: by 2002:adf:80ee:: with SMTP id 101mr5652374wrl.156.1587372099682;
        Mon, 20 Apr 2020 01:41:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id v16sm427633wml.30.2020.04.20.01.41.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:41:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages: here: strcat(3): Clarification
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064830.GA32259@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c5e07915-1ebf-0058-0661-6a7689dd8d30@gmail.com>
Date:   Mon, 20 Apr 2020 10:41:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064830.GA32259@Debian-50-lenny-64-minimal>
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
> Is the size of dest correct?

If you think it is wrong, please elaborate the reasons.

Thanks,

Michael

> 
> "If I<src> contains I<n> or more bytes, B<strncat>()  writes I<n+1> bytes to "
> "I<dest> (I<n> from I<src> plus the terminating null byte).  Therefore, the "
> "size of I<dest> must be at least I<strlen(dest)+n+1>."
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
