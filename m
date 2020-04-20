Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E1331B0197
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:34:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725865AbgDTGes (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:34:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725815AbgDTGes (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:34:48 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AA90C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:34:46 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id k11so10642596wrp.5
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gomIAWQCAVWLmLWf7Iy7lcbi9Z8yDJo7dF6FEc6Eg8c=;
        b=JsEKSSa21FNpZHkBoIXLTozYxES3K1SNq+pz1P+EL4PZI8zMscou1DvJoxReiw/5oK
         TNMs6CNKqrJ+VWsN2ka0NZe56xMQ/FRLo3XOk43MdetM4xa4pmyhbLmHFFy+V2BenlOH
         rC90wZlyJw3ABIiZz2wePysX8WnW9ueoj/FKnb8Awm4dsoji59UkaYa2bmT/aRngf2f7
         vna7+YZWuT09a2xuYFJfVcoxbTajtw4nRO+7eATdbt+Hl1ZXG/wG0wwULliSta5GdbqB
         Rn1hDxpgPQ0DZ+b1uxDybH0qi9a6/r1U11ikdj924UD0qPp+AGG52xBT7KOG3D7ekz3h
         Mb4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gomIAWQCAVWLmLWf7Iy7lcbi9Z8yDJo7dF6FEc6Eg8c=;
        b=sGt1EFFnrzHMLQN3IocxpclRiESv/lMb40l+s6VbVt7Z5mdBlJJtWyiC4e3GjHOdmZ
         KQsTGPWk0Af4fCkkQAuZ4MErTCxwYyZamic9oMv8avfmdJzQXhOzEEDmJDuEvww2H/fw
         SBOUef6HaLQgMrN+5hkxnPmUbfjVAizLM2zSuPnlQCjoeLFfiFDOJfNOS/X9kWmb/eA6
         pPy1tIOMi+ZrydUZEnx7Q+vlnUhBi+NRmJkxZAtnWwQEGZM8laLWD2HhRutA9zF6WZY+
         vk/1G4HFi7d+LPerFb3glFS7DO1Can75eGGT5mCjpkBZrNuW68aSJt1fEsGnXNVpe+o0
         IVYQ==
X-Gm-Message-State: AGi0PuaR1xB2Y0IouLoNz5gms0bgnMDgjHvQAj30pbCT7mX+MxFAhpiC
        gwpmzgr7MLSA3V1StorFgWciougB
X-Google-Smtp-Source: APiQypLmxio2RNc7/dhiD5r10yZmcQpuBBNhd3QyUidQ9PcsK0glcSTOSZboR1ceNORnx5vReVuDkw==
X-Received: by 2002:adf:ffcd:: with SMTP id x13mr10273025wrs.11.1587364484960;
        Sun, 19 Apr 2020 23:34:44 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id c190sm46969wme.10.2020.04.19.23.34.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:34:44 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: clone(2): Missing closing brackets
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064752.GA30145@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8e4c88c7-3b05-1ff5-1f21-814d43146cd3@gmail.com>
Date:   Mon, 20 Apr 2020 08:34:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064752.GA30145@Debian-50-lenny-64-minimal>
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
> Missing closing bracket in the following strings:
> 
> msgid "B<EINVAL> (B<clone3>() only"
> 
> msgid "B<EINVAL> (B<clone>() only"

I can't find the problem text. I need more context. 
Possibly the problem is already fixed upstream.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
