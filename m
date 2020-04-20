Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95ADD1B03AF
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:02:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726496AbgDTICT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:02:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726492AbgDTICS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:02:18 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DCCEC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:02:18 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id j1so5473097wrt.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Xtw2Mb1idtQw8LG8Yd2Ra7jgnZFXuzs3wMvML5zNeeM=;
        b=vYj6LdjUnCZvryi8uY9N7ihYtpniA3pOmPZTaWl1ZMYc/cUGMyoNb8EZ7z9iDGt3HA
         IE+WTWHk6cE97QS7uaGzLRK6ZHY/GTHxczDEq5Kwx8TNMpIO/ptSEsrcTOvgXV798vUP
         GsqPQ4QcirCgEoUa8EPxVc6oFwEKr1n1T0kjuU90TFeQSBK2WAZEhlPsvwYNzsDTSSVa
         cU+5C2AKqbNevGG1+HUZuwb+e/CH1nAxO03jdgYKN9QCTgB0mdUhfumi4JXzQKEn5pCQ
         PIimQbqYsz6Yfnve5LFlodqY+Ch0XWdg+8fz34XBJrLYnCQHgW5WFTSvDAjAmT/TLBS/
         BIAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Xtw2Mb1idtQw8LG8Yd2Ra7jgnZFXuzs3wMvML5zNeeM=;
        b=dkZr9R/9da/RrIkt7SfdiwBkGZPRwdxAcWPEJ7qYA1yIZtuHPQO5O/xQ4w8iurLiii
         9kViDzjoFolBOewGnkYemZQn5Z6F+qdYSpCyuPFbBo1JAxM3BE3F1toqCwjZ8gMP/3wl
         YobRypxiUVltVSYRrwHaysR3jZs385WtJ3ePcAv8mWh6vnAQnYNJQx5A3v3QofLIkFVM
         wS8WB6v0hVeNHYtKWNrQh4Fvn6RjOpWT/hgPBAygJx1dSv3+PzlNWRFfNVjf6d/FtJaJ
         uMNr+ohvZL7bbg05Ivu0gATzsMYUPcDFPnJnnq06HE9AgA0iQf1/PZxggf8y/E+rwLSp
         ehDQ==
X-Gm-Message-State: AGi0PuYVfJMeaNzrkAh8eQ/YqlLwVARUvWDHrnriE+AUHv8ZXAcUeiiZ
        jY4Zy2fiWUS+KtB4/6EqWwGW1pe7
X-Google-Smtp-Source: APiQypLbixLTvX2nH+CFNYOCrAejDjmnJr+kB0uX2vp4vjKkZxNun30aE+EP82zZvUpmxHlXuCOjAQ==
X-Received: by 2002:a5d:4452:: with SMTP id x18mr16641565wrr.231.1587369737281;
        Mon, 20 Apr 2020 01:02:17 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id q8sm310096wmg.22.2020.04.20.01.02.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:02:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        =?UTF-8?Q?Kai_M=c3=a4kisara?= <kai.makisara@kolumbus.fi>
Subject: Re: Errors in man pages, here: st(4): Understanding
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064827.GA32094@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d31bdf0a-bb04-97dd-3496-82a629fbc2e9@gmail.com>
Date:   Mon, 20 Apr 2020 10:02:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064827.GA32094@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Kai]

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
> The last sentence is unclear, what "list above"?  And booleans?
> 
> "Set various drive and driver options according to bits encoded in "
> "I<mt_count>.  These consist of the drive's buffering mode, a set of Boolean "
> "driver options, the buffer write threshold, defaults for the block size and "
> "density, and timeouts (only in kernels 2.1 and later).  A single operation "
> "can affect only one item in the list above (the Booleans counted as one "
> "item.)"

I agree that it's unclear, but I don't kjnow what the fix is. Perhaps
kai can help.

Kai, the problematic text is this:


       MTSETDRVBUFFER
              Set various drive and  driver  options  according  to  bits
              encoded  in mt_count.  These consist of the drive's buffer‐
              ing mode, a set of Boolean driver options, the buffer write
              threshold,  defaults  for  the  block size and density, and
              timeouts (only in kernels 2.1 and later).  A single  opera‐
              tion  can affect only one item in the list above (the Bool‐
              eans counted as one item.)

Do you know what the "list above" refers to?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
