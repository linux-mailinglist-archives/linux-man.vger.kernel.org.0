Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F9A41AFDE7
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:00:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726387AbgDSUAJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:00:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726123AbgDSUAJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:00:09 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0203DC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:00:09 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id v8so9211212wma.0
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KCgh/vN1BP7El/KBPL68jOvxtUiHQ9iqaBPba/sTHh0=;
        b=lXZV6qXJG9ALxszNd++V3xt8eMiHs9E01iEm40EluYF4wZUoW2cdor5JjYtdK19H68
         aRfguOnS5QeuxemhWhPCXW42ycFS209Q0bv+HakQk+yk5MweKdPfCi/SW/kWXX+F3vwE
         fp87qIAvUvgZZ1bULVqiOXSO7cx68PA1C87S31A20t198zuL72s5X2323pY6moS+N+gv
         Lv+22r7KafLAzAqkIm7inWIULpfCybYp70Qm0gkKQvYXu49riUL8nP5liMuIO4hJ7xfB
         ylLxZELrVWQDLbYUyR5cvn1yqTjYYm3/gO/3KL/ecJteWWhB1eNdeKN4BOStDwb3qfVf
         eh2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KCgh/vN1BP7El/KBPL68jOvxtUiHQ9iqaBPba/sTHh0=;
        b=YRdgdbIGRYwiSVSeYHna54tGqAFT9TyOu/B2a77v3ApSs518Y89+p4l5/tMv7/H42K
         THkkIPjFgr/JA7Cwr+vPSdcWVY73iW7q5TjefYJnwcNG4gF26eOAs2abMgXvrZD9GG1N
         aYyO01xYddOk7WKK+rDA1mJvYamnV1OVHBjinieLKrI4G7x69V61di+roREZndlWPhFt
         8EUzxxERtRfiBvBvmByJm6Mb/l/m4rZi8iB5/tE/Cz7AKTI72y2xv/wj6Cbbv20YDHjr
         tXQa+kbOexhiwat+WhVWu/HX1oXISV8Q/IAFrO0dwXy8geM3psxvoRVa419YDoOZ5jzw
         OUyQ==
X-Gm-Message-State: AGi0PuYszjFtVw5WIzIKXiViDgVy3sMgntjLMLcvsEpt1qlZfzeI0Wwh
        PCysyxKfCqNAF2bn85m6S9l0+sbd
X-Google-Smtp-Source: APiQypJylA/Yj1pjXKtOBCPOkY17XSNrw/I7XYZs4NwQuGbHQIRWfj8Y1rpZ5xQhEDv9PmV3k4sy2Q==
X-Received: by 2002:a1c:6a0b:: with SMTP id f11mr13832454wmc.123.1587326407549;
        Sun, 19 Apr 2020 13:00:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id c17sm41652678wrp.28.2020.04.19.13.00.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:00:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: open(2): Superfluous bracket
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064813.GA31325@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c7d5740c-ca50-661b-c1c6-d8ccdeeb2a6c@gmail.com>
Date:   Sun, 19 Apr 2020 22:00:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064813.GA31325@Debian-50-lenny-64-minimal>
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
> Superfluous closing bracket at end
> 
> "The group ownership (group ID) of the new file is set either to the "
> "effective group ID of the process (System V semantics)  or to the group ID "
> "of the parent directory (BSD semantics).  On Linux, the behavior depends on "
> "whether the set-group-ID mode bit is set on the parent directory: if that "
> "bit is set, then BSD semantics apply; otherwise, System V semantics apply.  "
> "For some filesystems, the behavior also depends on the I<bsdgroups> and "
> "I<sysvgroups> mount options described in B<mount>(8))."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
