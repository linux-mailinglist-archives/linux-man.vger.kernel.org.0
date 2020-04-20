Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AAC11B05D5
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:40:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725886AbgDTJke (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:40:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725865AbgDTJke (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:40:34 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9940C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:40:32 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id x25so10226068wmc.0
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZqzPgY3je3L6EfsgZncOiVWJAkWOXFL8ZWmTJPBt3Kg=;
        b=HJKnYhJrbaSdPKpi9KHk05HSBLEchH5EdMfsqslYWbuAA6Kk3uPCBtzG/E9vT6QP+P
         wslivwjc9sIfyArmWk8nU6gEqff5xotnscewlOHF5/OPUf3qh3FNbHLzZDUkoiRz3vXT
         3ai/Gk4gGazXJ7jrAQ6pjsNZkjnCGkqOsSy0el9eKO8lbpOvOkr351E+SVRBpJdHYF5L
         2Qi1YHMaXfsCPMJM1RVl2kXb/BAxcTwffmwhwU1KQ5WszkAL+/S8zs4hrzsLkYw8b28g
         mTI/7ylc5URRn3+nX3LQ4O24jICz6VIyhRV+zK3Lg91Qq8lAoeeOIV0HIABF9O3TOdPY
         iuxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZqzPgY3je3L6EfsgZncOiVWJAkWOXFL8ZWmTJPBt3Kg=;
        b=DYxH/ORIcHiqWlk66RTiSBErSvMpCjiGugaWvYPE9NZoWW1jYh118wz5AC9ENwoY3D
         VExb9Wp3uUUipSc39dfo2IWp/1MLuzN/dby3AYfALD+qSKrPYUo68795rBqux0vSZj7D
         gI5s30ES0JbidH6PuSApI+jJrFqhoGDL//N3BqaqIkeCEpvffN62bUGgHR6MTA4oByw9
         Sk7rFjKQPIAyuYvEEeYeJPOwWaA/ruqmMhWmqsKGSqd9tiDQvmjGJvEA20ErHc913QXy
         7R4IgbGp1lvDe3LR2fOCkY9mMy6wLSjetarXI4mk+wELh9TN8znmpuAaTdWj5x2R2kkj
         nq4Q==
X-Gm-Message-State: AGi0Pub9ZxJH1fU3e/PK+DpHpJVqIZrtv4ezC59e2MYRAP8FqajI5aZA
        R5ib9ux4LZmiBL7rbdb8mddMDT2w
X-Google-Smtp-Source: APiQypL7ROL5o5fq7pHrNTPuXY38YCbdyx+JnJIkAjgGWN807OahY3JOHyaVuzk/N6cB5r68rwDROw==
X-Received: by 2002:a05:600c:2341:: with SMTP id 1mr16265448wmq.153.1587375631371;
        Mon, 20 Apr 2020 02:40:31 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id m14sm430449wrs.76.2020.04.20.02.40.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:40:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: rename(2): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064820.GA31701@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4a026c82-7dc1-164b-186d-b4dceb3ebea9@gmail.com>
Date:   Mon, 20 Apr 2020 11:40:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064820.GA31701@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> 
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
> If newpath exists, this is already the reason for the failure?
> 
> "If I<newpath> exists but the operation fails for some reason, B<rename>()  "
> "guarantees to leave an instance of I<newpath> in place."

I do not understand this report. Please elaborate.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
