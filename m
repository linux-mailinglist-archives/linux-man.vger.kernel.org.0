Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D1621B0165
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725865AbgDTGMu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:12:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725780AbgDTGMt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:12:49 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89E50C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:49 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id d17so10553047wrg.11
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oPDwQeZr69LvtBsVAgYZzPJXD4CsgvxE1vvY81dguGc=;
        b=mNp45o0OI1kSHZWHn9LZKk6iCCsB1vIMsChLDKVIPb+ZfGZo3ahZJqNYULAih5bKEW
         AYk3OLsAB7sSnCZmLt7X4NWTkuVGabuY4FdMcWKTOTf8j6qjqGw/CxrtF/faqF1Few41
         zjourop45IBZnR3zUnvg/hslsr+COLwj4o6mjKpp52I1uDZVndUOewwexnfk5eRlWN0c
         PvuXupm3VhRXSYj1Ic4B0d0EyKUZdYXb4FTkWpGiVV3lA4+OOli3R2QLqZu/BXTo9dlq
         teF3kOCDWptwV4m+7rR7FlEY6Z10rEMa+DCiGtUolv6hAL1C5DlgtS3JU6+mvlQu6BLu
         +GWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oPDwQeZr69LvtBsVAgYZzPJXD4CsgvxE1vvY81dguGc=;
        b=rks1xvhRdyF/i/uwRFdQTSxrxTfvi5cpFXYtArlyiyRUXPMaDeQ8x2OQVdnCwvqFpK
         nsOxVA8Zkd3EeaAzkR7qf5URwruyBaaQXkKlHBZNwMFpT1z04vq1LM0iGgm64oXxDnpq
         rKQrNkY5aKjhLiCaDdiBD3P0cuU8wNwGsUb8WWiultRJDMxMv9WC5PO8W8ws4UynEos2
         Jwft/guCpvQuKWmDTgPeWJO3Ij+FWMNOI26Sga+KnB+YMIjT5EDX+R21mA2qxPzPC0Nz
         Jc9dUyqJurTLT2xnK4uXN9bLBNkl4JwkAX5pIJpnxHZ8AnXy1JQfi6VTtw+2DljLeI2+
         YbJA==
X-Gm-Message-State: AGi0PuaTINO6kDB8IQJ8xwkAEAg3zQ7/Q+GBxT4OHEwO3q8Odaz3iBSl
        Bx/saFrZ3zmvfwGtUhPn7ceeQ3xX
X-Google-Smtp-Source: APiQypJnOdYps5zAt9ltp6qjoMngRz+egnrrCmtqfZe6XKTFGVH6a03tzU1GSKKIkE1l9ARoclHaMA==
X-Received: by 2002:adf:810f:: with SMTP id 15mr13772556wrm.273.1587363168114;
        Sun, 19 Apr 2020 23:12:48 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id t63sm13485889wmt.37.2020.04.19.23.12.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:12:47 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: resolver(3): Markup
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064821.GA31771@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <24e22df3-ab8c-109f-dae7-2aa5897aaa03@gmail.com>
Date:   Mon, 20 Apr 2020 08:12:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064821.GA31771@Debian-50-lenny-64-minimal>
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
> Wrong position of closing >, i.e. B<RES_BLAST> (unimplemented …)
> 
> msgid "B<RES_BLAST  (unimplemented; deprecated in glibc 2.25)>"

Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
