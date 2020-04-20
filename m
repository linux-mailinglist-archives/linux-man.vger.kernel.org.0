Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB7781B0545
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:09:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725896AbgDTJJ7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:09:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725865AbgDTJJ6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:09:58 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 867A4C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:09:58 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id s10so1992493wrr.0
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vQnHcWvgKE6OYVHOyhEG1+HSIKLrV/nVPJG8t6R6upI=;
        b=Hz41N5XNV/J4G2xLAwISlQ7dk8swpnIwOCj0eJDwkOvdN0QpSdJpVJNqpOpEcMTjxx
         ScNsAKnhpeLLKk97na+bZwDVs/QYyeZPXFyekcPipY0wcbIO0PPC3LL4O0ZhF/IDvap/
         wI2K3vm8+YWU+D5Vpv6bwajxWy3naEwa71MS4bBdBRXs11bBLNOHt96tiq0RzbZM7KPU
         qBNFksMoksqz6zrX4E0ZmXAtM5SsH1xKjFzU7+LNtwF6aPez2I2iws55g4Xh4l8bT8sG
         krCplWzg17+KL0JXkUSnmaoiCX9Vblan1KcZHdNBvHnIJqe/Go5lDfgPVS6g3/fcYnXJ
         oPvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vQnHcWvgKE6OYVHOyhEG1+HSIKLrV/nVPJG8t6R6upI=;
        b=dT/cXIZItetYe/bLWkXjI+u3UuYHXsx1O95dzQlXYpL9RQW2mW8rYcJBDbV7j9mr1F
         uhVFplAGvvX4wIhSISyxQzsNdRE2g2o719fzKt5H9GM6gcpDiHX4hDsabKF97MOz/RyU
         YOSCeZBE6IpMB+wfAN8ydQlNdoC5R58KMWpkBQrh9tB7xzrsMx9C/+uXY3QRUG1G8RTo
         Q5DlzjnDokkmxKvXwut/I5QkOvWI4I1aYdejgZB26360MENfLnIYkYkW4TJClUwLwV+z
         wO51rfqLC3yZGiU0yIYYP8WV/9Z5fXYpnUBB+tWnAm4XU4zlvZFfqlRFNziPuGwtK6pp
         CTHQ==
X-Gm-Message-State: AGi0Pua+HmFopkfc75oWhFoQ2a3pMlXPpRknPD1eBOkSt03pDv83OltT
        GKSz6eAw3S9CLu/Au+fJB1RehypI
X-Google-Smtp-Source: APiQypIOMFnDznWcTk1UQrRIraeQhEmAVD1HB42kdaifNj/zhzQqH9oTP03b8KcEPbZCKP8kvyItcw==
X-Received: by 2002:a5d:4ac9:: with SMTP id y9mr7565408wrs.182.1587373797125;
        Mon, 20 Apr 2020 02:09:57 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id h137sm19859069wme.0.2020.04.20.02.09.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:09:56 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: psignal(3): Terminoology
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064818.GA31606@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6fdc75e4-bb8f-4988-a103-70cc26704838@gmail.com>
Date:   Mon, 20 Apr 2020 11:09:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064818.GA31606@Debian-50-lenny-64-minimal>
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
> The "message" is rather a description - change terms?
> 
> msgid "psignal, psiginfo - print signal message"

Yes. Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
