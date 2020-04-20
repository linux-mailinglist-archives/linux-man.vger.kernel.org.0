Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1859F1B0163
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:12:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725988AbgDTGMj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:12:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725780AbgDTGMj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:12:39 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43E6AC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:39 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id b11so10577795wrs.6
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0+DUopHVngHcQDguVkTuo594UiJoo3NdtibuDbLjvls=;
        b=AGCBCbLrUnAJgdI92AzwhcORByUxtZpk9UqHB+BkjT4MAZ8beqQ99CfbhdUO9Gst8Y
         dpO8SbNY+iwZpjMjp6cTVdUT/BYSMU3Gi5W9oXY1TZ2LI7tQYD+fYbUrX5Arxq8btNbJ
         7vii5XN4lMV0gU5eenFSwZpF4DXObJGAE0BkpvGocQjCA53eX67efPsc5LIaywtQck63
         rMCaduWg2Wgfi2s1D1qa+JYV72qZb4R3J5BION0Zf3PMb1rzgESKx+9Iyqhmcw1bfTMt
         zhLWiDU2Um+ITcpX2JYK8jrBSFRJ7hxOOadxQnBdEkvBL/Fh5eeefqYYSxxGsoLLCQ7t
         r5LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0+DUopHVngHcQDguVkTuo594UiJoo3NdtibuDbLjvls=;
        b=WIzOitJJnjmPqsicviYEzf8jF+egdkc39UqTj3yUnZtDwownpOi58V881Ccl2AG3J1
         alHAjNwYzJZHRIfqCWttKiyf0tnIWN9YXIlE9vaVs7O5jnpRhGDb431APCsVs4wUUfib
         cyr+4n0E2nkZ8i4+Rxes19lewytOdZCMOhisjrqCby/L0NNa2et1sJd2yDW9fuADSNQw
         zRNvR6Alj8x1ffEF3m57k2TLecgYPf7WyWaATb5X8RU2Hxj7Do6jvKZzQUS+QaSwwCfb
         230oodqBWf+kcvP4YLcM3mIsx5UooTfssLWSThioKYcU1HNf9pdlpogvzX6IU0Bb0SSR
         8yBQ==
X-Gm-Message-State: AGi0Pua9HbR3ERia2mm8dpWlexBqyCIT1yD6ImwlQ747rEYNIMwq2S8t
        yfmUOV0Hwfnr0kK5Is9F0ycpHBCD
X-Google-Smtp-Source: APiQypLQjPLhlCgUriUepUDz7HoJwZfqi+fEuSvMxFK+Uvqo1F1YLM7BMzZ3/MNY3oeVXrn8KZKIFQ==
X-Received: by 2002:adf:ed0e:: with SMTP id a14mr16687666wro.400.1587363157870;
        Sun, 19 Apr 2020 23:12:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id j3sm112977wrw.28.2020.04.19.23.12.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:12:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: st(4): Missing closing bracket
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064829.GA32210@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <72256890-790b-678e-fefd-f265989a4dd0@gmail.com>
Date:   Mon, 20 Apr 2020 08:12:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064829.GA32210@Debian-50-lenny-64-minimal>
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
> Missing closing bracket at the end of first sentence.
> 
> "The only field defined in I<mt_erreg> is the recovered error count in the "
> "low 16 bits (as defined by B<MT_ST_SOFTERR_SHIFT> and "
> "B<MT_ST_SOFTERR_MASK>.  Due to inconsistencies in the way drives report "
> "recovered errors, this count is often not maintained (most drives do not by "
> "default report soft errors but this can be changed with a SCSI MODE SELECT "
> "command)."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
