Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 979B61B0162
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:12:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725971AbgDTGMf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:12:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725780AbgDTGMf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:12:35 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4ED9C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:34 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id x4so9612668wmj.1
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PwGHHDjhKwrwDctFQgO9p3ZdqQtA+qaTr1dfybuyDa0=;
        b=h0v5m+b7a2ObbNJG+J8lyQdwcrHsbxKCCbSdKsIl9/t9FoYiIUe237vfSdruClQLKv
         Lq7w7TxEotqTTTiScuxxVL7giAvfg+5hEYD261z1hDxUFNt+VCA1dARR8hpVPAP/pDML
         GhRf2fSTHaj8Omu1yZElrCQUofA5QciYUPorvOP2YU+QHWYhs8hX1vj7k99aa7ZPV8I9
         mcoqUvY8pzbG4vaA4Mx8c2fkntT7fG98t+V7Ry0NojFQXIwg4GGwO771760OugCI2IjE
         0KT8xQpp1J+zZWHT6OIs8d8uE/JJf5jhbXhuRB/dSCM6Dn06f9QR9M/PCJBTdDZQRvr8
         aj+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PwGHHDjhKwrwDctFQgO9p3ZdqQtA+qaTr1dfybuyDa0=;
        b=Nb8JAapcHSPcOI71OZrAe9k/SszvsLnHaR284ll0pTZh/tMDQb1SkFcIt73ev6Um25
         vbW+9CGEMAlUjlF4Gp+PSMiKhKmUXrt07bYph8kzJwCWkaxfGZRV4wkwJ4LOUJo5Qykz
         SP8xxI9Wd6aZAEoYfm9CBJdrmZ2UDWrfkZDSzGl5iYbK4tdfSKeq06Hx+50mwH2dGdKs
         0w6w1WTpP9Zcn6EIwY/hfJj9zYHoeiHfcS2ppqkg0fZEwrRmkkpTnYLtvfgWFfcp6zVu
         B8OYoYNOH8hHs7TL6I3/mMxtr+MHEJPB+JNhciTl8AHbo15Lj5VKyR9i/M3Ly1NmVbq1
         QGUg==
X-Gm-Message-State: AGi0PubBwYROx7QhuchyROb6ZDWENxXfZjem7Gs9liZhff5Y2SN0/34g
        R5kZ18sJLlrqMqSMp1zsjlaVHno5
X-Google-Smtp-Source: APiQypJrDJ7BpOtbfvfMpOCQrMBjYQDdkoop9VDkd7JoZtbPz1c48GtWRPnsOQ1E2Lq7lZYTB36S8Q==
X-Received: by 2002:a05:600c:4401:: with SMTP id u1mr15584599wmn.31.1587363153352;
        Sun, 19 Apr 2020 23:12:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id s8sm13047268wru.38.2020.04.19.23.12.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:12:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: random(4): Singular/Plural
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064819.GA31654@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <32c7d19a-ac60-0250-869a-5b5c707b56e2@gmail.com>
Date:   Mon, 20 Apr 2020 08:12:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064819.GA31654@Debian-50-lenny-64-minimal>
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
> vary → varies ?
> 
> "This file gives the size of the entropy pool.  The semantics of this file "
> "vary across kernel versions:"

"semantics" is considered a plural noun, so "vary" is right.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
