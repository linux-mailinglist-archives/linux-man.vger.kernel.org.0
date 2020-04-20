Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D36441B05E6
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:47:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725896AbgDTJrn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:47:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725886AbgDTJrn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:47:43 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 097D1C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:47:43 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k1so11306931wrx.4
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AwruE+8Sev9eXxCFT6GXbI1zgcwHx9GAtHs0W5lvQsI=;
        b=NUs6d0xlixzxx9Eharlkwe4NXY3w64Ie1l20QQoEnHV39C7FHgY6dAhYbw9+8tM17Y
         7wpCerPvgdh1vBkCSpCZCs4aB/ZrElZKpg5hshg48muuqeER0jJaJA234dbS1NOISd4q
         dac+VZEeMaFJC//qZPVUXkedlhtfyUNC0muKCM2+1KN8s3u6LJeQLtxq6dJOl1fZyGPo
         sDE8ge0S8y7fiIPD1opv1CbhZCt2JrmjnEliAcA2Riqa8bAiiWyAew/YOVtjn+7j30yH
         1beWco52Ss2A1KrnoCXpjsObwWu9PdJtoQYoz7oZwJCqR4oozaUQylPvHBQm8Tb8I19W
         1lGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AwruE+8Sev9eXxCFT6GXbI1zgcwHx9GAtHs0W5lvQsI=;
        b=kWrGhCD1JWEjC6R4jVnvxbu4nWqJ7hSCLXtBvAEc/BtPzmx9bDq9pNHtM3Lg5miXUM
         y8lamHLZMMcbyqRimWmjjwmT2yfHgeTTPRPUvUr5OOPpMl97nTVMoeBRvuV7e0K5Z+aL
         glITeqlHKpINMux82tInl77Art8lDg39OsF1+PFUFDmoYDhSigK/fICNtYrKsrFjLkGb
         9eJMAfGKYiKuaBJJiN7zwog4NLaprYwZSSXUisaNCzir/q1IeqM4vr6xIGDv3iA3cnSx
         zXOHo1uMLF5ivvlWLLwqb5AfetQvaDj6J18pOCXPEMa2cDbuW+sHCHXlJwB75r1/ui0V
         nfEg==
X-Gm-Message-State: AGi0PubsfVUcvEMBHoHj9S/46eFeGxqOTaI4f7HETluG3KIFX5ABBnY5
        B+ON5CsMXxvZhD93EmAhLZa1qB+F
X-Google-Smtp-Source: APiQypIdo6t3qVufV/UsmNxbMIzlUrTHuyHb9sD0x72E+yYCFFUVuYlMOAhnqIpT3rm3IVyD3Btrhg==
X-Received: by 2002:a5d:6646:: with SMTP id f6mr17511457wrw.318.1587376061547;
        Mon, 20 Apr 2020 02:47:41 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id a187sm608411wmh.40.2020.04.20.02.47.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:47:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: sysconf(3): Closing markup
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064832.GA32377@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b3b6bba6-c419-402b-433d-cd7775da6005@gmail.com>
Date:   Mon, 20 Apr 2020 11:47:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064832.GA32377@Debian-50-lenny-64-minimal>
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
> s/ order>/> order/

The existing formatting is correct. ("order" is a keyword.)

Thanks,

Michael

> "indicates the maximum numbers of weights that can be assigned to an entry of "
> "the B<LC_COLLATE order> keyword in the locale definition file,"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
