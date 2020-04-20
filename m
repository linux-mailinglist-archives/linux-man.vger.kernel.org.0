Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E56131B0220
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:03:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725994AbgDTHDH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:03:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725959AbgDTHDG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:03:06 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31C4CC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:03:05 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id g13so8677899wrb.8
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IjCFHzfQLBOKYh03vToN+61e4DfdDHbDdDY2717/OkE=;
        b=Mrhue6cp++fhl/MRYV5pZRrR/UD0hi6HGSHdwcG3BplT+mPUDU6uVi/2gZWscCQgX6
         JrL5FVSosxKrPTyogVwU7AoktTph+pwKxUkRdlk0swiCuL2yEEjV50z4Ez1KoDiFEJG1
         LmZD9vRhfk7On8F25Ey05BPjF/6wiUbGr87+ukZxrXVmgwzXp00g+GcLQOkgCfxpQeea
         RSyulcBVbrGBcgA+d8s6SPOe50EGvjVlg6X6mrq5iV+y17LTmX3O+5MufuBuaooqQIqe
         vRTlkWu9DnCTunYWnIIgYhmCbh2HhQm9IL+4z2jmBkzLacDJHLlEfps9u0LS//R5VRG/
         mWlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IjCFHzfQLBOKYh03vToN+61e4DfdDHbDdDY2717/OkE=;
        b=qnbJMFUsNIFVDOtcDagoI3ElaSkyHjfN0aobkAu1YCzzy4C6ZSeTy8mbfvtSBEY5V0
         MUvlZX4REGqoFz+z/9lAnhyNjVlDTFue6q6EU28BUzdk+k/7i2HDAtHErUx2eMc6yjtH
         8r/8N6WSvwOEWs8xumbKzik51YXnozrYViRuUR9S3P/+3e3pIHf5OPoGBkVOFKkLriBp
         pAXkSb2mmKFQZQtoEezL3Qf/GkUNVPuNtF7ewcxLQX4a+Mi4xZa/iqg6qAHmRinyzUP6
         zqnd6if8vw3WXjqIlj8f+j7dnRf/vnCZ9y4ow+V3+kbmMgrsWUOfK9Uy2Wcu9+R6unX/
         lgtQ==
X-Gm-Message-State: AGi0PuZHLVcI33eqwVAJXNXGS73e6wJmpBe92i1ItlLW0Z/6xqZ554Jx
        uUj65T5BEwI5YQAwU36K4jSXY9wp
X-Google-Smtp-Source: APiQypIo/V2PTnLPSGs2IMaiosT6AL4Drdr4MklE1fKNc5NrKubCkUqkJ1fog7/C1IhnQCWitRYEKw==
X-Received: by 2002:a05:6000:14c:: with SMTP id r12mr16535076wrx.62.1587366183701;
        Mon, 20 Apr 2020 00:03:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id a9sm91790wmm.38.2020.04.20.00.03.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:03:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: times(2): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064833.GA32471@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b4ff410f-f674-3aa3-10e4-96b34f1981b2@gmail.com>
Date:   Mon, 20 Apr 2020 09:03:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064833.GA32471@Debian-50-lenny-64-minimal>
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
> The sentence is not logical, a = b + a?
> 
> "The I<tms_cutime> field contains the sum of the I<tms_utime> and "
> "I<tms_cutime> values for all waited-for terminated children.  The "
> "I<tms_cstime> field contains the sum of the I<tms_stime> and I<tms_cstime> "
> "values for all waited-for terminated children."

I believe the sentence is correct.

a[parent] = b[children] + a[children]

Do you see what I mean?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
