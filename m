Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 301611B0289
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:15:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726063AbgDTHPG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:15:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726023AbgDTHPG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:15:06 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9BDBC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:15:05 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id d17so10711015wrg.11
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=r1k7U1pOhuKFlO5Wz2pdvMiDXBV+NGUeKD2c0V3fJNE=;
        b=nAU2GIppHchw+bazrTJHzygcFMN3gRxaIIE1IWs+oe+0dqJyBfhPhvlBMixDT6wIo4
         Fu2OJbuqMUHgvEPVOSfYnpR8w+MNLYX+wrw2emTWJ0myaGO8dFctqcR9nzFUJQRMu3az
         tFptWk1Lu9JKEAjLf027KN9AEqgNRk7CQMqDl2bSdOQNgBs+lueMrRLP9vwcM7ZmEcE4
         Uy3PlWcuxCPQZ1slqXpBnWR0MPvelJTGyTR3ZVV4YYgiTZnR36YXOXQxNbOOk8KLgb+8
         vMqxSQeTNsLpAtmYiPZ3ps20Ym3tJSH79FoRlX08YsS6Ow4uwsN2WxrKb4MUEvJ8uYXl
         /JAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=r1k7U1pOhuKFlO5Wz2pdvMiDXBV+NGUeKD2c0V3fJNE=;
        b=rxc4tAIgqGIigCwwuGT+qaUCzKCTADXSNZBjIiY8gw7+j0EFlttdwNgd61qGjbFVXb
         jWLdBvnU7wBbqWz1ZeUp8yOewep8ViMNDRSvW8GNRcMkvBng207Vfn2dS5/+q0dc8a8A
         Yh2tlyOV30YRbOGSMfQCk8IjgJYbXp0mdUbYZ9ConqeG3LlhGIKleAkEKcDlt1GCDscm
         jb8qEXGPbcDKbsJTLthqkiqyqzd/tmafPtVdVH31qBsFbp4PwIABFFjj7qosUOIEzsMr
         rMx852qW+lof/EwBFW6p7JjWgTD5X0kSw2BIPaMLozJ1HGbPJi3maWLdBgC0B/7DbOQX
         VPaA==
X-Gm-Message-State: AGi0PuYQ+c0hQkc4SWahtBa938ZZOqjl2FLxZsfYQEey0JF5P85zxuJp
        cN03PK/0nKfpfrq+mtfUv7YMqXmx
X-Google-Smtp-Source: APiQypJrAj0MUmux1GapYUv2imxalMb45xphTMGOhrsgVIQ8BLWGMnEgQw+QvY2q/h5CsuCLBhsoUw==
X-Received: by 2002:a05:6000:1287:: with SMTP id f7mr17639395wrx.345.1587366904329;
        Mon, 20 Apr 2020 00:15:04 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id x13sm168492wmc.5.2020.04.20.00.15.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:15:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: wavelan(4): Wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064837.GA32679@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bfa1a9d0-bb5c-3fb5-f7f0-9df53adf03fb@gmail.com>
Date:   Mon, 20 Apr 2020 09:15:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064837.GA32679@Debian-50-lenny-64-minimal>
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
> The beginning of the sentence is broken, missing words?
> 
> "For the 2.4\\ GHz 2.00 Hardware, you are able to set the frequency by "
> "specifying one of the 10 defined channels (I<2.412,> I<2.422, 2.425, 2.4305, "
> "2.432, 2.442, 2.452, 2.460, 2.462> or I<2.484>)  or directly by its value.  "
> "The frequency is changed immediately and permanently.  Frequency "
> "availability depends on the regulations..."

Fixed as below.

Thanks,

Michael

diff --git a/man4/wavelan.4 b/man4/wavelan.4
index 1e6e3f447..2aa3d7977 100644
--- a/man4/wavelan.4
+++ b/man4/wavelan.4
@@ -79,7 +79,7 @@ specifying one of the 10 defined channels
 .I 2.422, 2.425, 2.4305, 2.432, 2.442, 2.452, 2.460, 2.462
 or
 .IR 2.484 )
-or directly by its value.
+or directly as a numeric value.
 The frequency is changed immediately and
 permanently.
 Frequency availability depends on the regulations...



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
