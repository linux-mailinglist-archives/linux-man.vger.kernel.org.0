Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CA1C1B01B0
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:40:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725959AbgDTGkq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:40:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725930AbgDTGkq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:40:46 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5F69C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:40:45 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id g12so9996044wmh.3
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xipWB5sfPtQnBJYBse53h+tmh9MrB8Zbh6eNkey/Yng=;
        b=WIo3Ya+oD08W9qVLMsadjCDQITQIYyzh15a3m/VPYMSPxFI/jgUZQghJGPF6I5l5Pk
         1iKooBQ4kzYRwfx2zZFJJd9Bpl3CZeECpNg9iTQZ6nmB6V9poPvOraw33xP6iDLL5nAh
         OLZvgiilZ4tc55RAj+LOWTBzykW98JJS6lsSPipNQWqjT2eM/8xQOAnscEudxITF4IYt
         R238bgeMdIzro/LSLFmibCuHjIF1EuNd4e2irmzoAzC986G3e3F+a6b1EXeCdxp0IWMe
         7xF295tIgTme28JGMyxxabVj+SIwY/v6U01/unGQCkRWLHzcsr4h2XpkqUKFzFcV2T6o
         1a4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xipWB5sfPtQnBJYBse53h+tmh9MrB8Zbh6eNkey/Yng=;
        b=DaQ9RDuKlIkUy4QuEZcnFsTyjiYjTQgbfyyfLzwK9YyZS8gNU1RmtxhSoN4RO1L/hW
         JggUDXEdaBPJNLGzqX3zClyFVbIXX9QX+o3+pADJsio628n37ga93NWg0abd7Na0gadV
         Vr5caENob1gYJtVTeqrIpBSCHnwDT+SKcw8nb/TOqxivDuXqOF9agEHDS0e8A2i6xXaZ
         Ek6kgrqGAL98ircmi2v1VolD5M+vgjE8g+9WfCzpN4+gI7DnurTShY6pFSvkFc/qpcCN
         P0GO8Hl5z3NAHDedzDNrY012zXaY+7FYe1Q5rVeHXIwflSTa0VkG/JsrTCXzHAqNRIwE
         UNGw==
X-Gm-Message-State: AGi0PuZhf2/HF0UGwPe79/nCoaJAKrWLw5RwbmhvfztYdVv7ipPU488p
        r5xgVhC92MfaSZyJB8QbANoQQRzv
X-Google-Smtp-Source: APiQypIm9JjolWRVHX22/ogRliF0y1mMFhjMbT6Eq3BjUe4f0ZXRGRvuEUN7b++CBJOQORzfsCUqQg==
X-Received: by 2002:a1c:3c87:: with SMTP id j129mr15561936wma.157.1587364844217;
        Sun, 19 Apr 2020 23:40:44 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id z22sm52924wma.20.2020.04.19.23.40.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:40:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: initrd.4.po; Missing reference
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064805.GA30863@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <152b1877-5332-3aba-fb58-e755db9c3b82@gmail.com>
Date:   Mon, 20 Apr 2020 08:40:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064805.GA30863@Debian-50-lenny-64-minimal>
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
> initrd(4)
> 
> msgid "When booting up with B<initrd>, the system boots as follows:"

I don't understand the report. "initrd" is a reference to the 
interface that is subject of the page, and as such, there should 
be no secion number.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
