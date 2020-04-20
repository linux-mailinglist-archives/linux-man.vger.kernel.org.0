Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57B4E1B0538
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:05:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726245AbgDTJFZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:05:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726141AbgDTJFZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:05:25 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 419EEC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:05:25 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id 188so3952197wmc.2
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FQtPv0PzJPki3llvGso9SxlRGcRQuk60aA5GqqUJmQY=;
        b=hZLrhhydX2juH8wql44KmqLRTwQTpNAUkSJ9X+7sC5eKSEMwhvhux5le+7Or+WtsYh
         Ek4BGe7UPOnZB7qohl927LP4F4Gvq9Tw0YjXXLofk+nXB4vXkMrxMmmw/Xs993GIdapy
         1+GfSlyg38D3+bbCjEH+qvid/tqNKPudaF2kK/9DXGoe46xYIrlkEnRU/MAH+WuAGp8l
         tRs7mdpLl7ju32QVnKtnEFApGTTXRJGjgjarAEr8kV9hViQYf5uFsgTTxwOPI8C8pSPW
         Pi/JP7Cj1jaw69vKi6/y99GJTU87m1SGfH6Af1nfWqWa9GY/cFKofmvEPwrzUHofLdbW
         my0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FQtPv0PzJPki3llvGso9SxlRGcRQuk60aA5GqqUJmQY=;
        b=HVNlJFKXrBUD8SZ5vPIIrpYGE7KGcua1MIVEROItIAlP+HemBoum59LG/YPv6KPjMa
         wtT2zAojA4cm0j5xthngQpT6g0UZ7VxEocd1UCSG+GCZSq82HO09joBOKHv5szjE+HvF
         Rfb2VvWyoUMKqZZP18qyrAj3snXdgvQvTaedb5dTaCcmGpR+oZeqB7l+h78oogCW1lFx
         4lHZpTVo20Co8sdgQfMfs5TYBDQCTxltfu98M6hY8N7sjClMrfpqVRTXnkL8Pb+FDD4J
         3EVcK1C2dFW5yhxPzQGZ/RcWbmpMLq1pBPXV/21yLgQTWjSTF4969xmz1FF+X8WSNcM6
         SuEA==
X-Gm-Message-State: AGi0PuaGHEKiXZ9mFm9foxcznpUgyIQT1AFSsr5illXAr3DeyzzM5e97
        z/Ebz8aENsmnjBIq3RMpdoumgs+d
X-Google-Smtp-Source: APiQypJpsaGXi47l28rO4iNK1r6N9orrOtGYjKoqE8wlavgkRcYxiy2K2GPq2xDHw8arnOOQPR/Onw==
X-Received: by 2002:a1c:4d07:: with SMTP id o7mr17838571wmh.59.1587373523795;
        Mon, 20 Apr 2020 02:05:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id n131sm540051wmf.35.2020.04.20.02.05.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:05:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: networks(5): Question
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064812.GA31279@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0278a915-7fe7-dfc4-b1bb-105d74908afa@gmail.com>
Date:   Mon, 20 Apr 2020 11:05:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064812.GA31279@Debian-50-lenny-64-minimal>
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
> What is "this facility"?
> 
> "This file is read by the B<route>(8)  and B<netstat>(8)  utilities.  Only "
> "Class A, B or C networks are supported, partitioned networks (i.e., "
> "network/26 or network/28) are not supported by this facility."

See below.

Thanks,

Michael

diff --git a/man5/networks.5 b/man5/networks.5
index 5f7477531..75ad20fc9 100644
--- a/man5/networks.5
+++ b/man5/networks.5
@@ -66,7 +66,7 @@ and
 .BR netstat (8)
 utilities.
 Only Class A, B or C networks are supported, partitioned networks
-(i.e., network/26 or network/28) are not supported by this facility.
+(i.e., network/26 or network/28) are not supported by this file.
 .SH FILES
 .TP
 .I /etc/networks


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
