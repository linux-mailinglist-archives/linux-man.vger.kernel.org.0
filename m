Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96B481B0550
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:14:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725971AbgDTJOF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:14:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725865AbgDTJOE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:14:04 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5619C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:14:03 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k13so9951732wrw.7
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9rCsD920BGTDizhrRMJ1/dolKyp9wSEPtOq4GAyoZv4=;
        b=K/nvU1to2j6n/cjeXx4PafbmDyV17I+3hv1vEZJs+7qjhsfoKOyKQp10uR5kmyzSNw
         O6+Pizwb1vJyRGwLfYroTKW4X1jU5IVbOA8uLc8zPKi4MP1At/OkTkKBEkEolcpLz83G
         lt5NHLMSeW69mbj5/CX+o+dERemwVCvFITsULVO/EZJzSk3ZuUl/a/4tVWFzWdepSt6U
         /Ug17QCuCihDoFCPUdQCyO31uT5WroSAENKMz8VLi3+yByGUGZ5Jea8dxeoJOp7kkUxo
         D4HFfnDC4Tk6vlSm+d/8r+U1q//1QkquMbklWz6AJepmsQadMYO1m2SuYBRpf5GjOAEe
         G7TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9rCsD920BGTDizhrRMJ1/dolKyp9wSEPtOq4GAyoZv4=;
        b=o100FpXY23dnHs2gTScnF/rVhcPAHmNU3Wr+kGF8r6+waGNceBKir4ApgJGjxqxUyN
         MsN06/tnBzQ4Wi4cy1QsCjNqNE9UradCb+GRrQ3Btrs/rE+rInFzr3g6yrDM9Q9Fmuer
         DMxnH4/mRB7WN6c6sod2we5L/lvU7QkztZ4OCN97E2mBIk8LGYtr0fApIQETTbPJHgHr
         PfSW90WXF9nMOJKhvpWB3Wmr8Rb+5LqFYLw/psv896ZOBK7g3vGt96v72GTnHlHV8b1r
         s3LDCWPsrp32OhiQoSXzYwd5shbyRoC8+u6qJWyFJOKM/TNBpOVy0c0esjfJxDXUErm8
         RVFQ==
X-Gm-Message-State: AGi0PuZdedREQ139zzxpLipSlnhQzQxTWpPSg28vnW1TJjBDs0X6mrGr
        Z3cPCfU9agPCp0jNpYncmzwarZjX
X-Google-Smtp-Source: APiQypLlaDU789xLEO/KdRKgZiBsIrUedahQXxG6gbkdso5cbft2K2/hUDGQaEmf+Q82Y7s7fYNONg==
X-Received: by 2002:a5d:4b43:: with SMTP id w3mr17933629wrs.208.1587374042529;
        Mon, 20 Apr 2020 02:14:02 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id a205sm580847wmh.29.2020.04.20.02.14.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:14:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: tzfile(5): Missing/Wrong markup
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064834.GA32540@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <68bcedff-6518-f942-8b9d-e77682533a1d@gmail.com>
Date:   Mon, 20 Apr 2020 11:14:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064834.GA32540@Debian-50-lenny-64-minimal>
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
> timezone → B<timezone>(3) and B<tzfile> → I<tzfile>
> 
> "It seems that timezone uses B<tzfile> internally, but glibc refuses to "
> "expose it to userspace.  This is most likely because the standardised "
> "functions are more useful and portable, and actually documented by glibc.  "
> "It may only be in glibc just to support the non-glibc-maintained timezone "
> "data (which is maintained by some other entity)."


I can't find this text. Please elaborate/check.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
