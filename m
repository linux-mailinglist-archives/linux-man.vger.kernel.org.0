Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 576FA1B05F1
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:51:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725865AbgDTJvP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725773AbgDTJvO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:51:14 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48208C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:51:13 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k11so11308338wrp.5
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tjX832PZ9D4PO1PjlYLZizbfnplXdkBWxEbM2IXzuI0=;
        b=Om1Q8xMRNt+etzKzakfPo7cWQLTPRW9FNQXL28gkh6W+CraDYzV3Ps+QloRq29heRD
         AF6IplsTNHR9yYiKBCr/XuAHN4ya6wKx6p3p+FEf+M/l8iK45wUh4ea775lD1dpSoFE1
         6tWh1zrzLu70kX3gb5LQP/aoW/DDzUrWfkNynDk4hOKqOU3x3jMR2DwTKEkpq4mThUHl
         VRAVg8gYnvz+1Ko4zLrXc2u7DrwHf6z73KvnoQ3MaPFIX3q9XT/UbSzmFSALkSNXC0xQ
         S9mtBlAM0QlBEDCBTsm2J6h/Koj0v77hk5qK9KDf2PdrGzymqrv+4FPcv05JO7BQHyQo
         1qdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tjX832PZ9D4PO1PjlYLZizbfnplXdkBWxEbM2IXzuI0=;
        b=mvTnBVqQSPrzlyTvexDrkaqz6t9lz2HhuVQ47gD8BSLpruc6jBNe8WMB4BU4+cm8vo
         N+JQ0z9TLkgcHg+9gd9n3jLYYPCvJ6+Y8+hGQs+2wREcRRUrEmHI3JsdIcRF2sh+Phua
         I0knlme8Vpnf5w4uC1jGpabUBnQhLwmSKrrwAaMWPQnT+qsRFyw8eU7jKl3L1MecOjYC
         CvjQr0xQtYkLzdtaLKMbjRS1KJRvTDFE6m0dHSDuFG79CU0R3hQ9/Kxwdd5y3aYzC5/q
         zG29lQDEjA2edtgUwD0Dr/ZEIbzXklFqEmjwBp2BvH1Zsif+b+2MjbXCdbKukYXE+ow5
         IqwQ==
X-Gm-Message-State: AGi0PuYWrtHGTymkiX0rquW1D2/Eg0z/51apQtcGyBFWmufsBJ+z7/Vo
        NaH+RHtTaa5DjJGvdfc07k/UG+4t
X-Google-Smtp-Source: APiQypIAsEs+grSHgRBfgf9QQuF3p95JCs5TwxjV2WQK9QSqEyWl1/4ueeQDO++vBBoN/V0C/ZIBvg==
X-Received: by 2002:adf:f54c:: with SMTP id j12mr16827967wrp.183.1587376271757;
        Mon, 20 Apr 2020 02:51:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id s14sm633564wmh.18.2020.04.20.02.51.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:51:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: random.4.po: Wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064819.GA31629@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1cebb9e2-d08f-301c-c216-2c5c65981d66@gmail.com>
Date:   Mon, 20 Apr 2020 11:51:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064819.GA31629@Debian-50-lenny-64-minimal>
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
> The first sentence is very hard to read and should be reworded, maybe
> into two sentences.
> 
> "If a seed file is saved across reboots as recommended below (all major Linux "
> "distributions have done this since 2000 at least), the output is "
> "cryptographically secure against attackers without local root access as soon "
> "as it is reloaded in the boot sequence, and perfectly adequate for network "
> "encryption session keys.  Since reads from I</dev/random> may block, users "
> "will usually want to open it in nonblocking mode (or perform a read with "
> "timeout), and provide some sort of user notification if the desired entropy "
> "is not immediately available."

Changed as per patch below.

Thanks,

Michael

diff --git a/man4/random.4 b/man4/random.4
index 5f0d52472..95fee6ed0 100644
--- a/man4/random.4
+++ b/man4/random.4
@@ -136,11 +136,13 @@ these applications,
 must be used instead,
 because it will block until the entropy pool is initialized.
 .PP
-If a seed file is saved across reboots as recommended below (all major
-Linux distributions have done this since 2000 at least), the output is
+If a seed file is saved across reboots as recommended below,
+the output is
 cryptographically secure against attackers without local root access as
 soon as it is reloaded in the boot sequence, and perfectly adequate for
 network encryption session keys.
+(All major Linux distributions have saved the seed file across reboots
+since 2000 at least.)
 Since reads from
 .I /dev/random
 may block, users will usually want to open it in nonblocking mode


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
