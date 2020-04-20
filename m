Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62C1E1B04FD
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:59:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726089AbgDTI7J (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:59:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726081AbgDTI7I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:59:08 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55EEFC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:59:08 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id u13so11119900wrp.3
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=S8tB6YzTN+r/Bv9I79Lu+0e1h0U+qTlOXyD156Gqdxs=;
        b=sJghCs5DJuBOa6o2O1LxevKG/8cKNTIIENisru+vxtLZ44h6oABE8hn/qPoTFqyhVY
         dpuJ3bUGPJYXmZt/3NzE5QzScCfELUqXGE7TSffMtM5gqdEJElnoe/vhCbsAay8OSEsi
         0AbR7ME2MWNssdSIBJNaf3ut9hBQ5wedyQWnm2fMawwV1/HyGwEjiIFC4PS8DOjBzVqn
         SsRLr6p12lnjC9lz8W0743rJCuqMoyNLeOdF6TMZXln1Yp8jaHMExC7uqwwwAxlycIPH
         xNvvoTGjqOb7QnN0liCYe2hUjlN6L2IJu9YKpnaVMXR2GgAe2PG86f0byqaBuaXAc2iT
         mOZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=S8tB6YzTN+r/Bv9I79Lu+0e1h0U+qTlOXyD156Gqdxs=;
        b=eC+DROuDBSJvpy0RHagI/ZbNgdfQLRmeDp/4xrbFXq0cm9h5QSiCWtcSIA0fCPPYGP
         oTIbWwtbQuy4kYzYuSaunTfzsqKxRwnNZ4kn2IpzY2TW64ATf6NUdM6kODPEuxi52r2E
         ZLRa0f3kQJh3kKR+TArTwdnbji56q/XsBiSVL23a8RTB1JdAijikXP+iyGAnxZg7raqb
         v74dfX5x6/RvQJ+OYPdEXrKvVIhMIvvb9Yt7935ClNFo1fZiChx+yRl+In2BCQKi9qlh
         0n3LJU8MSstU0FgUdgR/8OSKG5d28fnFx7yWRLb2AcbFEabP5YKiqEcXYASHQGdOSUrB
         h68Q==
X-Gm-Message-State: AGi0PuYfImF57T+J0EEMap7ItYUKOLwlOPywMohm8SLPcgID/ZYB2X6I
        AcuLGrCy1vBOzvG7xpkgZ/okmnpv
X-Google-Smtp-Source: APiQypJa7a2QbqG8N9nWceNG1GpdYEkpSPEcup/8jCGYqm9/Bbde2G8imIC3oFrTsNXgMADjDFfO7A==
X-Received: by 2002:adf:a704:: with SMTP id c4mr17278018wrd.303.1587373146950;
        Mon, 20 Apr 2020 01:59:06 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id s14sm495390wme.33.2020.04.20.01.59.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:59:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: localedef(1): Terminology
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064808.GA31047@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e043b085-48f1-23a2-ba95-4292987bdc30@gmail.com>
Date:   Mon, 20 Apr 2020 10:59:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064808.GA31047@Debian-50-lenny-64-minimal>
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
> big-ending → Big Endian:
> 
> a) msgid "Generate big-ending output."
> 
> b) msgid "Generate little-ending output."

Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
