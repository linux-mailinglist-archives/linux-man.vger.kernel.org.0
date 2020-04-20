Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAED01B0193
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:30:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725815AbgDTGak (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:30:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725812AbgDTGaj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:30:39 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18858C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:30:38 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id z6so9984150wml.2
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KlxTHL6YjpxMpEVpo8DatmJxpVm1a/KLmWhJt+Og4QU=;
        b=fUP2+sB1YY1RgT9S6jMSVplWkRkc2TaWUnwy5EFxe1QHk+8qNFT4UEL/q8EyntyceN
         tCz9ZtAyRmgB+5GnhGtqW9Re6aI4bRW+ROouHIj8Jsrwd3xd6GRlf0j/0Vh85xmuNSEk
         1w8RAChquw0z6HVDCTL6xMKK0Kd6AwKHSQb1uafnGpJGY3XZTUJ+9sgRkw1BGhN7gSrd
         TSDZ27xbWQ43tkr95+FD3ZaDXAsJ9cK3MrNwfpZDxNIdiKe/boh5mcFUpp1/3tf5Cofb
         Oiw7uiEJAEBYiTXXg/ruifGQXLI006ZpHgd9nMA1ioUmR2QMQtvaKfoFbkkYSAGEu8PD
         XbxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KlxTHL6YjpxMpEVpo8DatmJxpVm1a/KLmWhJt+Og4QU=;
        b=FZQSuuG7st+iaEfNr8rqAbqaF3cBWOzlEcGbyBaZfTY7jTuHbfQjDerZwneMcBbpVH
         l1xA1HKW1OrZysUwjj/Uga9oR92UECb5FnkcSSrx59hes4yjiw1d0biXjhzLxIN+JfS/
         xCNacBpwESCan34+M6SBI7w/Uj1zvqyIa+BIGkGCtHDlirUCz484EHt6bmGeF7ls7vsS
         uokvT+cQoCD2wMipBXDjrmDQCzOkKKSDNAs9ufHmEaBJKK4SW/80Pm72zQmg0HLJMv+B
         Ki63vWhdS78rhgVyvkG7epwDlp/7to0QYY4wfBKmNSNkj4x1TeRfX2PmnXQGmpFy0sGf
         oEWA==
X-Gm-Message-State: AGi0Pubzh0DvXNOAoKLFT7a1zo9tF5wVAMPiJEXSpLRkZ3TRj9ifEvnE
        asLxJGxKntzfuBZrpqyqcC2dIsEQ
X-Google-Smtp-Source: APiQypJp54Z+iHq1rF4Z8oZkDsx1ZVeQD7iTW8RTKzRgqX2QTeKRXPLbKAT8pvwcapmYjBcYjhmRDg==
X-Received: by 2002:a05:600c:2dcf:: with SMTP id e15mr16895777wmh.171.1587364236286;
        Sun, 19 Apr 2020 23:30:36 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id s14sm20198wmh.18.2020.04.19.23.30.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:30:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages - here: ascii(7): SEE ALSO
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064750.GA29973@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2ae9504a-b6b8-b7e2-1de4-2aee2edbc252@gmail.com>
Date:   Mon, 20 Apr 2020 08:30:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064750.GA29973@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
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
> The order of the entries is incorrect, see man-pages(7)
> 
> "B<charsets>(7), B<iso_8859-1>(7), B<iso_8859-10>(7), B<iso_8859-11>(7), "
> "B<iso_8859-13>(7), B<iso_8859-14>(7), B<iso_8859-15>(7), B<iso_8859-16>(7), "
> "B<iso_8859-2>(7), B<iso_8859-3>(7), B<iso_8859-4>(7), B<iso_8859-5>(7), "
> "B<iso_8859-6>(7), B<iso_8859-7>(7), B<iso_8859-8>(7), B<iso_8859-9>(7), "
> "B<utf-8>(7)"

Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
