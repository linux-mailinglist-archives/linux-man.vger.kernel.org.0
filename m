Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 287231B02D8
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:24:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725865AbgDTHYY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:24:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725773AbgDTHYY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:24:24 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB810C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:24:23 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k11so10781029wrp.5
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aHKRjrUUPU9NZeT/0GbpbzSJvNTODNzzukfXf32omSs=;
        b=GMhj2M59NS4kZCteWqUb7tvYAOiOMfyGpre90KkUl5OFf38R/kG/1IBxR+x2xyBmHq
         eq8mPkDCAxMt1C5fr3xBcORxwPc2UqIV8iMHRdtClemRfdDhHmIZaMTNvk4hcogFEbH/
         vrN6QA2rWC/MX5/T+GAX5gi66wC4wA1p0kSZIOQ9K3FyOm60gmUP7jS/3oJJuByGuwZz
         Hnla+KLGRdUYjqjQfsKntEi1EFgX5NpmC2PmoLJ6t7R3CUAs6LfyfMy8Qe7+NqLOBGM5
         ReABNOVFcnyjRI1teNdsQClXDe18f76Tv4q0IF68vIkF+qeFOYrLf3sp5/2MrHakYJKO
         Gbug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aHKRjrUUPU9NZeT/0GbpbzSJvNTODNzzukfXf32omSs=;
        b=sAsJPjDAU1FHo0ZA68PBdMxN7FWZDoVIl1VzntxyziFtOYlwiyLekbadeTVIrXGCDK
         bX3pkYHc6sjeXWw4PSwEHZQurIIaKOfLhEkFc7YAfHrAna5fUCnVvbJRtnHF3HTorBWj
         YgEBB3p3zWeLcDupclnOu1MD0LclzWRToPNuizH9D/OsAwig2p3g4+D0bwrmiOpljHv+
         dReoRuG6ARuOXvR9rnqXJncXyt4P5lU3s/xb6GoC6NMaVNe70RpkpHykcnURoZS1tktk
         eJjS4FNbAhDRsJKHUeKP1wBzuFGVYz21dlQiemBtbAQ6Y+3og5F1VSKkprEGV+IAORZf
         y6hg==
X-Gm-Message-State: AGi0PuZwy/6oTHzPRsqwfkOdRdAdOrAvGQbf+7VNB/UcwncEner1OLcv
        apZJXwtbcmTm2Gi22UD2sPNepJ5s
X-Google-Smtp-Source: APiQypKBMXHXND4B0SvRrCnwz3qnrli0CKYchoTz8suBS5A26CaziU3AC8QIwNmjVeuL2J/saNtmJw==
X-Received: by 2002:adf:f5ce:: with SMTP id k14mr18613613wrp.39.1587367462394;
        Mon, 20 Apr 2020 00:24:22 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id g25sm177584wmh.24.2020.04.20.00.24.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:24:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: wavelan(4): Plural forms
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064836.GA32632@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f8aa347a-ef9f-a811-64bf-beed366a0e39@gmail.com>
Date:   Mon, 20 Apr 2020 09:24:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064836.GA32632@Debian-50-lenny-64-minimal>
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
> apply → applys
> 
> "This section apply to the module form (parameters passed on the "
> "B<insmod>(8)  command line).  If the driver is included in the kernel, use "
> "the I<ether=IRQ,IO,NAME> syntax on the kernel command line."
> --
> address → addresses
> 
> "Specify the list of base address where to search for wavelan cards (setting "
> "by dip switch on the card).  If you don't specify any io address, the driver "
> "will scan 0x390 and 0x3E0 addresses, which might conflict with other "
> "hardware..."
> --
> name → names
> 
> "Set the list of name to be used for each wavelan cards device (name used by "
> "B<ifconfig>(8))."

All fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
