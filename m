Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DA121B03DC
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:07:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725886AbgDTIHl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:07:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725865AbgDTIHl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:07:41 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB70FC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:07:40 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id k11so10925066wrp.5
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bhOKczlaTzhSDQpX5Ls1h7i4h5nRVoH7h0vm6s+Ckc0=;
        b=BWya7c9ZfoZCzB0eIdqpWNR8jrKsVa6qXr/0CI/IvSP6vvCpqV3EfS6/Id4bKN6Qgv
         yzvKHKLv46v6byEqp1omNvxiURhkQiHIZmG4bDp1+LCOjaUTzbgm2k2WA5jsOn/eW8G6
         T4Sg1jmLVUXex/5qt+TYDufSVWAoJ0eR/JOUVS8Xw36Y0aI5/k5t+XV4kvp6g+8+xk27
         k2Kn06bnZ7U9D8qhQmL8BmlZYoonqkQdX6kGPEttHko/yvWx0qVJQFCrbgFmCrT0ECB2
         JJiRX7kWnGbqVd3Ohpbjp6VFS0n2tMmyXahi9FvqSRgYlrGk2frXUrJEMt98K5oxy5Dx
         SYRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bhOKczlaTzhSDQpX5Ls1h7i4h5nRVoH7h0vm6s+Ckc0=;
        b=pxxcXSK+3VpiOihFVoFQ2qaxQdk3s2V+m3NOcyWQhkqRqnEronrPQXjV9/zlaw4o/8
         G9dNPq/4DVWjYX5KYjK7pnBZJHxCq2Zj5V5O5iaf6dnt4fgl26l9TW+T31aTmsEIfh71
         N/0hU9j6k/x3lq0/AahmFP76ByBnwnEmOdUZpQ02wSPFN9uR9V7/uG8txV44ohcfCzyQ
         LBMNGppgy7jpf96Ex+KJmY/S+HKMGiih2hovbCVdLxcCT/VfiVRJ6Fb7JPd18xS0548n
         pvAIrOOi0exl9ZFTCDe8Vqo8f7b6tKKtNsj3aBS7/QPHjUJ/tRT8qcihm1fKsdxAVaHl
         4VaQ==
X-Gm-Message-State: AGi0Pub/h5HfdcVwp6SJCIDliCLLIASUObjgT3AsmgKPDjOr0V2m5rv+
        Y551iLk0YzB/sQ7Su/87CJ5Jq8fj
X-Google-Smtp-Source: APiQypIawyYvAh/MwckiGOGZBkywFi0mueCix45oqJGc6vYLYBj98O26Abb6/9tZ/8f/tThUs7fUOQ==
X-Received: by 2002:adf:ec09:: with SMTP id x9mr17207655wrn.364.1587370059172;
        Mon, 20 Apr 2020 01:07:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id c20sm336488wmd.36.2020.04.20.01.07.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:07:38 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: securetty(5): Improvement
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064822.GA31841@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6bf075e9-c83e-3c4d-08d8-d81c87f1730d@gmail.com>
Date:   Mon, 20 Apr 2020 10:07:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064822.GA31841@Debian-50-lenny-64-minimal>
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
> How about: 
> securetty - file listing/containing ttys for root login
> or (from top of /etc/securetty)
> /etc/securetty: list of terminals on which root is allowed to login.
> 
> msgid "securetty - file which lists terminals from which root can log in"

Fixed.

Thanks,

Michael

diff --git a/man5/securetty.5 b/man5/securetty.5
index 148f70a12..2f6c2863f 100644
--- a/man5/securetty.5
+++ b/man5/securetty.5
@@ -25,7 +25,7 @@
 .\" Modified Sun Jul 25 11:06:27 1993 by Rik Faith (faith@cs.unc.edu)
 .TH SECURETTY 5 2015-03-29 "Linux" "Linux Programmer's Manual"
 .SH NAME
-securetty \- file which lists terminals from which root can log in
+securetty \- list of terminals on which root is allowed to login
 .SH DESCRIPTION
 The file
 .I /etc/securetty



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
