Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DB061B05D9
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:42:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725886AbgDTJmI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:42:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725773AbgDTJmI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:42:08 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1947C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:42:07 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id 188so4078016wmc.2
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=X5BfbGUPg6DPXrxoNXFF1WRDeTla25jdaPlcaG25wNc=;
        b=D0oxGY/oaXiKHOX+eeWYywlS+8jHiEzjC2zGZvkTKc5Jv18rB076HSY9Zttff/HTb5
         cBfv+/NVgCABTcKSmA5rp7O0SthevpC4ldr6d5bGEFs7DIIYxQ7YZQPFQqfRwRzSMmCJ
         pjX+vhz3i7f5ERLvm9l0b9ISJILna4Q6HNreSjwDZAFu19HhWeQtyF0qzP+V48/2S8+F
         wStXMlPjGD4iZ3EPNXyk4/Kzc1CPw46U8rwghsW85UMM21DSAoIeIA2hwpPutq+jGDba
         vri27vHtyZNfG/2y3CtbRyhLTYT8FurGtlnlZ0YB6d82z8U2R2eJB/964GR9rDt+aco8
         1hPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X5BfbGUPg6DPXrxoNXFF1WRDeTla25jdaPlcaG25wNc=;
        b=UO3A/sECz1UDuG5Cg6YHul2Qx0bjfR4UmwfTUtu70nguB6OndyDmpj+dkfiR4vjtZi
         6H6YaO/soio7xtwW+RksTGGQtZ6jgv/PE/oD/B2uNI6TLyc4/NL42N/1yFluPKzttqi4
         g03FCDaObuSo71au/R5ZwKzZSJlfbWrVXW5zKEZxO8wC3xnhCO0BXo+Y9GwcOJ3QHj6z
         /s2Cj36vATghFThUbWvARhLhdyJ7Te+rJbnegFnH6kGvunFlr4Y9FmovPFWxK0M5G+wk
         yC+lcsYXCqff4PgY8mqbw2X3zl41GAxWINMunWc5kGGQKWLnlRT6uMMpGVzPAkHjrhrq
         BUiA==
X-Gm-Message-State: AGi0Pua8A5IoCkV8eEUgs/f4LzRC3Dg+VMQXANwP+ywGqkbzbaVLEGoB
        PV3SUVgMla2gRwCrmeqirkZb2lZe
X-Google-Smtp-Source: APiQypLlucvjor63RhkMZOavhlxz4DMMx/zHNIYguVCherPX+SQH98WgtomgA2mYpcS2wCF7+wxJmw==
X-Received: by 2002:a1c:a58b:: with SMTP id o133mr14957022wme.5.1587375726542;
        Mon, 20 Apr 2020 02:42:06 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id q184sm638788wma.25.2020.04.20.02.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:42:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: suffixes(7): Clarification
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064831.GA32331@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <948a271b-a190-251c-3e8a-f24d8fdc28a2@gmail.com>
Date:   Mon, 20 Apr 2020 11:42:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064831.GA32331@Debian-50-lenny-64-minimal>
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
> The man page claims that suffixes are separated by a dot from the filename
> and contain one or more letters.
> 
> However, for RCS this does not hold, the separation is done by a comma
> and the suffix may contain characters besides letters, so the first
> concrete examples contradicts the general rule.
> 
> msgid "files for RCS (Revision Control System)"
> 

Patch as below.

Thanks,

Michael

diff --git a/man7/suffixes.7 b/man7/suffixes.7
index 0aaba137c..6063bacb9 100644
--- a/man7/suffixes.7
+++ b/man7/suffixes.7
@@ -41,7 +41,7 @@
 suffixes \- list of file suffixes
 .SH DESCRIPTION
 It is customary to indicate the contents of a file with the file suffix,
-which consists of a period, followed by one or more letters.
+which (typically) consists of a period, followed by one or more letters.
 Many standard utilities, such as compilers, use this to recognize the type of
 file they are dealing with.
 The


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
