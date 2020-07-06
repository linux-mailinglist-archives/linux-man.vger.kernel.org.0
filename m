Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F2F42155C0
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:45:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728477AbgGFKpS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:45:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728414AbgGFKpR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:45:17 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7139FC061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 03:45:17 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id o11so40306611wrv.9
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 03:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vOqLup50whaFu6Z9U+Inlq4YZPExzQsw4wKFXwh7uzQ=;
        b=ig7kaVkDA0yv/HHfoc+bpwo99e4ieU6+BQkGFe1euDS95h0BKm/1/yoWOCgkP4rcru
         T2p2NfW7ZqgFrjqckSKPPIIT2KZNj6GMVmsF9+nVnpdhBB8778vAmavf2bzWy/Y3Fkb/
         /5+Cbr6gMld38Y/LnDfM4+XGR9ZgDQPsPFxZ6bd0z6yWdXdO9mXoEiOlRPvSxrIkvKwW
         XTEkDTgcFBL5EifCVbSv3YUD7bjukJzlDV/VwkfhpSpA6pF/2jdC2sueOzvaf/vwBb6p
         nydJ72HwfTnFfQfRl6FeC521t9V+lQMuI8prUYAUlb3UwAcY5RzCMsGVHtysCL0+/4gg
         i9mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vOqLup50whaFu6Z9U+Inlq4YZPExzQsw4wKFXwh7uzQ=;
        b=euPXz7JQ1iDJTaNfL6XHLGRxf05Nb0ZHlg/HXheja44j83gxvH5QmqHqexD7Pi+vBz
         Dew23m0S6Fu3beyGRluHV2l0bq4ZYWtUtBZX8n7cVvGMffpakik8zuaOqOxWHfSlIpPE
         wJ2clH4p/WqZxPWXq2OLK66IhZHy1fT9Uo8RVJkbmafOHVk8IhQZ4ChTqCOM8S+1YQLQ
         MyL/5vqyFy/CXSiDaMMN8MLVYiR2xXVjX97JW6rDS0n+au0gpontsxlGrE14o++kFFoV
         +SzKCbtW3L0N5K1syQ9dXqNXSpz3e8rXyJ5eoV28/AjcKEcg6oZEkjyzDjO3FGlgkQaV
         xgTg==
X-Gm-Message-State: AOAM533bxyU+Ow+GXJBVjW5a7iS1n6sypHAoO2dVdF2vAWyPo1/9lFXd
        5LZU77ZV4XRIIKMpsFyexW4UY0BY
X-Google-Smtp-Source: ABdhPJwn9YAvR4S2JS8w2+kmRsMEtyZ4B0VJNiZtNZnw98FLPaRQWJqc7/GzpPCF133dSkYSxe5bjw==
X-Received: by 2002:adf:df10:: with SMTP id y16mr48613872wrl.225.1594032314643;
        Mon, 06 Jul 2020 03:45:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id m4sm23032200wmi.48.2020.07.06.03.45.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 03:45:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: proc.5, self-reference
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101526.GA26718@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <235d589c-c0df-bd66-bd63-921e7610ec88@gmail.com>
Date:   Mon, 6 Jul 2020 12:45:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101526.GA26718@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:15 PM, Helge Kreutzmann wrote:
> Dear linux man page maintainer,
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including linux man
> pages) as well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometimes this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a
> convention not held up and sometimes we simply do not understand the
> original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once in a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to convert into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. If future reports
> should use another channel, please let me know.
> 
> **
> 
> Man page: proc.5
> Issue: Reference to proc(5) in proc(5)?
> 
> "This file provides a superset of the B<prctl>(2)  B<PR_SET_NAME> and "
> "B<PR_GET_NAME> operations, and is employed by B<pthread_setname_np>(3)  when "
> "used to rename threads other than the caller.  The value in this file is "
> "used for the I<%e> specifier in I</proc/sys/kernel/core_pattern>; see "
> "B<proc>(5)."

Thanks. It should be "core(5)". Fixed now.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
