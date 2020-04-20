Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C3B81B0167
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:13:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725896AbgDTGNA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:13:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725780AbgDTGNA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:13:00 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01C00C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:59 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id v8so9920824wma.0
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5Vj65J8qcEfXSYmqxtskMpheJaZF6VEuDyUmejnuRpU=;
        b=FtpuptbNvX16QuZ/+eBAZy6T0s8v2hTI0DQeSFTQWdhUjIrtA4SIrpJIOdzt2KKCN1
         uOgRtRoisutz8/u0rNy7GYjAmaNn7tObdhHOmRWUJw20KO7a3wXKNV19gQqDuEow2fW6
         Ir8gQp7VQDQEVbdTB4SXRjthJKlN79o2A6qD1NoQYDq2BcYv/R7AYQPz75oSJjTV2tAU
         VfAfP59268rYIDKkmtM+ryJmJpD0GceS1gILhRRNRDk1+sSkBImIvhfspHM38DCf/la6
         rvw5yfzaVcrvM0OzdMlT3zXn8GnsFXgRJOljEYskbjwFFo6FuFpu2RdG7WxhDiaKugjt
         cwwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5Vj65J8qcEfXSYmqxtskMpheJaZF6VEuDyUmejnuRpU=;
        b=LDL3ucMmJk23yExTNvfAzZB0yZosy3lJpcgqgHup2EeiZG7Jh+Y1gUo6FPHBFvjf+k
         ORNofIc2HrRIl0N4oNmm0sryQoQ3OOtsOvuKvOMGcG5Hil8CSazE2HbvJVzW4geDrLMK
         A0EW/tlMYXag5h0akSgEsC6rjBbH1C+q3c+nRCLJwBOcQWedv5iUpOOpl2iWAJZxtOlj
         xFGA2w3bZqpymS/NsaL/57Q5jE0K6PjlaVwUk/HPCU/DpEIFqK93KilYKagsfYJtPFnN
         hpXrHG68aVUGo9B9RkW8sXNBBVoq7ih8YqxbCJs+yuPbFTNGlpQ16LRhCudJrG4+DSQJ
         2gfg==
X-Gm-Message-State: AGi0Pubalr5syvzXll04IYptqftORDa83APqydYsYJ0NLAZGQlL6Qf5s
        hwFK1nha38sKj4qYddMdd2F4MeIW
X-Google-Smtp-Source: APiQypI//ZKbPM+Fa93QrUsFozvhgF8hYPOCHH+AjhSiWEgqVBhf55ORJTEpbix226AuwpU3BoQU5Q==
X-Received: by 2002:a1c:7d15:: with SMTP id y21mr15179494wmc.57.1587363177601;
        Sun, 19 Apr 2020 23:12:57 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id p16sm36206050wro.21.2020.04.19.23.12.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:12:57 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: signal(7): Punctuation
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064824.GA31910@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <dc3976e3-924e-297e-9da5-3ca66e2390e2@gmail.com>
Date:   Mon, 20 Apr 2020 08:12:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064824.GA31910@Debian-50-lenny-64-minimal>
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
> The full stop probably should be a comma?
> 
> msgid "Pollable event (Sys V)."

s/./;/

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
