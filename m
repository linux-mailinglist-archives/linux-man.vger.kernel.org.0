Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78A101B031F
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:35:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726373AbgDTHfI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:35:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726036AbgDTHfG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:35:06 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33562C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:35:06 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id x4so9812377wmj.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XVcGnciTKjY+w+InVQLftrhxs5MHH22SzgOxh/mbQJ4=;
        b=W9Fe3dXBus/sFqIGsAbnLY3qJQ4VPOBUF+SC5p1V9+QfNESaqD55U+QuA3iXDVdD+m
         RsW6g7MjUGauBZwiYwdZkqxo8o3P77FpynColjBfg2Zz8xZDsxfBnzkw60ZnihFBrMij
         Y3Jo8iYk5YT0mA7sU0PQ/zk0NKq7B5QYnSH4UrkLhDZeZvcgkpOI22NSOLl6qTza9n3M
         bDmrMaR7bVBv+4BERNTMbDYPN08g0FNHpMS2//+aiutXarNzwtfBCUe9R7kzPj/+S4It
         9hDebdkbRGjl/D1BkmEHRPTlrmiADByFQUjAI75NKmPF69fVlm0I+JuIAsuedo4IKgCv
         mZBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XVcGnciTKjY+w+InVQLftrhxs5MHH22SzgOxh/mbQJ4=;
        b=Tqyscn5rf3w4mhiQoV2S6dOcAlrvQRw3Eqpq2hh5f7EwT38CaqUMtjMBGCyEvpcH0t
         PBVCvAu06GN4ZmDi1jx6EOt1Lt5Y90ddKXfABHBVnXbgBeFpQh9LzoGxTNCyTG3oxxE/
         zFB+anlhF5jDevaoaBcvzLRJ29jmQaHs863gdI89r7qShTZffPgp5v0F4ZpCqpwSXFsw
         pRb3RnpC9mukZFtMHUUEZd2x4cbSnBKAvnOSOF9Mj4qu9m8vlbiGYV8HjSlnQmknnLJ+
         MZ0WV10k1MXPoWMy079gMxqDmyAqy9qwO++z9AG/Ooydqepeqe3+uurZ+ojRK1NoK6nS
         WitA==
X-Gm-Message-State: AGi0PuYi2Dxq/wQRznLCShjR5gdLTM52GZ9Ob9dlGRA6mpHNO88OC91w
        1akHDTG+ZznFoxtxpqLEptdnYJLn
X-Google-Smtp-Source: APiQypIllg6H4vcHfURKLy7tl7l8fmzBO2JQJvUirdv4qUeEz3C5aiC1TsM/A8jR6Sr+fzS2LHFafg==
X-Received: by 2002:a7b:ca47:: with SMTP id m7mr17332258wml.55.1587368104742;
        Mon, 20 Apr 2020 00:35:04 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id e15sm36525wrt.16.2020.04.20.00.35.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:35:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: proc(5): Alignment
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064814.GA31394@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <66d447ac-0a24-e534-f764-392d2d368cb0@gmail.com>
Date:   Mon, 20 Apr 2020 09:35:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064814.GA31394@Debian-50-lenny-64-minimal>
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
> (4) is not properly aligned
> 
> "device /dev/sda7 mounted on /home with fstype ext3 [statistics]\n"
> "(       1      )            ( 2 )             (3 ) (4)\n"
> 

Changed to 

device /dev/sda7 mounted on /home with fstype ext3 [stats]
(       1      )            ( 2 )             (3 ) (  4  )


Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
