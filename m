Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B514B1AFDF7
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:15:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725947AbgDSUPT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:15:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725905AbgDSUPT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:15:19 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A680EC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:15:18 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id g13so7560125wrb.8
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VPwPkDMvRjrImGcK3jQrZXtUamat0mRFlxn4Ij0Wmag=;
        b=ZaRbEwV//Couy9McoqtNTarkO9cCiZcvE+jHhQdhbbolCUCeTGkTbpeba37L0RgkMm
         vFR9brxjV+GW4HrDX1mBYpu5liElWlrrjKxgkYl0c6C3O6fPNk8HQgmSwXjHw0nEfdh7
         UaMc3+R1HjgNocacH9h4vRH5jH82KkJgS/3NQMjIWY9hhrBHK84YzY+TS61v1SvZJ2d5
         AVZppDEzgDkJ02dAu5Y5s7RWYIbPJRi5TB+gg0JHT21Skw1ZVoTZDILkcf/t3Tc2dXLV
         5fF6Pq26ENmBdKgec+oiFFqb/O0jcCyVM9QRR/QQlP/L+2+5wwisHORjoJKnsGPA2s5k
         EKQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VPwPkDMvRjrImGcK3jQrZXtUamat0mRFlxn4Ij0Wmag=;
        b=k4Sn+oBpMzmtRnEtWowMTWqTKESkvQycdvcJFsuwm/3QJMT82dP8RluqanqszwqwN7
         njwOZeWwOrOlCYp7OHpip1xPD0pWhcaTTbgGwkq7qL9cTsZlKMkP3aN6Sz4zSsU5luVr
         qMIzFIbpNuq866Rc6u5pZYXc4jopi/O7kV7025AKsyoIOR/bx32VhdaQnRreCIFgjvyK
         TPtLg4x3ZhnF6YR5bSfJwXyHpl7Q+RCxHPtdmXZRJsYBSFj+5NJHTz9wqaK2N/itO/7V
         puSjI2RhIK4nVhhb1iBgztXhUyDFNIbmjtUinVaj1CDlpml4/x87oyP1RBj2Ps8RSWuW
         S3lQ==
X-Gm-Message-State: AGi0Pubb/eD6/11m3hECMM3J7ZSy63nMRWbrYnvroxbjlarBNAGkFdo+
        /FfpBBVl/heg19YESULAVIrfBx6h
X-Google-Smtp-Source: APiQypJW8UtoANSucjBmOAdyj3oiabaCkrCeq9cQ7tPjkVBseySPLAkULhmODoTTKQQwckR7RYmZLg==
X-Received: by 2002:a05:6000:12c7:: with SMTP id l7mr15573543wrx.239.1587327317265;
        Sun, 19 Apr 2020 13:15:17 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id l5sm16421339wmi.22.2020.04.19.13.15.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:15:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: proc(5): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064817.GA31537@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e710cf35-31ad-6c4b-835f-b9a8190927f6@gmail.com>
Date:   Sun, 19 Apr 2020 22:15:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064817.GA31537@Debian-50-lenny-64-minimal>
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
> Translator: Has more fields on my machine
> 
> "sl  local_address rem_address   st tx_queue rx_queue tr rexmits  tm-E<gt>when uid\n"
> " 1: 01642C89:0201 0C642C89:03FF 01 00000000:00000001 01:000071BA 00000000 0\n"
> " 1: 00000000:0801 00000000:0000 0A 00000000:00000000 00:00000000 6F000100 0\n"
> " 1: 00000000:0201 00000000:0000 0A 00000000:00000000 00:00000000 00000000 0\n"

Probably the translator is correct. Someone needs
to update the page.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
