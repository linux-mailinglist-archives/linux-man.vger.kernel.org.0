Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A0731B05DC
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:44:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725775AbgDTJoZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:44:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725773AbgDTJoY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:44:24 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9659FC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:44:24 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id x18so11308941wrq.2
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oWYZ9mpUdnIRnUnbTCnAdergkoGbQPlQjC6SsSYGvis=;
        b=tds/UXqAB8J0R4l023Wvg1JT31m3RZoQVitPKuN+MiFSov/7ySAPUFuKtpN87SCAMj
         pwIs6xyUUkPDofACHCzkbO/APESbcAdNVlMnXz7SPYba833isH15AgzVbeMu3xtpvvp5
         2TEgkG7YAO8khg9jggzEVQxYBiMPBWDziGSqb+bt9NyM68Oi7ZiqOMloCXIvAPCXLl7q
         sM0zzgL1ljBce85pBI4oRHUuvRd4Yphn4fNfAiIo/kGkAtGphj6cuzypf1W1E/Bmdy9b
         e9QLpccE7TQrPiCJiIvoaZthwXoM/0Q8CZvSAoOEKVoPnWxdhjiFeY2nXWVWmSkAq0xC
         7n/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oWYZ9mpUdnIRnUnbTCnAdergkoGbQPlQjC6SsSYGvis=;
        b=b1OG7dFBo4U0j5m8NBWV3NmwXIux9luoPnxvp54PN5zU+NsGqymY3P25GYc5LQrdbO
         LtOnsBHGsz7Pbi5RJQHxUwuuL5GA1n+ovdyxjs2T0mU/Mx00LvYIkbkuJzkB/hXIQVJ1
         IolG/uYWtN1LK0rrzeW8PWcWoxMbeCfjKj5TMK6S1+9Hx3VxuVRN85Bo1g/CTxss8BZi
         JQYGuQrn220c8OD3X9MxY+btfezfxkaJADtWF3rzIA8QuEs8lzxjL1+cWKJ2hF60xxRj
         0p/VTrMWOTZnos7UboHT1TLAM8w62o611aewvRdIi99k3KRxtTfDo1pRckNm9Vfwk7/s
         lLbQ==
X-Gm-Message-State: AGi0PubGUszTrHU3czZcPP3Ec6VQDhAeIPHnEA7K7nz0594wumZdt8Xz
        4yNwjHE5Q0Tn9nRF73TYl8GKbBRY
X-Google-Smtp-Source: APiQypIxZ6imsxqorMcf+c8p4XMAfiQBBBvuOAIvoKmAtMYsvGJ3VmVpIC7nNcsPAkd6M3e8dJk6bQ==
X-Received: by 2002:adf:df82:: with SMTP id z2mr19394741wrl.58.1587375863080;
        Mon, 20 Apr 2020 02:44:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 17sm641278wmo.2.2020.04.20.02.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:44:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: wprintf(3): Wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064838.GA32725@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1c1b7919-7cba-5ef0-621e-891844931db2@gmail.com>
Date:   Mon, 20 Apr 2020 11:44:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064838.GA32725@Debian-50-lenny-64-minimal>
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
> The text in the bracket in the 2nd sentence is difficult to understand

I need a bit more elaboration here.

Thanks,

Michael

> "If no B<l> modifier is present: the I<const\\ char\\ *> argument is expected "
> "to be a pointer to an array of character type (pointer to a string) "
> "containing a multibyte character sequence beginning in the initial shift "
> "state.  Characters from the array are converted to wide characters (each by "
> "a call to the B<mbrtowc>(3)  function with a conversion state starting in "
> "the initial state before the first byte).  The resulting wide characters are "
> "written up to (but not including) the terminating null wide character (L\\(aq"
> "\\e0\\(aq).  If a precision is specified, no more wide characters than the "
> "number specified are written.  Note that the precision determines the number "
> "of I<wide characters> written, not the number of I<bytes> or I<screen "
> "positions>.  The array must contain a terminating null byte (\\(aq"
> "\\e0\\(aq), unless a precision is given and it is so small that the number "
> "of converted wide characters reaches it before the end of the array is "
> "reached.  If an B<l> modifier is present: the I<const\\ wchar_t\\ *> "
> "argument is expected to be a pointer to an array of wide characters.  Wide "
> "characters from the array are written up to (but not including) a "
> "terminating null wide character.  If a precision is specified, no more than "
> "the number specified are written.  The array must contain a terminating null "
> "wide character, unless a precision is given and it is smaller than or equal "
> "to the number of wide characters in the array."
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
