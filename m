Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1D4831B85B
	for <lists+linux-man@lfdr.de>; Mon, 13 May 2019 16:34:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726481AbfEMOeP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 May 2019 10:34:15 -0400
Received: from mx01-fr.bfs.de ([193.174.231.67]:1523 "EHLO mx01-fr.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727970AbfEMOeP (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 13 May 2019 10:34:15 -0400
Received: from mail-fr.bfs.de (mail-fr.bfs.de [10.177.18.200])
        by mx01-fr.bfs.de (Postfix) with ESMTPS id 1217220342;
        Mon, 13 May 2019 16:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1557758049; h=from:from:sender:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:cc:cc:mime-version:mime-version:
         content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=D7xHBrBhRDQMK3sRLYDrzml69lg9wm702q2SxeOCfsI=;
        b=zU3R2vCaoK9eWTRou2C22pmV3GmWq992NJO90VC2EioQqZyJu3w/PJ8UQ0J6Am8yUoxYRz
        xVu503Tmj3e7jNh5MPDXErpafuj/y7psS4VMSGZHlJs8/axgwkkenmgBk6szgWhWF3k868
        Q++8x/0m+09vRQT5SBIauipjB9DGXBdeIuQpdJNi2vUrIjFapKI+VrftJUWxaML0ClUlXR
        qIPfhMSZKvSdgMEJqY1LikA4w8z6sN2DEk3nCxe1wW4Urr7mlGgrOj6oKmkWQpX86E7nQL
        kybxYl+MPBL+OZG6LIG4VJoGaJGrUsdRKsWzL2d6sz5lNl2XjeBYp9zak53/ew==
Received: from [134.92.181.33] (unknown [134.92.181.33])
        by mail-fr.bfs.de (Postfix) with ESMTPS id DB723BEEBD;
        Mon, 13 May 2019 16:34:07 +0200 (CEST)
Message-ID: <5CD9805F.4040601@bfs.de>
Date:   Mon, 13 May 2019 16:34:07 +0200
From:   walter harms <wharms@bfs.de>
Reply-To: wharms@bfs.de
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Thunderbird/3.0.11
MIME-Version: 1.0
CC:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] pldd.1: Document glibc's unbreakage of tool.
References: <20190511072049.2w7pp723iszp3gra@localhost.localdomain> <8736liit24.fsf@oldenburg2.str.redhat.com>
In-Reply-To: <8736liit24.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.08
Authentication-Results: mx01-fr.bfs.de
X-Spamd-Result: default: False [-1.08 / 7.00];
         HAS_REPLYTO(0.00)[wharms@bfs.de];
         TO_DN_NONE(0.00)[];
         REPLYTO_ADDR_EQ_FROM(0.00)[];
         MISSING_TO(2.00)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-2.98)[99.90%];
         ARC_NA(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[3];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DKIM_SIGNED(0.00)[];
         FREEMAIL_CC(0.00)[gmail.com];
         RCVD_COUNT_TWO(0.00)[2];
         RCVD_TLS_ALL(0.00)[]
To:     unlisted-recipients:; (no To-header on input)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



Am 13.05.2019 11:48, schrieb Florian Weimer:
> * G. Branden Robinson:
> 
>>  .SH BUGS
>> -Since glibc 2.19,
>> +From glibc 2.19 to 2.29,
>>  .B pldd
>> -is broken: it just hangs when executed.
>> -.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=18035
>> -It is unclear if it will ever be fixed.
>> +was broken: it just hung when executed.
>> +.\" glibc commit 1a4c27355e146b6d8cc6487b998462c7fdd1048f
>> +This problem was fixed in glibc 2.30.
> 
> I'm not sure if it makes sense to document this in the manual page.  I
> expect that the fix will propagate to affected distributions fairly
> quickly, now that it is available upstream.  It's certainly more likely
> that users will receive a glibc update with the fix than a manpage
> update with this change.
> 

IMHO it should be noted in the BUGS section.
You can not rely that you have always the lastest version of libc
(at least i do not have) but you may notice a different behavior
and it is simply very helpful to have a hint that certain versions
are broken. (if someone cares: my problem was with a64l. It suddenly
changed behavior ...)

just my 2 cents,
re,
 wh
